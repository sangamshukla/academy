<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class AdminTeacherOperation
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
        if (in_array(auth()->user()->role, ['admin','operation','teacher'])) {
            return $next($request);
        }
        return abort(403);
    }
}
