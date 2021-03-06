<?php

namespace App\Http\Middleware;

use Carbon\Carbon;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class ProductEditLog
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
        // dd($request->ip()); //lấy đỊa chỉ ip
        // dd(Auth::user()->id); //lấy id user 
        // dd(Carbon::now()->format("Y-m-d H:i:s")); //lấy nam-thang-ngay-giờ hiện tại
        Log::info("Edit Product: id = ".$request->id . " - user: ". Auth::id() . ' - time: ' . Carbon::now()->format("Y-m-d H:i:s"));
        return $next($request);
    }
}
