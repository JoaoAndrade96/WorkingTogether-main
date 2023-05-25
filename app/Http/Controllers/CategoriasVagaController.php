<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\CategoriasVaga;

class CategoriasVagaController extends Controller
{
    public function getAllCategoriasVagas()
    {
        $categoriasvagas = CategoriasVaga::get()->toJson(JSON_PRETTY_PRINT);
        return response($categoriasvagas, 200);
    }

    public function createCategoriasVaga(Request $request)
    {
        $categoriasvaga = new CategoriasVaga;
        $categoriasvaga->nome = $request->nome;
        $categoriasvaga->save();

        return response()->json([
            "message" => "categorias vagas record created"
        ], 201);
    }

    public function getCategoriasVaga($id)
    {
        if (CategoriasVaga::where('id', $id)->exists()) {
            $categoriasvaga = CategoriasVaga::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($categoriasvaga, 200);
        } else {
            return response()->json([
                "message" => "categoriasvaga not found"
            ], 404);
        }
    }

    public function updateCategoriasVaga(Request $request, $id)
    {
        if (CategoriasVaga::where('id', $id)->exists()) {
            $categoriasvaga = CategoriasVaga::find($id);
            $categoriasvaga->nome = is_null($request->nome) ? $categoriasvaga->nome : $request->nome;
            $categoriasvaga->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "categoriasvaga not found"
            ], 404);
        }
    }

    public function deleteCategoriasVaga($id)
    {
        if (CategoriasVaga::where('id', $id)->exists()) {
            $categoriasvaga = CategoriasVaga::find($id);
            $categoriasvaga->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "categoriasvaga not found"
            ], 404);
        }
    }
}
