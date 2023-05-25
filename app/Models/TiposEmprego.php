<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class TiposEmprego extends Model
{
    public function vagas()
    {
        return $this->hasMany(Vaga::class, 'id_tipoemprego', 'id');
    }
}
