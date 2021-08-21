<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class TeacherMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
       // dd(auth()->user()->role);
        if(auth()->user()->role!=='teacher'){
            if(auth()->user()->role!=='admin')
            {
                return redirect('/');
            }
        }
        return $next($request);
    }
}
