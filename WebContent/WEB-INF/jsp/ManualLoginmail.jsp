<!DOCTYPE html>
<html lang="en">

<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">


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
			
            <div class="loginCenterBlock" style="background:rgba(255,255,255,0.5); border-top: #224e6b solid 3px; border-bottom: none; width: 430px;">
            	
                <h2 class="text-left" style="text-align: center; font-size: 17px;">Verify your Email-Id</h2>
                <%-- <span style="color: red;" id="">${MSG}</span>
                <p class="text-left">How would you like to reset your password ?</p> --%>
				
                <div class="rypDiv">
                        
                        
                        <form role="form" method="POST" id="resetForm" name="resetForm" action="ManualLoginOtp" style="text-align: center;">
                        
                        <div class="form-group"> 
                          	<!-- <input type="radio" checked id="r1" name="rr" value="email" class="devClass">
				            <label for="r1"><span></span>By E-mail ID</label> -->
				            <div id="showHideEmail" style="float: none;" >
                            <input type="text" placeholder="Please enter Email" value="${email}" name="email" class="form-control tbox" id="emailId" disabled="disabled" style="width: 90%;" >
                          	<input type="hidden"  value="${email}" name="email1"  id="emailId" >
                          	<input type="hidden"  value="${UserId}" name="UserId"  id="UserId" >
                          	<input type="hidden" value="${LogedinUserId}" id="LogedinUserId" value="LogedinUserId">
                          	<div id="dis" style="color: red; text-align: left;"></div>
                          </div>
                          
                       </div> 
                         
                          
                          <div class="form-group">
                            
                            <button type="submit" class="btn btn-default dBtn">Send</button>
                            <!-- <button type="submit" class="btn btn-default blockBtn">Cancel</button> -->
                            <a href="${pageContext.request.contextPath}/"  class="btn btn-default blockBtn" >Cancel</a>
                          </div>
                          
                       </form>
                
                        </div>
               



               
                                                
            </div>
            	
        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/circketsocial/validationfunction.js"></script>
    
 <script>
 function spacecheck(){
	 var mail=$('#emailId').val();
		if(mail == ""){
			$('#dis').text("Please enter E-mail ID");
		}else{
			$('#dis').text("");
		}
		
 }
 
    	function validateResetForm(){
    		$('#dis').text("");
    		if($('#r1').is(':checked')){
    			
    			var mail=$('#emailId').val();
    			if(mail == ""){
    				$('#dis').text("Please enter E-mail ID");
    				return false;
    			}else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))){
    				$('#dis').text("Please enter the valid E-mail ID");
    				return false;
    			}else{
    				$('#dis').text("");
    			}
    		}else if($('#r2').is(':checked')){
    			var val=$('#mobileNumberId').val();
    				/* if(!val.match(phoneno)){
    					$('#dis').text("Please enter invalid mobile number");
    					return false;
    				} */
    				
    				displaynotification("Under development",2000);
    				return false;
    			}
    		}
    	
    	
    	function validatePhone(phone) { //Validates the phone number
    	    var phoneRegex = /^(\+91-|\+91|0)?\d{10}$/; // Change this regex based on requirement
    	    return phoneRegex.test(phone);
    	}
    	
    	function validateEmail(elem){
    		var mail=elem.value;
    		if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))){
				$('#dis').text("Please enter the valid E-mail ID");
				return false;
			}else{
				$('#dis').hide();
			}
    	}
    	
    	$(document).ready(function(){
    		$('#loading').hide();
			/* if($('#r1').is(':checked')){
				 $("#showHideEmail").show();        
				   $("#showHideMob").hide();   
    			
    		}else if($('#r2').is(':checked')){
    			$('#dis').text("");
    			$('#emailId').val('');
    			$("#showHideEmail").hide();        
				   $("#showHideMob").show();   

    			}
    		
    		$('.devClass').click( function () {
    			var check = $('input[name="rr"]:checked').val();
    			if(check == "email"){
    				   $("#showHideEmail").show();        
    				   $("#showHideMob").hide();        
    		    }  else {
    		    	$('#dis').text("");
    		    	
    		 	   $("#showHideEmail").hide();        
				   $("#showHideMob").show();   

    		    }  
    		}) */
    	})
    	
    </script>
</body>

</html>
