<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Endereco extends Model
{

    protected $table = 'enderecos';

    public function empresas()
    {
        return $this->hasMany(Empresa::class, 'endereco_id', 'id');
    }

    public function cidade()
    {
        return $this->belongsTo(Cidade::class, 'cidades_id', 'id');
    }
}
