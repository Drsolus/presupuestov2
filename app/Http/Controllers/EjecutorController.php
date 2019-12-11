<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use DB;
class EjecutorController extends Controller
{
    public function RefrescarTabla()
    {
        $AtributosARenderizarTabla='';
        $Presupuestos = Auth::User()->Solicitante->Departamento->Presupuesto->where('fkEstadoPresupuesto', '!=', '9');

        foreach ($Presupuestos as $Presupuesto) {
            $LineasDeDetalles = $Presupuesto->LineasDeDetalle->where('fkIdEstadoLineaDeDetalle','=','3');
            $AtributosARenderizarTabla= $Presupuesto->PeriodoPresupuestal->CatalogoAtributoAdicional;

        }
        return view('TablaLineasAEjecutar')->with(['LineasDeDetalle'=>$LineasDeDetalles,'AtributosARenderizar'=>$AtributosARenderizarTabla])->render();

    }

    public function TraerLIneaAEjecuccion($idlinea)
    {
        $AtributosARenderizarTabla='';
        $Presupuestos = Auth::User()->Solicitante->Departamento->Presupuesto->where('fkEstadoPresupuesto', '!=', '9');

        foreach ($Presupuestos as $Presupuesto) {
          $LineasDeDetalles = $Presupuesto->LineasDeDetalle->where('fkIdEstadoLineaDeDetalle','=','3')->where('idLineasDeDetalle','=',$idlinea);
            $AtributosARenderizarTabla= $Presupuesto->PeriodoPresupuestal->CatalogoAtributoAdicional;
            foreach ($LineasDeDetalles as $LineaDeDetalle)
            {
                $Linea=$LineaDeDetalle;
            }
        }
        return view('LineaAEjecutar')->with(['Linea'=>$Linea,'AtributosARenderizar'=>$AtributosARenderizarTabla])->render();

    }

    public function ActualizarEjecucion(Request $request)
    {
        $idLineaDeDetalle = input::get('idLinea');
        $valorActualizarEjecucion = input::get('ValorActualizado');
        $idUser=Auth::user()->id;
        $resultado= DB::table('lineasdedetalle')
            ->join('presupuestos','presupuestos.idPresupuesto','=','lineasdedetalle.fkIdPresupuesto')
            ->join('departamentos','departamentos.idDepartamento','=','presupuestos.fkIdDepartamento')
            ->join('solicitantes','departamentos.idDepartamento','=','solicitantes.fkIdDepartamento')
            ->join('users','solicitantes.idSolicitante','=','users.fkIdSolicitantes')
            ->where('users.id','=',$idUser)
            ->where('idLineasDeDetalle', '=',$idLineaDeDetalle)
            ->where('fkIdEstadoLineaDeDetalle','=','3')
            ->update(['presupuestoEjecutado'=>$valorActualizarEjecucion]);
        return response()->json(array('success' => true, 'result' => 'True'));
    }

}
