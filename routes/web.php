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


Route::get('/', function () {
    return view('welcome');
});
Route::get('/demo', function () {
    return view('demo');
});
/*Route::get('/home', function () {
    return view('home');
}); 

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
*/
Route::get('/', function () {
    return view('welcome');
});
Route::get('auth/login', ['uses' => 'Auth\AuthController@getLogin']);
Route::post('auth/login', ['uses' => 'Auth\AuthController@postLogin']);
Route::get('auth/logout', ['uses' => 'Auth\AuthController@getLogout']);

Route::post('/home', ['uses' => 'Main\MainController@index']);


Route::get('/registration', function () {
    return view('registration');
})->name('registration');


Route::post('/registrate', ['uses' => 'Registration\RegistrationController@processRegistrationRequest'])->name('registrate');


Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home', 'PagesController@home');
Route::get('/tiles', 'PagesController@tiles');
Route::get('/utilities', 'PagesController@utilities');
