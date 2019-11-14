<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CatalogoEstadoPeriodoPresupuestal extends Controller
{
    protected $table='catalogoestadoperiodospresupuestal';

    public function PeriodoPresupuestal()
    {
        return $this->hasMany('App\PeriodoPresupuestal','fkIdEstadoPeriodoPresupuestal','idEstadoPeriodoPresupuestal');
    }
}
