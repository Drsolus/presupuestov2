<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Presupuesto;
use App\LineaDeDetalle;
use DB;
class PresupuestoController extends Controller
{
  public function __construct()
    {
        $this->middleware('auth');
    }

  public function index()
    {
        if (Auth::user()->role === 'Finanzas' || 'Rectoria') {
            return view('Presupuesto');
        }
    }

    public function show($id)
    {
         $presupuestos = Presupuesto::where('idPresupuesto','=',$id)->firstOrFail();
        $PeriodoPresupuestal= $presupuestos->PeriodoPresupuestal;
        $presupuestos->LineasDeDetalle;
        return view('Prueba')->with([
            'presupuesto' => $presupuestos,
            'PeriodoPresupuestal'=>$PeriodoPresupuestal

        ]);

    }

    public function detalle($id)
    {
        $presupuestos = Presupuesto::where('idPresupuesto','=',$id)->firstOrFail();
        $PeriodoPresupuestal= $presupuestos->PeriodoPresupuestal;
        $presupuestos->LineasDeDetalle;
        return view('Prueba')->with([
            'presupuesto' => $presupuestos,
            'PeriodoPresupuestal'=>$PeriodoPresupuestal

        ]);
    }
    public function RefrescarTabla()
    {
        if (Auth::user()->role === 'Finanzas' || Auth::user()->role === 'Rectoria') {
            $Presupuestos = Presupuesto::orderBy('idPresupuesto', 'desc')->get();
            return view('TablaPresupuestos')->with(['presupuestos' => $Presupuestos]);
        }
    }
    public function ReActivarPresupuesto(Request $request)
    {
        if (Auth::user()->role == 'Finanzas')
        {
            $idPresupuesto= $request->idPresupuesto;
            DB::table('presupuestos')
                ->where('idPresupuesto','=',$idPresupuesto)
                ->where(function ($query) {
                    $query->where('fkEstadoPresupuesto', '=', '3')
                        ->orWhere('fkEstadoPresupuesto', '=', '5')
                        ->orWhere('fkEstadoPresupuesto', '=', '6')
                        ->orWhere('fkEstadoPresupuesto', '=', '7')
                        ->orWhere('fkEstadoPresupuesto', '=', '8');
                })
                ->update(['fkEstadoPresupuesto'=>'2']);
            return response()->json(array('success' => true, 'result' => $idPresupuesto));
        }
    }


}
