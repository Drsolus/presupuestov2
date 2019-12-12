<?php

namespace App\Http\Controllers;

use App\Departamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
class DepartamentoController extends Controller
{
    public function CrearDepartamento(Request $request)
    {
        if(Auth::user()->role ==='Finanzas')
        {
        $nombreDepartamento=$request->input('nombreDepartamento');
        $idDepartamentoJefe=$request->input('posicionDepartamento');
           $DepartamentoJefe= Departamento::where('idDepartamento','=',$idDepartamentoJefe)->firstOrFail();
        $posicionDepartamentoJefe = $DepartamentoJefe->posicionDepartamento;
            $number_of_periods = substr_count($posicionDepartamentoJefe, ".") + 1;
            $latest =  DB::select("SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(posicionDepartamento,'.', ?),'.',-1) as last_id FROM departamentos where posicionDepartamento LIKE ? ORDER BY ABS(last_id) DESC LIMIT 1", [$number_of_periods, "{$posicionDepartamentoJefe}%"]);
            if($latest[0]->last_id==null)
            {
                $posicionDepartamentoJefe = $posicionDepartamentoJefe."1";
            }else
            {
                $posicionDepartamentoJefe = $posicionDepartamentoJefe . ($latest[0]->last_id + 1) . '.';
            }
            DB::table('departamentos')
            ->insert(
                [
                    'nombreDepartamento'=>$nombreDepartamento,
                    'posicionDepartamento'=>$posicionDepartamentoJefe
                ]);
            return redirect()->route('Departamentos');

        }
    }
}
