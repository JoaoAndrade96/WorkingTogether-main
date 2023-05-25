<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Empresa;

class EmpresaController extends Controller
{
    public function getAllEmpresas()
    {
        $empresas = Empresa::get()->toJson(JSON_PRETTY_PRINT);
        return response($empresas, 200);
    }

    public function createEmpresa(Request $request)
    {
        $empresa = new Empresa;
        $empresa->nome = $request->nome;
        $empresa->descricao = $request->descricao;
        $empresa->email = $request->email;
        $empresa->senha = $request->senha;
        $empresa->telefone = $request->telefone;
        $empresa->cnpj = $request->cnpj;
        $empresa->cpf = $request->cpf;
        $empresa->logo = $request->logo;
        $empresa->save();

        return response()->json([
            "message" => "empresa record created"
        ], 201);
    }

    public function getEmpresa($id)
    {
        if (Empresa::where('id', $id)->exists()) {
            $empresa = Empresa::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($empresa, 200);
        } else {
            return response()->json([
                "message" => "Empresa not found"
            ], 404);
        }
    }

    public function updateEmpresa(Request $request, $id)
    {
        if (Empresa::where('id', $id)->exists()) {
            $empresa = Empresa::find($id);
            $empresa->nome = is_null($request->nome) ? $empresa->nome : $request->nome;
            $empresa->email = is_null($request->email) ? $empresa->email : $request->email;
            $empresa->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "Empresa not found"
            ], 404);
        }
    }

    public function deleteEmpresa($id)
    {
        if (Empresa::where('id', $id)->exists()) {
            $empresa = Empresa::find($id);
            $empresa->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "Empresa not found"
            ], 404);
        }
    }

    /* Views */
    public function listarEmpresas(){
        $empresas = Empresa::all();
        return view('empresas.index', compact('empresas'));
    }

    public function adicionarEmpresas(){
        $empresas = Empresa::all();
        return view('empresas.addempresas', compact('empresas'));
    }
}
