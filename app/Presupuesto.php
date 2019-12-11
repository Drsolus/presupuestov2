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
        return $this->belongsTo('App\CatalogoEstadoPresupuesto','fkEstadoPresupuesto','idEstadoPresupuesto');
    }
    Public function LineasDeDetalle()
    {
        return $this->hasMany('App\LineaDeDetalle','fkIdPresupuesto','idPresupuesto');
    }
    Public function AtributoAdicional()
    {
        return $this->hasManyThrough('App\AtributoAdicional', 'App\LineaDeDetalle','fkIdPresupuesto','fkIdLineaDeDetalle','idDepartamento','idLineasDeDetalle');
    }


}
