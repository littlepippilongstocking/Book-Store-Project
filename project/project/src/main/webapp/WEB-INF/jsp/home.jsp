<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<style>
 @import url(https://fonts.googleapis.com/css?family=Cookie|Raleway:300,700,400);

* {
	margin: 0;
	box-sizing: border-box;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}


body, .inner {
	height: 100%;
	width: 100%;
	position: absolute;
	background: url("https://images2.alphacoders.com/261/26102.jpg");
	background-repeat: no-repeat;
	background-position: center;
	background-attachment: fixed;
	background-size: cover;
	font-family: 'Cookie', cursive;

}


.outline {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 35px;
  font-family: 'Cookie', cursive;
  color: white;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: white;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 30px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}

</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

  <a href="#" class="menu">Your basket</a>
  <br>
  <a href="#" class="menu">Profile (if connected)</a>
  <a href="login" class="menu">Log in</a>
  <a href="register" class="menu">Sign up</a>
  <a href="#" class="menu">Contact us</a>

</div>


<div>
<span style="color: orange;font-size:40px;cursor:pointer;font-family: 'Cookie', cursive;"
    onclick="openNav()"><b>&#9776</b>
</span>
 </div>

<script>
 function openNav() {
   document.getElementById("mySidenav").style.width = "250px";
   document.getElementById("main").style.marginLeft = "250px";
 }

 function closeNav() {
   document.getElementById("mySidenav").style.width = "0";
   document.getElementById("main").style.marginLeft= "0";
 }
 </script>

</body>
</html>