<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class FormacoesAcademica extends Model
{
    public function vagas()
    {
        return $this->hasMany(Vaga::class, 'id_formacaoacademica', 'id');
    }
}
