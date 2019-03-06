<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\AdminController;
use App\Admin;

use Session;

//use Illuminate\Support\Facades\Request;

class LoginAdminController extends Controller
{
    public function login()
	{
        return view('admin.loginAdmin');
        // error_log('logined');

    }

    public function dologin(Request $request)
	{
		// return 'done';
		// dd($request);
		$rememberme = request('rememberme') == 1?true:false;
		if (auth()->guard('admin')->attempt(['email'=>request('email'), 'password'=>request('password')] , $rememberme))
		{
            // return redirect()->route('admin');
            return view('admin.index');

		}
		else
		  {
			//   \Auth::user()->
            session()->flash('error', trans('admin.inccorrect_information_login'));
              return redirect()->back();

		  }

    }

    public function logout()
	{
		auth()->guard('admin')->logout();
		return redirect(url('admin.loginAdmin'));
	}
}
