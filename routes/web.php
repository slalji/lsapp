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


Route::group(['middleware' => 'web'], function () {
    Auth::routes();

    Route::get('/', function () {
              
        return view('auth.login');
    })->name('main');
    Route::get('/home', 'PagesController@home');
    Route::get('/changePassword','HomeController@showChangePasswordForm');
    Route::post('/changePassword','HomeController@changePassword')->name('changePassword');

    Route::get('/init_nbc', 'PagesController@init_nbc');
    Route::post('/download_nbc', 'PagesController@download_nbc');
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

Route::get('verify/{email}/{verify_token}','Auth\RegisterController@sendEmailDone')->name('sendEmailDone');
// Password reset routes...
//Route::post('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.request');
Route::post('password/reset', 'Auth\ResetPasswordController@postReset')->name('password.reset');
Route::get('password/reset', 'Auth\ForgotPasswordController@sendForgottenEmailForm')->name('password.request');
Route::post('password/email', 'Auth\ForgotPasswordController@sendForgottenEmail')->name('password.email');
Route::get('forgotten/{token}', 'Auth\ForgotPasswordController@showResetForm')->name('showResetForm');
Route::get('forgotten/{token}','Auth\ForgotController@resetPassword')->name('resetPassword');

});