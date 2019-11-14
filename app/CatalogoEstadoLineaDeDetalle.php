<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CatalogoEstadoLineaDeDetalle extends Controller
{
    protected $table='catalogoestadolineadedetalle';

    public function LineaDeDetalle()
    {
        return $this->hasMany('App\LineaDeDetalle','fkIdEstadoLineaDeDetalle','idEstadoLineaDeDetalle');
    }
}
