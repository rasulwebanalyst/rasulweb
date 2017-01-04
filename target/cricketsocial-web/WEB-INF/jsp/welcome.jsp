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
 	<!-- responsive css -->
 	<link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
 
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

   <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">

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


 <!-- <script src="http://maps.googleapis.com/maps/api/js?sensor=true" type="text/javascript"></script> -->
 <script language="javascript" src="https://maps.googleapis.com/maps/api/js?v=3"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>


$(function(){
	 if (navigator.geolocation) {
		 console.log( "Geolocation supported by this browser.");
	        navigator.geolocation.getCurrentPosition(showPosition);
	    	         
	      } else { 
	    	  console.log( "Geolocation is not supported by this browser.");
	      }
	 
	 function showPosition(position){
		// alert( "Geolocation is not supported by this browser.");
		var lat =position.coords.latitude;
		var lang=position.coords.longitude;
		
		//alert(position.coords.latitude+","+position.coords.longitude);
		$('#latLang').val(position.coords.latitude+","+position.coords.longitude);
		$('#fblatLang').val(position.coords.latitude+","+position.coords.longitude);
		
		if(lat != '' && lang != ''){
			
			 var request= position.coords.latitude+","+position.coords.longitude;
			 $('#loading').show();
			
			 $.ajax({
				 
				type : "POST",
				url : "${pageContext.request.contextPath}/leagueMatchesaaroundyou", 
				data : JSON.stringify(request),
				contentType : "application/json; charset=utf-8",
				success : function(res)
				{
					 /* alert(res);  */
					var htmlco="";
					if(res !=null)
						{
						
						if(res.length !=0)
							{
						for(var i in res)
							{
							
							var hometeam=res[i].homeTeamInfo;
							var awayteam=res[i].awayTeamInfo;
							
							htmlco+="<div class='sidebar-list'>";
							htmlco+="<a href='javascript:void(0);'>"+hometeam.boardName+"</a> vs <a href='javascript:void(0);'>"+awayteam.boardName+"</a><br> <strong>"+res[i].gameDateStr+"</strong>";
							
							if(res[i].status == 'InProgress')
								{
								htmlco+="<a class='vw-score' href='javascript:void(0);' onclick=showScoreCardInProgress('"+res[i].tournamentSchedulerId+"','"+res[i].createdBy+"')>Live Score</a>";
								}else
									{
									htmlco+="<a class='vw-score' href='javascript:void(0);' onclick=showScoreCardInProgress('"+res[i].tournamentSchedulerId+"','no')>View Score</a>";	
									}
							
							htmlco+="<span class='teamLogos'>";
							htmlco+="<a href='javascript:void(0);'><img src="+hometeam.boardImageURL+"? class='teamLogo' onError='this.onerror=null;this.src=${pageContext.request.contextPath}/images/boardIcon.png;' ></a> <b>VS</b> <a href='javascript:void(0);'><img src="+awayteam.boardImageURL+"? class='teamLogo'></a>";
							htmlco+="</span></div>"
							}
							}else
								{
								htmlco+="<div class='sidebar-list noContentDiv'>No Matches around you.</div>";		
								}
						}else
							{
						htmlco+="<div class='sidebar-list noContentDiv'>No Matches around you.</div>";	
							}
					
					$("#mau").html(htmlco).trigger('create');
					console.log(htmlco);
					
					
					if(res.length !=0)
						{
						$("#Yesmatches").show();
						$("#Nomatches").hide();
						}
					
					
					$('#loading').hide();
					
				}
				
			 })
			 
		 }
		
	 }
	 
});



$(function() {
  	$('#defaultReal').realperson({chars: $.realperson.alphanumeric});
  });
