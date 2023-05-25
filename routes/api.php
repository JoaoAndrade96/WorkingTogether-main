<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Models\Student;
use App\Models\Empresa;
use App\Models\CategoriasVaga;
use App\Models\Cidade;
use App\Models\Endereco;
use App\Models\Estado;
use App\Models\FormacoesAcademica;
use App\Models\LinksExterno;
use App\Models\Ramo;
use App\Models\SetoresEmprego;
use App\Models\TiposEmprego;
use App\Models\User;
use App\Models\Vaga;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('students', 'App\Http\Controllers\ApiController@getAllStudents');
Route::get('students/{id}', 'App\Http\Controllers\ApiController@getStudent');
Route::post('usuarios', 'App\Http\Controllers\UserController@createCadastro')->name('salvarusuario');
Route::put('students/{id}', 'App\Http\Controllers\ApiController@updateStudent');
Route::delete('students/{id}', 'App\Http\Controllers\ApiController@deleteStudent');

Route::get('empresas', 'App\Http\Controllers\EmpresaController@getAllEmpresas');
Route::get('empresas/{id}', 'App\Http\Controllers\EmpresaController@getEmpresa');
Route::post('empresas', 'App\Http\Controllers\EmpresaController@createEmpresa')->name('salvarempresas');
Route::put('empresas/{id}', 'App\Http\Controllers\EmpresaController@updateEmpresa');
Route::delete('empresas/{id}', 'App\Http\Controllers\EmpresaController@deleteEmpresa');

Route::get('categoriasvagas', 'App\Http\Controllers\CategoriasVagaController@getAllCategoriasVagas');
Route::get('categoriasvagas/{id}', 'App\Http\Controllers\CategoriasVagaController@getCategoriasVaga');
Route::post('categoriasvagas', 'App\Http\Controllers\CategoriasVagaController@createCategoriasVaga');
Route::put('categoriasvagas/{id}', 'App\Http\Controllers\CategoriasVagaController@updateCategoriasVaga');
Route::delete('categoriasvagas/{id}', 'App\Http\Controllers\CategoriasVagaController@deleteCategoriasVaga');

Route::get('cidades', 'App\Http\Controllers\CidadeController@getAllCidades');
Route::get('cidades/{id}', 'App\Http\Controllers\CidadeController@getCidade');
Route::post('cidades', 'App\Http\Controllers\CidadeController@createCidade');
Route::put('cidades/{id}', 'App\Http\Controllers\CidadeController@updateCidade');
Route::delete('cidades/{id}', 'App\Http\Controllers\CidadeController@deleteCidade');

Route::get('enderecos', 'App\Http\Controllers\EnderecoController@getAllEnderecos');
Route::get('enderecos/{id}', 'App\Http\Controllers\EnderecoController@getEndereco');
Route::post('enderecos', 'App\Http\Controllers\EnderecoController@createEndereco');
Route::put('enderecos/{id}', 'App\Http\Controllers\EnderecoController@updateEndereco');
Route::delete('enderecos/{id}', 'App\Http\Controllers\EnderecoController@deleteEndereco');

Route::get('estados', 'App\Http\Controllers\EstadoController@getAllEstados');
Route::get('estados/{id}', 'App\Http\Controllers\EstadoController@getEstado');
Route::post('estados', 'App\Http\Controllers\EstadoController@createEstado');
Route::put('estados/{id}', 'App\Http\Controllers\EstadoController@updateEstado');
Route::delete('estados/{id}', 'App\Http\Controllers\EstadoController@deleteEstado');

Route::get('formacoesacademicas', 'App\Http\Controllers\FormacoesAcademicaController@getAllFormacoesAcademicas');
Route::get('formacoesacademicas/{id}', 'App\Http\Controllers\FormacoesAcademicaController@getFormacoesAcademica');
Route::post('formacoesacademicas', 'App\Http\Controllers\FormacoesAcademicaController@createFormacoesAcademica');
Route::put('formacoesacademicas/{id}', 'App\Http\Controllers\FormacoesAcademicaController@updateFormacoesAcademica');
Route::delete('formacoesacademicas/{id}', 'App\Http\Controllers\FormacoesAcademicaController@deleteFormacoesAcademica');

Route::get('linksexternos', 'App\Http\Controllers\LinksExternoController@getAllLinksExternos');
Route::get('linksexternos/{id}', 'App\Http\Controllers\LinksExternoController@getLinksExterno');
Route::post('linksexternos', 'App\Http\Controllers\LinksExternoController@createLinksExterno');
Route::put('linksexternos/{id}', 'App\Http\Controllers\LinksExternoController@updateLinksExterno');
Route::delete('linksexternos/{id}', 'App\Http\Controllers\LinksExternoController@deleteLinksExterno');

Route::get('ramos', 'App\Http\Controllers\RamoController@getAllRamos');
Route::get('ramos/{id}', 'App\Http\Controllers\RamoController@getRamo');
Route::post('ramos', 'App\Http\Controllers\RamoController@createRamo');
Route::put('ramos/{id}', 'App\Http\Controllers\RamoController@updateRamo');
Route::delete('ramos/{id}', 'App\Http\Controllers\RamoController@deleteRamo');

Route::get('setoresempregos', 'App\Http\Controllers\SetoresEmpregoController@getAllSetoresEmpregos');
Route::get('setoresempregos/{id}', 'App\Http\Controllers\SetoresEmpregoController@getSetoresEmprego');
Route::post('setoresempregos', 'App\Http\Controllers\SetoresEmpregoController@createSetoresEmprego');
Route::put('setoresempregos/{id}', 'App\Http\Controllers\SetoresEmpregoController@updateSetoresEmprego');
Route::delete('setoresempregos/{id}', 'App\Http\Controllers\SetoresEmpregoController@deleteSetoresEmprego');

Route::get('tiposempregos', 'App\Http\Controllers\TiposEmpregoController@getAllTiposEmpregos');
Route::get('tiposempregos/{id}', 'App\Http\Controllers\TiposEmpregoController@getTiposEmprego');
Route::post('tiposempregos', 'App\Http\Controllers\TiposEmpregoController@createTiposEmprego');
Route::put('tiposempregos/{id}', 'App\Http\Controllers\TiposEmpregoController@updateTiposEmprego');
Route::delete('tiposempregos/{id}', 'App\Http\Controllers\TiposEmpregoController@deleteTiposEmprego');

Route::get('vagasmostrar', 'App\Http\Controllers\VagaController@getAllVagas');
Route::get('vagas/{id}', 'App\Http\Controllers\VagaController@getVaga');
Route::post('vagas', 'App\Http\Controllers\VagaController@createVaga')->name('salvarvaga');
Route::put('vagas/{id}', 'App\Http\Controllers\VagaController@updateVaga');
Route::delete('vagas/{id}', 'App\Http\Controllers\VagaController@deleteVaga');
