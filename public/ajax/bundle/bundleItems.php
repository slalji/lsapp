<?php
include "../../config.bundle.php";
$cat='';
if (isset($_POST['category']))
$cat = $_POST['category'];

$sql = "SELECT id, amount, itemcode, name FROM `menuitem` WHERE categorycode= '".$cat."'";


$sql.= " ORDER BY name ";

$data = array();
$result=mysqli_query($conn, $sql) or die(mysqli_error($conn).' '.$sql);
$html = '';
 
	 while( $rows=mysqli_fetch_assoc($result) ) {  // preparing an array
		$html .= '<div class="row">
        <div class="col-md-3 col-sm-4">'.$rows['itemcode'].'</div>
        <div class="col-md-3 col-sm-4"><span class="badge">'.$rows['amount'].'</span></div>
        <div class="col-md-1 col-sm-2"> <a href="#" data-toggle="modal" data-target="#deleteModal" data-id="'.$rows['id'].'"><i class="fa fa-times"></i></a></div>
        <div class="col-md-1 col-sm-2"> <a href="#" data-toggle="modal" data-target="#updateModal" data-id="'.$rows['id'].'"><i class="fa fa-pencil"></i></a></div>
        
      </div>';
	} 

echo ($html);

?>
