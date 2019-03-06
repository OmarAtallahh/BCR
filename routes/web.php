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
Route::group(['prefix'=>'admin', 'namespace'=>'admin'], function(){

     Config::set('auth.defines','admin');
      Route::get('/login','LoginAdminController@login');
      Route::post('/login','LoginAdminController@dologin');

      Route::group(['middleware'=>'admin:admin'],function(){

      Route::get('/',function(){
          return view('admin/index');
        });
        Route::any('logout','AdminAuth@logout');

      });
    });


    //
    // Route::group(['prefix'=>'admin'], function(){
    //
    //      Config::set('auth.defines','admin');
    //       Route::get('/login','AdminController@login');
    //       Route::post('/login','AdminController@dologin');
    //
    //       Route::group(['middleware'=>'admin:admin'],function(){
    //
    //       Route::get('/',function(){
    //           return view('admin/index');
    //         });
    //         Route::any('logout','AdminAuth@logout');
    //
    //       });
    //     });



Route::group(['prefix'=>'doctor', 'namespace'=>'doctor'], function(){

     Config::set('auth.defines','doctor');
      Route::get('/login','LoginDoctorController@login');
      Route::post('/login','LoginDoctorController@dologin');

      Route::group(['middleware'=>'doctor:doctor'],function(){

      Route::get('/',function(){
          return view('admin/index');

        });
        Route::any('logout','AdminAuth@logout');

      });
    });
/*---------------------------------------------------------------------------*/

Route::get('/', function () {
    return view('main.index');
});
/*---------------------------------------------------------------------------*/
Route::get('/admin/loginAdmin', function () {
    return view('admin.loginAdmin');
});

Route::get('/main/loginDoctor', function () {
    return view('main.loginDoctor');
});
/*---------------------------------------------------------------------------*/
// Route::get('/main','MainController@index');
Route::get('/main/about','MainController@tow');
Route::get('/main/TestData','MainController@four');
// Route::get('/main/index','MainController@interface');
/*-------------------------------------------------------------------------*/
Route::get('/admin/{id}/delete','AdminController@destroy');
Route::get('/admin/reports','AdminController@problems');
Route::resource('/admin','AdminController');
Route::get('/admin','AdminController@search');
/*-------------------------------------------------------------------------*/
Route::resource('/main/createReport','ReportController');
/*-------------------------------------------------------------------------*/
Route::resource('/main/statistics','StatisticsController');
/*-------------------------------------------------------------------------*/
Route::get('/doctor/{id}/delete','DoctorController@destroy');
Route::resource('/doctor','DoctorController');
Route::get('/doctor','DoctorController@search');
