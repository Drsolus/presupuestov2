<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CatalogoEstadoPresupuesto extends Controller
{
    protected $table='catalogoestadospresupuestos';

    public function presupuesto()
    {
        return $this->hasMany('App\RelacionCatalogoAtributosConPeriodosPresupuestal','fkIdEstadoPresupuesto','idPresupuesto');
    }

    
}
