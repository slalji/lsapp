<?php
include "../../config.bundle.php";
$sql = "SELECT utilitycode, name FROM `menu` WHERE 1";


$sql.= " ORDER BY name ";

$data = array();
$result=mysqli_query($conn, $sql) or die(mysqli_error($conn).' '.$sql);
//$html = '<option value""></option>';
$html='';
 
	 while( $rows=mysqli_fetch_assoc($result) ) {  // preparing an array
		$html .= "<option value='".$rows['utilitycode']."'>".$rows['name']."</option>";
	} 

echo ($html);

?>
