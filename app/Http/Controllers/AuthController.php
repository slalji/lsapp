<?php
namespace App\Http\Controllers;
use App\User;
use App\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    public function getSignUpPage()
    {
        return view('auth.register');
    }
    public function getSignInPage()
    {
        return view('auth.login');
    }
    public function postSignUp(Request $request)
    {
        $user = new User();
        $user->name = $request['name'];        
        $user->email = $request['email'];
        $user->password = bcrypt($request['password']);
        $user->save();
        $user->roles()->attach(Role::where('name', 'User')->first());
        Auth::login($user);
        return redirect()->route('admin');
    }
   /* public function postSignIn(Request $request)
    {
        if (Auth::attempt(['email' => $request['email'], 'password' => $request['password']])) {
            return redirect()->route('main');
        }
        return redirect()->back();
    }
    */
    public function getLogout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
    
}