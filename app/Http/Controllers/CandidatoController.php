<?php

namespace App\Http\Controllers;

use App\Models\Candidato;
use App\Models\Vaga;
use Illuminate\Http\Request;

class CandidatoController extends Controller
{
    public function Index()
    {
        $candidatos = Candidato::all();
        return view('candidatos.index', compact('candidatos'));
    }

    public function createCandidato(Request $request)
    {
        $candidato = new Candidato;
        $candidato->nome_sobrenome = $request->nome_sobrenome;
        $candidato->email = $request->email;
        $candidato->telefone = $request->telefone;
        $candidato->save();

        return response()->json([
            "message" => "candidato record created"
        ], 201);
    }

    public function CandidatoId($id)
    {
        // if (Vaga::where('id', $id)->exists()) {
        //     $vaga = Vaga::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
        //     return response($vaga, 200);
        // } else {
        //     return response()->json([
        //         "message" => "vaga not found"
        //     ], 404);
        // }
        $candidato = Candidato::find($id);
        return view('candidatos.candidato', compact('candidato'));
    }

    public function updateCandidato(Request $request, $id)
    {
        if (Candidato::where('id', $id)->exists()) {
            $candidato = Candidato::find($id);
            $candidato->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "candidato not found"
            ], 404);
        }
    }

    public function deleteCandidato($id)
    {
        if (Candidato::where('id', $id)->exists()) {
            $candidato = Candidato::find($id);
            $candidato->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "candidato not found"
            ], 404);
        }
    }

    /* Views */
    public function candidatarseVaga($id)
    {
        $candidatos = Candidato::find(1);
        $vaga = Vaga::find($id);
        return view('candidatos.candidatarse', compact('candidatos', 'vaga'));
    }

    public function listarCandidatosParaVaga()
    {
        $candidatos = Candidato::all();
        $vagas = Vaga::all();

        return view('candidatos.candidatos', compact('candidatos', 'vagas'));
    }
}
