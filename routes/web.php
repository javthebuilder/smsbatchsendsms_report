<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InExcelController;
use App\Http\Controllers\ReportsController;

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
    return view('excel_ex.select_message_type');
});



Route::get('/testJob', [InExcelController::class,'testJob'])->name('job_in');


Route::get('/reports', [ReportsController::class,'index'])->name('index');

Route::get('reports_data', [ReportsController::class,'store'])->name('reports_data');

