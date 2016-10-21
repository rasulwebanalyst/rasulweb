<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CricketSocial</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">

<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    

 <!-- jQuery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
 <link href="${pageContext.request.contextPath}/css/datepicker.css" rel="stylesheet">

 
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>


$(function(){
	 if (navigator.geolocation) {
		// alert( "Geolocation is not supported by this browser.");
	        navigator.geolocation.getCurrentPosition(showPosition);
	                   
	      } else { 
	         // alert( "Geolocation is not supported by this browser.");
	      }
	 
	 function showPosition(position){
		// alert( "Geolocation is not supported by this browser.");
		var lat =position.coords.latitude;
		var lang=position.coords.longitude;
		
		
		$('#latLang').val(position.coords.latitude+","+position.coords.longitude);
		
		
	 }
	 
});



/* $(function() {
  	$('#defaultReal').realperson({chars: $.realperson.alphanumeric});
  });
window.fbAsyncInit = function() {
    FB.init({
      appId      : '1552238875041700',
      xfbml      : true,
      version    : 'v2.2',
      oauth: true
	
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
   */


</script>
</head>

 

<body class="loginBody">

 <%@ include file="CSCommon.jsp" %>
<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>


    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                   <img src="${pageContext.request.contextPath}/images/Logo.png">
                </a>
            </div>
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container loginMiddleBlock">

        <!-- Heading Row -->
        <div class="row">
            <div class="col-md-6 pull-left loginLeft">
               <h1>Welcome to CricketSocial</h1>
               <p>
               The cricket connection
              <!--  	lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus 
