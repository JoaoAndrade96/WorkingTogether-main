<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Vaga extends Model
{
    protected $table = 'vagas';

    protected $fillable = [
        'nome',
        'descricao',
        'salario',
        'cargo',
        'experiencia',
        'beneficios',
        'image'
    ];

    public function empresa()
    {
        return $this->belongsTo(Empresa::class, 'id_empresa', 'id');
    }

    public function tiposemprego()  
    {
        return $this->belongsTo(TiposEmprego::class, 'id_tipoemprego', 'id');
    }

    public function formacaoacademica()  
    {
        return $this->belongsTo(FormacoesAcademica::class, 'id_formacaoacademica', 'id');
    }
}
