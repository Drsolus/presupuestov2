<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Presupuesto extends Model
{
    protected $table='presupuestos';

    public function Departamento()
    {
        return $this->belongsTo('App\Departamento','fkIdDepartamento','idDepartamento');
    }
    public function PeriodoPresupuestal()
    {
        return $this->belongsTo('App\PeriodoPresupuestal','fkPeriodoPresupuestal','idPeriodoPresupuestal');
    }
    public function CatalogoEstadoPresupuesto()
    {
        return $this->belongsTo('App\CatalogoEstadoPresupuesto','fkIdEstadoPresupuesto','idEstadoPresupuesto');
    }
    Public function LineasDeDetalle()
    {
        return $this->hasMany('App\LineaDeDetalle','fkIdPresupuesto','idPresupuesto');
    }



}