convallis laoreet purus quis ultrices. Pellentesque mi ligula, 
accumsan in tempor id,  -->
               </p>
               
            </div>
            <!-- /.col-md-8 -->
            <div class="col-md-6 pull-right loginRight">
               
               <ul class="nav nav-tabs" role="tablist">
      <li  id="sunupLI">
          <a href="#signUp" role="tab" data-toggle="tab">
             SIGN UP
          </a>
      </li>
      <li class="active" id="loginLI">
      <a href="#login" role="tab" data-toggle="tab">
          LOGIN
          </a>
      </li>
      
    </ul>
    
    <!-- Tab panes -->
    <div class="tab-content">
      <div class="tab-pane fade" id="signUp">
      
          <h2>Start Match It's free and always will be</h2>
          
          
          	<p style="color:red;">${validation}</p>
         
          
          <form   id="loginFormId_1" name="loginFormId_1"  action="signup" method="POST">
          
          <div class="col-md-12 noPadding">
          
	          <div class="form-group">
	            <label for="email"><span style="color:red">*</span>First Name :</label>
	            <input type="text" class="form-control" id="firstName" name="firstName" value="${User.firstName }" onblur="checkAlphabet()" onkeyup="checkAlphabetKeyup()">
	            <span style="color:red" id="error"></span>
	            <div style="color: red;"></div>
	            
	          </div>
	          <div class="form-group pull-right">
	            <label for="pwd"><span style="color:red">*</span>Last Name :</label>
	            <input type="text" class="form-control" id="lastName" name="lastName" value="${User.lastName }" onblur="checkAlphabet1()" onkeyup="checkAlphabetKeyup1()">
	          <span style="color:red" id="error1"></span>
	          </div>
          
          </div>
          <div class="col-md-12 noPadding">
	          <div class="form-group">
	           	 	<label for="pwd"><span style="color:red">*</span>E-mail :</label>
	            	<input type="text" class="form-control" id="emailAddress" name="emailAddress" value="${User.emailAddress }">
	          </div>
	          
	       <div class="form-group  pull-right">
            <label for="pwd"><span style="color:red">*</span>Date of Birth</label>
            <input type="text" class="form-control datepicker" id="dob" name="dateOfBirth" value="<fmt:formatDate pattern="MM/dd/yyyy" value="${User.dateOfBirth }" />">
          </div> 
	          
	       	 
          </div>
          
          
        
          
          
          
          
          
          <div class="col-md-12 noPadding">
          
          <div class="form-group">
            	<label for="email"><span style="color:red">*</span>Password :</label>
            	<input type="password" class="form-control" id="password" name="password" value="${User.password }">
         	 </div>

          <div class="form-group  pull-right">
            <label for="pwd"><span style="color:red">*</span>Confirm Password:</label>
            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" value="${User.password }">
          </div>
          
          </div>
          
           <div class="form-group captchBlock" style="width:100%">
           <input type="text" style="margin-top:10px; clear:both; width:48%; float:left" placeholder="Enter the above Captcha code" class="form-control"  id="defaultReal" name="defaultReal">
          
          	<!-- <i class="fa fa-refresh capRefresh"></i> -->
          	
          </div>
          
           
          
          
          	<div class="form-group" style="width: 100%;">
          	<button type="submit" class="btn btn-default dBtn">Sign up</button> (or) Sign up using the below option
          	</div>
        

          <div class="row">
          <div class="col-md-12 loginSocial">
              <a href="#" class="btn btn-default fbbtn" onclick="fbAccount()"><i class="fa fa-facebook-f"></i> Facebook</a>
              <a href="#" class="btn btn-default googlebtn" onclick="googleLogin()"><i class="fa fa-google-plus"></i> Google+</a>
          </div>
          </div>
        </form>
        
          <span class="tc">By signing up you agree to our <a href="#">Terms of Service and Privacy Policy.</a></span>
         
      </div>
      
              
      
      
      <div class="tab-pane fade active in" id="login">
          <h2>Login using CricketSocial Account</h2>
          <p style="color: red;">${loginvalidation}</p>
          <form  action="${pageContext.request.contextPath}/mergeLoginValidate" id="login_auth" name="login_auth" method="post">
          
          <%-- <div style="color: red;">
          	  ${loginvalidation}
          	</div>     --%>      
           <div class="col-md-12 noPadding">
          <div class="form-group">
            <label for="email"><span style="color:red">*</span>E-mail:</label>
            <input type="email" class="form-control" id="email" name="emailAddress">
          </div>
          <div class="form-group pull-right">
            <label for="pwd"><span style="color:red">*</span>Password:</label>
            <input type="password" class="form-control" id="pwd" name="password">
          </div>
           </div>
          <input type="hidden" value="" id="crilogintype" name="logintype" value="CricketSocial">

         <input type="hidden" name="latLang" id="latLang">
         
         <input type="hidden" name="boardId" id="boardId" value="${boardId}">
         
          	<div class="form-group" style="width: 100%;">
          	<button type="Submit" class="btn btn-default dBtn" onclick="loginValidate1_2(event)">Login</button> (or) Login using below option 
          	</div>
         
         <span class="forgotPw"><a href="${pageContext.request.contextPath}/account-recovery">I can't access my account</a></span>

          <div class="row">
          <div class="col-md-12 loginSocial">
              <a href="#" class="btn btn-default fbbtn" onclick="fbAccount()"><i class="fa fa-facebook-f"></i>Facebook</a>
              <a href="#" class="btn btn-default googlebtn" onclick="googleLogin()"><i class="fa fa-google-plus"></i>Google+</a>
          </div>
          </div>
          
          
        </form>
        
                       





      </div>
      <div>
      	<form action="oAuthloginValidate.htm" id="fbloginvalidation" name="fbloginvalidation" method="post">
      		<input type="hidden" value="" id="fbemailAddress" name="emailAddress">
      		<input type="hidden" value="" id="fbpassword" name="password">
      		<input type="hidden" value="" id="fblogintype" name="loginType">
      		<input type="hidden" value="" id="fbfirstName" name="firstName">
      		<input type="hidden" value="" id="fbloginTypeId" name="fbloginTypeId">
      		      	
      	</form>
      </div>
      
    </div>
               
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->

<input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}"> 
    </div>
    <!-- /.container -->

    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
</body>
<script>
function test(){
	   
	//alert('ddddddddd');
    if($("#testform2").validate({
         rules: {
         	
        
        	 email33: {
                	 required: true,
     				 minlength: 4,
     				maxlength : 20,
     				 email:true
                 } 
                 
                 
                 
             },
             messages: {
            	
            	 email: {
                 	required: "Please enter email",
                 	 minlength: "Invalid email",
                 	maxlength : "Email should be below 20 character's",
                     email:"Invalid email"
                 }
                
             }   
     }).form(event)){
    	
    	//alert('oke');
    	event.preventDefault();
    	 
    }
  //  alert('lost');
};

