<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LineaDeDetalle extends Model
{
    protected $table='lineasdedetalle';

    public function Presupuesto()
    {
        return $this->belongsTo('App\Presupuesto','fkIdPresupuesto','idPresupuesto');
    }
    public function AtributoAdicional()
    {
        return $this->hasMany('App\AtributoAdicional','fkIdLineaDeDetalle','idLineaDeDetalle');
    }

    public function CatalogoEstadosLineaDeDetalle()
    {
        return $this->belongsTo('App\CatalogoEstadLineaDeDetalle','fkIdEstadoLineaDeDetalle','idEstadoLineaDeDetalle');
    }

}