/* window.fbAsyncInit = function() {
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

<!-- <script>
//var fbURL='1552238875041700'; // Dev
//110086556012641
var fbURL='110086556012641'; // QA

  window.fbAsyncInit = function() {
    FB.init({
      appId      :fbURL ,
      xfbml      : true,
      version    : 'v2.5'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script> -->

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
        <div id="Nomatches">
            <div class="col-md-6 pull-left loginLeft">
               <h1>Welcome to CricketSocial</h1>
               <div id="homeContent">
               <p>The Cricket Connection</p>
               <ul class="login-txt">
               	<li>A Social  and Analytics platform with anchoring tools for Cricket.</li>
               	<li>One stop solution for - Players, Fans, Umpires, Coaches, Merchants, League Boards, Team Boards, Academies, Cricket Administrative Bodies and Talent Acquisition.</li>
               	<li>Players, Fans, Umpires, Coaches, Merchants, League Boards, Team Boards, Academies, Cricket Administrative Bodies and Talent Acquisition</li>
               	<li>Manage Social and club Cricket professionally.</li>
               	<li>Follow live scores anywhere.</li>
               	<li>Capture all your  Cricketing Moments.</li>
               	<li>Connect with Cricket Buddies, Get Noticed, Find opportunities.</li>
               	<li>You may be good enough to represent a professional level not just club level.</li>
               	<li>Give your cricket dream a chance Register on CricketSocial Now.</li>
              
               </ul>
               </div> 
               
               
               
               
              <%--  <div class="sidebar-container widget-MAU">
                     <div class="sidebar-content">
                       <div class="sidebar-header"><a href="${pageContext.request.contextPath}/matchesAroundYou">Matches Around You</a></div>
                       <div id="mau"></div>
                           
                      
                     </div>
                   </div> --%>
        </div>
        </div>
                <div id="Yesmatches" style="display: none;">
                <h1>Welcome to CricketSocial</h1>
               <div class="col-md-6 pull-left loginLeft" style="margin-top: 96px;'">
               <div class="sidebar-container widget-MAU home-scroller">
                     <div class="sidebar-content">
                       <div class="sidebar-header"><a href="${pageContext.request.contextPath}/matchesAroundYou">Matches Around You</a></div>
                       <div id="marqueecontainer" onMouseover="copyspeed=pausespeed" onMouseout="copyspeed=marqueespeed">
						<div id="vmarquee" style="position: absolute; width: 98%;">
                       <div id="mau"></div>
                           
                      </div>
                      </div>
                     </div>
                   </div>
               
               
               
               </div>
               
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
      
          <h2><!-- Start Match It's free and always will be --></h2>
          
          
          	<p style="color:red;">${validation}</p>
         
          
          <form   id="loginFormId_1" name="loginFormId_1"  action="signup" method="POST" onsubmit="return dateOfBirthValidation();">
          
          <div class="col-md-12 noPadding">
          
	          <div class="form-group">
	            <label for="email"><span style="color:red">*</span>First Name :</label>
	            <%-- <input type="text" class="form-control" id="firstName" name="firstName" value="${User.firstName }" onblur="checkAlphabet()" onkeyup="checkAlphabetKeyup()"> --%>
	            <input type="text" class="form-control" id="firstName" name="firstName" value="${User.firstName }" >
	            <span style="color:red" id="error"></span>
	            <div style="color: red;"></div>
	            
	          </div>
	          <div class="form-group pull-right">
	            <label for="pwd"><span style="color:red">*</span>Last Name :</label>
	           <%--  <input type="text" class="form-control" id="lastName" name="lastName" value="${User.lastName }" onblur="checkAlphabet1()" onkeyup="checkAlphabetKeyup1()"> --%>
	            <input type="text" class="form-control" id="lastName" name="lastName" value="${User.lastName }">
	              <span style="color:red" id="error1"></span>
	          </div>
          
          </div>
          <div class="col-md-12 noPadding">
	          <div class="form-group">
	           	 	<label for="pwd"><span style="color:red">*</span>E-mail :</label>
	            	<input type="text" class="form-control" id="emailAddress" name="emailAddress" value="${User.emailAddress }">
	          </div>
	          
	       <div class="form-group  pull-right">
	       <div class="col-md-12 no-padding">
	       <div class="col-md-4 padding-left">
	       <label class="log-dt-lab" for=""><span style="color:red">*</span>DOB</label>
	       <select class="log-dt-holder" id="dobMonth">
	       <option value="01">Jan</option>
	       <option value="02">Feb</option>
	       <option value="03">Mar</option>
	       <option value="04">Apr</option>
	       <option value="05">May</option>
	       <option value="06">Jun</option>
	       <option value="07">Jul</option>
	       <option value="08">Aug</option>
	       <option value="09">Sep</option>
	       <option value="10">Oct</option>
	       <option value="11">Nov</option>
	       <option value="12">Dec</option>
	       </select>
          
	         
	       </div><!-- col end -->
	       <div class="col-md-4 no-padding-res">
	       <label class="log-dt-lab" for=""> <span style="color:red"></span></label>
            <input class="log-dt-holder" type="text" style="margin-top: 4px;" value="" placeholder="date" id="dobDate" onfocus="numberCheckDobDate(this)" onblur="numberCheckDobDate(this)" onkeyup="dateOfBirthValidation1()">
	             
	       </div>
	       <div class="col-md-4 padding-right no-padding-res">
	       <label class="log-dt-lab" for=""><span style="color:red"></span></label>
            <input class="log-dt-holder" style="margin-top: 4px;" type="text" value="" placeholder="year" id="dobYear" onfocus="numberCheckDobYear(this)" onblur="numberCheckDobYear(this)" onkeyup="dateOfBirthValidation1()">	            
	       </div>
	      
	       <input type="hidden" class="form-control datepicker" id="dateOfBirth" name="dateOfBirth" readonly value="<fmt:formatDate pattern="MM/dd/yyyy" value="${User.dateOfBirth }" />">
	       </div><!-- col end -->
	       
	       <label class="error" id="bodError"></label>
            <%-- <label for=""><span style="color:red">*</span>Date of Birth :</label>
            <input type="text" class="form-control datepicker" id="dateOfBirth" name="dateOfBirth" readonly value="<fmt:formatDate pattern="MM/dd/yyyy" value="${User.dateOfBirth }" />">
          <label for="dob" generated="true" class="error" id="bodErrorDyn"></label> --%>
          </div> 

			
		<%-- 	<div class="form-group pull-right">
	           	 	<label for=""><span style="color:red">*</span>E-mail :</label>
	            	<input type="text" class="form-control datepicker" id="dateOfBirth" name="dateOfBirth" value="<fmt:formatDate pattern="MM/dd/yyyy" value="${User.dateOfBirth }" />">
	          </div> --%>
			
				          
	       	 
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
            <!-- <label for="pwd" class="cptLabel"><span style="color:red">*</span>Enter the above Captcha code</label> -->
          	<!-- <i class="fa fa-refresh capRefresh"></i> -->
          	
          </div>
          
           
          
          
          	<div class="form-group"  style="width: 100%;">
          	<button type="submit" class="btn btn-default dBtn">Sign up</button> (or) Sign up using the below option
          	</div>
        

          <div class="row">
          <div class="col-md-12 loginSocial">
              <a href="#" class="btn btn-default fbbtn" onclick="fbAccount()"><i class="fa fa-facebook-f"></i> Facebook</a>
              <a href="#" class="btn btn-default googlebtn" onclick="googleLogin()"><i class="fa fa-google-plus"></i> Google+</a>
          </div>
          </div>
        </form>
        
          <span class="tc">By signing up you agree to our <a href="${pageContext.request.contextPath}/policy">Terms of Service and Privacy Policy.</a></span>
         
      </div>
      
              
      
      
      <div class="tab-pane fade active in" id="login">
          <h2>Login using CricketSocial Account</h2>
          <p style="color: red;">${loginvalidation}</p>
          <form  action="loginValidate.htm" id="login_auth" name="login_auth" method="post">
          
          <%-- <div style="color: red;">
          	  ${loginvalidation}
          	</div>     --%>      
           <div class="col-md-12 noPadding">
          <div class="form-group">
            <label for="email"><span style="color:red">*</span>E-mail/Username:</label>
            <input type="email" class="form-control" id="email" name="emailAddress">
          </div>
          <div class="form-group pull-right">
            <label for="pwd"><span style="color:red">*</span>Password:</label>
            <input type="password" class="form-control" id="pwd" name="password">
          </div>
           </div>
          <input type="hidden" value="" id="crilogintype" name="logintype" value="CricketSocial">
          <input type="hidden" value="" id="type" name="type" >

         <input type="hidden" name="latLang" id="latLang">
         
          	<div class="form-group" style="width: 100%;">
          	<button type="Submit" class="btn btn-default dBtn" onclick="loginValidate1_2(event)">Login</button> (or) Login using the below option
          	</div>
         
         <span class="forgotPw"><a href="${pageContext.request.contextPath}/account-recovery">I can't access my account</a></span>
<div class="clearfix"></div>
          <div class="row">
          <div class="col-md-12 loginSocial">
              <a href="#" class="btn btn-default fbbtn" onclick="fbAccount()"> <i class="fa fa-facebook-f"></i>Facebook</a>
              <a href="#" class="btn btn-default googlebtn" onclick="googleLogin()"> <i class="fa fa-google-plus"></i>Google+</a>
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
      		<input type="hidden" value="" id="fblastName" name="lastName">
      		  <input type="hidden" name="latLang" id="fblatLang">     	
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

function dateOfBirthValidation(){
  
      var dobMonth = $("#dobMonth").val();
      var dobDate = $("#dobDate").val();
      var dobYear = $("#dobYear").val();
       
       if(dobMonth != "00" && dobDate != "" && dobYear != "" && dobDate.length == 2 && dobYear.length == 4){
          $("#bodErrorDyn").text("");
          var dopValue = dobMonth+"/"+dobDate+"/"+dobYear;       
          $("#dateOfBirth").val(dopValue);
          return true; 
       }else{
       $("#bodError").text("Please enter the date of birth");
       $("#bodError").show();
       $("#dateOfBirth").val("");
       
        
       return false;
       }
      
      
}
function dateOfBirthValidation1(){
	  
    var dobMonth = $("#dobMonth").val();
    var dobDate = $("#dobDate").val();
    var dobYear = $("#dobYear").val();
     
     if(dobMonth != "00" && dobDate != "" && dobYear != "" && dobDate.length == 2 && dobYear.length == 4){
        $("#bodErrorDyn").text("");
        var dopValue = dobMonth+"/"+dobDate+"/"+dobYear;       
        $("#dateOfBirth").val(dopValue);
        $('label[for=dateOfBirth]').remove();
        return true; 
     }else{
      
     return false;
     }
    
    
}

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
                 	required: "Please enter E-mail",
                 	 minlength: "Invalid E-mail",
                 	maxlength : "Email should be below 20 character's",
                     email:"Invalid E-mail"
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
			//alert('dddddddd');
			$('#bodErrorDyn').text('');
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
	         			 maxlength : 30,
	         			alphabetsOnly : true
	                 }, 
	                 password: {
	                     required: true,
	                     minlength : 6,
	         			 maxlength : 15,
	         			/*  specilPassword : true */
	         			 
	         			 
	                 },
	                 lastName : {
	                	 required: true,
	                     minlength : 2,
	         			 maxlength : 30,
	         			alphabetsOnly :true
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
	                     required: "Please enter the first name",
	                     minlength :"Enter atleast 2 character's",
	             		maxlength : "Name should be below 30 character's"
	                 },
	                 password: {
	                     required: "Please enter the password",
	                     minlength :"Type password atleast 6 character's",
	             		maxlength : "password should be below 15 character's"
	                 },
	                 lastName: {
	                	   required: "Please enter the last name",
		                     minlength :"Enter atleast 2 character's",
		             		maxlength : "Name should be below 30 character's"
	                 },
	               confirmPassword: {
	                     required: "Please re-enter the password",
	                     minlength :"Enter atleast 6 character's",
	                     maxlength : "password should be below 15 character's",
	                     equalTo : "password not match"
	                 }, 
	                 emailAddress: {
	                 	required: "Please enter the e-mail",
	                 	 minlength: "Invalid e-mail",
	                 	maxlength : "e-mail should be below 100 character's",
	                     email:"Invalid e-mail"
	                 },
	                  dateOfBirth : {
	                	 required : "Please enter the date of birth",
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
     				 minlength: 2,
     				maxlength : 100,
     				/*  email:true */
                 } 
                 
                 
                 
             },
             messages: {
            	
            	 password: {
                     required: "Please enter the password",
                     minlength : "Invalid credentials",
              		maxlength : "Password should be below 20 character's"
                  },              
                  emailAddress: {
                  	required: "Please enter the Email-Id/username",
                  	minlength: "Invalid Email-Id/username",
                  	maxlength : "E-mail/username should be below 100 character's",
                    
                  }
                
             }        
		
	    }).form()) { 
		      
		 var formate=/^[a-zA-Z0-9\-_]+(\.[a-zA-Z0-9\-_]+)*@[a-z0-9]+(\-[a-z0-9]+)*(\.[a-z0-9]+(\-[a-z0-9]+)*)*\.[a-z]{2,4}$/;
		   var mailid=$("#email").val();
		   if(formate.test(mailid)){
			   $("#type").val('Valid');
		   }else{
			   $("#type").val('InValid');
		   }
	    	document.getElementById("login_auth").submit();
		
	    };
	  

	    if($('#login_auth').valid())
	    	{
	    		//alert('success');
	    	}else{
	    		  $('#loading').hide();
	    		//alert('error came');
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
function numberCheckDobDate(elem){
 	var textBoxId=$(elem).attr('id');
	$("#"+textBoxId).keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	     var val = $('#'+textBoxId).val();
	    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 46 || val.length > 1) {
	        //display error message
	      $('#'+textBoxId).blur();
	         $("#bodErrorDyn").text("Please enter valid date of birth");
             $("#bodErrorDyn").show();
              $("#dateOfBirth").val("");
	               return false;
	    }else{
	    	 $("#bodErrorDyn").text("");
             $("#bodErrorDyn").show();
	    }
	   });
}
function numberCheckDobYear(elem){
 	var textBoxId=$(elem).attr('id');
	$("#"+textBoxId).keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	     var val = $('#'+textBoxId).val();
	    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 46 || val.length > 3) {
	        //display error message
	      $('#'+textBoxId).blur();
	         $("#bodErrorDyn").text("Please enter valid date of birth");
             $("#bodErrorDyn").show();
              $("#dateOfBirth").val("");
	               return false;
	    }else{
	    	 $("#bodErrorDyn").text("");
             $("#bodErrorDyn").show();
	    }
	   });
}

