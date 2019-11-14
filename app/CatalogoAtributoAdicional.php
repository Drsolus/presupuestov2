<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatalogoAtributoAdicional extends Model
{
    protected $table='catalogoatributosadicionales';

    public function RelacionPeriodoAtributo()
    {
        return $this->hasMany('App\RelacionCatalogoAtributosConPeriodosPresupuestal','fkIdCatalogoAtributosAdicionales','idCatalogoAtributoAdicional');
    }
}
