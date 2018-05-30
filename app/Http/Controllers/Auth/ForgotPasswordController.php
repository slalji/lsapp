<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Auth;
use App\User;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use App\Mail\ForgottenEmail;


class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }
    public function sendForgottenEmail(Request $request)
    {
         
        $user = User::where('email', '=', $request->email)->firstOrFail();
         if (!$user) return redirect()->back()->withErrors(['error' => '404']);  
        $token = bcrypt(str_random(60));
        //create a new token to be sent to the user. 
        DB::table('password_resets')->insert([
            'email' => $request->email,
            'token' => $token, //change 60 to any length you want
            'created_at' => Carbon::now()
        ]);
        
       Mail::to($request->email)->send(new ForgottenEmail($token)) ;//verifyEmail is in Mail folder
       
    } 
 
    public function sendForgottenEmailForm()
    {
        return view('auth.passwords.email');
    }
   /* public function sendForgottenEmailDone($email, $token){
        
        $tokenData = DB::table('password_resets')
        ->where('token', $token)->first();
        
        if ($user){

        User::where(['email' => $email, 'verify_token' => $verify_token])->update(['status'=>'1','verify_token' =>NULL]);
        
        return redirect('auth.changepassword');

        }
        else
            return 'user not found';
    }*/
    public function showResetForm($token)
    {
        return $token;
        $mytoken = bcrypt($token);
        $canreset = DB::table('password_resets')
        ->where('token', $token)->first();
        if ($canreset){
            return view('auth.passwords.reset');
        }
       return $mytoken;
    }
     public function resetPassword(Request $request){       

        $password = $request->password;
        $tokenData = DB::table('password_resets')
        ->where('token', $token)->first();
   
        $user = User::where('email', $tokenData->email)->first();
        if ( !$user ) return redirect()->to('home'); //or wherever you want
        $validatedData = $request->validate([
            'current-password' => 'required',
            'password' => 'required|string|min:6|regex:/^(?=.*[a-zA-Z])(?=.*\d).+$/|confirmed',
        ]);
        $user->password = Hash::make($password);
        $user->update(); //or $user->save();
   
        //do we log the user directly or let them login and try their password for the first time ? if yes 
        //Auth::login($user);
   
       // If the user shouldn't reuse the token later, delete the token 
       DB::table('password_resets')->where('email', $user->email)->delete();
   
       //redirect where we want according to whether they are logged in or not. 
       
 
        //Check Password History
        $user = Auth::user();
        $passwordHistories = $user->passwordHistories()->take(env('PASSWORD_HISTORY_NUM'))->get();
        foreach($passwordHistories as $passwordHistory){
            echo $passwordHistory->password;
            if (Hash::check($request->get('password'), $passwordHistory->password)) {
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
     
}
