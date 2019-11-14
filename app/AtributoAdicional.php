<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AtributoAdicional extends Model
{
    protected $table='atributosadicionales';

    public function LineaDeDetalle()
    {
        return $this->belongsTo('App\LineaDeDetalle','fkIdLineaDeDetalle','idLineaDeDetalle');
    }
}
