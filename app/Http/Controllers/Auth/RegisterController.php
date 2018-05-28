<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Role;
use App\EmailLogin;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Auth;
use App\Notifications\UserRegisteredNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use App\Mail\verifyEmail;

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
           // 'password' => 'required|string|min:6|regex:/^(?=.*[a-zA-Z])(?=.*\d).+$/|
            //confirmed',
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

        //generate a password for the new users
       $pw = User::generateRandom(8);

        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' =>  bcrypt($pw), //bcrypt($data['password']),
            'verify_token' => Str::random(40),
        ]);
        $user->save();
        //$user->roles()->attach(Role::where('name','User')->first());
        $thisuser = User::findorfail($user->id);       
        $this->sendRegisterEmail($thisuser, $pw);       
               
    }
     
    //create a new method that overrides default register, use this create function to add users 

    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event($user = $this->create($request->all()));

       // $this->guard()->login($user);
    //this commented to avoid register user being auto logged in
        return redirect(route('admin'));
         //return $this->registered($request, $user)
            //?: redirect($this->redirectPath());
    }
  

    public function sendRegisterEmail(User $user, $pw)
    {
       
       Mail::to($user['email'])->send(new verifyEmail($user, $pw)) ;//verifyEmail is in Mail folder

      
}
public function sendEmailDone($email, $verify_token){
    $user = User::where(['email' => $email, 'verify_token' => $verify_token])->first();
    if ($user){

       User::where(['email' => $email, 'verify_token' => $verify_token])->update(['status'=>'1','verify_token' =>NULL]);
      
       $this->guard()->login($user);
       return redirect('auth.changepassword');

    }
    else
        return 'user not found';
}
    
}
