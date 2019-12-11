<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatalogoEstadoPeriodoPresupuestal extends Model
{
    protected $table='catalogoestadosperiodospresupuestal';

    public function PeriodoPresupuestal()
    {
        return $this->hasMany('App\PeriodoPresupuestal','fkIdEstadoPeriodoPresupuestal','idEstadoPeriodoPresupuestal');
    }
}
