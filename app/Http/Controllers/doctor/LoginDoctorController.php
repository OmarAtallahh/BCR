<?php
namespace App\Http\Controllers\doctor;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use Session;
//use Illuminate\Support\Facades\Request;


class LoginDoctorController extends Controller
{
    public function login()
	{
        return view('main.loginDoctor');
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
            return view('main.index');
           
		}
		else
		  {
            //   \Auth::user()->
            // return 'done';
            session()->flash('error', trans('admin.inccorrect_information_login'));
              return redirect()->back();
              
            
		  }

    }
    
    public function logout()
	{
		auth()->guard('doctor')->logout();
		return redirect(url('main.loginAdmin'));
	}
}
