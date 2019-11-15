<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Solicitante extends Model
{
    protected $table='solicitantes';

    public function user()
    {
        return $this->hasOne('App\User','fkIdSolicitantes','idSolicitante');
    }
    public function Departamento()
    {
        return $this->belongsTo('App\Departamento','fkIdDepartamento','idDepartamento');

    }


}
