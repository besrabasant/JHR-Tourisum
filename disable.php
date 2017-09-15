<?php
include('connection.php');
$id=$_GET['id'];
$active=$_GET['active'];
if($active==0){$a=1;}
elseif($active==1){$a=0;}
$disable="update location_details set active='$a' where id='$id'";
$run=mysqli_query($link,$disable);
if($run){
	header("Location:Location_display.php");	
}
?>