<?php

namespace App\Http\Controllers;

use App\Models\CategoriasVaga;
use App\Models\Empresa;
use App\Models\Candidato;
use App\Models\Vaga;
use Illuminate\Http\Request;

class VagaController extends Controller
{
    public function Index()
    {
        // $vagas = Vaga::get()->toJson(JSON_PRETTY_PRINT);
        // return response($vagas, 200);
        $vagas = Vaga::all();
        return view('vagas.index', compact('vagas'));
    }

    public function createVaga(Request $request)
    {
        $vaga = new Vaga;
        $vaga->nome = $request->nome;
        $vaga->descricao = $request->descricao;
        $vaga->requisitos = $request->requisitos;
        $vaga->salario = $request->salario;
        $vaga->cargo = $request->cargo;
        $vaga->experiencia = $request->experiencia;
        $vaga->beneficios = $request->beneficios;
        $vaga->image = $request->image;
        $vaga->save();

        $vagas = Vaga::all();
        $categorias = CategoriasVaga::all();
        return view('vagas.index', compact('categorias', 'vagas'));
    }

    public function VagaId($id)
    {
        // if (Vaga::where('id', $id)->exists()) {
        //     $vaga = Vaga::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
        //     return response($vaga, 200);
        // } else {
        //     return response()->json([
        //         "message" => "vaga not found"
        //     ], 404);
        // }
        $vaga = Vaga::find($id);
        return view('vagas.vaga', compact('vaga'));
    }

    public function updateVaga(Request $request, $id)
    {
        if (Vaga::where('id', $id)->exists()) {
            $vaga = Vaga::find($id);
            $vaga->nome = is_null($request->nome) ? $vaga->nome : $request->nome;
            $vaga->descricao = is_null($request->descricao) ? $vaga->descricao : $request->descricao;
            $vaga->requisitos = is_null($request->requisitos) ? $vaga->requisitos : $request->requisitos;
            $vaga->salario = is_null($request->salario) ? $vaga->salario : $request->salario;
            $vaga->cargo = is_null($request->cargo) ? $vaga->cargo : $request->cargo;
            $vaga->experiencia = is_null($request->experiencia) ? $vaga->experiencia : $request->experiencia;
            $vaga->beneficios = is_null($request->beneficios) ? $vaga->beneficios : $request->beneficios;
            $vaga->image = is_null($request->image) ? $vaga->image : $request->image;
            $vaga->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "vaga not found"
            ], 404);
        }
    }

    public function deleteVaga($id)
    {
        if (Vaga::where('id', $id)->exists()) {
            $vaga = Vaga::find($id);
            $vaga->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "vaga not found"
            ], 404);
        }
    }

    /* Views */
    public function listarVagas()
    {
        $vagas = Vaga::all();
        $categorias = CategoriasVaga::all();
        return view('vagas.index', compact('categorias', 'vagas'));
    }

    public function adicionarVagas()
    {
        $vagas = Vaga::all();
        return view('vagas.addvagas', compact('vagas'));
    }
}
