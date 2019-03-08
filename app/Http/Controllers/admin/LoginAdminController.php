<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginAdminController extends Controller
{
    public function login()
    {
        if (!auth('admin')->check()) {
            return view('admin.loginAdmin');
        }

        return redirect(route('adminHomePage'));
    }

    public function dologin(Request $request)
    {
        if (auth('admin')->check()) {
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
        if (!auth()->guard('admin')->attempt(['email' => request('email'), 'password' => request('password')], $rememberMe)) {
            return redirect()->back()->with(['danger' => 'Invalid Email Or Password ']);
        }
        return redirect(route('adminHomePage'));
    }

    public function logout()
    {
        auth()->guard('admin')->logout();
        return redirect(route('adminHomePage'));
    }
}
