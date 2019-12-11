<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatalogoEstadoPresupuesto extends Model
{
    protected $table='catalogoestadospresupuestos';

    public function presupuesto()
    {
        return $this->hasMany('App\Presupuesto','fkEstadoPresupuesto','idEstadoPresupuesto');
    }
}
