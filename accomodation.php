<?php
 session_start();
 
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
		 $(document).ready(function()
		{
			 $(".b2").click(function()
			{
				$(".addform").toggle();
			});
		});
		
		
		function getdist(dist){
			var dist=dist;
			//alert(dist);
			window.location="district.php?dist="+dist;
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
                        <button type="button" name="b2" class="b2">Hotel details</button> 
                        <?php } else{?>
                       <!-- <button type="button" name="b1" class="b1" >LogIn</button>  -->
                        <?php } ?>
                        
                	<!-- <input type="button" value="Log In" name="admin"/>-->
                    <!--<input type="button" value="Add Location" name="Add Location"/>  -->
                </div><!--end of admin-->
            </div><!--end of wrapper-->
        </div><!--end of header-->
        <div class="addform">
        	<h2 align="center" style="margin-top:10px;">Hotel Details Form</h2>
        	<form method="post" action="action.php">
            	<table border="0" cellpadding="40px;" cellspacing="10px;">
                               <tr>
                                	<td height="30px;"> Hotel name:-</td>
                                    <td><input type="text" name="name" placeholder="Enter place name" style="height:30px; width:300px;"/></td>
                                </tr>
                                <tr>
                                	<td height="30px;"> City:-</td>
                                    <td><input type="text" name="city" placeholder="Enter city name" style="height:30px; width:300px;"/></td>
                                </tr>
                                
                                <tr>
                                 	<td height="30px;">Address:-</td>
                                   <!-- <td><input type="text" name="content" style="height:80px;" placeholder=" Information about the place"/></td> -->
                                   <td><textarea rows="4" cols="41" name="address"></textarea><br/></td>
                                </tr>
                                <tr>
                                 	<td height="30px;">Mobile:-</td>
                                    <td><input type="text" name="mobile" placeholder="Enter location pin code" style="height:30px; width:300px;"/></td>
                                </tr>
                                <tr>
                                 	<td height="30px;">Upload Image:-</td>
                                    <td><input type="file" name="upload"/></td>
                                </tr>
                         <!--       <tr>
                                 	<td height="30px;">Location path:-</td>
                                    <td><input type="text" name="direction"  placeholder="Enter place,city,state,pincode in sequence" style="height:30px; width:300px;"/></td>
                                </tr> -->
                                <tr>
                                	<td colspan="2"><input type="submit" name="hotel" value="Submit" style="height:30px; width:100px; margin-left:40px;"/><input type="reset" value="Reset" style="height:30px; width:100px; margin-left:100px;"  /></td>
                               
                                </tr>
                           	</table>
            </form>
        </div>

        
        
        <div class="menu_box">
        	<div class="wrapper">
            	<div class="menu">
                	<ul>
                    	<li><a href="index.php">Home</a></li>
                        <li><a href="aboutus.php">AboutUs</a>
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
                            	<li><a href="car.php">Car</a></li>
                        		<li><a href="bus.php">Bus</a></li>
                        		<li><a href="hotel.php">Hotel</a></li>
                            </ul>
                        </li>
                        
                        <li><a href="contactus.php">ContactUs</a></li>
                    </ul>
                </div>
            </div><!--end of wrapper-->
        </div>
      <!--  <div class="banner_box">
        	<div class="wrapper">
        		<div class="banner">
                	<img src="image/hotels/capital1.jpg" alt="capital1"/></div>
                     	</div><!--end of wrapper-->
      <!--  </div><!--end of banner_box-->
       <div class="content">
       			<div class="wrapper">
                	<div class="about">
                  	<h3>Jharkhand Hotels</h3>
                <!--    <input type="text" name="search" placeholder="Enter city name" />
                    <button type="button" name="s_hotel" class="b2">Hotel details</button>  -->
                    <?php include('dis.php'); ?>
                    
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