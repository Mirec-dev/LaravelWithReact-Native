<?php

use App\Http\Controllers\DessertController;
use App\Http\Controllers\MainmealController;
use App\Http\Controllers\ReceptController;
use App\Http\Controllers\SoupController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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


Route::middleware(['cors'])->group(function () {
    Route::get('mains', [MainmealController::class, 'index']);
    Route::get('soups', [SoupController::class, 'index']);
    Route::get('desserts', [DessertController::class, 'index']);
});
