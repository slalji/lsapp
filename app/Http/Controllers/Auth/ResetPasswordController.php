<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;
use App\EmailLogin;
use App\PasswordHistory;
use Illuminate\Support\Facades\Hash;
use DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use App\Mail\ForgottenEmail;

 

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

 
    public function showChangePasswordForm(){
        
        return view('auth.changepassword');
    }
    
    public function changePassword(Request $request){
       

        if (!(Hash::check($request->get('current-password'), Auth::user()->password))) {
            // The passwords matches
            return redirect()->back()->with("error","Your current password does not matches with the password you provided. Please try again.");
        }
 
        if(strcmp($request->get('current-password'), $request->get('new-password')) == 0){
            //Current password and new password are same
            return redirect()->back()->with("error","New Password cannot be same as your current password. Please choose a different password.");
        }
 
        $validatedData = $request->validate([
            'current-password' => 'required',
            'new-password' => 'required|string|min:6|regex:/^.*(?=.{3,})(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[\d\X])(?=.*[!$#%]).*$/|
            confirmed',
        ]);
 
        //Check Password History
        $user = Auth::user();
        $passwordHistories = $user->passwordHistories()->take(env('PASSWORD_HISTORY_NUM'))->get();
        foreach($passwordHistories as $passwordHistory){
            echo $passwordHistory->password;
            if (Hash::check($request->get('new-password'), $passwordHistory->password)) {
                // The passwords matches
                return redirect()->back()->with("error","Your new password can not be same as any of your recent passwords. Please choose a new password.");
            }
        }
 
 
        //Change Password
 
        $user->password = bcrypt($request->get('new-password'));
        $user->firsttime = '1';
        $user->save();
 
        //entry into password history
        $ph = new PasswordHistory;
        $ph->user_id = $user->id;
        $ph->password = $user->password;
        //Y9*%12pP
        //M6%12n34
        //Q@6%12p45
        $ph->save();  
 
        return redirect()->back()->with("success","Password changed successfully !");
 
    }
    public function sendPasswordResetToken(Request $request)
    {
        $user = User::where ('email', $request->email)-first();
        if ( !$user ) return redirect()->back()->withErrors(['error' => '404']);
    
        //create a new token to be sent to the user. 
        DB::table('password_resets')->insert([
            'email' => $request->email,
            'token' => str_random(60), //change 60 to any length you want
            'created_at' => Carbon::now()
        ]);
    
        $tokenData = DB::table('password_resets')
        ->where('email', $request->email)->first();
    
       $token = $tokenData->token;
       $email = $request->email; // or $email = $tokenData->email;
    
       //send email Mail::send...
}
    
 


}
