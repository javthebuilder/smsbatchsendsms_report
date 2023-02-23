<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SMSDemoController;

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


Route::post('/accept-batch-message',[ SMSDemoController::class , 'acceptingBatch'])
->name('accept-batch-message-csv');

Route::post('/accept-batch-message-power-interruption',[ SMSDemoController::class , 'acceptingBatchPowerInterruption'])
->name('accept-batch-message-power-interruption');

Route::post('/accept-batch-message-info',[ SMSDemoController::class , 'acceptingBatchInfo'])
->name('accept-batch-message-info');


Route::get('/show-batch-history',[ SMSDemoController::class , 'showBatchHistory'])
->name('show-batch-history');

Route::post('/show-batch-history-range',[ SMSDemoController::class , 'showBatchHistoryRange'])
->name('show-batch-history-range');

Route::get('/show-batchid-history/{$batchid}',[ SMSDemoController::class , 'showBatchIdHistory'])
->name('show-batchid-history');


