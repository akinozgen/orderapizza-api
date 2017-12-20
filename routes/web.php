<?php

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

use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'api/v1'], function () {

    Route::group(['prefix' => 'auth'], function () {

        Route::post('authorize/{id}', 'AuthController@auth');

        Route::post('get_token/', 'AuthController@get_token');

    });

    Route::group(['prefix' => 'menus'], function () {

        Route::get('/', 'MenusController@index');

        Route::get('/get/{id}', 'MenusController@get');

        Route::post('/insert', 'MenusController@insert');

        Route::post('/update/{id}', 'MenusController@update');

        Route::get('/delete/{id}', 'MenusController@delete');

    });

});