$(document).ready(function() {
   
	$('#dob').focus(function() {

		  $("#dob").blur();

		});

	//alert('lost');
	  $('#loading').hide();
	
	  
	  
	  if("${Signup}")
		{
		$('#sunupLI').addClass("active");
		$('#loginLI').removeClass("active");
		$('#signUp').addClass("tab-pane fade active in");
		$('#login').removeClass("active");
		}else
	  if("${LGIN}"=="Login")
		{
			$('#loginLI').addClass("active");
			$('#sunupLI').removeClass("active");
			$('#login').addClass("tab-pane fade active in");
			$('#signUp').removeClass("active");
			//$("p").show();
			
			//document.getElementById('login').style.display = 'block';
			//$('#').show();
		}
	  
	  $('.datepicker').on('changeDate', function(ev){
			$(this).datepicker('hide');
		});
		
		$('.datepicker').datepicker({
			 endDate: '+0d',
			 autoclose: true
			 });
	  
	
});

function submitContactUsForm()
{
	//alert('test'+emailval());
	if(emailval()==true)
		{
			return true;
		}else{
			return false;
		}
	
}

function emailval()
{
	var email=document.getElementById('emailAddress').value;
	//alert(email);
	if(email=='')
		{
			return false;
		}else
			{
			if(emailvalidation(email))
		{
				if(email.length>4 & email.length<20)
					{
						return true;
					}else{
						return false;
					}
		}else{
			return false;
		}
			}
	
}

function registration()
{
	
	 var email=$('#emailAddress').val();
     var password=$('#password').val();
     var firstName=$('#firstName').val();
      var Users={
    		  emailAddress:email,
    		  password:password,
    		  firstName : firstName,
    		  loginType : 'CricketSocial'
      };
	  	var defaultReal=$('#defaultReal').val();
		var defaultRealHash1=document.getElementsByName("defaultRealHash").toString();
		
	
		Users.defaultReal=defaultReal;
		Users.defaultRealHash=defaultRealHash1;
      var logininfo=JSON.stringify(Users);
         //alert("request data"+logininfo);
       $.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/registration.htm",
					dataType: "json",
		            contentType: "application/json; charset=utf-8",
		            data:logininfo,
		              async: false,
					success : function(res) {
						console.log(res);	
						if(res!=null)
							{
								if(res.userExist=='YES')
									{
									//alert(res.itemsFound.firstName);
									window.location.href="${pageContext.request.contextPath}/success.htm?suid="+res.itemsFound.firstName+"&smg="+res.userExist;
										
									}else{
										window.location.href="${pageContext.request.contextPath}/success.htm?suid="+res.itemsFound.firstName+"&smg=''";
										
									}
							}else{
								window.location.href="${pageContext.request.contextPath}/home.htm";
							}
						
						
					},
					
					error:function(response){
					//alert("Error message"+JSON.stringify(response));
					},
				
					
				}); 
      
      
}

	
	//alert("inside the function login validation----");
	
	//e.preventDefault();
	$(function(){
		$('#loginFormId_1').validate({
	    	
			 rules: {
		         	
	        	 firstName: {
	                     required: true,
	                     minlength : 2,
	         			 maxlength : 30
	                 }, 
	                 password: {
	                     required: true,
	                     minlength : 6,
	         			 maxlength : 15
	                 },
	                 lastName : {
	                	 required: true,
	                     minlength : 2,
	         			 maxlength : 30
	                 },
	              confirmPassword: {
	                     required: true,
	                     minlength : 6,
	         			 maxlength : 15,
	                     equalTo : "#password"
	         			 
	                 }, 
	                 emailAddress: {
	                	 required: true,
	     				 minlength: 4,
	     				maxlength : 100,
	     				 email:true
	                 },
	                 dateOfBirth : {
	                	 required : true,
	                 },
	                 defaultReal : {
	                	 required : true,
	                 } 
	                  
	                 
	                 
	             },
	             messages: {
	            	 firstName: {
	                     required: "Please enter first name",
	                     minlength :"Type message at least 2 character's",
	             		maxlength : "Name should be below 30 character's"
	                 },
	                 password: {
	                     required: "Please enter your password",
	                     minlength :"Type password at least 6 character's",
	             		maxlength : "password should be below 15 character's"
	                 },
	                 lastName: {
	                	   required: "Please enter last name",
		                     minlength :"Type message at least 2 character's",
		             		maxlength : "Name should be below 30 character's"
	                 },
	               confirmPassword: {
	                     required: "Please re-enter your password",
	                     minlength :"Type password at least 6 character's",
	                     maxlength : "password should be below 15 character's",
	                     equalTo : "password not match"
	                 }, 
	                 emailAddress: {
	                 	required: "Please enter email",
	                 	 minlength: "Invalid email",
	                 	maxlength : "Email should be below 100 character's",
	                     email:"Invalid email"
	                 },
	                 dateOfBirth : {
	                	 required : "Please enter date of birth",
	                 },
	                 defaultReal :{
	                	 required : "Please enter the captcha code",
	                 }, 
	                
	                
	             }        
			
		    });
	});
		
	
	
