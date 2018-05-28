<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\User;

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
    //protected $redirectTo = '/home';
    //protected $redirectTo = '/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('guest', ['except' => ['logout', 'getLogout']]);
    
    }
    protected function authenticated($request, $user)
    {
        if($user->hasRole('admin')){
            return redirect('admin');
        }
        else if ($user->firsttime == '0')
            return redirect('changePassword');
        else{
            return redirect('home');
        }
    }
    public function authenticateEmail($token)
    {
        $emailLogin = EmailLogin::validFromToken($token);

        Auth::changepassword($emailLogin->user);

        return redirect('auth.changepassword');
    }
}
