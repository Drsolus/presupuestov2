<?php

namespace App\Http\Controllers;

use App\Departamento;
use App\PeriodoPresupuestal;
use App\Presupuesto;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;
use App\CatalogoAtributoAdicional;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;

class PeriodoPresupuestalController extends Controller
{
    public function RefrescarTabla()
    {
        $Atributos=CatalogoAtributoAdicional::orderBy('fechaCreacionAtributoAdicional','desc')->where('estadoCatalogoAtributoAdicional','=','1')->get();

        return view('TablaAtributosAdicionales')->with(['Atributos'=>$Atributos])->render();

    }
 public function ModalAtributoACrear()
 {
     return view('ModalAtributosAdicionales');
 }
 public function CrearNuevoAtributoAdicional()
 {
     if (Auth::user()->role === 'Finanzas')
     {
         $nombreNuevoAtributo = input::get('NuevoAtributo');
         $validacion= DB::table('catalogoatributosadicionales')
             ->where('nombreCatalogoAtributoAdicional','=',$nombreNuevoAtributo)->first();
         if($validacion =='')
         {
             $q=  DB::table('catalogoatributosadicionales')
                 ->insertGetId([
                     'nombreCatalogoAtributoAdicional'=>$nombreNuevoAtributo,
                     'fechaCreacionAtributoAdicional'=> Carbon::today(),
                     'estadoCatalogoAtributoAdicional'=>1
                 ]);
             return response()->json(array('success' => true, 'result' => $validacion));
         }else
             {
                 return response()->json(array('success' => false, 'result' => $nombreNuevoAtributo));
             }

     }else
         {
             return response()->json(array('success' => false, 'result' => 2));
         }

 }

 public  function CrearNuevoPeriodoPresupuestal(Request $request)
 {
     if (Auth::user()->role === 'Finanzas')
     {
         DB::table('periodospresupuestales')
         ->where('fkIdEstadoPeriodoPresupuestal','=','1')
         ->update(['fkIdEstadoPeriodoPresupuestal'=> 3,
             'fechaHoraTerminoPeriodoPresupuestal'=>Carbon::today()]);
         DB::table('presupuestos')
             ->where('fkPeriodoPresupuestal','!=','9')
             ->update(['fkEstadoPresupuesto'=> 9,
                 'fechaCierrePresupuesto'=>Carbon::today()]);
         DB::table('lineasdedetalle')
             ->where('fkIdEstadoLineaDeDetalle','!=','4')
             ->update(['fkIdEstadoLineaDeDetalle'=> 5]);

          $nombrePeriodo=$request->input('nombrePeriodo');
         $fechaInicio=$request->input('fechaInicio');
         $fechaTermino='00-00-00 00:00';
         $AtributosAdicionales= $request->input('atributoAdicional');
         $idPeriodoPresupuestal= DB::table('periodospresupuestales')
         ->insertGetId([
             'nombrePeriodoPresupuestal'=>$nombrePeriodo,
             'fechaHoraInicioPeriodoPresupuestal'=>$fechaInicio,
             'fechaHoraTerminoPeriodoPresupuestal'=>$fechaTermino,
             'fkIdEstadoPeriodoPresupuestal'=>1
         ]);
         foreach($AtributosAdicionales as $AtributoAdicional)
         {
             DB::table('relacionescatalogoatributosconprocesopresupuestal')
                 ->insert([
                     'fkIdPeriodoPresupuestal'=>$idPeriodoPresupuestal,
                     'fkIdCatalogoAtributosAdicionales'=>$AtributoAdicional
                 ]);
         }
         $Departamentos=Departamento::all()->where('idDepartamento','!=','1');
         foreach($Departamentos as $Departamento)
         {

             $Solicitantes=$Departamento->Solicitante->where('fkIdEstadoSolicitante','=','1')->where('fkIdDepartamento','=',$Departamento->idDepartamento);
               foreach ($Solicitantes as $solicitante)
               {
                   $Solicitante=$solicitante;
               }

               $NombreSolicitante=$Solicitante->nombreSolicitante.' '.$Solicitante->apellidoPaternoSolicitante.' '.$Solicitante->apellidoMaternoSolicitante;


               DB::table('presupuestos')
                 ->insert([
                 'fechaHoraCreacionPresupuesto'=>$fechaInicio,
                  'fechaCierrePresupuesto'=>$fechaTermino,
                     'nombreSolicitantePresupuesto'=> $NombreSolicitante,
                     'fkIdDepartamento'=>$Departamento->idDepartamento,
                     'fkEstadoPresupuesto'=>1,
                     'fkPeriodoPresupuestal'=>$idPeriodoPresupuestal
             ]);

         }
         return redirect()->route('PeriodosPresupuestales');
     }
     return redirect()->route('home');
 }

 public function verdetalle(Request $request)
 {
     $rol=Auth::User()->role;
     if($rol=='Finanzas' || $rol=='Rectoria')
     {
          $id=$request->id;
          $PeriodoPresupuestal=PeriodoPresupuestal::where('idPeriodoPresupuestal','=',$id)->firstOrFail();
         //$PeriodoPresupuestal->nombrePeriodoPresupuestal;
          return view('DetallePeriodosPresupuestales')->with(['PeriodoPresupuestal'=>$PeriodoPresupuestal]);

     }


 }




}
