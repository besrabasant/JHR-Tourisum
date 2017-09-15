<?php
	include('connection.php');
	$dist=$_GET['dist'];
	$query="select * from location_details where city='$dist' and active='1'";
	$run=mysqli_query($link,$query);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<table border="0" cellspacing="20px;" style="font-size:20px; text-align:justify;">
    	
    	<!-- <thead>
        	
        	<th>Image</th>
            <th>Information</th>
            <th>Pin code</th>
            
            
        </thead>  -->
        <?php
			$i=0;
			while($arr=mysqli_fetch_array($run))
			{
				
				
		?>
        <tbody>
        	
        	<?php  if($i%2==0){   ?>
        	<td><img src="image/<?php echo $arr['image'];?>  "width="300px" height="200px"/></td>			<?php  } ?>  
            <td width="550px">
           <b style="color:#900"><?php echo $arr['place']; ?></b><br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $arr['information'];?><br/>
           <b>Pin code:-</b>	<?php echo $arr['pin']; ?><br/>
           <form action="https://www.google.co.in/maps" target="_blank">
            <input type="hidden"  value="<?php echo $arr['direction']?>" name="daddr" readonly="readonly"/><input type="text" name="saddr" placeholder="Enter Your Starting Point" style="height:25px;"/>&nbsp;&nbsp;
           <button type="submit" style="color:#FFF; background-color:#069; width:100px; height:30px; font-weight:bold;" >Get Direction</button>
           </form>
           <hr /></td>
             <?php  if($i%2!==0){ ?>
                <td><img src="image/<?php echo $arr['image'];?> " width="300px" height="200px"/>     <?php   }  ?>
                
        
            
        </tbody>
        <?php
			
			}
			?>
    </table>
</body>
</html>