$(document).ready(function()
		{
	var response="${responsestring}";
	if(response == "success")
		{
		displaynotification('Account has been merged successfully',2000);
		}else if(response == "success1")
			{
			displaynotification('Credentials has been updated successfully, Please Login',2000);
			}
	
	var response="${Schedulemessage}";
	if(response == "Yes")
		{
		displaynotification('Event status has been updated successfully',3000);
		}else if(response == "No")
			{
			displaynotification('Sorry! Match schedule has been updated, Please check your updated E-Mail',3000);
			}
	
		});
		
		
		
</script>

<script type="text/javascript">

function showScoreCardInProgress(id,bid){
		//alert("hello");
		if(bid == 'no')
			{
			displaynotification('Match not yet started',2000);
			}else{
		 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgressPublicProfile/boardId/"+bid+"/matchId/"+id;
			}
		}

</script>

<script type="text/javascript">


var delayb4scroll=2000 //Specify initial delay before marquee starts to scroll on page (2000=2 seconds)
var marqueespeed=1 //Specify marquee scroll speed (larger is faster 1-10)
var pauseit=1 //Pause marquee onMousever (0=no. 1=yes)?

////NO NEED TO EDIT BELOW THIS LINE////////////

var copyspeed=marqueespeed
var pausespeed=(pauseit==0)? copyspeed: 0
var actualheight=''

