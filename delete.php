<?php
	include('connection.php');
	
		$id=$_GET['id'];
		$query="delete from hotel_details where id='$id'";
		$run=mysqli_query($link,$query);
		if($run)
				{
					$msg="deleted sucessfully";
					header("location:admin.php?msg=$msg");
				}
				else
				{
					echo mysqli_error($link);
				}
		$query1="delete from location_details
 where id='$id'";
		$run1=mysqli_query($link,$query1);
		if($run1)
				{
					$msg="deleted sucessfully";
					header("location:admin.php?msg=$msg");
				}
				else
				{
					echo mysqli_error($link);
				}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>