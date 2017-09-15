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
			$(".b1").click(function()
			{
				$(".loginform").toggle();
				$(".regform").hide();
			});
			 $(".reg").click(function()
			{
				$(".regform").toggle();
			});
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

 
<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->


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
                    	<option>---select city--</option>
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
                        <button type="button" name="b2" class="b2">Add Location</button>
                        <?php } else{?>
                        <button type="button" name="b1" class="b1" >LogIn</button>
                        <?php } ?>
                        
                	<!-- <input type="button" value="Log In" name="admin"/>-->
                    <!--<input type="button" value="Add Location" name="Add Location"/>  -->
                </div><!--end of admin-->
            </div><!--end of wrapper-->
        </div><!--end of header-->
        <div class="loginform">
        	<h2 style="margin-top:10px; margin-left:10px;">LogIn Form</h2>
        	<form method="post" action="action.php" name="logf1">
            	<input type="text" name="username" placeholder="enter username" style="margin-top:20px; margin-left:20px; width:250px; height:30px;"/><br/>
                <input type="password" name="pwd" placeholder="enter password" style="margin-left:20px; width:250px; height:30px;"/><br/>
                <input type="submit" value="submit" name="login" style=" margin-left:40px; width:60px; height:30px; color:#300; font-weight:bold;"/>
                <input type="reset" value="reset" style="margin-left:90px; width:60px; height:30px; color:#300; font-weight:bold;"/><br/>
                <h3 style=" margin-left:20px; color:#300;">new user?&nbsp;&nbsp;<button name="register" type="button" class="reg" style="width:60px; height:20px; color:#300; font-weight:bold;">Register</button></h3>
            </form>
        </div>
        <div class="regform">
        	<h2 style="margin-top:10px; margin-left:10px;">Registration Form</h2>
        	<form method="post" action="action.php" name="regf1">
            	<input type="text" name="user" placeholder="enter username" style="margin-top:20px; margin-left:20px; width:250px; height:30px;"/><br/>
                <input type="password" name="pwd" placeholder="enter password" style="margin-left:20px; width:250px; height:30px;"/><br/>
                <input type="email" name="email" placeholder="enter e-mail" style="margin-left:20px; width:250px; height:30px;"/><br/>
                <input type="text" name="mobile" placeholder="enter mobile number" style="margin-left:20px; width:250px; height:30px;"/><br/>
                <h3>Address:</h3><textarea rows="6" cols="20" name="address" style="margin-left:20px;" ></textarea><br/>
                
                <h3 style="margin-left:20px;">gender</h3><input type="radio" name="r1" value="male" style="margin-left:20px;"/><h3 style="margin-left:20px;">male</h3>
                <input type="radio" name="r1" value="female" style="margin-left:20px;"/><h3 style="margin-left:20px;">female</h3>     
                <input type="submit" value="submit" name="register" style=" margin-left:40px; width:60px; height:30px; color:#300; font-weight:bold;"/>
                <input type="reset" value="reset" style="margin-left:90px; width:60px; height:30px; color:#300; font-weight:bold;"/>
            </form>
        </div>
        <div class="addform">
        	<h2 align="center" style="margin-top:10px;">Add Location Form</h2>
        	<form method="post" action="action.php">
            	<table border="0" cellpadding="40px;" cellspacing="10px;">
                               <tr>
                                	<td height="30px;"> Place name:-</td>
                                    <td><input type="text" name="place" placeholder="Enter place name" style="height:30px; width:300px;"/></td>
                                </tr>
                                <tr>
                                	<td height="30px;"> Location:-</td>
                                    <td><input type="text" name="district" placeholder="Enter city name" style="height:30px; width:300px;"/></td>
                                </tr>
                                
                                <tr>
                                 	<td height="30px;">Information:-</td>
                                   <!-- <td><input type="text" name="content" style="height:80px;" placeholder=" Information about the place"/></td> -->
                                   <td><textarea rows="7" cols="41" name="content"></textarea><br/></td>
                                </tr>
                                <tr>
                                 	<td height="30px;">Pin code:-</td>
                                    <td><input type="text" name="pin" placeholder="Enter location pin code" style="height:30px; width:300px;"/></td>
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
                                	<td colspan="2"><input type="submit" name="location" value="Submit" style="height:30px; width:100px; margin-left:40px; color:#300; font-weight:bold;"/><input type="reset" value="Reset" style="height:30px; width:100px; margin-left:100px; color:#300; font-weight:bold;"  /></td>
                               
                                </tr>
                           	</table>
            </form>
        </div>
        <div class="menu_box" style="padding-top:100px 0;">
        	<div class="wrapper">
            	<div class="menu">
                	<ul>
                    	<li class="active"><a href="#">Home</a></li>
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
        <div class="banner_box">
        	<div class="wrapper">
        		<div class="banner">
                	
                 <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/img.jpg" alt="img" title="img" id="wows1_0"/></li>
		<li><img src="data1/images/img1.png" alt="img1" title="img1" id="wows1_1"/></li>
		<li><img src="data1/images/img2.png" alt="img2" title="img2" id="wows1_2"/></li>
		<li><img src="data1/images/img3.png" alt="img3" title="img3" id="wows1_3"/></li>
		<li><img src="data1/images/img4.png" alt="img4" title="img4" id="wows1_4"/></li>
		<li><img src="data1/images/img5.png" alt="img5" title="img5" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="img"><span><img src="data1/tooltips/img.jpg" alt="img"/>1</span></a>
		<a href="#" title="img1"><span><img src="data1/tooltips/img1.png" alt="img1"/>2</span></a>
		<a href="#" title="img2"><span><img src="data1/tooltips/img2.png" alt="img2"/>3</span></a>
		<a href="#" title="img3"><span><img src="data1/tooltips/img3.png" alt="img3"/>4</span></a>
		<a href="#" title="img4"><span><img src="data1/tooltips/img4.png" alt="img4"/>5</span></a>
		<a href="#" title="img5"><span><img src="data1/tooltips/img5.png" alt="img5"/>6</span></a>
	</div></div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/script.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->                    
                    
                </div>
               
           	</div><!--end of wrapper-->
        </div><!--end of banner_box-->
        <div class="content">
        	<div class="wrapper">
            	<h3>Welcome to our website</h3>
                <?php include('display_index.php'); ?>
          <!--  	<div class="content1">
                	<div class="content_img">
                    	<img src="image/Koala.jpg" alt="koala" width="300px" height="200px" />
                    </diV>
                    <div class="content_attrib">
                   <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This is a Jharkhand Local Tourism site.You can find the best loaction according to your requirement.We also provide various facilities.So, that you can enjoy the loaction in the jharkhand.<a href="#">read more</a></p>
                    </diV>
                    <div class="direction">
                   <!-- 	<div class="dir">
							<img src="image/bmw.jpg" height="30px" width="30px" />
                      	</div>  -->                   
          <!--           </div>
                </div><!--end of conten1t-->
         <!--        <div class="content2">
                    <div class="content_attrib1">
                    	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This is a Jharkhand Local Tourism site.You can find the best loaction according to your requirement.We also provide various facilities.So, that you can enjoy the loaction in the jharkhand.<a href="#">read more</a></p>			
                    </div>
                    <div class="content_img1">
                    	<img src="image/ho.png" alt="ho" width="300px" height="200px"/>
                    </diV>
                </div><!--end of content2-->
          <!--       <div class="content1">
                	<div class="content_img">
                    	<img src="image/news.JPG" alt="news" width="300px" height="200px" />
                    </div>
                    <div class="content_attrib">
                    	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This is a Jharkhand Local Tourism site.You can find the best loaction according to your requirement.We also provide various facilities.So, that you can enjoy the loaction in the jharkhand.<a href="#">read more</a></p>			
                        
                    </div>
                </div><!--end of content3-->
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
    <div class="map"> 
                	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3662.916243276409!2d85.35740901510647!3d23.35504880968039!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f4e2295045f7db%3A0x660d6f4861664263!2sRSG+Software+Services+(P)+Ltd.!5e0!3m2!1sen!2sin!4v1462433724815" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen ></iframe>
                </div><!--end of map-->
  <!--<script src="js/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>  -->
</body>
</html>