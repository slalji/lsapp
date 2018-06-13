<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transnet;

class TransnetController extends Controller
{
    public function index(){
        
    }
    public function getParams(Request $request){
        $tpay = $request;
        $method = $tpay['method'];
        $transnet = new Transnet();
         
       $data = array();
       $data['transid'] = $tpay['transid'];
       $data['timestamp'] = $tpay['timestamp'];
       $data['signature'] = $tpay['signature'];
       $data['DOB'] = $tpay['DOB'];
       $data['email'] = $tpay['params']['email'];
       $data['currency'] = $tpay['params']['currency'];
       $data['picture'] = $tpay['params']['picture'];
       $data['vendorid'] = $tpay['params']['vendorid'];
       $data['PIN'] = $tpay['params']['PIN'];
       $data['accountNo'] = $tpay['params']['accountNO'];
       $data['firstName'] = $tpay['params']['firstName'];
       $data['lastName'] = $tpay['params']['lastName'];
       $data['MSISDN'] = $tpay['params']['MSISDN'];
       $data['address']['line1'] = $tpay['params']['address']['line1'];
       $data['address']['line2'] = $tpay['params']['address']['line2'];
       $data['address']['countrySubdivision'] = $tpay['params']['address']['countrySubdivision'];
       $data['address']['country'] = $tpay['params']['address']['country'];
       $data['address']['postalCode'] = $tpay['params']['address']['postalCode'];
      
       //return $data;
   
            //switch method type
            switch($method){
                case 'OpenAccount': return $transnet->OpenAccount($data); break;
                case 'UpdateAccount': $this->UpdateAccount($data); break;
                case 'Cash-IN': $this->Cash-IN($data); break;
                case 'Cash-OUT': $this->Cash-OUT($data); break;
                case 'SendMoney': $this->SendMoney($data); break;
                case 'NameLookup': $this->NameLookup($data); break;
                case 'TransactionLookup': $this->TransactionLookup($data); break;
                case 'Biller': $this->Biller($data); break;
                case 'RequestVCN': $this->RequestVCN($data); break;
                case 'LinkVCNAccount': $this->LinkVCNAccount($data); break;
                case 'DisburseLoan': $this->DisburseLoan($data); break;
                case 'SuspenseAccount': $this->SuspenseAccount($data); break;
                case 'CloseAccount': $this->CloseAccount($data); break;
                case 'ActivateAccount': $this->ActivateAccount($data); break;
                case 'Reversal': $this->Reversal($data); break;
                case 'ExGratiaPayments': $this->ExGratiaPayments($data); break;
                case 'RedeemVoucher': $this->RedeemVoucher($data); break;
                case 'BE': $this->BE($data); break;
                case 'MS': $this->MS($data); break;
                
            }
        //return $transnet['params'];

    
}
   
}
