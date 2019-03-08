<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;


class Doctor
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure  $next = null ,$guard = null )
    {
        if (Auth::guard($guard)->guest()) {
            return redirect(route('loginViewDoctor'));
        }

        return $next($request);
    }
}
