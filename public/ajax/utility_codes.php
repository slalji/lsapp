<?php
include "config.php";

$sql = "SELECT DISTINCT utility_code FROM `transactions` WHERE 1";

$sql.= " ORDER BY utility_code ";
$data = array();
$result=mysqli_query($conn, $sql) or die(mysqli_error($conn).' '.$sql);
$html = '';

	while( $rows=mysqli_fetch_assoc($result) ) {  // preparing an array
		if (isset($rows['utility_code']) && $rows['utility_code'] == '\N')
		$html .= "<option value='NA'>NA</option>";
		else if ($rows['utility_code'] != '' && $rows['utility_code'])
		$html .= "<option value='".$rows['utility_code']."'>".$rows['utility_code']."</option>";



	}

echo ($html);

?>
