<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckLogin
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
        // nếu user đã đăng nhập
        if (Auth::check())
        {
            // $user = Auth::user();
            // // check quyền admin && trạng thái hoạt động
            // if ($user->role_id == 1 && $user->is_active == 1 )
            // {
            //     return $next($request);
            // }
            // else
            // {
            //     Auth::logout();
            //     return redirect()->route('admin.login');
            // }
            return $next($request);
        }

        // return redirect()->route('admin.login');
        // dd('here');
        return redirect()->route('admin.login');
    }
}
