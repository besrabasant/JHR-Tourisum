<?php
	include('connection.php');
	$query="select * from hotel_details";
	$run=mysqli_query($link,$query);
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<table border="2" bordercolorlight="#003333" align="center">
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Admin.php" style="font-size:24px; text-decoration:none;">Back</a>
    	<thead style="background-color:#066; color:#FFF; font-weight:bold">
        	<th>Place</th>
        	<th>Image</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Direction</th>
            <th>Action</th>
          
        </thead> 
        <?php
			$i=0;
			while($arr=mysqli_fetch_array($run))
			{
				
				
		?>
        <tbody style="background-color:#699; color:#333; font-size:18px" align="center">
        	
        	<?php  if($i%2==0){   ?>
            <td><b style="color:#900"><?php echo $arr['name']; ?></b></td>
        	<td><img src="image/hotels/<?php echo $arr['image'];?>  "width="300px" height="200px"/></td>			<?php  } ?>
            
           <td><?php echo $arr['address'];?></td>
          <td><?php echo $arr['mobile']; ?></td>
          <td><?php  echo $arr['direction'];?>
          </td>
          <td><a href="update_hotel.php?id=<?php echo $arr['id']; ?>">Update</a>&nbsp;&nbsp;&nbsp;<a href="delete.php?id=<?php echo $arr['id']; ?>" onclick="return confirmDel();">Delete</a></td>
             <?php  if($i%2!==0){ ?>
                <td><img src="image/<?php echo $arr['image'];?> " width="300px" height="200px"/>     <?php   }  ?>
                
        
            
        </tbody>
        <?php
			
			}
			?>
    </table>
    <script>
    	function confirmDel(){
			if(confirm("Are you sure?")){
				return true;
			}else{ return false;}	
		}
    </script>
</body>
</html>