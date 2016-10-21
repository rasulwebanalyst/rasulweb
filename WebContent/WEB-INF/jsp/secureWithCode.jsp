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
			
            <div class="loginCenterBlock" style="width:400px; text-align:left;">
            	
                <h2>Please enter the code received</h2>
              
			<c:if test="${codeVerificationFlag eq true }">
				<p style="color:red">You entered wrong code.</p>
			</c:if>	
		<form id="codeVerficationForm" action="codeVerfication" name="codeVerficationFormName" method="post">
			<div class="col-md-12 cptbox">
   	            <input type="text" class="form-control tbox" placeholder="######" id="secureCode" name="secureCode" >
   	            <div style="color: red;" id="errormessage"></div>
   	            <input type="hidden" value="${UserId}"  name="userId" id="userId"/>
            </div>
				
                <button type="submit" class="btn btn-default dBtn">Submit</button>
                <!-- <button type="submit" class="btn btn-default blockBtn">Cancel</button>  -->
                <a href="${pageContext.request.contextPath}/" class="btn btn-default blockBtn">Cancel</a>
		</form>
			
 		<a class="" href="${pageContext.request.contextPath}/sendMeCodeAgain?email=${Email}&flag=${ResetType}">Send me again</a>
                                                
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
	                     required: "Please enter your code",
	                     minlength :"code should be least 5 character",
	                 },
	             }
		    });
	});
	
	 
	 
		
	</script>
</body>

</html>
