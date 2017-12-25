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

        Route::get('authorize/{id}/{token}', 'AuthController@auth');

        Route::post('get_token/', 'AuthController@get_token');

    });

    Route::group(['prefix' => 'menus'], function () {

        Route::get('/', 'MenusController@index');

        Route::get('/get/{id}', 'MenusController@get');

        Route::post('/insert', 'MenusController@insert');

        Route::post('/update/{id}', 'MenusController@update');

        Route::get('/delete/{id}', 'MenusController@delete');

    });

    Route::group(['prefix' => 'menu_options'], function () {

        Route::get('/', 'MenuOptionsController@index');

        Route::get('/get/{id}', 'MenuOptionsController@get');

        Route::get('/get_menu_options/{id}', 'MenuOptionsController@get_menu_options_for_menu');

        Route::post('/insert', 'MenuOptionsController@insert');

        Route::post('/update/{id}', 'MenuOptionsController@update');

        Route::get('/delete/{id}', 'MenuOptionsController@delete');

    });

    Route::group(['prefix' => 'additionals'], function () {

        Route::get('/', 'AdditionalsController@index');

        Route::get('/get/{id}', 'AdditionalsController@get');

        Route::post('/insert', 'AdditionalsController@insert');

        Route::post('/update/{id}', 'AdditionalsController@update');

        Route::get('/delete/{id}', 'AdditionalsController@delete');

    });

    Route::group(['prefix' => 'addresses'], function () {

        Route::get('/', 'AddressesController@index');

        Route::get('/get/{id}', 'AddressesController@get');

        Route::get('/get_user_addresses/{id}', 'AddressesController@get_user_addresses');

        Route::post('/insert', 'AddressesController@insert');

        Route::post('/update/{id}', 'AddressesController@update');

        Route::get('/delete/{id}', 'AddressesController@delete');

    });

    Route::group(['prefix' => 'orders'], function () {

        Route::get('/', 'OrdersController@index');

        Route::get('/get/{id}', 'OrdersController@get');

        Route::get('/get_user_orders/{id}', 'OrdersController@get_user_orders');

        Route::post('/insert', 'OrdersController@insert');

        Route::post('/update/{id}', 'OrdersController@update');

        Route::get('/delete/{id}', 'OrdersController@delete');

    });

    Route::group(['prefix' => 'users'], function () {

        Route::get('/', 'UsersController@index');

        Route::get('/get/{id}', 'UsersController@get');

        Route::post('insert', 'UsersController@insert');

        Route::post('/update/{id}', 'UsersController@update');

        Route::get('/delete/{id}', 'UsersController@delete');

    });

});