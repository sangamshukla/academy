<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class OperationMiddleware
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
        if (auth()->user()->role!=='operation') {
            if (auth()->user()->role!=='admin') {
                return redirect('/');
            }
        }
        return $next($request);
    }
}
