<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\LineaDeDetalle;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Input;

class SolicitudPresupuestos extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function LineasDeDetalle(Request $request)

    {


        $idPresupuesto = $request->input('idPresupuesto');
        $LineasDeDetalle = LineaDeDetalle::where('fkIdPresupuesto', '=', $idPresupuesto)->get();
        $returnHTML = view('TablaLineasDeDetalle')->with('LineasDeDetalle', $LineasDeDetalle)->renderSections('CuerpoTabla');
        return response()->json(array('success' => true, 'html' => $returnHTML));


    }

    public function InsertarLineaDeDetalle(Request $request)
    {
        $Presupuestos = Auth::User()->Solicitante->Departamento->Presupuesto->where('fkEstadoPresupuesto', '=', '2');
        foreach ($Presupuestos as $Presupuesto) {
            $idPresupuesto = $Presupuesto->idPresupuesto;
        }
        $Descripcion = input::get('Descripcion');
        $PresupuestoSolicitado = input::get('PresupuestoSolicitado');
        $NombresAtributosAdicionales = input::get('NombreAtributoAdicional');
        $ValorAtributoAdicional = input::get('ValorAtributoAdicional');
        $idLineaDeDetalle = DB::table('lineasdedetalle')->insertGetId(
            ['fechaHoraCreacionLineasDeDetalle' => Carbon::today(),
                'descripcionLineaDeDetalle' => $Descripcion,
                'presupuestoSolicitado' => $PresupuestoSolicitado,
                'presupuestoAprobado' => 0,
                'presupuestoEjecutado' => 0,
                'fkIdPresupuesto' => $idPresupuesto,
                'fkIdEstadoLineaDeDetalle' => 1]
        );
        if (count($NombresAtributosAdicionales) == count($ValorAtributoAdicional)) {
            for ($i = 0; $i < count($NombresAtributosAdicionales); $i++) {
                $iAtributoAdicional = DB::table('AtributosAdicionales')->insertGetId(
                    ['nombreAtributoAdicional' => $NombresAtributosAdicionales[$i],
                        'valorAtributoAdicional' => $ValorAtributoAdicional[$i],
                        'fkIdLineaDeDetalle' => $idLineaDeDetalle
                    ]
                );
            }
        }

        return response()->json(array('success' => true, 'result' => 1));
    }

    public function RefrescarTabla()
    {
        $AtributosARenderizarTabla = collect();
        $Presupuestos = Auth::User()->Solicitante->Departamento->Presupuesto->where('fkEstadoPresupuesto', '=', '2');

        foreach ($Presupuestos as $Presupuesto) {
            $PresupuestoLinea=$Presupuesto;
            $LineasDeDetalles = $Presupuesto->LineasDeDetalle;
            $Relaciones = $Presupuesto->PeriodoPresupuestal->RelacionPeriodoAtributo;
            foreach ($Relaciones as $Relacion) {

                $AtributosARenderizarTabla->push($Relacion->CatalogoAtributoAdicional);
            }


        }
        $html = view('TablaLineasDeDetalle')->with(['LineasDeDetalle' => $LineasDeDetalles, 'Presupuesto' => $Presupuesto,'AtributosARenderizar'=>$AtributosARenderizarTabla,'Presupuesto'=>$PresupuestoLinea])->render();
        return $html;
    }
        public function ModalLinea($idLinea)
    {
        //$idLinea = $request->all();
        $LineasDeDetalle = LineaDeDetalle::all()->where('idLineasDeDetalle', '=', $idLinea);
        foreach ($LineasDeDetalle as $item)
        {
            $LineaDeDetalle=$item;
        }
        $AtributosAdicionales=$LineaDeDetalle->AtributoAdicional;
        return view('ModalEditarLinea')->with(['LineaDeDetalle' => $LineaDeDetalle, 'AtributosAdicionales' => $AtributosAdicionales])->render();

    }
    public function ActualizarLineaDeDetalle(Request $request )
    {

        $idLineaDeDetalle = input::get('idLineaDeDetalle');
        $Descripcion = input::get('Descripcion');
        $PresupuestoSolicitado = input::get('PresupuestoSolicitado');
        $idAtributosAdicionales = input::get('idAtributoAdicional');
        $ValorAtributoAdicional = input::get('ValorAtributoAdicional');
        DB::table('lineasdedetalle')
            ->where('idLineasDeDetalle','=',''.$idLineaDeDetalle)
            ->update(['descripcionLineaDeDetalle' => $Descripcion,'presupuestoSolicitado'=>$PresupuestoSolicitado]);


        if (count($idAtributosAdicionales) == count($ValorAtributoAdicional)) {
            for ($i = 0; $i < count($idAtributosAdicionales); $i++) {
                DB::table('atributosadicionales')
                    ->where('idAtributoAdicional','=',''.$idAtributosAdicionales[$i])
                    ->update(['valorAtributoAdicional' => $ValorAtributoAdicional[$i]]
                );
            }
        }



            return response()->json(array('success' => true, 'result' => 'Probando'));

    }
    Public function BorrarLienaDeDetalle(Request $request)
     {
         $idUser=Auth::user()->id;
        $idlinea= $request->idLinea;
         DB::table('atributosadicionales')
             ->where('fkIdLineaDeDetalle', '=', $idlinea)
             ->where('users.id','=',$idUser)
             ->where('idLineasDeDetalle', '=',$idlinea)
             ->where('fkIdEstadoLineaDeDetalle','=','1')
             ->join('lineasdedetalle','lineasdedetalle.idLineasDeDetalle','=','atributosadicionales.fkIdLineaDeDetalle')
             ->join('presupuestos','presupuestos.idPresupuesto','=','lineasdedetalle.fkIdPresupuesto')
             ->join('departamentos','departamentos.idDepartamento','=','presupuestos.fkIdDepartamento')
             ->join('solicitantes','departamentos.idDepartamento','=','solicitantes.fkIdDepartamento')
             ->join('users','solicitantes.idSolicitante','=','users.fkIdSolicitantes')
             ->delete();
         $resultado= DB::table('lineasdedetalle')
             ->join('presupuestos','presupuestos.idPresupuesto','=','lineasdedetalle.fkIdPresupuesto')
             ->join('departamentos','departamentos.idDepartamento','=','presupuestos.fkIdDepartamento')
             ->join('solicitantes','departamentos.idDepartamento','=','solicitantes.fkIdDepartamento')
             ->join('users','solicitantes.idSolicitante','=','users.fkIdSolicitantes')
             ->where('users.id','=',$idUser)
             ->where('idLineasDeDetalle', '=',$idlinea)
             ->where('fkIdEstadoLineaDeDetalle','=','1')
             ->delete();





         return response()->json(array('success' => true, 'result' => $idUser));
    }

    Public function EnviarPresupuesto(Request $request)
    {
        $idUser=Auth::user()->id;
        $idlinea= $request->idPresupuesto;
        DB::table('lineasdedetalle')
            ->where('fkIdPresupuesto', '=', $idlinea)
            ->where('users.id','=',$idUser)
            ->where('fkIdEstadoLineaDeDetalle','=','1')
            ->where('idPresupuesto', '=',$idlinea)
            ->where('fkEstadoPresupuesto','=','2')
            ->join('presupuestos','presupuestos.idPresupuesto','=','lineasdedetalle.fkIdPresupuesto')
            ->join('departamentos','departamentos.idDepartamento','=','presupuestos.fkIdDepartamento')
            ->join('solicitantes','departamentos.idDepartamento','=','solicitantes.fkIdDepartamento')
            ->join('users','solicitantes.idSolicitante','=','users.fkIdSolicitantes')
            ->update(['fkIdEstadoLineaDeDetalle'=>'2']);
        $resultado= DB::table('presupuestos')

            ->join('departamentos','departamentos.idDepartamento','=','presupuestos.fkIdDepartamento')
            ->join('solicitantes','departamentos.idDepartamento','=','solicitantes.fkIdDepartamento')
            ->join('users','solicitantes.idSolicitante','=','users.fkIdSolicitantes')
            ->where('users.id','=',$idUser)
            ->where('idPresupuesto', '=',$idlinea)
            ->where('fkEstadoPresupuesto','=','2')
            ->update(['fkEstadoPresupuesto'=>'3']);
            return response()->json(array('success' => true, 'result' => $idUser ,'url' => route('MisPresupuestos') ));
    }



}


