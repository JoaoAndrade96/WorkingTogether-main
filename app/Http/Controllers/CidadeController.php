<?php

namespace App\Http\Controllers;

use App\Models\Cidade;
use Illuminate\Http\Request;

class CidadeController extends Controller
{
    public function getAllCidades()
    {
        $cidades = Cidade::get()->toJson(JSON_PRETTY_PRINT);
        return response($cidades, 200);
    }

    public function createCidade(Request $request)
    {
        $cidade = new Cidade;
        $cidade->nome = $request->nome;
        $cidade->cep = $request->cep;
        $cidade->save();

        return response()->json([
            "message" => "cidade vagas record created"
        ], 201);
    }

    public function getCidade($id)
    {
        if (Cidade::where('id', $id)->exists()) {
            $cidade = Cidade::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($cidade, 200);
        } else {
            return response()->json([
                "message" => "cidade not found"
            ], 404);
        }
    }

    public function updateCidade(Request $request, $id)
    {
        if (Cidade::where('id', $id)->exists()) {
            $cidade = Cidade::find($id);
            $cidade->nome = is_null($request->nome) ? $cidade->nome : $request->nome;
            $cidade->cep = is_null($request->cep) ? $cidade->cep : $request->cep;
            $cidade->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "cidade not found"
            ], 404);
        }
    }

    public function deleteCidade($id)
    {
        if (Cidade::where('id', $id)->exists()) {
            $cidade = Cidade::find($id);
            $cidade->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "cidade not found"
            ], 404);
        }
    }
}