function loginValidate1_2(e){
	
	  $('#loading').show();
	e.preventDefault();
	 if($('#login_auth').validate({
	    	
		 rules: {
	         	
        	  password: {
                     required: true,
                     minlength : 2,
         			 maxlength : 20
                 },
            
                 emailAddress: {
                	 required: true,
     				 minlength: 4,
     				maxlength : 100,
     				 email:true
                 } 
                 
                 
                 
             },
             messages: {
            	
                 password: {
                     required: "Please enter the password",
                     minlength :"Type password at least 2 character's",
             		maxlength : "password should be below 20 character's"
                 },              
                 emailAddress: {
                 	required: "Please enter E-mail",
                 	 minlength: "Invalid E-mail",
                 	maxlength : "E-mail should be below 100 character's",
                     email:"Invalid email"
                 }
                
             }        
		
	    }).form()) { 
		      
		
	    	document.getElementById("login_auth").submit();
		
	    };
	  

	    if($('#login_auth').valid())
	    	{
	    		//alert('success');
	    	}else{
	    		  $('#loading').hide();
	    		alert('error came');
	    	}
	    return false;
}


function checkAlphabet()  
{  
	var inputtxt = $("#firstName").val();
	console.log(inputtxt);
	 var letters = /^[A-Za-z]+$/;  
	 if(inputtxt != ""){
		
     if(letters.test(inputtxt))  
     {  
	 document.getElementById("error").innerHTML = "";
    return true;  
   }  
 else  
   {  
	 document.getElementById("error").innerHTML = "Please enter characters only";
   return false;  
   } 
	 }else{
		 document.getElementById("error").innerHTML = "";
	 }
}  

function checkAlphabetKeyup(){
	var inputtxt = $("#firstName").val();
	 var letters = /^[A-Za-z]+$/;  
	if(inputtxt.length == 0){
		 document.getElementById("error").innerHTML = "";
	}else{
		 if(letters.test(inputtxt))  
	     {  
		 document.getElementById("error").innerHTML = "";
	    return true;  
	   }  
	 else  
	   {  
		 document.getElementById("error").innerHTML = "Please enter characters only";
	   return false;  
	   } 
	}
}


function checkAlphabet1()  
{  
	var inputtxt = $("#lastName").val();
	console.log(inputtxt);
	 var letters = /^[A-Za-z]+$/;  
	 if(inputtxt != ""){
		
     if(letters.test(inputtxt))  
     {  
	 document.getElementById("error1").innerHTML = "";
    return true;  
   }  
 else  
   {  
	 document.getElementById("error1").innerHTML = "Please enter characters only";
   return false;  
   } 
	 }else{
		 document.getElementById("error1").innerHTML = "";
	 }
}  

function checkAlphabetKeyup1(){
	var inputtxt = $("#lastName").val();
	 var letters = /^[A-Za-z]+$/;  
	if(inputtxt.length == 0){
		 document.getElementById("error1").innerHTML = "";
	}else{
		 if(letters.test(inputtxt))  
	     {  
		 document.getElementById("error1").innerHTML = "";
	    return true;  
	   }  
	 else  
	   {  
		 document.getElementById("error1").innerHTML = "Please enter characters only";
	   return false;  
	   } 
	}
}


</script>
 
</html>
