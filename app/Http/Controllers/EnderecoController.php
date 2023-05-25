<?php

namespace App\Http\Controllers;

use App\Models\Endereco;
use Illuminate\Http\Request;

class EnderecoController extends Controller
{
    public function getAllEnderecos()
    {
        $enderecos = Endereco::get()->toJson(JSON_PRETTY_PRINT);
        return response($enderecos, 200);
    }

    public function createEndereco(Request $request)
    {
        $endereco = new Endereco;
        $endereco->rua = $request->rua;
        $endereco->numero = $request->numero;
        $endereco->save();

        return response()->json([
            "message" => "endereco vagas record created"
        ], 201);
    }

    public function getEndereco($id)
    {
        if (Endereco::where('id', $id)->exists()) {
            $endereco = Endereco::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($endereco, 200);
        } else {
            return response()->json([
                "message" => "endereco not found"
            ], 404);
        }
    }

    public function updateEndereco(Request $request, $id)
    {
        if (Endereco::where('id', $id)->exists()) {
            $endereco = Endereco::find($id);
            $endereco->rua = is_null($request->rua) ? $endereco->rua : $request->rua;
            $endereco->numero = is_null($request->numero) ? $endereco->numero : $request->numero;
            $endereco->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "endereco not found"
            ], 404);
        }
    }

    public function deleteEndereco($id)
    {
        if (Endereco::where('id', $id)->exists()) {
            $endereco = Endereco::find($id);
            $endereco->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "endereco not found"
            ], 404);
        }
    }
}
