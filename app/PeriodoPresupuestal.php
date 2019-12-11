<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PeriodoPresupuestal extends Model
{
    protected $table='periodospresupuestales';

    public function Presupuesto()
    {
        return $this->hasMany('App\Presupuesto','fkPeriodoPresupuestal','idPeriodoPresupuestal');
    }
    public function CatalogoEstadoPeriodoPresupuestal()
    {
        return $this->belongsTo('App\CatalogoEstadoPeriodoPresupuestal','fkIdEstadoPeriodoPresupuestal','idEstadoPeriodoPresupuestal');
    }
    Public function RelacionPeriodoAtributo()
    {
        return $this->hasMany('App\RelacionCatalogoAtributosConPeriodoPresupuestal','fkIdPeriodoPresupuestal','idPeriodoPresupuestal');
    }
    Public Function LineaDeDetalle()
    {
        return $this->hasManyThrough('App\LineaDeDetalle','App\Presupuesto');
    }
    Public function CatalogoAtributoAdicional()
    {
        return $this->hasManyThrough('App\CatalogoAtributoAdicional', 'App\RelacionCatalogoAtributosConPeriodoPresupuestal','fkIdPeriodoPresupuestal','idCatalogoAtributoAdicional','idPeriodoPresupuestal','fkIdCatalogoAtributosAdicionales');
    }


}
