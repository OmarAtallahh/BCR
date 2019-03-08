<?php

namespace App\Http\Controllers\doctor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;

//use Illuminate\Support\Facades\Request;


class LoginDoctorController extends Controller
{
    public function login()
    {
        if (!auth('doctor')->check()) {
            return view('main.loginDoctor');
        }

        return redirect(route('doctorHomePage'));
    }

    public function dologin(Request $request)
    {
        if (auth('doctor')->check()) {
            return view('admin.index');
        }

        $validator = \Validator::make($request->all(), [
            'email' => 'required',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator->errors()->all());
        }
        $rememberMe = request('rememberme') == 1 ? true : false;
        if (!auth()->guard('doctor')->attempt(['email' => request('email'), 'password' => request('password')], $rememberMe)) {
            return redirect()->back()->with(['danger' => 'Invalid Email Or Password ']);
        }
        return redirect(route('doctorHomePage'));
    }

    public function logout()
    {
        auth()->guard('doctor')->logout();
        return redirect(route('doctorHomePage'));
    }
}
