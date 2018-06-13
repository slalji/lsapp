<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class Transnet extends Model
{
    public function OpenAccount($tpay){
         
        $ref = "SEL".str_random(12);
        $result = array();
        

        if ($tpay['signature']){
            $params = array();
            $params['accountNo'] =$tpay['accountNo'];
            $params['currency'] =$tpay['currency'];
            $params['firstName'] =$tpay['firstName'];
            $params['lastName'] =$tpay['lastName'];
            $params['transid'] =$tpay['transid'];
            $params['reference'] =$ref;

            $result["Resultcode"] = "000";
            $result["ResponseMessage"] = $params; 
             
            //return json_encode($result);             
        }
        else {
           
            $result =["Resultcode" =>"400",		
            "ResponseMessage" => ["Error" =>"OpenAccount"], 	
            "TransId" =>$tpay->tranid, 
            "Reference"	=>$ref];
            //return json_encode($result);
           
        }
        return json_encode($result);        	

    }
}
