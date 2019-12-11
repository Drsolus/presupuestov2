<?php

namespace App\Http\Controllers;

use App\Departamento;
use App\LineaDeDetalle;
use App\PeriodoPresupuestal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use DB;
class AprobarPresupuestosController extends Controller
{
    public  function TraerPresupuestoAAprobar($idDepartamento)
    {
        if(Auth::user()->role=='Rectoria')
        {

            $Departamento=Departamento::where('idDepartamento','=',$idDepartamento)->firstOrFail();

            $Departamentos = Departamento::where('posicionDepartamento', 'Like', "{$Departamento->posicionDepartamento}%")->orderBy('posicionDepartamento','asc')->get();

            $PeriodoPresupuestal=PeriodoPresupuestal::where('fkIdEstadoPeriodoPresupuestal','=','1')->firstOrFail();
            return view('TablaAprobarPresupuestos')->with(['Departamentos'=>$Departamentos,'PeriodoPresupuestal'=>$PeriodoPresupuestal])->render();


        }
    }

    public function ModalAprobarLineaDeDetalle($idLinea)
    {
        if(Auth::user()->role=='Rectoria')
        {
            $LineaDeDetalle=LineaDeDetalle::where('idLineasDeDetalle','=',$idLinea)->firstOrFail();
            return view('LineaAAprobar')->with(['Linea'=>$LineaDeDetalle])->render();

        }
    }


    public function AprobarLinea()
    {
        if(Auth::user()->role=='Rectoria')
        {
            $idLineaDeDetalle = input::get('idLinea');
            $valorActualizarEjecucion = input::get('ValorAprobado');
            DB::table('lineasdedetalle')
                ->where('idLineasDeDetalle','=',$idLineaDeDetalle)
                ->where('fkIdEstadoLineaDeDetalle','=','2')
                ->update(['presupuestoAprobado'=>$valorActualizarEjecucion,
                    'fkIdEstadoLineaDeDetalle'=>3]);

            $LineaDedetalle=LineaDeDetalle::where('idLineasDeDetalle','=',$idLineaDeDetalle)->firstOrFail();
            $Presupuesto=$LineaDedetalle->Presupuesto;
            $TotalLineas=$Presupuesto->LineasDeDetalle->count();
            $TotalLineasAprobadas=$Presupuesto->LineasDeDetalle->where('fkIdEstadoLineaDeDetalle','=','3')->count(); //LineasAceptadas
            $TotalLineasRechazadas =$Presupuesto->LineasDeDetalle->where('fkIdEstadoLineaDeDetalle','=','4')->count(); //LineasRechazadas
            if($TotalLineas==$TotalLineasAprobadas)
            {
                DB::table('presupuestos')
                    ->where('idPresupuesto','=',$Presupuesto->idPresupuesto)
                    ->update(['fkEstadoPresupuesto'=>5]);


            }else if($TotalLineas==$TotalLineasRechazadas)
            {
                DB::table('presupuestos')
                    ->where('idPresupuesto','=',$Presupuesto->idPresupuesto)
                    ->update(['fkEstadoPresupuesto'=>7]);

            }else if($TotalLineas==$TotalLineasAprobadas+$TotalLineasRechazadas)
            {   DB::table('presupuestos')
                ->where('idPresupuesto','=',$Presupuesto->idPresupuesto)
                ->update(['fkEstadoPresupuesto'=>6]);

            }

        }
    }

    public function RechazarLinea(Request $request)
    {
        if(Auth::user()->role=='Rectoria')
        {

            $idLineaDeDetalle = $request->idLinea;
            DB::table('lineasdedetalle')
                ->where('idLineasDeDetalle','=',$idLineaDeDetalle)
                ->where('fkIdEstadoLineaDeDetalle','=','2')
                ->update(['fkIdEstadoLineaDeDetalle'=>4]);

            $LineaDedetalle=LineaDeDetalle::where('idLineasDeDetalle','=',$idLineaDeDetalle)->firstOrFail();
            $Presupuesto=$LineaDedetalle->Presupuesto;
            $TotalLineas=$Presupuesto->LineasDeDetalle->count();
            $TotalLineasAprobadas=$Presupuesto->LineasDeDetalle->where('fkIdEstadoLineaDeDetalle','=','3')->count(); //LineasAceptadas
            $TotalLineasRechazadas =$Presupuesto->LineasDeDetalle->where('fkIdEstadoLineaDeDetalle','=','4')->count(); //LineasRechazadas
            if($TotalLineas==$TotalLineasAprobadas)
            {
                DB::table('presupuestos')
                    ->where('idPresupuesto','=',$Presupuesto->idPresupuesto)
                    ->update(['fkEstadoPresupuesto'=>5]);


            }else if($TotalLineas==$TotalLineasRechazadas)
            {
                DB::table('presupuestos')
                    ->where('idPresupuesto','=',$Presupuesto->idPresupuesto)
                    ->update(['fkEstadoPresupuesto'=>7]);

            }else if($TotalLineas==$TotalLineasAprobadas+$TotalLineasRechazadas)
            {   DB::table('presupuestos')
                ->where('idPresupuesto','=',$Presupuesto->idPresupuesto)
                ->update(['fkEstadoPresupuesto'=>6]);

            }
            return response()->json(array('success' => true, 'result' => 'Rechazada'));
        }
    }
}
