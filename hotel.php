<?php
 	session_start();
 	include('connection.php');

			if(isset($_GET['city']) && !isset($_GET['hotel'])){
				$city=$_GET['city'];
				$query="select * from hotel_details where city='$city'";
				$run=mysqli_query($link,$query);
				$array=mysqli_fetch_array($run);
			}
			if(isset($_GET['city']) && isset($_GET['hotel'])){
				$city=$_GET['city'];
				$name=$_GET['hotel'];
				$query="select * from hotel_details where city='$city'";
				$run=mysqli_query($link,$query);
				$query="select * from hotel_details where city='$city' and name='$name'";
				$run1=mysqli_query($link,$query);
				$array1=mysqli_fetch_array($run1);
			}
			
			$distr=array("Gharwa","Palamu","Latehar","Chatra","Hazaribagh","Koderma","Giridih","Ramgarh","Bokaro","Dhanbad district","Lohardaga","Gumla","Simdega","Ranchi","Khunti","West Singhbhum","Saraikela Kharsawan","East Singhbhum","Jamtara","Deoghar","Dumka","Pakur","Godda","Sahebganj");
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!-- <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> -->
<script src="jquery.js"></script>
<script>
		window.onload=function(){
			var city='<?php if(isset($_GET['city'])){echo $_GET['city'];} ?>';
			var name='<?php if(isset($_GET['hotel'])){echo $_GET['hotel'];} ?>';
			
			if(city!='' && name==''){
				document.getElementById('hotellist').style.display="table-row";
			}
			else if(city!='' && name!=''){
				document.getElementById('hotellist').style.display="table-row";
				document.getElementById('hoteldetails').style.display="table-row";
			}
		}
		function getdist(dist){
			var dist=dist;
			//alert(dist);
			window.location="district.php?dist="+dist;
			//window.location=dist+".php";
		}
		
		function getcity(city){
			var city=city;
			//alert(city);
			window.location="hotel.php?city="+city;
			//window.location=dist+".php";
			
		}
		function gethotel(str){
			var hotel=str;
			var city=document.getElementById('city').value;
			
			window.location="hotel.php?city="+city+"&hotel="+hotel;
			//window.location=dist+".php";
		}
</script>
</head>

