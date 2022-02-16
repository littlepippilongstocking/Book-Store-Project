<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Cookie|Raleway:300,700,400);
*{
	box-sizing: border-box;
	font-size: 1em;
	margin: 0;
	padding: 0;
}
body{
	background: url('https://images2.alphacoders.com/261/26102.jpg') center no-repeat;
	background-size: cover;
	color: #333;
	font-size: 18px;
	font-family: 'Raleway', sans-serif;
}
.container{
	border-radius: 0.5em;
	box-shadow: 0 0 1em 0 rgba(51,51,51,0.25);
	display: block;
	max-width: 480px;
	overflow: hidden;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	padding: 2em;
	position: absolute;
		top: 50%;
		left: 50%;
		z-index: 1;
	width: 98%;
}
.container:before{
	background: url('') center no-repeat;
	background-size: cover;
	content: '';
	-webkit-filter: blur(10px);
	filter: blur(10px);
	height: 100vh;
	position: absolute;
		top: 50%;
		left: 50%;
		z-index: -1;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 100vw;
}
.container:after{
	background: rgba(255,255,255,0.6);
	content: '';
	display: block;
	height: 100%;
	position: absolute;
		top: 0;
		left: 0;
		z-index: -1;
	width: 100%;
}
form button.submit{
	background: rgba(255,255,255,0.25);
	border: 1px solid #333;
	line-height: 1em;
	padding: 0.5em 0.5em;
	-webkit-transition: all 0.25s;
	transition: all 0.25s;
}
form button:hover,
form button:focus,
form button:active,
form button.loading{
	background: #333;
	color: #fff;
	outline: none;
}
form button.success{
	background: #27ae60;
	border-color: #27ae60; 
	color: #fff;
}
@-webkit-keyframes spin{
	from{ transform: rotate(0deg); }
	to{ transform: rotate(360deg); }
}
@keyframes spin{
	from{ transform: rotate(0deg); }
	to{ transform: rotate(360deg); }
}
form button span.loading-spinner{
	-webkit-animation: spin 0.5s linear infinite;
	animation: spin 0.5s linear infinite;
	border: 2px solid #fff;
	border-top-color: transparent;
	border-radius: 50%;
	display: inline-block;
	height: 1em;
	width: 1em;
}

form label{
	border-bottom: 1px solid #333;
	display: block;
	font-size: 1.25em;
	margin-bottom: 0.5em;
	-webkit-transition: all 0.25s;
	transition: all 0.25s;
}
form label.col-one-half{
	float: left;
	width: 50%;
}
form label.col-one-half:nth-of-type(even){
	border-left: 1px solid #333;
	padding-left: 0.25em;
}
form label input{
	background: none;
	border: none;
	line-height: 1em;
	font-weight: 300;
	padding: 0.125em 0.25em;
	width: 100%;
}
form label input:focus{
	outline: none;
}
form label input:-webkit-autofill{
	background-color: transparent !important;
}
form label span.label-text{
	display: block;
	font-size: 0.5em;
	font-weight: bold;
	padding-left: 0.5em;
	text-transform: uppercase;
	-webkit-transition: all 0.25s;
	transition: all 0.25s;
}

h1{
	font-size: 3em;
	margin: 0 0 0.5em 0;
	text-align: center;
	font-family: 'Cookie', cursive;
}
h1 img{
	height: auto;
	margin: 0 auto;
	max-width: 240px;
	width: 100%;
}
html{
	font-size: 18px;
	height: 100%;
}

.text-center{
	text-align: center;
}

html{
	font-size: 18px;
	height: 100%;
}

.text-center{
	text-align: center;
}

button {
  background: #222;
  height: 50px;
  min-width: 400px;
  border: none;
  border-radius: 20px;
  color: #eee;
  font-size: 40px;
  font-family: 'Cookie', cursive;
  position: center;
  transition: 1s;
  -webkit-tap-highlight-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  padding-top: 5px;
}

button #circle {
  width: 5px;
  height: 5px;
  background: transparent;
  border-radius: 50%;
  position: absolute;
  top: 0;
  left: 50%;
  overflow: hidden;
  transition: 500ms;
}


button:hover {
  background: transparent;
}

button:hover #circle {
  height: 50px;
  left: 0;
  border-radius: 0;
  border-bottom: 2px solid #eee;
}

.center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
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
   <a href="http://localhost:8080/project/" class="menu">Home</a>
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

	<div class="container">
	<h1 class="text-center">Welcome to <br> Book and Owl</h1>
 	<form  method="post" id="register" modelAttribute="user">
		
		<label class="col-one-half" path="firstname">
			<span class="label-text" path="firstname">First Name</span>
			<input path="firstname" name="firstname" id="firstname">
		</label>
		
		<label class="col-one-half" path="lastname">
			<span class="label-text" path="lastname">Last Name</span>
			<input path="lastname" name="lastname" id="lastname">
		</label>
	 
	 	<label path="username">
			<span class="label-text" path="username">Username</span>
			<input path="username" name="username" id="username">
    	</label>
		 
		 <label class="password" path="password">
         	<span class="label-text" path="password">Password</span>
         	<input type="password" name="password" id="password">
         </label>

		<label path="email">
			<span class="label-text" path="email" >Email</span>
			<input path="email" name="email" id="email">
		</label>
	 
		<label path="address">
			<span class="label-text" path="address">Address</span>
			<input  path="address" name="address" id="address">
		</label>
	 
		<label path="phone">
			<span class="label-text" path="phone">Phone</span>
			<input path="phone" name="phone" id="phone">
		</label>


		<button type="submit">
                <div class="center"></div>
                <span class="submit">Create an account</span>
                <div id="circle"></div>
        </button>

	</form>
</div>
</body>
</html>

