<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Role;
use App\PasswordHistory;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Auth;
use App\Notifications\UserRegisteredNotification;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = 'admin';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|regex:/^(?=.*[a-zA-Z])(?=.*\d).+$/|
            confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     
     */
    protected function create(array $data)
    {
        $this->redirectTo = 'admin';
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
        $user->save();
        $user->roles()->attach(Role::where('name','User')->first());
        

        $passwordHistory = PasswordHistory::create([
            'user_id' => $user->id,
             'password' => bcrypt($data['password']),
        ]);
        $passwordHistory->save();  
               
    }
     
    //create a new method that overrides default register, use this create function to add users 

    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event($user = $this->create($request->all()));

       // $this->guard()->login($user);
    //this commented to avoid register user being auto logged in

        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }

    
}
