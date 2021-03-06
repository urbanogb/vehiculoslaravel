<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SingleActionController;
use App\Http\Controllers\PruebasController;
use App\Http\Controllers\VehiculoController;
use App\Http\Controllers\EventoController;
use App\Http\Controllers\ReservaController;


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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
}); 




Route::get('/singleaction', SingleActionController::class);
Route::resource('/pruebas', PruebasController::class);
Route::resource('/vehiculos', VehiculoController::class);
Route::resource('/eventos', EventoController::class);
Route::resource('/reservas', ReservaController::class);