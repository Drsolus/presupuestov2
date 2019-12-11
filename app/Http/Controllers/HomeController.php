<?php

namespace App\Http\Controllers;

use App\Departamento;
use App\LineaDeDetalle;
use App\Solicitante;
use Carbon\Carbon;
use Cassandra\Collection;
use Illuminate\Http\Request;
Use App\User;
Use App\RelacionCatalogoAtributosConPeriodoPresupuestal;
use App\Presupuesto;
use App\PeriodoPresupuestal;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use DB;
use Illuminate\Support\Facades\Input;
use function foo\func;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria') {

            $PeriodoActualSolicitudes = PeriodoPresupuestal::where('fkIdEstadoPeriodoPresupuestal', '=', '1')->firstOrFail();
            $DatosGraficos = array();
            $PeriodosPresupuestales = PeriodoPresupuestal::all();
            foreach ($PeriodosPresupuestales as $PeriodoPresupuestal) {
                $Presupuestos = $PeriodoPresupuestal->Presupuesto;
                foreach ($Presupuestos as $Presupuesto) {
                    $DatosGraficos[] = array($Presupuesto, $Presupuesto->LineasDeDetalle->sum('presupuestoSolicitado'), $Presupuesto->LineasDeDetalle->sum('presupuestoAprobado'), $Presupuesto->LineasDeDetalle->sum('presupuestoEjecutado'));

                }


            }

            return view('Dashboard')->with(['datosGraficos' => $DatosGraficos, 'PeriodoPresupuestal' => $PeriodoActualSolicitudes]);;

        } else {
            return view('Dashboard');
        }
    }

    public function CrearPeriodoPresupuestal()
    {
        if (Auth::user()->role === 'Finanzas' )
    {
        return view('CrearPeriodoPresupuestal');
    }
        else
            {
                return redirect()->route('home');
            }

    }
    public function Solicitud()
    {
        $AtributosARenderizar = Array();
        $Presupuestos = Auth::User()->Solicitante->Departamento->Presupuesto->where('fkEstadoPresupuesto', '=', '2');
        if ($Presupuestos->isEmpty()) {
            return view('Errores.SinSolicitudesVigentes');
        } else {
            foreach ($Presupuestos as $Presupuesto) {
                $Presupuesto;
                $LineasDeDetalles = $Presupuesto->LineasDeDetalle;
                $AtributosAdicionales = $Presupuesto->AtributoAdicional;
                $Relaciones = $Presupuesto->PeriodoPresupuestal->RelacionPeriodoAtributo;
                foreach ($Relaciones as $Relacion) {

                    array_push($AtributosARenderizar, $Relacion->CatalogoAtributoAdicional);
                }


            }


            //return view('Solicitud')->with(['AtributosARenderizar' =>$AtributosARenderizar,'LineasDeDetalle'=> $LineasDeDetalles,'Presupuesto'=>$Presupuesto]);
            return view('Solicitud')->with(['AtributosARenderizar' => $AtributosARenderizar, 'PresupuestoCabezera' => $Presupuesto]);
        }
    }

    public function detalle(Request $request)
    {
        if(Auth::User()->role == 'Solicitante')
        {
            $id=$request->id;
            echo $Presupuestos = $presupuestos=Auth::User()->Solicitante->Departamento->Presupuesto->where('idPresupuesto','=',$id);
            foreach ($Presupuestos as $Presupuesto)
            {
                 $presupuestos=$Presupuesto;

            }

            if(empty($presupuestos[0]))
            {
                return redirect()->route('home');
            }else
                {
                    $PeriodoPresupuestal= $presupuestos->PeriodoPresupuestal;
                    $LineasDeDetalle= $presupuestos->LineasDeDetalle;
                    return view('DataTableLineas')->with([
                        'presupuesto' => $presupuestos,
                        'PeriodoPresupuestal'=>$PeriodoPresupuestal

                    ]);
                }



        }else
            {
                $id=$request->id;
                $presupuestos = Presupuesto::where('idPresupuesto','=',$id)->firstOrFail();

                $PeriodoPresupuestal= $presupuestos->PeriodoPresupuestal;
                $presupuestos->LineasDeDetalle;


                return view('DataTableLineas')->with([
                    'presupuesto' => $presupuestos,
                    'PeriodoPresupuestal'=>$PeriodoPresupuestal

                ]);
            }


    }

    public  function  MisPresupuestos()
    {
       $presupuestos=Auth::User()->Solicitante->Departamento->Presupuesto;

    return view('Presupuesto')->with(['presupuestos'=>$presupuestos]);
    }

    public function EjecutarPresupuesto()
    {
        return view('EjecutarPresupuesto');
    }

    public function PeriodosPresupuestales()
    {   if (Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria')
    {

        $PeriodosPresupuestales=PeriodoPresupuestal::orderBy('idPeriodoPresupuestal','desc')->get();
        return view('PeriodosPresupuestales')->with(['PeriodosPresupuestales'=>$PeriodosPresupuestales]);
    }
        else
            {
                return redirect()->route('home');
            }
    }
    public function basura()
    {
        $AtributosARenderizarTabla = collect();
        $idUser=Auth::user()->id;
        $LineasDeDetalles= DB::table('lineasdedetalle')
            ->where('users.id','=',$idUser)
            ->where('fkIdEstadoLineaDeDetalle','=','3')
            ->where('fkEstadoPresupuesto','!=','9')
            ->join('presupuestos','presupuestos.idPresupuesto','=','lineasdedetalle.fkIdPresupuesto')
            ->join('departamentos','departamentos.idDepartamento','=','presupuestos.fkIdDepartamento')
            ->join('solicitantes','departamentos.idDepartamento','=','solicitantes.fkIdDepartamento')
            ->join('users','solicitantes.idSolicitante','=','users.fkIdSolicitantes')
            ->join('periodospresupuestales','periodospresupuestales.idPeriodoPresupuestal','=','fkPeriodoPresupuestal')
            ->join('relacionescatalogoatributosconprocesopresupuestal','fkIdPeriodoPresupuestal','=','periodospresupuestales.idPeriodoPresupuestal')
            ->join('relacionescatalogoatributosconprocesopresupuestal','fkIdCatalogoAtributosAdicionales','=','catalogoatributosadicionales.idCatalogoAtributoAdicional')
            ->get();
        //$html = view('TablaLineasAEjecutar')->with(['LineasDeDetalle' => $LineasDeDetalles])->render();
        $html=view('Prueba')->with(['LineasDeDetalle'=>$LineasDeDetalles]);
        return $html;
    }
    public function AprobarPresupuestos()
    {
        if ( Auth::user()->role === 'Rectoria'){
        $Departamentos= Departamento::all();
        return view('AprobarPresupuesto')->with(['Departamentos'=>$Departamentos]);
        }else
            {
                return redirect()->route('home');
            }
    }

    public function BarridoDepartamento($idDepartamento)
    {
        $edge_path = '1.2.1.1.';
        $number_of_periods = substr_count($edge_path, ".") + 1;
        $latest =  DB::select("SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(posicionDepartamento,'.', ?),'.',-1) as last_id FROM departamentos where posicionDepartamento LIKE ? ORDER BY ABS(last_id) DESC LIMIT 1", [$number_of_periods, "{$edge_path}%"]);
        if($latest[0]->last_id==null)
        {
            $edge_path = $edge_path."1";
        }else
        {
            $edge_path = $edge_path . ($latest[0]->last_id + 1) . '.';
        }


        echo $edge_path;
        //$children = Departamento::where('posicionDepartamento', 'Like', "{$edge_path}%")->orderBy('posicionDepartamento','DESC')->get();
        //echo $children[0]->posicionDepartamento;
        //$children= Departamento::all();
        //return view('Prueba')->with(['test'=>$children]);
    }

}
