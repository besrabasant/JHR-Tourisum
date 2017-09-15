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
                        <li><a href="aboutus.php">AboutUs</a>
                        </li>
                        <li><a href="#">Facilities</a>
                        	<ul>
                            	<li><a href="#">How to reach</a></li>
                            	<li><a href="accomodation.php">Accommodation</a></li>
                        		<!--<li><a href="Tour.php">Tour</a></li>-->
                            </ul>
                        </li>
                        <li><a href="gallery.php">Gallery</a></li>
                        <li><a href="#">Booking</a>
                        	<ul>
                            	<li><a href="Car.php">Car</a></li>
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
                	<img src="image/Green-Dehradun-City1.jpg" alt="Green-Dehradun-City1"/></div>
                     	</div><!--end of wrapper-->
      <!--  </div><!--end of banner_box-->
       <div class="content">
        	<div class="wrapper">
            	<h3></h3>
                
           	<div class="content1">
                	<div class="content_img">
                    	<img src="image/airoplane.png" alt="airoplane" width="300px" height="200px" />
                    </diV>
                    <div class="content_attrib">
                    <h3>By Air</h3>
                   <p>Delhi, Mumbai, Kolkata and Patna have regular flights to Jharkhand’s capital city, Ranchi. The steel township of Jamshedpur also has an airport but it is not used for commercial flights yet. In Ranchi the Birsa Munda Airport has flights to reach the destination.</p>
                    </diV>
                    
                </div><!--end of conten1t-->
               <div class="content2">
               <h3>By Train</h3>
                    <div class="content_attrib1">
                    	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Most of the major cities of India are connected by regular passenger and express trains to the cities of Ranchi, Jamshedpur, Bokaro, Dhanbad and Giridih.</p>			
                    </div>
                    <div class="content_img1">
                    	<img src="image/train1.jpg" alt="train1" width="300px" height="200px"/>
                    </diV>
                </div><!--end of content2-->
              <div class="content1">
                	<div class="content_img">
                    	<img src="image/bus.png" alt="bus" width="300px" height="200px" />
                    </div>
                    <div class="content_attrib">
                     <h3>By Road</h3>
                    	<p>There are good road links from the rest of India to Ranchi and the other important cities of Jharkhand state. Government and privately operated buses link many states such as Bihar, Chhattisgarh, West Bengal and Orissa.</p>			
                        
                    </div>
                </div><!--end of content1-->
            </div><!--end of wrapper-->
        </div><!--end of content-->
        
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