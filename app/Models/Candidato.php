<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Candidato extends Model
{
    protected $table = 'candidatos';

    protected $fillable = [
        'nome_sobrenome',
        'qualificacoes_educacionais',
        'experiencia_profissional',
        'habilidades_tecnicas',
        'habilidades_interpessoais',
        'certificacoes_treinamentos',
        'portfolio_realizacoes',
        'referencias',
        'email',
        'telefone',
        'curriculo'
    ];

    /* Relacionamentos */
    public function vaga()
    {
        return $this->belongsTo(Vaga::class, 'id_vaga', 'id');
    }
}
