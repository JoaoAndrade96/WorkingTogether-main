<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VagaController;

use App\Models\Empresa;
use App\Models\Vaga;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $vagas = Vaga::all()->take(6);
    $empresas = Empresa::all()->take(6);
    return view('welcome', compact('empresas', 'vagas'));  
})->name('welcome');

Route::get('/vagas', [App\Http\Controllers\VagaController::class, 'listarVagas'])->name('vagas');
Route::get('/adicionarvagas', [App\Http\Controllers\VagaController::class, 'adicionarvagas'])->name('adicionarvagas');

Route::get('/empresas', [App\Http\Controllers\EmpresaController::class, 'listarEmpresas'])->name('empresas');
Route::get('/adicionarempresas', [App\Http\Controllers\EmpresaController::class, 'adicionarempresas'])->name('adicionarempresas');

Route::get('/candidatarse', [App\Http\Controllers\CandidatoController::class, 'candidatarseVaga'])->name('candidatarse');
Route::get('/candidatos', [App\Http\Controllers\CandidatoController::class, 'listarCandidatos'])->name('candidatos');

Route::get('/cadastro', [App\Http\Controllers\UserController::class, 'cadastro'])->name('cadastro');;

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

// Route::get('/vagasmostrar', function () {
//     return view('vagas.index');
// })->name('vagas');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();