<body>
	<div class="container-fluid">
    	<div class="top">
        	<div class="wrapper">
            	<div class="info">
                	<div class="msg"><a href="https://www.info@jtourism.com"><img src="image/envelope.png" alt="envelope" width="20px" height="20px"/></a></div>
                    <div class="inform"><h3>info@jtourism.com</h3></div>
                    <div class="phone"><a href="https://skype.com"><img src="image/phone-call.png" alt="phone-call" width="20px" height="20px"/></a></div>
                    <div class="number"><h3>118-655473</h3></div>
                </div><!--end of info-->
                <div class="s_city">
                    <select class="city" onchange="getdist(this.value)">
                    	<option>---select city---</option>
                        <option>Gharwa</option>
						<option>Palamu</option>
						<option>Latehar</option>
						<option>Chatra</option>
						<option>Hazaribagh</option>
						<option>Koderma</option>
						<option>Giridih</option>
       				 	<option>Ramgarh</option>
						<option>Bokaro</option>
						<option>Dhanbad district</option>
						<option>Lohardaga</option>
						<option>Gumla</option>
						<option>Simdega</option>
						<option>Ranchi</option>
                        <option>Khunti</option>
						<option>West Singhbhum</option>
						<option>Saraikela Kharsawan</option>
						<option>East Singhbhum</option>
						<option>Jamtara</option>
						<option>Deoghar</option>
						<option>Dumka</option>
						<option>Pakur</option>
						<option>Godda</option>
						<option>Sahebganj</option>
                    </select>
                </div><!--end of s_city-->
                <div class="social" align="center">
                	<a href="https//:facebook.com"><img src="image/facebook-logo-button.png" alt="facebook-logo-button" width="30px" height="30px"/></a>
                    <a href="#"><img src="image/twitter-logo-button.png" alt="twitter-logo-button" width="30px" height="30px"/></a>
                    <a href="#"><img src="image/linkedin (2).png" alt="linkedin (2)" width="30px" height="30px"/></a>
                    <a href="#"><img src="image/social-youtube-circular-button.png" alt="social-youtube-circular-button" width="30px" height="30px"/></a>
                    <a href="#"><img src="image/google-plus.png" alt="google-plus" width="30px" height="30px"/></a>
                </div><!--end of toll-->
            </div><!--end of wrapper-->
        </div><!--end of top-->
        <div class="header">
        	<div class="wrapper">
            	<div class="logo">
                	<img src="image/lg.png" atl="lg"/>
                </div><!--end of logo-->
                <div class="title">
                	<h1>Jharkhand Local Tourism</h1>
                </div><!--end of title-->
                <div class="admin">
               			<?php if(isset($_SESSION['username'])){?><button type="button" name="b3" class="b1" ><a href="logout.php" style="text-decoration:none; color:white">LogOut</a></button> 
                        <?php } else{?>
                      <!--  <button type="button" name="b1" class="b1" >LogIn</button>  -->
                        <?php } ?>
                        
                	<!-- <input type="button" value="Log In" name="admin"/>-->
                    <!--<input type="button" value="Add Location" name="Add Location"/>  -->
                </div><!--end of admin-->
            </div><!--end of wrapper-->
        </div><!--end of header-->
        <div class="menu_box">
        	<div class="wrapper">
            	<div class="menu">
                	<ul>
                    	<li><a href="index.php">Home</a></li>
                        <li class="active"><a href="#">AboutUs</a>
                        </li>
                        <li><a href="#">Facilities</a>
                        	<ul>
                            	<li><a href="howtoreach.php">How to reach</a></li>
                            	<li><a href="accomodation.php">Accommodation</a></li>
                        		<!--<li><a href="Tour.php">Tour</a></li>-->
                            </ul>
                        </li>
                        <li><a href="gallery.php">Gallery</a></li>
                        <li><a href="#">Booking</a>
                        	<ul>
                            	<li><a href="Car.php">Car</a></li>
                        		<li><a href="bus.php">Bus</a></li>
                        		<li><a href="#">Hotel</a></li>
                            </ul>
                        </li>
                        
                        <li><a href="contactus.php">ContactUs</a></li>
                    </ul>
                </div>
            </div><!--end of wrapper-->
        </div>
        <div class="banner_box">
        	<div class="wrapper">
        		<div class="banner">
                	<img src="image/hotels/capital1.jpg" alt="capital1"/></div>
                     	</div><!--end of wrapper-->
        </div><!--end of banner_box-->
       <div class="content">
       			<div class="wrapper">
                	<div class="carbox">
                        <form method="post" action="action.php">
                                <h2 align="center" style="color:#900">Hotel Booking</h2>
                                <table border="0" cellpadding="40px;" cellspacing="10px;" style="font-weight:bold; color:#033; padding-top:30px;">
                                	<tr>
                                    
                                        <td height="30px;" align="center">City:-</td>
                                        <td><select class="btnn" name="city_id" id="city" onchange="getcity(this.value)">
                                                       
                                                        <option value="0">-select city-</option>
                        
					<!--<option value="ranchi" <?php // if($city=='ranchi'){echo " selected";}?>>Ranchi</option> -->
                        						
                                                
                                               <?php 	
											   foreach($distr as $key=>$val)
												{
													?>
                                                    <option value="<?php echo $val; ?>" 
													<?php if(isset($_GET['city']) && $city==$val){echo " selected";} ?>><?php echo $val; ?></option>
                                                        <?php
												}
											?>
                                                       
                                                    </select></td>
                                                    
                                    </tr>
                                	<tr id="hotellist" style="display:none">
                                    	
                                        <td height="30px;" align="center">Hotel Name:-</td>
                                        <td><select class="btnn" name="hotelname" onchange="gethotel(this.value)">
                                                        <option>Select Hotel</option>
                                                       <?php  while($arr=mysqli_fetch_array($run))
			{ ?> <option value="<?php echo $arr['name']; ?>" <?php if(isset($_GET['hotel']) && $name==$arr['name']){echo "selected";} ?>><?php echo $arr['name']; ?></option>                           
                                                        <?php } ?>
                                                    </select></td>
                                        
                                    </tr>
                                    <tr id="hoteldetails" style="display:none;"><td colspan="4"><table>
                                   <tr>
                                        <td height="30px;" align="center"> CheckIn:-</td>
                                        <td><input type="date" name="in" placeholder="Enter source place " style="height:30px; width:300px;" required="required"/></td>
                                        <td height="30px;" align="center"> CheckOut:-</td>
                                        <td><input type="date" name="out" placeholder="Enter destination place" style="height:30px; width:300px;" required="required"/></td>
                                    </tr>
                                    
                                    <tr>
                                        
                                        <td height="30px;" align="center">Price:-</td>
                                        <td><input type="number" name="price"  placeholder="Amount" style="height:30px; width:300px;" required="required" value="<?php if(isset($array1['price'])){echo $array1['price'];} ?>"/>		<td height="30px;" align="center">Mobile:-</td>
                                        <td><input type="tel" name="no"  placeholder="Enter mobile number" style="height:30px; width:300px;" required="required"/></td>
                                    </tr>
                                    
                                    <tr>
                                        <td height="30px;" align="center">Adult:-</td>
                                        <td><input type="number" name="adult" style="height:30px; width:300px;" required="required"/></td>
                                        <td height="30px;" align="center">Child:-</td>
                                        <td><input type="number" name="child" style="height:30px; width:300px;" required="required"/></td>
                                    </tr>
                                    <tr>
                                        <td height="30px;" align="center">Email:-</td>
                                        <td><input type="email" name="email"  placeholder="Enter your email" style="height:30px; width:300px;" required="required"/></td>
                                    </tr>
                                   
                                    <tr>
                                        <td height="30px;" align="center"><input type="submit" value="Submit" name="b_hotel" style="height:30px; width:100px; margin-left:40px; color:#300; font-weight:bold;" /></td>
                                        <td height="30px;" align="center"><input type="reset" value="Reset" style="height:30px; width:100px; margin-left:150px; color:#300; font-weight:bold;" /></td>
                                    </tr>
                                    </td></tr></table>
                                </table>
                            </form>
                    
                    
                </div>             
               
           	</div><!--end of wrapper-->
        </div><!--end of banner_box-->
        
        
        <div class="footer">
        	<div class="wrapper">
            	<div class="copy">
                	<h3>copyright&copy;2017.Jharkhand Local Tourism.All rights reserved</h3>
                </div>
                <div class="d-info">
                	<div class="info_by">
                    	<h3>Powered by:-</h3>
                    </div>
                    <div class="info_nm">
                    	<h3>Ram Krishna(Traniee)</h3>
                    </div>
                </div>
            </div><!--end of wrapper-->
        </div><!--end of footer-->
    </div><!--end of container-->
    <!--end of map-->
   <!-- <script src="js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>  -->
     
</body>
</html>