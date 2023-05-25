<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Cidade extends Model
{
    protected $table = 'cidades';

    public function enderecos()
    {
        return $this->hasMany(Endereco::class, 'cidades_id', 'id');
    }

    public function empresas()
    {
        return $this->hasMany(Empresa::class, 'cidades_id', 'id');
    }

    public function estado()
    {
        return $this->belongsTo(Estado::class, 'estado_id', 'id');
    }
}
