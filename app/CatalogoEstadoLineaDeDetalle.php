<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatalogoEstadoLineaDeDetalle extends Model
{
    protected $table='catalogoestadoslineasdedetalle';

    public function LineaDeDetalle()
    {
        return $this->hasMany('App\LineaDeDetalle','fkIdEstadoLineaDeDetalle','idEstadoLineaDeDetalle');
    }
}
