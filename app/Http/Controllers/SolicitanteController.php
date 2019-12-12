<?php

namespace App\Http\Controllers;

use App\Solicitante;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use DB;
class SolicitanteController extends Controller
{
    public function CrearSolicitante(Request $request)
    {

        $idDepartamento = input::get('idDepartamento');
            if ($idDepartamento != 1 && $idDepartamento != 2) {
                $nombreSolicitante = input::get('nombreSolicitante');
                $paternoSolicitante = input::get('paternoSolicitante');
                $maternoSolicitante = input::get('maternoSolicitante');
                $emailSolicitante = input::get('email');

                $password = input::get('password');
                   $SolicitanteAnterior = Solicitante::where('fkIdDepartamento', '=', $idDepartamento)
                    ->where('fkIdEstadoSolicitante', '=', '1')
                    ->where('fkIdDepartamento', '!=', '1')
                    ->where('fkIdDepartamento', '!=', '2')
                    ->first();
                    if(!$SolicitanteAnterior == '')
                    {
                        DB::table('solicitantes')
                            ->where('fkIdDepartamento', '=', $idDepartamento)
                            ->where('idSolicitante', '=', $SolicitanteAnterior->idSolicitante)
                            ->where('fkIdDepartamento', '!=', '1')
                            ->where('fkIdDepartamento', '!=', '2')
                            ->update(['fkIdEstadoSolicitante' => '2']);
                        DB::table('users')
                            ->where('fkIdSolicitantes', '=', $SolicitanteAnterior->idSolicitante)->delete();
                    }
                $idSolicitante = DB::table('solicitantes')
                    ->insertGetId(
                        [
                            'nombreSolicitante' => $nombreSolicitante,
                            'apellidoPaternoSolicitante' => $paternoSolicitante,
                            'apellidoMaternoSolicitante' => $maternoSolicitante,
                            'fkIdEstadoSolicitante' => '1',
                            'fkIdDepartamento' => $idDepartamento
                        ]);
                User::create([
                    'name' => $nombreSolicitante.' '.$paternoSolicitante,
                    'role' =>'Solicitante',
                    'fkIdSolicitantes'=>$idSolicitante,
                    'email' => $emailSolicitante,
                    'password' => Hash::make($paternoSolicitante),
                ]);
                return redirect()->route('Solicitantes');
            }





    }

    public function respald()
    {


    }

}
