<?php
	include('connection.php');
	$query="select * from hotel_details order by id desc limit 8";
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
        	<td><img src="image/hotels/<?php echo $arr['image'];?>  "width="500px" height="300px"/></td>			<?php  } ?>
            <td width="550px">
           <b style="color:#900"><?php echo $arr['name']; ?></b><br/>
           <b>Address:-</b><?php echo $arr['address'];?><br/>
           <b>Contact:-</b>	<?php echo $arr['mobile']; ?><br/>
           <form action="https://www.google.co.in/maps" target="_blank">
            <input type="hidden" value=" <?php  echo $arr['direction'];?>" name="daddr" readonly="readonly"/><!--<input type="text" name="saddr" placeholder="Enter Your Starting point" style="height:25px;"/> --><br/>
           &nbsp;&nbsp;<button type="submit" style="color:#FFF; background-color:#069; width:100px; height:30px; font-weight:bold;" >Maps</button>
           </form> 
          </td>
             <?php  if($i%2!==0){ ?>
                <td><img src="image/<?php echo $arr['image'];?> " width="300px" height="200px"/>     <?php   }  ?>
                
        
            
        </tbody>
        <?php
			
			}
			?>
    </table>
</body>
</html>