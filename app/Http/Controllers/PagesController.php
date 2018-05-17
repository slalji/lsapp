<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    function home(){
         
            $currentMonth = date('m');
            $currentMonth = '03';
            //$tiles = DB::table('transactions')->get();
            $tiles = DB::table('transactions')
                    ->select(DB::raw('utility_code, format(sum(amount),0) as amnt, count(amount) as cnt'))
                    ->where( 'type', '=', 'DEBIT')
                    ->whereMonth('fulltimestamp','=','03')
                    ->groupBy('utility_code')
                    ->orderBy('cnt','desc')->take(6)
                    ->get();

            $utility_codes = DB::table('transactions')
            ->select(DB::raw('utility_code'))           
            ->groupBy('utility_code')
            ->orderBy('utility_code')        
            ->get();
        
            return view('dashboard', compact('tiles', 'utility_codes'));
    }
    function tiles(){
        $currentMonth = date('m');
            //$tiles = DB::table('transactions')->get();
            $tiles = DB::table('transactions')
                         ->select(DB::raw('utility_code, format(sum(amount),0) as amnt, count(amount) as cnt'))
                         ->where( 'type', '=', 'DEBIT')
                         ->whereMonth('fulltimestamp','=','03')
                         ->groupBy('utility_code')
                         ->orderBy('cnt','desc')->take(6)
                         ->get();

            return $tiles;
    }
    function utilities(){
        $utility_codes = DB::table('transactions')
            ->select(DB::raw('utility_code'))           
            ->groupBy('utility_code')
            ->orderBy('utility_code')        
            ->get();
            return $utility_codes;
    }
}
