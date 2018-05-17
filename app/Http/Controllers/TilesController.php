<?php

namespace App\Http\Controllers;
use App\Tile;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TilesController extends Controller
{
    public function index(){
        $currentMonth = date('m');
        //$tiles = DB::table('transactions')->get();
        $tiles = DB::table('transactions')
                     ->select(DB::raw('utility_code, format(sum(amount),0) as amnt, format(count(amount),0) cnt'))
                     ->where([
                        ['type', '=', 'DEBIT'],
                        ['MONTH(fulltimestamp)', '=', $currentMonth],
                    ])
                     ->groupBy('utility_code')
                     ->orderBy('count(amount)','desc')->take(6)
                     ->get();
                     //$sql="SELECT utility_code, format(sum(amount),0) amnt, format(count(amount),0) cnt FROM `transactions` 
                     //WHERE type = 'DEBIT' && MONTH(fulltimestamp)= '".$month."' GROUP BY utility_code order by count(amount) desc LIMIT 6";

        
        return View::make('tiles.index', compact('tiles'));
    }
}
