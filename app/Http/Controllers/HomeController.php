<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use App\User;
Use App\RelacionCatalogoAtributosConPeriodoPresupuestal;
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
        return view('Dashboard');
    }

    public function Solicitud()
    {   $AtributosARenderizar=Array();
        $Presupuestos=Auth::User()->Solicitante->departamento->Presupuesto;
        
        foreach($Presupuestos as $Presupuesto)
        {   
             $Relaciones=$Presupuesto->PeriodoPresupuestal->RelacionPeriodoAtributo;
            foreach($Relaciones as $Relacion)
            {
                
                 array_push($AtributosARenderizar,$Relacion->CatalogoAtributoAdicional);
            }


        }
        return view('Solicitud',[
            'AtributosAdicionales',$AtributosARenderizar
        ]);
    }
}
