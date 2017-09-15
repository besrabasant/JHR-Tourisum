<?php
	include('connection.php');
	if(isset($_GET['id']))
	{
		$id=$_GET['id'];
	}
	else
	{
		header("location:Location_display.php");
	}
	 $query="select * from location_details where id='$id'";
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
        	
        	<form method="post" action="action.php" enctype="multipart/form-data">
            	<table border="0" align="center"  cellpadding="40px;" cellspacing="10px;" style="background-color:#033; margin-left:400px; color:#FFF">
                		<tr><td align="center" colspan="2"><h2 style="margin-left:30px; color:#CCC">Update Location Form</h2></td></tr>
                        		<tr>
                                	<td height="30px;"></td>
                                    <td><input type="hidden" name="id" value="<?php echo $array['id'] ?>" placeholder="Enter place name" style="height:30px; width:300px;"/></td>
                                </tr>
                               <tr>
                                	<td height="30px;"> Place name:-</td>
                                    <td><input type="text" name="place" value="<?php echo $array['place'] ?>" placeholder="Enter place name" style="height:30px; width:300px;"/></td>
                                </tr>
                                <tr>
                                	<td height="30px;"> Location:-</td>
                                    <td><input type="text" name="district" value="<?php echo $array['city'] ?>" placeholder="Enter city name" style="height:30px; width:300px;"/></td>
                                </tr>
                                
                                <tr>
                                 	<td height="30px;">Information:-</td>
                                   <!-- <td><input type="text" name="content" style="height:80px;" placeholder=" Information about the place"/></td> -->
                                   <td><textarea rows="7" cols="41" name="content"><?php echo $array['information'] ?></textarea><br/></td>
                                </tr>
                                <tr>
                                 	<td height="30px;">Pin code:-</td>
                                    <td><input type="text" name="pin" value="<?php echo $array['pin'] ?>" placeholder="Enter location pin code" style="height:30px; width:300px;"/></td>
                                </tr>
                              <!--  <tr>
                                 	<td height="30px;">Upload Image:-</td>
                                    <td><input type="file" name="upload" value="<?php echo $array['image'] ?>"/></td> 
                                </tr> -->
                         <!--       <tr>
                                 	<td height="30px;">Location path:-</td>
                                    <td><input type="text" name="direction"  placeholder="Enter place,city,state,pincode in sequence" style="height:30px; width:300px;"/></td>
                                </tr> -->
                                <tr>
                                	<td colspan="2"><input type="submit" name="update_location" value="Submit" style="height:30px; width:100px; margin-left:40px; color:#300; font-weight:bold;"/><input type="reset" value="Reset" style="height:30px; width:100px; margin-left:100px; color:#300; font-weight:bold;"  /></td>
                               
                                </tr>
                           	</table>
            </form>
        </div>
</body>
</html>