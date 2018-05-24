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


Route::post('/registrate', 
    ['uses' => 'Registration\RegistrationController@processRegistrationRequest'])->name('registrate');


Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home', 'PagesController@home');
Route::get('/changePassword','HomeController@showChangePasswordForm');
Route::post('/changePassword','HomeController@changePassword')->name('changePassword');
Route::get('/init_nbc', 'PagesController@init_nbc');
Route::post('/download_nbc', 'PagesController@download_nbc');

*/


Route::group(['middleware' => 'web'], function () {
    Auth::routes();

    Route::get('/', function () {
              
        return view('welcome');
    })->name('main');

    Route::get('/author', [
        'uses' => 'AppController@getAuthorPage',
        'as' => 'author',
        'middleware' => 'roles',
        'roles' => ['Admin', 'Author']
    ]);
    Route::get('/author/generate-article', [
        'uses' => 'AppController@getGenerateArticle',
        'as' => 'author.article',
        'middleware' => 'roles',
        'roles' => ['Author']
    ]);
    Route::get('/home', [
        'uses' => 'AppController@getIndex',
        'as' => 'user'/*,
        'middleware' => 'roles',
        'roles' => ['Admin']*/
    ]);
    Route::get('/admin', [
        'uses' => 'AppController@getAdminPage',
        'as' => 'admin',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);
    Route::post('/admin/assign-roles', [
        'uses' => 'AppController@postAdminAssignRoles',
        'as' => 'admin.assign',
        'middleware' => 'roles',
        'roles' => ['Admin']
    ]);
    /*
    Route::get('/signup', [
        'uses' => 'AuthController@getSignUpPage',
        'as' => 'signup'
    ]);
   
    Route::post('/signup', [
        'uses' => 'Auth/RegisterController@create',
        'as' => 'signup'
    ]);
    */
    Route::get('/registration', function () {
    
        return view('registration');
    })->name('registration');
    
    Route::post('/registrate', 
    ['uses' => 'Registration\RegistrationController@processRegistrationRequest'])->name('registrate');

    Route::get('/signin', [
        'uses' => 'AuthController@getSignInPage',
        'as' => 'signin'
    ]);
    Route::post('/signin', [
        'uses' => 'AuthController@postSignIn',
        'as' => 'signin'
    ]);
    Route::get('/logout', [
        'uses' => 'AuthController@getLogout',
        'as' => 'logout'
    ]);
});

