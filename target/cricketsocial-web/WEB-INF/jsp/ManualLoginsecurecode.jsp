<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>

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
			
            <div class="loginCenterBlock" style="background:rgba(255,255,255,0.5); border-top: #224e6b solid 3px; width: 400px; border-bottom: none;">
            	
                <h2 style="margin-bottom: 0px;">Enter your OTP</h2>
              
			<c:if test="${codeVerificationFlag eq true }">
				<p id="errorhide" style="color:red; font-size: 12px; margin-bottom: -12px;">Please enter valid OTP</p>
			</c:if>	
		<form id="codeVerficationForm" action="ManualcodeVerfication" name="codeVerficationFormName" method="post">
			<div class="col-md-12 cptbox" style="margin: 10px 0;">
   	            <input type="text" class="form-control tbox" placeholder="******" id="secureCode" name="secureCode" style="width: 25%;
    border-bottom: 1px dashed !important;
    border: none;
    background: transparent;
    box-shadow: none;
    border-radius: 0px;
    text-align: center;" onclick="errorhide()" >
   	            <div style="color: red;" id="errormessage"></div>
   	            <input type="hidden" value="${UserId}"  name="userId" id="userId"/>
   	            <input type="hidden" value="${LogedinUserId}" name="LogedinUserId" id="LogedinUserId" />
   	            <input type="hidden" value="${Email}" id="Email" name="Email"/>
            </div>
				
                <button type="submit" class="btn btn-default dBtn">Submit</button>
                <!-- <button type="submit" class="btn btn-default blockBtn">Cancel</button>  -->
                <a href="${pageContext.request.contextPath}/" class="btn btn-default blockBtn">Cancel</a>
		</form>
			
 		<%-- <a class="" href="${pageContext.request.contextPath}/sendMeOtpAgain?email=${Email}&flag=${ResetType}">Send me again</a> --%>
             <a class="" href="javascript:void(0);" onclick="sendmeotpagain('${Email}','${ResetType}','${UserId}')" style="color: mediumblue; font-size: 12px;">Send me again</a>                                   
            </div>
            	
        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->

        <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/validationfunction.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	<script>
	$(function(){
		 $('#codeVerficationForm').validate({
			 errorPlacement: function(error, element) {
					/*  error.insertAfter(element); */
					if (element.attr("name") == "secureCode")  {
						 error.appendTo($('#errormessage'));
					  } else if(element.attr("name") == "notification" ){
						  error.appendTo( '#notificationsId' );
						  
					  }else {
					     error.insertAfter(element);
					  }
	      },
			 rules: {
		         	
	        	 secureCode: {
	                     required: true,
	                     minlength : 5,
	                 }
	             },
	             messages: {
	            	 secureCode: {
	                     required: "Please enter your OTP",
	                     minlength :"OTP should be least 5 character",
	                 },
	             }
		    });
	});
	
	 
	 function sendmeotpagain(email,flag,usid)
			 {
				var request={
						emailAddress : email,
						userId : usid,
				}
				
				$.ajax({
					type : "post",
					url : "${pageContext.request.contextPath}/sendmeotpagain",
					data :JSON.stringify(request),
					contentType : "application/json",
					success: function(response)
					{
						/* alert(response); */
						displaynotification('OTP has been sent to your Email-Id',2000);
					}
				})
				
			 }
	 
	 $(document).ready(function(){
		 var res="${Fromsubmit}";
		 if(res != "Yes"){
		 displaynotification('OTP has been sent to your Email-Id',2000);
		 }
	 })
		
	 
	 $(function(){
	$('#loading').hide();
});
	
	 
	 function errorhide()
	 {
		 $('#errorhide').hide();
	 }
	</script>
</body>

</html>
