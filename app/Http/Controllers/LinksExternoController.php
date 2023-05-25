<?php

namespace App\Http\Controllers;

use App\Models\LinksExterno;
use Illuminate\Http\Request;

class LinksExternoController extends Controller
{
    public function getAllLinksExternos()
    {
        $linksexternos = LinksExterno::get()->toJson(JSON_PRETTY_PRINT);
        return response($linksexternos, 200);
    }

    public function createLinksExterno(Request $request)
    {
        $linkexterno = new LinksExterno;
        $linkexterno->link = $request->link;
        $linkexterno->save();

        return response()->json([
            "message" => "linkexterno record created"
        ], 201);
    }

    public function getLinksExterno($id)
    {
        if (LinksExterno::where('id', $id)->exists()) {
            $linkexterno = LinksExterno::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($linkexterno, 200);
        } else {
            return response()->json([
                "message" => "linkexterno not found"
            ], 404);
        }
    }

    public function updateLinksExterno(Request $request, $id)
    {
        if (LinksExterno::where('id', $id)->exists()) {
            $linkexterno = LinksExterno::find($id);
            $linkexterno->link = is_null($request->link) ? $linkexterno->link : $request->link;
            $linkexterno->save();

            return response()->json([
                "message" => "records updated successfully"
            ], 200);
        } else {
            return response()->json([
                "message" => "linkexterno not found"
            ], 404);
        }
    }

    public function deleteLinksExterno($id)
    {
        if (LinksExterno::where('id', $id)->exists()) {
            $linkexterno = LinksExterno::find($id);
            $linkexterno->delete();

            return response()->json([
                "message" => "records deleted"
            ], 202);
        } else {
            return response()->json([
                "message" => "linkexterno not found"
            ], 404);
        }
    }
}
