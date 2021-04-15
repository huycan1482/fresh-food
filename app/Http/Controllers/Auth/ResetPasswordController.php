<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Validation\Validator;
use App\Mail\MailNotify;
use App\User;
use Illuminate\Support\Facades\Hash;

class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    use ResetsPasswords;

    /**
     * Where to redirect users after resetting their password.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function index()
    {
        return view('auth.resetPassword');
    }

    public function checkEmail() 
    {
        return view ('auth.checkEmail');
    }

    public function postCheckEmail(Request $request) 
    {
        $request->validate([
            'email' => 'required|email|exists:users,email|unique:password_resets,email',
        ], [
            'email.required' => 'Yêu cầu không để trống',
            'email.email' => 'Không đúng định dạng email',
            'email.exists' => 'Email của users không tồn tại',
            'email.unique' => 'Email đã được gửi mã xác nhận',
        ]);

        // $numbers = collect([0,1,2,3,4,5,6,7,8,9]);
        // dd($numbers->random(4));

        $token = random_int(1000, 9999);

        // dd('here');

        DB::table('password_resets')->insert([
            'email' => $request->email,
            'token' => $token,
        ]);

        // if ($this->sendResetEmail($request->email, $token)) {
        //     dd('send');
        // } else {
        //     dd('not yet');
        // }

        Mail::to($request->input('email'))->send(new MailNotify($token, 'passForgot')); 

        return redirect()->route('admin.resetPassword');
    }

    // public function checkToken() 
    // {
    //     return view('auth.checkToken');
    // }

    // public function postCheckToken(Request $request) 
    // {
    //     dd($request->all());

    //     $request->validate([
    //         'token' => 'required|exists:rese'
    //     ]);

    //     $token = $request->input('token');
    // }

    public function postResetPassword(Request $request)
    {
        // $request->validate([
        //     'email' => 'required|email|exists:users,email',
        //     'password' => 'required|min:8',
        //     'password_confirmation' => 'required|same:password',
        //     'token' => 'required',
        // ], [
        //     'email.required' => 'Yêu cầu không để trống',
        //     'email.email' => 'Không đúng định dạng email',
        //     'email.exists' => 'Email không tồn tại',
        //     'password.required' => 'Yêu cầu không để trống',
        //     'password.min' => 'Mật khẩu lớn hơn 8 kí tự',
        //     'password_confirmation.required' => 'Yêu cầu không để trống',
        //     'password_confirmation.same' => 'Nhắc lại mật khẩu phải trùng với mật khẩu mới',
        // ]);

        $email = $request->input('email');
        $token = $request->input('token');

        // dd(DB::table('password_resets')->where(['email' => $email, 'token' => $token])->get()->first());

        $tokenData = DB::table('password_resets')->where(['email' => $email, 'token' => $token])->get()->first();

        if (!$tokenData) {
            return back()->with('verify_token', 'Mã xác của bạn không khớp với email tồn tại');
        }

        $user_id = User::where('email', $email)->get()->first()->id;

        $user = User::findOrFail($user_id);
        $user->password = Hash::make($request->input('password'));
        $user->save();

        DB::table('password_resets')->where('email', $email)->delete();

        return redirect()->route('admin.login');
    }


}
