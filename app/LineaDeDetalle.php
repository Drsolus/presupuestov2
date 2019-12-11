<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
/**
 * @mixin \Eloquent
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class LineaDeDetalle extends Model
{
    protected $table='lineasdedetalle';

    public function Presupuesto()
    {
        return $this->belongsTo('App\Presupuesto','fkIdPresupuesto','idPresupuesto');
    }
    public function AtributoAdicional()
    {
        return $this->hasMany('App\AtributoAdicional','fkIdLineaDeDetalle','idLineasDeDetalle');
    }

    public function CatalogoEstadoLineaDeDetalle()
    {
        return $this->belongsTo('App\CatalogoEstadoLineaDeDetalle','fkIdEstadoLineaDeDetalle','idEstadoLineaDeDetalle');
    }

}
