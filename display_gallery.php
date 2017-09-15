<?php
include('connection.php');
 $query="select * from location_details order by id desc limit 12 ";
 $run=mysqli_query($link,$query);
 $i=0;
?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
	<?php while($array=mysqli_fetch_array($run)) 
						{
							$i++;
						?>
                         
                    		<div class="rand-gallery">
                            <img src="image/<?php echo $array['image'];?> "/>
                            <b style="color:#900"><?php echo $array['place']; ?></b>
                        </div>
                        
                        <?php } ?> 
</body>
</html>