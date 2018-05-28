<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user)
            return view('home');
   
    }
    public function authenticateEmail($token)
    {
        $emailLogin = EmailLogin::validFromToken($token);

        return $emailLogin;//view('auth.changepassword');
    }
}
