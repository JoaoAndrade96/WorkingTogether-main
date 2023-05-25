<?php

namespace App\Http\Controllers;

use App\Models\Estado;
use Illuminate\Http\Request;

class EstadoController extends Controller
{
    public function getAllEstados()
    {
        $estados = Estado::get()->toJson(JSON_PRETTY_PRINT);
        return response($estados, 200);
    }

    public function createEstado(Request $request)
    {
        $estado = new Estado;
        $estado->nome = $request->nome;
        $estado->sigla = $request->sigla;
        $estado->save();

        return response()->json([
            "message" => "estado record created"
        ], 201);
    }

    public function getEstado($id)
    {
        if (Estado::where('id', $id)->exists()) {
            $estado = Estado::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($estado, 200);
        } else {
            return response()->json([
                "message" => "estado not found"
            ], 404);
        }
    }

    public function updateEstado(Request $request, $id)
    {
        if (Estado::where('id', $id)->exists()) {
            $estado = Estado::find($id);
            $estado->nome = is_null($request->nome) ? $estado->nome : $request->nome;
            $estado->sigla = is_null($request->sigla) ? $estado->sigla : $request->sigla;
            $estado->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "estado not found"
            ], 404);
        }
    }

    public function deleteEstado($id)
    {
        if (Estado::where('id', $id)->exists()) {
            $estado = Estado::find($id);
            $estado->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "estado not found"
            ], 404);
        }
    }
}
