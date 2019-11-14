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
    public function EstadoPeriodoPresupuestal()
    {
        return $this->belongsTo('App\CatalogoEstadoPeriodoPresupuestal','fkIdEstadoPeriodoPresupuestal','idEstadoPeriodoPresupuestal');
    }
    Public function RelacionPeriodoAtributo()
    {
        return $this->hasMany('App\RelacionCatalogoAtributosConPeriodoPresupuestal','fkIdPeriodoPresupuestal','idPeriodoPresupuestal');
    } 
}
