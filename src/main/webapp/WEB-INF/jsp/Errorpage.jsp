<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>404 | CricketSocial</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="img/Faveicon.png" type="image/png" sizes="16x16">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Patua+One" rel="stylesheet">
</head>
<style type="text/css">
body {
font-family: 'Patua One', cursive;
/*background: #fbf0d1;*/
margin: 0;
	background: #fbf0d1 url('images/bg3.png');
    background-position: bottom;
    height: 100vh;
    background-repeat: no-repeat;
}
.page-holder {
    display: flex;
    display: -webkit-flex;
    display: -ms-flexbox;
    align-items: center;
    justify-content: center;
/*    background: #f5f5f5;*/
/*	background: #fbf0d1 url('img/bg.png');
    background-position: center;
    height: 97vh;
    background-repeat: no-repeat;*/
}
#ground {
  position: absolute;
/*  background: rgba(0,0,0,0.5);*/
  left: 0;
  right: 0;
  top: 0;
  z-index: 0;
   display: flex;
    display: -webkit-flex;
    display: -ms-flexbox;
    align-items: center;
    justify-content: center;
    color: #eee;
    text-align: center;
    padding: 1% 0;
}
#shadow {
  position: absolute;
  bottom: 12%;
  left: 50%;
  margin-left: -50px;
  width: 100px;
  height: 33.33333333px;
  box-shadow: 0px 58px 47px rgba(0,0,0,0.9);
  border-radius: 50%;
  -webkit-animation: pulse 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  -moz-animation: pulse 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  -o-animation: pulse 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  animation: pulse 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  z-index: 1;
}
#ball {
  position: absolute;
  top: 10%;
  left: 50%;
  margin-left: -50px;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  z-index: 2;
  -webkit-animation: bounce 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  -moz-animation: bounce 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  -o-animation: bounce 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
  animation: bounce 600ms cubic-bezier(0.63, 0.09, 0.75, 0.46) infinite alternate;
}
#ball span {
  font-size: 22px;
  line-height: 100px;
  width: 100px;
  text-align: center;
  width: 100%;
  display: inline-block;
  color: #ffffff;
}
@keyframes bounce {
	from{
	-webkit-transform: rotate(0deg); 
	transform: rotate(0deg);		
	}
	to {
	-webkit-transform: rotate(360deg); 
	transform: rotate(360deg);		
	}
}

lesshat-selector {
  -lh-property: 0; }

@-webkit-keyframes pulse{ 0% { width: 90px; height: 25px; margin-left: -45px; margin-top: -3px; } 100% { width: 100px; height: 30px; }}
@-moz-keyframes pulse{ 0% { width: 90px; height: 25px; margin-left: -45px; margin-top: -3px; } 100% { width: 100px; height: 30px; }}
@-o-keyframes pulse{ 0% { width: 90px; height: 25px; margin-left: -45px; margin-top: -3px; } 100% { width: 100px; height: 30px; }}
@keyframes pulse{ 0% { width: 90px; height: 25px; margin-left: -45px; margin-top: -3px; } 100% { width: 100px; height: 30px; }}
[not-existing] {
  zoom: 1;
}

lesshat-selector {
  -lh-property: 0; } 

@-webkit-keyframes bounce{ 0% { top: 40%; height: 100px; width: 100px; } 100% { top: 70%; height: 100px; width: 100px; }}
@-moz-keyframes bounce{ 0% { top: 40%; height: 100px; width: 100px; } 100% { top: 70%; height: 100px; width: 100px; }}
@-o-keyframes bounce{ 0% { top: 40%; height: 100px; width: 100px; } 100% { top: 70%; height: 100px; width: 100px; }}
@keyframes bounce{ 0% { top: 40%; height: 100px; width: 100px; } 100% { top: 70%; height: 100px; width: 100px; }}
[not-existing] {
  zoom: 1;
}
h3 {
    font-weight: normal;
    letter-spacing: 1px;
    font-size: 70px;
    text-align: center;
   -webkit-margin-before: 0;
   -webkit-margin-after: 0;
   color: #444;
}
h4 {
  color: #444;
  font-size: 33px;
 font-weight: normal;
}
p {
	text-align: center;
	font-size: 20px;
	color: #0293CD;
}
.ballWrapper img {
	width: 120px;
}
#ground img {
	width: 230px;
	background: rgba(0,0,0,0.5);
    padding: 10px;
}
.quake {
     position: absolute;
    bottom: 0;
    z-index: 0;
    width: 294px;
    opacity: 0.6; 
}

@media only screen and (min-width: 300px) and (max-width:768px) {
h3 {
  font-size: 20px;
}
h4 {
  font-size: 20px;
}
.quake {
  width: 207px;
}
#ball {
  margin-left: -38px;
}
@-webkit-keyframes bounce{ 0% { top: 40%; height: 70px; width: 70px; } 100% { top: 70%; height: 70px; width: 70px; }}
@-moz-keyframes bounce{ 0% { top: 40%; height: 70px; width: 70px; } 100% { top: 70%; height: 70px; width: 70px; }}
@-o-keyframes bounce{ 0% { top: 40%; height: 70px; width: 70px; } 100% { top: 70%; height: 70px; width: 70px; }}
@keyframes bounce{ 0% { top: 40%; height: 70px; width: 70px; } 100% { top: 70%; height: 70px; width: 70px; }}
}
</style>
<body>

<div class="page-holder">


<div id="ball"><span><img id="ball" src="${pageContext.request.contextPath}/images/ball3.png"></span></div>
<div id="ground">
<div>
	<img src="${pageContext.request.contextPath}/images/logo3.png">
	<h3>404 - page</h3>
  <h4>The page isn't available</h4>
	<a href="${pageContext.request.contextPath}/"><p>Back to Home Page</p></a>
</div>
</div>
<div id="shadow">

</div>
<img src="${pageContext.request.contextPath}/images/quake3.png" class="quake">
</div>


</body>
</html>