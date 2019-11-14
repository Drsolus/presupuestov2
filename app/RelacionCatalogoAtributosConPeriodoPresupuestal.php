<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RelacionCatalogoAtributosConPeriodoPresupuestal extends Model
{
    protected $table='relacionescatalogoatributosconprocesopresupuestal';

    public function PeriodoPresupuestal()
    {
        return $this->belongsTo('App\PeriodoPresupuestal','fkIdPeriodoPresupuestal','idPeriodoPresupuestal');
    }

    public function CatalogoAtributoAdicional()
    {
        return $this->belongsTo('App\CatalogoAtributoAdicional','fkIdCatalogoAtributosAdicionales','idCatalogoAtributoAdicional'); 
    }
}
