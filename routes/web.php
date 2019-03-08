<?php

Route::get('/', function () {
    return redirect('/admin');
});

Route::group(['prefix' => 'admin', 'namespace' => 'admin'], function () {

    Config::set('auth.defines', 'admin');
    Route::post('login', 'LoginAdminController@dologin')->name('doLoginForAdmin');
    Route::get('login', 'LoginAdminController@login')->name('loginViewAdmin');

    Route::group(['middleware' => 'admin:admin'], function () {
        Route::get('/', function () { return view('admin.index'); })->name('adminHomePage');
        Route::get('logout', 'LoginAdminController@logout')->name('adminLogout');


        /*  HERE PUT ALL YOUR ROUTES NEED TO ADMIN LOGGED IN FIRST */

    });
});

Route::group(['prefix' => 'doctor', 'namespace' => 'doctor'], function () {

    // Config::set('auth.defines', 'doctor');
    Route::post('login', 'LoginDoctorController@dologin')->name('doLoginForDoctor');
    Route::get('login', 'LoginDoctorController@login')->name('loginViewDoctor');

    Route::group(['middleware' => 'doctor:doctor'], function () {
        Route::get('/', function () { return view('main.index'); })->name('doctorHomePage');
        Route::get('logout', 'LoginDoctorController@logout')->name('doctorLogout');


        /*  HERE PUT ALL YOUR ROUTES NEED TO DOCTOR LOGGED IN FIRST */


    });
});
/*---------------------------------------------------------------------------*/
// Route::get('/main','MainController@index');
//Route::get('/main/about', 'MainController@tow');
//Route::get('/main/TestData', 'MainController@four');
//// Route::get('/main/index','MainController@interface');
///*-------------------------------------------------------------------------*/
//Route::get('/admin/{id}/delete', 'AdminController@destroy');
//Route::get('/admin/reports', 'AdminController@problems');
//Route::resource('/admin', 'AdminController');
//Route::get('/admin', 'AdminController@search');
///*-------------------------------------------------------------------------*/
//Route::resource('/main/createReport', 'ReportController');
///*-------------------------------------------------------------------------*/
//Route::resource('/main/statistics', 'StatisticsController');
///*-------------------------------------------------------------------------*/
//Route::get('/doctor/{id}/delete', 'DoctorController@destroy');
//Route::resource('/doctor', 'DoctorController');
//Route::get('/doctor', 'DoctorController@search');
