<?php

namespace App\Http\Middleware;

use Closure;
use App\models\main\page;
use Illuminate\Support\Facades\View;

class Pages
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
        View::share(['pages' => Page::orderBy('order', 'ASC')->where('status', 1)->get()]);

        return $next($request);
    }
}
