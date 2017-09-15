<?php
	session_start();
	include('connection.php');
	if(isset($_SESSION['username']))
	{
		 $role=$_SESSION['role'];
		if($role=='user')
			{
				header("Location:index.php");
			}
			else
			{
				header("Location:admin.php");
			}
	}
	if(isset($_POST['login']))
	{
		$username=$_POST['username'];
		$password=$_POST['pwd'];
		$query="select * from login where username='$username' and password='$password'";
		$run=mysqli_query($link,$query);
		if(mysqli_num_rows($run)==1)
		{
			$_SESSION['username']=$username;//echo "logged in";
			$array=mysqli_fetch_array($run);
			$role=$array['role'];
			 $_SESSION['role']=$role;
			if($role=='user')
			{
				header("Location:index.php");
			}
			else
			{
				header("Location:admin.php");
			}
		}
		else
		{
			$msg="username or password is wrong....";
			header("location:index.php?msg=$msg");
		}
	}
	//user register and login details
	if(isset($_POST['register']))
	{
		$unm=$_POST['user'];
		$pwd=$_POST['pwd'];
		$email=$_POST['email'];
		$mobile=$_POST['mobile'];
		$addr=$_POST['address'];
		$gender=$_POST['r1'];
		$query="insert into login(username,password,role) values('$unm','$pwd','user')";
		$run=mysqli_query($link,$query);
		if($run)
		{
			$query2="insert into register(username,email,mobile,address,gender) values('$unm','$email','$mobile','$addr','$gender')";
			$run2=mysqli_query($link,$query2);
			echo "added successfully...";
		}
		else
		{
			echo mysqli_error($link);
		}
		
	}
	
	//insert location details
	if(isset($_POST['location']))
	{
		$place=$_POST['place'];
		$dis=$_POST['district'];
		$content=$_POST['content'];
		$pin=$_POST['pin'];
		$img=$_POST['upload'];
		$dir=$place.",".$dis.","."jharkhand".",".$pin;
		$query="insert into location_details(place,city,information,pin,image,direction) values('$place','$dis','$content','$pin','$img','$dir')";
		$run=mysqli_query($link,$query);
		if($run)
		{
			echo"added location details successfully....";
		}
		else
		{
			echo mysqli_error($link);
		}
	}
	
	//insert hotel details
	if(isset($_POST['hotel']))
	{
		$nm=$_POST['name'];
		$city=$_POST['city'];
		$addr=$_POST['address'];
		$mobile=$_POST['mobile'];
		$img=$_POST['upload'];
		$dir=$nm.",".$city.","."jharkhand";
		$query="insert into hotel_details(name,city,address,mobile,image,direction) values('$nm','$city','$addr','$mobile','$img','$dir')";
		$run=mysqli_query($link,$query);
		if($run)
		{
			echo"added hotel details successfully....";
		}
		else
		{
			echo mysqli_error($link);
		}
	}
	
	
	//insert contact details
	if(isset($_POST['contact']))
	{
		$nm=$_POST['name'];
		$email=$_POST['email'];
		$mobile=$_POST['mobile'];
		$msg=$_POST['msg'];
		$query="insert into contact(name,email,mobile,message) values('$nm','$email','$mobile','$msg')";
		$run=mysqli_query($link,$query);
		if($run)
		{
			echo"Thaks for the query....";
		}
		else
		{
			echo mysqli_error($link);
		}
	}
	//insert hotel booking details
	if(isset($_POST['b_hotel']))
	{
		$city=$_POST['city_id'];
		$hname=$_POST['hotelname'];
		$in=$_POST['in'];
		$out=$_POST['out'];
		$price=$_POST['price'];
		$mob=$_POST['no'];
		$adlt=$_POST['adult'];
		$child=$_POST['child'];
		$email=$_POST['email'];
		$query="insert into hotel_book(city,hotelname,checkin,checkout,price,mobile,adult,child,email) values('$city','$hname','$in','$out','$price','$mob','$adlt','$child','$email')";
		$run=mysqli_query($link,$query);
		if($run)
		{
			echo"booked successfully....";
			header('location:hotel.php');
		}
		else
		{
			echo mysqli_error($link);
		}
	}
	
?>