function scrollmarquee(){
if (parseInt(cross_marquee.style.top)>(actualheight*(-1)+(-1000))) //if scroller hasn't reached the end of its height
cross_marquee.style.top=parseInt(cross_marquee.style.top)-copyspeed+"px" //move scroller upwards
else //else, reset to original position
cross_marquee.style.top=parseInt(marqueeheight)+(-500)+"px"
}

function initializemarquee(){
cross_marquee=document.getElementById("vmarquee")
cross_marquee.style.top=-500
marqueeheight=document.getElementById("marqueecontainer").offsetHeight
actualheight=cross_marquee.offsetHeight //height of marquee content (much of which is hidden from view)
if (window.opera || navigator.userAgent.indexOf("Netscape/7")!=-1){ //if Opera or Netscape 7x, add scrollbars to scroll and exit
cross_marquee.style.height=marqueeheight+"px"
cross_marquee.style.overflow="scroll"
return
}
setTimeout('lefttime=setInterval("scrollmarquee()",30)', delayb4scroll)
}

if (window.addEventListener)
window.addEventListener("load", initializemarquee, false)
else if (window.attachEvent)
window.attachEvent("onload", initializemarquee)
else if (document.getElementById)
window.onload=initializemarquee


</script>
<style type="text/css">


</style> 
 
</html>