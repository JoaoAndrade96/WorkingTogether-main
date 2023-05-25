<?php

namespace App\Http\Controllers;

use App\Models\TiposEmprego;
use Illuminate\Http\Request;

class TiposEmpregoController extends Controller
{
    public function getAllTiposEmpregos()
    {
        $tiposempregos = TiposEmprego::get()->toJson(JSON_PRETTY_PRINT);
        return response($tiposempregos, 200);
    }

    public function createTiposEmprego(Request $request)
    {
        $tiposemprego = new TiposEmprego;
        $tiposemprego->nome = $request->nome;
        $tiposemprego->save();

        return response()->json([
            "message" => "tiposemprego record created"
        ], 201);
    }

    public function getTiposEmprego($id)
    {
        if (TiposEmprego::where('id', $id)->exists()) {
            $tiposemprego = TiposEmprego::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($tiposemprego, 200);
        } else {
            return response()->json([
                "message" => "tiposemprego not found"
            ], 404);
        }
    }

    public function updateTiposEmprego(Request $request, $id)
    {
        if (TiposEmprego::where('id', $id)->exists()) {
            $tiposemprego = TiposEmprego::find($id);
            $tiposemprego->nome = is_null($request->nome) ? $tiposemprego->nome : $request->nome;
            $tiposemprego->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "tiposemprego not found"
            ], 404);
        }
    }

    public function deleteTiposEmprego($id)
    {
        if (TiposEmprego::where('id', $id)->exists()) {
            $tiposemprego = TiposEmprego::find($id);
            $tiposemprego->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "tiposemprego not found"
            ], 404);
        }
    }
}
