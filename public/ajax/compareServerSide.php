<?php
include "../config.php";


// storing  request (ie, get/post) global array to a variable
$requestData= $_REQUEST;
$month = $requestData['month'];
$sql='';
$utility= array();
$utility[]='Days of the Month';
$totalData=0;
$totalFiltered=0;
$json = array();
if( !empty($requestData['columns'][0]['search']['value']) ){
	//print_r($requestData);

	//$where.=" AND (";
	$exp = explode('&',$requestData['columns'][0]['search']['value']);

	$temp = explode(':',$exp[0]);

	array_splice($exp, 0, 1);

	foreach ($exp as $e){
		$arr = explode(':', $e);
		$key = trim($arr[0]);
		$val = trim($arr[1]);
        if ($key == 'utility_code' && $val !='')
            $utility = explode(',', $val);
		else if ($key == 'month' && $val !='')
			$month = $val;
		else if ($key == 'download' && $val !='')
			$download =$val;
	}

$sql = "SELECT DAY(fulltimestamp) onDay, type, utility_code, format(sum(amount),0) amnt, format(count(amount),0) cnt FROM `transactions` WHERE type = 'DEBIT' and utility_code = '".$utility[0]."' and MONTH(fulltimestamp) = ".$month." group by DAY(fulltimestamp)";
$resultoflen=mysqli_query($conn, $sql) or die(mysqli_error($conn).' '.$sql);
$totalData = mysqli_num_rows($resultoflen); // when there is a search parameter then we have to modify total number filtered rows as per search result.
$totalFiltered = ($totalData);
$sql.= "  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";

 //$sql.= " ORDER BY  DAY(fulltimestamp)   ".$requestData['order'][0]['dir']."";
 //Before adding limit find num_rows

 //$sql.= "  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
 $query=mysqli_query($conn, $sql) or die(mysqli_error($conn).' '.$sql);

//print_r($sql);
	$rows = array();
	$data_one = array();

	while( $rows=mysqli_fetch_assoc($query) ) {  // preparing an array
		$key = $rows['onDay'];
            $data_one[$key] = $rows['amnt'];

    }
$sql2 = "SELECT DAY(fulltimestamp) onDay, type, utility_code, format(sum(amount),0) amnt, format(count(amount),0) cnt FROM `transactions` WHERE type = 'DEBIT' and utility_code = '".$utility[1]."' and MONTH(fulltimestamp) = ".$month." group by DAY(fulltimestamp)";
//$sql2.= " ORDER BY  DAY(fulltimestamp)   ".$requestData['order'][0]['dir']."";
//Before adding limit find num_rows

$sql2.= "  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
$query2=mysqli_query($conn, $sql2) or die(mysqli_error($conn).' '.$sql2);


//print_r($sql);
    $rows = array();
    $arr = array();
    $json = array();

    while( $rows2=mysqli_fetch_assoc($query2) ) {  // preparing an array
        $key = $rows2['onDay'];
            $arr[$key] = $rows2['amnt'];

    }
    if (sizeof($data_one) > 0)
    foreach ($data_one as $key => $val)
        if (isset($arr[$key]))
            $json[] = [$key,$val, $arr[$key]];
        else
            $json[] = [$key,$val, 0];



}

$json_data = array(
    "query" => $sql,
    "draw"            => intval( $requestData['draw'] ),   // for every request/draw by clientside , they send a number as a parameter, when they recieve a response/data they first check the draw number, so we are sending same number in draw.
    "recordsTotal"    => intval( $totalData ),  // total number of records
    "recordsFiltered" => intval( $totalFiltered ), // total number of records after searching, if there is no searching then totalFiltered = totalData
    "data"            => $json,
    "columns" 		 => $utility,   // total data array
    );


    echo json_encode($json_data);





?>
