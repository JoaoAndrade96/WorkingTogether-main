<?php

namespace App\Http\Controllers;

use App\Models\Ramo;
use Illuminate\Http\Request;

class RamoController extends Controller
{
    public function getAllRamos()
    {
        $ramos = Ramo::get()->toJson(JSON_PRETTY_PRINT);
        return response($ramos, 200);
    }

    public function createRamo(Request $request)
    {
        $ramo = new Ramo;
        $ramo->nome = $request->nome;
        $ramo->save();

        return response()->json([
            "message" => "ramo record created"
        ], 201);
    }

    public function getRamo($id)
    {
        if (Ramo::where('id', $id)->exists()) {
            $ramo = Ramo::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($ramo, 200);
        } else {
            return response()->json([
                "message" => "ramo not found"
            ], 404);
        }
    }

    public function updateRamo(Request $request, $id)
    {
        if (Ramo::where('id', $id)->exists()) {
            $ramo = Ramo::find($id);
            $ramo->nome = is_null($request->nome) ? $ramo->nome : $request->nome;
            $ramo->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "ramo not found"
            ], 404);
        }
    }

    public function deleteLinksExterno($id)
    {
        if (Ramo::where('id', $id)->exists()) {
            $ramo = Ramo::find($id);
            $ramo->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "ramo not found"
            ], 404);
        }
    }
}
