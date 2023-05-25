<?php

namespace App\Http\Controllers;

use App\Models\SetoresEmprego;
use Illuminate\Http\Request;

class SetoresEmpregoController extends Controller
{
    public function getAllSetoresEmpregos()
    {
        $setoresempregos = SetoresEmprego::get()->toJson(JSON_PRETTY_PRINT);
        return response($setoresempregos, 200);
    }

    public function createSetoresEmprego(Request $request)
    {
        $setoresemprego = new SetoresEmprego;
        $setoresemprego->nome = $request->nome;
        $setoresemprego->save();

        return response()->json([
            "message" => "setoresemprego record created"
        ], 201);
    }

    public function getSetoresEmprego($id)
    {
        if (SetoresEmprego::where('id', $id)->exists()) {
            $setoresemprego = SetoresEmprego::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($setoresemprego, 200);
        } else {
            return response()->json([
                "message" => "setoresemprego not found"
            ], 404);
        }
    }

    public function updateSetoresEmprego(Request $request, $id)
    {
        if (SetoresEmprego::where('id', $id)->exists()) {
            $setoresemprego = SetoresEmprego::find($id);
            $setoresemprego->nome = is_null($request->nome) ? $setoresemprego->nome : $request->nome;
            $setoresemprego->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "setoresemprego not found"
            ], 404);
        }
    }

    public function deleteSetoresEmprego($id)
    {
        if (SetoresEmprego::where('id', $id)->exists()) {
            $setoresemprego = SetoresEmprego::find($id);
            $setoresemprego->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "setoresemprego not found"
            ], 404);
        }
    }
}
