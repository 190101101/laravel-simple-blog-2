<?php

namespace App\Http\Middleware;

use Closure;

class authless
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(!\Auth::guest() && \Auth::user()->type == 'admin'){
            return redirect('/');
        }
        return $next($request);
    }
}
