<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('guest')->except('logout');
    // }

    public function login () 
    {
        return view ('auth.login');
    }

    public function postLogin (Request $request)
    {

        $request->validate([
            'email' => 'required|string|email|max:255',
            'password' => 'required|string|min:6'
        ], [
            'email.required' => 'Yêu cầu không để trống',
            'email.email' => 'Không đúng định dạng email',
            'password.required' => 'Yêu cầu không để trống',
            'password.min' => 'Độ dài mật khảu phải lớn hơn 6 kí tự'
        ]);

        $data = [
            'email' => $request->input('email'),
            'password' => $request->input('password')
        ];


        // check success
        if (Auth::attempt($data, $request->input('remember'))) {
            return redirect()->route('admin.dashboard');
        }

        return redirect()->back()->with('msg', 'Email hoặc Password không chính xác');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login');
    }
}
