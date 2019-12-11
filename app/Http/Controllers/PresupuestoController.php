<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Presupuesto;
use App\LineaDeDetalle;
class PresupuestoController extends Controller
{
  public function __construct()
    {
        $this->middleware('auth');
    }

  public function index()
    {
        $Presupuestos= Presupuesto::all();
        return view('Presupuesto')->with(['presupuestos'=>$Presupuestos]);
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
}
