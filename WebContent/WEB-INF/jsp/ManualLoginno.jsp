<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<head>
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Cricket Social</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">

<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>

<!--Font-Awesome Icons-->
<%--  <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet"> --%>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<style>
.accountRecoverytbox {
    margin-left: 0; 
    width: 100%;
    }
    .fpDiv {
     width: 90%;
     margin: 0 auto;
    }
 a.login-no {
     width: 23%;
    float: right;
    text-align: right;
    font-size: 12px;
    text-decoration: underline;
    padding-right: 2px;
    color: steelblue;
 }
 label.error {
 font-size: 12px;
 }
</style>
<body class="loginBody">
<%@ include file="CSCommon.jsp" %>
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
			<c:if test="${CodeVerification eq false}">
				<p style="color: red; font-size: 12px; margin-bottom: -12px;">You
					entered wrong code.</p>
			</c:if>
			<div class="loginCenterBlock" style="background:rgba(255,255,255,0.5); border-top: #224e6b solid 3px; border-bottom: none;">
				<form  name="form1" id="form1" method="post">
					<!-- 	<label id="dis" style="color: red;"></label><br> -->
					<h2 class="text-left">Update your credential</h2>
					<div class="fpDiv">
						<label for="accountRecoveryBoxId"><span></span>Enter Email
							Address</label><br> <input type="text"
							class="form-control accountRecoverytbox"
							id="accountRecoveryBoxId" name="accountRecoveryBoxId"><a class="login-no" href="javascript:void(0)" onclick="verifyEmailAddressMergeNo()">Verify Email-Id</a> <span id="error1" style="color:red"></span><br>
							<input type="hidden" name="accountRecoveryBoxId1" id="accountRecoveryBoxId1">
							<input type="hidden" value="${LogedinUserId}" id="LogedinUserId" name="LogedinUserId">
						 <label for="password1"><span></span>Enter Password</label><br>
						<input type="password" class="form-control accountRecoverytbox"
							id="password1" name="password1"><br> <label
							for="password2"><span></span>Confirm Password</label><br> <input
							type="password" class="form-control accountRecoverytbox"
							id="password2" name="password2"><br> 
							<label
							for="password2"><span id="otpCode"></span>Enter OTP</label><br> <input
							type="text" class="form-control accountRecoverytbox"
							id="Otppassword" name="Otppassword" onclick="Enterotp()"><br>
					</div>
					<button type="button" class="btn btn-default dBtn"
						onclick="Validate()">Next</button>
					<button type="button"
						onclick="window.location.href='${pageContext.request.contextPath}/'"
						class="btn btn-default blockBtn">Cancel</button>

				</form>
			</div>

		</div>
		<!-- /.row -->


	</div>
	<!-- /.container -->


	<script>
	
	function Enterotp()
	{
		var email = $("#accountRecoveryBoxId1").val();
		if(email == "")
		{
		displaynotification('Please verify your Email-Id',2000);
		return false;
		}
	}
	
		function Validate() {
			var email = $("#accountRecoveryBoxId1").val();
			var pwd = $("#password1").val();
			var otpCode = $("#Otppassword").val();
			var userId = $("#LogedinUserId").val();	
			if ($("#form1")
					.validate(
							{
								rules : {
									 accountRecoveryBoxId : {
										required : true,
										email : true
									}, 
									 password1 : {
										required : true,
										minlength : 6
									},
									password2 : {
										required : true,
									//	minlength : 6,
										equalTo : "#password1"
									}, 
									Otppassword : {
										required : true,
										minlength : 6,
									},

								},
								messages : {

									 password1 : {
										required : "Enter your password",
										minlength : "Your password must contain minimum 6 characters"
									}, 
									 accountRecoveryBoxId : {
										required : "Enter your Email-Id",
										email : "Invalid Email Address"
									}, 
									 password2 : {
										required : "Enter confirm password",
									//	minlength : "Your password must contain minimum 6 characters long",
										equalTo : "Password mismatch"
									},
									Otppassword : {
										required: "Enter your OTP",
					                     minlength :"OTP should be minimum 5 character",
									} 

								}

							}).form()) {
				
				if(email == "")
					{
					displaynotification('Please verify your Email-Id',2000);
					return false;
					}
				
				var UserCodeVerification = {
						userId :userId,
						codeNumber : otpCode,
						emailAddress : email,
						password : pwd
						
				};
				
				 $.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/ManualNoCodeVerification",
					data : JSON.stringify(UserCodeVerification),
		            contentType: "application/json; charset=utf-8",
					success : function(res) {
						 if(res=='success'){
							//alert("success");
						window.location.href = "${pageContext.request.contextPath}/manualloginmerge";
					}else{ 
						displaynotification('Please enter valid OTP ',2000);
					}
					}
					
					}); 
				
					
			}

		}
		
		function verifyEmailAddressMergeNo(){
			var email = $("#accountRecoveryBoxId").val();
			var formate=/^[a-zA-Z0-9\-_]+(\.[a-zA-Z0-9\-_]+)*@[a-z0-9]+(\-[a-z0-9]+)*(\.[a-z0-9]+(\-[a-z0-9]+)*)*\.[a-z]{2,4}$/;
			var userId = $("#LogedinUserId").val();	
			if(email==""){
				//$("#error1").html("Please Enter EmailAddress").show(0).delay(2000).hide(0);
				displaynotification('Please Enter EmailAddress',2000);
			}else if(!formate.test(email)){
				//$("#error1").html("Invalid Email").show(0).delay(2000).hide(0);
				displaynotification('Invalid Email-Id',2000);
			}
			else{
			var ForgotPasswordBean = {
					emailAddress : email,
					userId : userId
			};
			
			$("#accountRecoveryBoxId1").val(email);
			 $.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/verifyEmailAddressMergeNo",
					data : JSON.stringify(ForgotPasswordBean),
		            contentType: "application/json; charset=utf-8",
					success : function(res) {
						if(res == "success"){
						displaynotification('OTP has been sent to your Email-Id',2000);}else{
							$("#accountRecoveryBoxId1").val('');
							displaynotification('Email id has been already registered with CricketSocial',2000);}
					},
					error : function(err) {
						window.location.href = "${pageContext.request.contextPath}/ManualLoginNo";
					}
					});
		}
		
		}
	</script>
<script type="text/javascript">

$(function(){
	$('#loading').hide();
});
</script>

</body>

</html>
