<?php

namespace App\Http\Controllers;

use App\LineaDeDetalle;
use Illuminate\Http\Request;
Use App\User;
Use App\RelacionCatalogoAtributosConPeriodoPresupuestal;
use App\Presupuesto;
use App\PeriodoPresupuestal;
use Illuminate\Support\Facades\Auth;
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
        if(Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria')
        {
            $DatosCabezera=array();
            $PeriodoActualSolicitudes = PeriodoPresupuestal::where('fkIdEstadoPeriodoPresupuestal', '=', '2')->firstOrFail();
            array_push($DatosCabezera,$PeriodoActualSolicitudes->fechaHoraInicioPeriodoPresupuestal);
            array_push($DatosCabezera,$PeriodoActualSolicitudes->fechaHoraTerminoPeriodoPresupuestal);
            array_push($DatosCabezera,$totalPresupuestos = $PeriodoActualSolicitudes->Presupuesto()->count());
            array_push($DatosCabezera,$presupuestosEnSolicitud = $PeriodoActualSolicitudes->Presupuesto()->where('FkEstadoPresupuesto', '=', '2')->count());
            array_push($DatosCabezera,$presupuestosEnEnviados = $PeriodoActualSolicitudes->Presupuesto()->where('FkEstadoPresupuesto', '=', '3')->count());
            array_push($DatosCabezera,$presupuestosEnGuardado = $PeriodoActualSolicitudes->Presupuesto()->where('FkEstadoPresupuesto', '=', '4')->count());
            array_push($DatosCabezera,$presupuestosEnAprobados = $PeriodoActualSolicitudes->Presupuesto()->where('FkEstadoPresupuesto', '=', '5')->count());
            array_push($DatosCabezera,$presupuestosEnRechazados = $PeriodoActualSolicitudes->Presupuesto()->where('FkEstadoPresupuesto', '=', '6')->count());
            $DatosGraficos=array();
            $PeriodosPresupuestales = PeriodoPresupuestal::all();
            foreach ($PeriodosPresupuestales as $PeriodoPresupuestal)
            {
                $Presupuestos= $PeriodoPresupuestal->Presupuesto;
                foreach ($Presupuestos as $Presupuesto)
                {
                    $DatosGraficos[]=array($Presupuesto,$Presupuesto->LineasDeDetalle->sum('presupuestoSolicitado'),$Presupuesto->LineasDeDetalle->sum('presupuestoAprobado'),$Presupuesto->LineasDeDetalle->sum('presupuestoEjecutado'));

                }



            }

            return view('Dashboard')->with(['datosGraficos' => $DatosGraficos,'datosCabezera' => $DatosCabezera]);;

        }
        else
            {
                return view('Dashboard');
            }
    }

    public function Solicitud()
    {
        $AtributosARenderizar=Array();
        $Presupuestos=Auth::User()->Solicitante->Departamento->Presupuesto;

        foreach($Presupuestos as $Presupuesto)
        {
            echo $Presupuesto;
            $LineasDeDetalles=$Presupuesto->LineasDeDetalle;
            foreach ($LineasDeDetalles as $Linea)
            {
                $Linea->presupuestoSolicitado;
            }
            echo $LineasDeDetalles=$Presupuesto->LineasDeDetalle;
             $Relaciones=$Presupuesto->PeriodoPresupuestal->RelacionPeriodoAtributo;
             foreach($Relaciones as $Relacion)
            {

                 array_push($AtributosARenderizar,$Relacion->CatalogoAtributoAdicional);
            }


        }


        return view('Solicitud')->with(['AtributosARenderizar' =>$AtributosARenderizar,'LineasDeDetalle'=> $LineasDeDetalles]);
    }
}
