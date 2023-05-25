<?php

namespace App\Http\Controllers;

use App\Models\FormacoesAcademica;
use Illuminate\Http\Request;

class FormacoesAcademicaController extends Controller
{
    public function getAllFormacoesAcademicas()
    {
        $formacoesacademicas = FormacoesAcademica::get()->toJson(JSON_PRETTY_PRINT);
        return response($formacoesacademicas, 200);
    }

    public function createFormacoesAcademica(Request $request)
    {
        $formacoesacademica = new FormacoesAcademica;
        $formacoesacademica->nome = $request->nome;
        $formacoesacademica->save();

        return response()->json([
            "message" => "formacoesacademica record created"
        ], 201);
    }

    public function getFormacoesAcademica($id)
    {
        if (FormacoesAcademica::where('id', $id)->exists()) {
            $formacoesacademica = FormacoesAcademica::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($formacoesacademica, 200);
        } else {
            return response()->json([
                "message" => "formacoesacademica not found"
            ], 404);
        }
    }

    public function updateFormacoesAcademica(Request $request, $id)
    {
        if (FormacoesAcademica::where('id', $id)->exists()) {
            $formacoesacademica = FormacoesAcademica::find($id);
            $formacoesacademica->nome = is_null($request->nome) ? $formacoesacademica->nome : $request->nome;
            $formacoesacademica->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "formacoesacademica not found"
            ], 404);
        }
    }

    public function deleteFormacoesAcademica($id)
    {
        if (FormacoesAcademica::where('id', $id)->exists()) {
            $formacoesacademica = FormacoesAcademica::find($id);
            $formacoesacademica->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "formacoesacademica not found"
            ], 404);
        }
    }
}
