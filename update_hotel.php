<?php
	include('connection.php');
	if(isset($_GET['id']))
	{
		$id=$_GET['id'];
	}
	else
	{
		header("location:Hotel_display.php");
	}
	 $query="select * from hotel_details where id='$id'";
	$run=mysqli_query($link,$query);
	$array=mysqli_fetch_array($run);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!-- <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> -->
<script src="jquery.js"></script>
</head>

<body>
		<div class="container">
        	
        	
        	<h2 align="center" style="margin-top:10px;">Hotel Details Form</h2>
        	<form method="post" action="action.php">
            	<table border="0" cellpadding="40px;" cellspacing="10px;">
                               <tr>
                                	<td height="30px;"> Hotel name:-</td>
                                    <td><input type="text" name="name" value="<?php echo $array['name'] ?>" placeholder="Enter place name" style="height:30px; width:300px;"/></td>
                                </tr>
                                <tr>
                                	<td height="30px;"> City:-</td>
                                    <td><input type="text" name="city" value="<?php echo $array['city'] ?>" placeholder="Enter city name" style="height:30px; width:300px;"/></td>
                                </tr>
                                
                                <tr>
                                 	<td height="30px;">Address:-</td>
                                   <!-- <td><input type="text" name="content" style="height:80px;" placeholder=" Information about the place"/></td> -->
                                   <td><textarea rows="4" cols="41" name="address" ><?php echo $array['address'] ?></textarea><br/></td>
                                </tr>
                                <tr>
                                 	<td height="30px;">Mobile:-</td>
                                    <td><input type="text" name="mobile" value="<?php echo $array['mobile'] ?>" placeholder="Enter location pin code" style="height:30px; width:300px;"/></td>
                                </tr>
                                <tr>
                                 	<td height="30px;">Upload Image:-</td>
                                    <td><input type="file" name="upload" value="<?php echo $array['image'] ?>"/></td>
                                </tr>
                         <!--       <tr>
                                 	<td height="30px;">Location path:-</td>
                                    <td><input type="text" name="direction"  placeholder="Enter place,city,state,pincode in sequence" style="height:30px; width:300px;"/></td>
                                </tr> -->
                                <tr>
                                	<td colspan="2"><input type="submit" name="update_hotel" value="Submit" style="height:30px; width:100px; margin-left:40px;"/><input type="reset" value="Reset" style="height:30px; width:100px; margin-left:100px;"  /></td>
                               
                                </tr>
                           	</table>
            </form>
        
        </div>
</body>
</html>