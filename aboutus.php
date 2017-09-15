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
                       <!-- <button type="button" name="b1" class="b1" >LogIn</button>  -->
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
                	<img src="image/jc.png" alt="jc"/></div>
                     	</div><!--end of wrapper-->
        </div><!--end of banner_box-->
       <div class="content">
       			<div class="wrapper">
                	<div class="about">
                    <h3>TOURISM</h3>
                  	<p>

Tourism means exactly what it should for those who long to travel relatively undisturbed natural areas, jharkhand is a destination par excellance. With its natural bounties unspoiled the region always attract the tourist. And its habitants welcome them with the heart-fely laughter as the bubbling of their waterfall. Tourism is certainly not merely passing through an area. It involves studying appreciating, enjoying , flora and fauna the existing calture of the original inhibitants of the area. Jharkhand is a rare state that offers a tourist all these and much more together they make the state dream destination for tourist irrespctive of their particular interest. More about Jharkhand</p>

<p>You can find pure, unadulterated joy in Jharkhand. Because this is one Indian state that has survived the ill effects of urbanization to a surprising degree. Forests, hills, valleys, waterfalls, wildlife, history, culture, charming towns and vibrant cities – everything embraces the visitor as only a slice of paradise on earth can. And the people, the pristine tribal communities who are the original dwellers of the land, rejoice in their visitors, Those who have returned to Jharkhand more than once, have discovered that the genuine Jharkhand is as exotic and beautiful as the mythical one and far more exciting than the one promoted by the visitor industry.</p>

<p>If Jharkhand’s awesome scenic beauty is the one thing that never disappoints – the festivals, the music, the dancing, the language and literature, the gracious and handsome towns and booming industrial centers, won’t either. This is one place where the sun seems to radiate hope. The evening sky overflows with stars. The hills seem to be moving like the waves of the sea. The tribal drums weave their rhythmic magic. And the spirit revives in an atmosphere that is best described as unique. Life seems far less complicated and far more captivating when you’re in Jharkhand. Here’s where you can do your own thing – follow what everybody else follows, or break pleasure of a walk-in the-woods.</p>
<!--
<p>Yes. Jharkhand is perfect. The kind of perfection that exists somewhere between your head and heart. Relax. Play. Do business. Party. Withdraw. Study. Build relationships. Enrich yourself culturally. Seek entertainment. Find delight.

So come, journey through the following pages and feel the tug of pleasurable anticipation defined by more than just a place to holiday in. Come feel the warmth of Jharkhand.</p>
                    -->
                    
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