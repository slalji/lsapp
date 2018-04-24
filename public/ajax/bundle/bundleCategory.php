<?php
include "../../config.bundle.php";
$util='';
if (isset($_POST['menu']))
$util = $_POST['menu'];

$sql = "SELECT categorycode, name FROM `category` WHERE utilitycode= '".$util."'";


$sql.= " ORDER BY name ";

$data = array();
$result=mysqli_query($conn, $sql) or die(mysqli_error($conn).' '.$sql);
//$html = '<option value="">Choose</option>';
 $html='';
	 while( $rows=mysqli_fetch_assoc($result) ) {  // preparing an array
		$html .= "<option value='".$rows['categorycode']."'>".$rows['name']."</option>";
	} 

echo ($html);

?>
