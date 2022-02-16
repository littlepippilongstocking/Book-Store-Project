<!DOCTYPE html>
<html>
<head>
<title>Welcome ${username}</title>

<style>
 @import url(https://fonts.googleapis.com/css?family=Cookie|Raleway:300,700,400);

* {
	margin: 0;
	box-sizing: border-box;
	padding: 0;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

h1, h2, h3, h4, h5, h6, a, p, span {
	margin: 10px 10px 0 0;
	padding-bottom: 0.714em;
	text-transform: uppercase;
	letter-spacing: 0.1em;
	font-weight: 400;
	color: white;
	font-weight: bold;
	text-align: center;
}


body, .inner {
	height: 100%;
	width: 100%;
	position: absolute;
	background: url("https://images2.alphacoders.com/261/26102.jpg");
	background-repeat: no-repeat;
	background-position: center center;
	background-attachment: fixed;
	background-size: cover;
	font-family: 'Raleway', sans-serif;

}

.noselect {
	user-select: none;
}

.outline {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.card {
	background-color: transparent;
	width: 500px;
	height: 300px;
	perspective: 5000px;
}

.card:hover .inner {
	transform: rotateY(180deg) translateZ(5px);
	backface-visibility: visible;
}

.inner {
	position: relative;
	width: 100%;
	height: 100%;
	transform-style: preserve-3d;
	transition: 1s cubic-bezier(0.175, 0.885, 0.32, 1.275);
	text-align: center;
}

.inner:after {
	content: "";
	background: inherit;
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	filter: blur(8px);
}

.front, .back {
	position: fixed;
	width: 100%;
	height: 100%;
	z-index: 10;
	padding: 20px;
	backface-visibility: hidden;
	transform: rotateY(0deg) translateZ(0px);
}

.front {
	text-align: center;
	background-color: rgba(0, 0, 0, 0.8);
	color: black;
}

.front h1 {
	text-align: center;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.back {
	background-color: rgba(255, 255, 255, 0.3);
	color: white;
	transform: rotateY(-180deg);
}

.back h1 {
	padding-bottom: 0;
	padding-top: 0.714;
}

.back p {
	padding-top: 0 ;
}

.back img {
	top: 10px;
	position: relative;
	width: 110px;
	height: 110px;
	border-radius: 100%;
}

@media screen and (max-width: 900px) {
	.inner {
		background-size: 200% 200%;
	}
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
  min-width: 450px;
  border: none;
  border-radius: 30px;
  color: #eee;
  font-size: 20px;
  font-family: 'Raleway', sans-serif;
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


</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

  <a href="#" class="menu">Your basket</a>
  <br>
  <a href="http://localhost:8080/project/" class="menu">Home</a>
  <a href="login" class="menu">Log in</a>
  <a href="register" class="menu">Sign up</a>
  <a href="#" class="menu">Contact us</a>
</div>
<div>
<span style="color: orange;font-size:40px;cursor:pointer"
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

<div class="outline">
<form  action="home" method="get" id="welcome" modelAttribute="home">

    <div class="card" onclick="onclick">
        <div class="inner">
            <div class="front">
                <h1>Welcome ${username}</h1>
            </div>
            <div class="back"> <img src="https://i.pinimg.com/originals/18/99/07/1899072ff62e9455aed4c53be5fe9654.png" />
                <h4>Todo: add details</h4>

                <br>
                <button>
                        <div class="center"></div>
                        <span> <a href="http://localhost:8080/project/" class="submit">Go shopping</a></span>
                        <div id="circle"></div>
                </button>


            </div>
        </div>
    </div>
    </form>
</div>
</body>
</html>


