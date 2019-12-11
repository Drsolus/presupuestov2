<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Departamento extends Model
{
    protected $table='departamentos';

    public function Solicitante()
    {
        return $this->hasMany('App\Solicitante','fkIdDepartamento','idDepartamento');
    }
    public function Presupuesto()
    {
        return $this->hasMany('App\Presupuesto','fkIdDepartamento','idDepartamento');
    }

    public function LineaDeDetalle()
    {
        return $this->hasManyThrough('App\LineaDeDetalle', 'App\Presupuesto','fkIdDepartamento','fkIdPresupuesto','idDepartamento','idPresupuesto');
    }

}
