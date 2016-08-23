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
			
            <div class="loginCenterBlock cyp">
            	
                <h2 class="text-left">Change your password</h2>
                <p style="text-align:left">6 to 16 characters, Avoid Common words and names</p>
				
                <div class="rypDiv">
                        
                        
                        <form name="changePasswordForm" id="changePasswordForm" action="changePassword" method="POST" onsubmit="return validation()">
                          <div class="form-group">
				            <label for="r1">New Password</label>
                            <input type="password" placeholder="" name="newPassword" class="form-control tbox" id="newPassword">
                          <div style="color: red;margin-left: 186px;" id="passwordError"></div>
                          </div>
                          

                          <div class="form-group">
				            <label for="r2">Confirm Password</label>
                            <input type="password" placeholder="" name="confirmPassword"  class="form-control tbox" id="confirmPassword">
                          	<div style="color: red;margin-left: 186px;" id="repasswordError"></div>
                          	
                          </div>
                          <input type="hidden" value="${UserId}" name="userId"/>
                          
                          <div class="form-group">
                            <label></label>
                            <button type="submit" class="btn btn-default dBtn">Change</button>
                            <button type="button" class="btn btn-default blockBtn" onclick="window.location.href='${pageContext.request.contextPath}/login'">Cancel</button>
                          </div>
                          
                       </form>
                          
                
                        </div>
               



               
                                                
            </div>
            	
        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery.validate.min.js"></script>

<script>

 /* $(document).ready(function() {
    
    $("#changePasswordForm").validate({
    	errorPlacement: function(error, element) {
			
			     error.insertAfter(element);
			
  },
        rules: {
        	
                newPassword: {
                    required: true,
                    minlength: 8,
                }, 
                
                confirmPassword: {
                    required: true,
                    equalTo: "#newPassword",
                }, 
            },
            messages: {
            	
                newPassword: {
                	required: "Please enter new password",
                    minlength: "Please enter 8 or more characters",
                },
                confirmPassword: {
                	required: "Please enter confirm password",
                    equalTo: "Password doesnot match",
                }
               
            }   
    });
});  */

</script>
<script type="text/javascript">

function validation(){
	passwordCheck();
	passwordReCheck();
	if(passwordCheck()==true && passwordReCheck()==true){
		return true;
	}else{
		return false;
	}
}

function passwordCheck(){
	var pwd=$('#newPassword').val();
	$('#passwordError').html('');
	if(pwd!=''){
		
		if(pwd.length>=6){
			
			
			if(pwd.length<16){
				
				/* if(pwdVal(pwd)){
					return true;	
				}else{
					$('#passwordError').html("(Password should contain at least 1 numeric, 1 special character, 1 uppercase,1 lowercase letter)");
					return false;
				} */
				return true;
				
			}else{
				$('#passwordError').html("Please enter below 16 characters");
				return false;
			}
			
		}else{
			$('#passwordError').html("Please enter 5 or more characters");
			return false;
		}
	}else{
		$('#passwordError').html("Please enter new password");
		return false;
	}
}

function passwordReCheck(){
	var pwd=$('#newPassword').val();
	var rpwd=$('#confirmPassword').val();
	
	$('#repasswordError').html('');
	if(rpwd!=''){
		
		if(pwd==rpwd){
			return true;
			
		}else{
			$('#repasswordError').html("Password doesn't match");
			return false;
		}
	}else{
		$('#repasswordError').html('Please enter confirm password');
		return false;
	}
}

function pwdVal(value){

	//var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	var passw = /^(?=.*[*!@,#])(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	if(value.match(passw)){
		return true;
	}else{
		return false;
	}
		
}

</script>
</body>

</html>
