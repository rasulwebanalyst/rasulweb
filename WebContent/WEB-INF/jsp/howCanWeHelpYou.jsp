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
			
            <div class="loginCenterBlock">
            	<form action="accountRecoverAction" name="accountRecoverForm">
            <!-- 	<label id="dis" style="color: red;"></label><br> -->
                	<h2 class="text-left">How can we help you?</h2>
                	<div class="fpDiv">
							<input type="radio" checked id="r1" name="rr" onclick="showAccountRecoveryBox('accountRecoveryBoxId')" value="withaccount">
				            <label for="r1"><span></span>Find my password using Name or Phone No or E-mail ID
				           	 	<input type="text" class="form-control accountRecoverytbox" id="accountRecoveryBoxId" name="accountRecoveryBoxName">
				           
				          
				            </label><br>
				              <span id="dis" style="color:red; padding-left:30px"></span> 
				              <br>
                            
                            <input type="radio" id="r2" name="rr" onclick="hideAccountRecoveryBox('accountRecoveryBoxId')" value="withoutaccount">
                            <label for="r2"><span></span>Reset my password</label><br>
                
                     </div>
                <button type="submit" class="btn btn-default dBtn" onclick="return validateAccountRecoveryForm()">Find</button>
                <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/'" class="btn btn-default blockBtn">Cancel</button>
                     
			</form>                                
            </div>
            	
        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script>
    	function validateAccountRecoveryForm(){
    		if($('#r1').is(':checked')){
    			var val=$('#accountRecoveryBoxId').val();
    			if(val == null ||  val=="" ){
    			
    				$('#dis').text("Please enter any key in text box to find your account");
    				$('#dis').show();
    				return false;
    			}
    		}else{
    			$('#accountRecoveryBoxId').hide();
    			$('#dis').hide();
    		}
    	}
    	
    	function hideAccountRecoveryBox(id){
    		$('#'+id).hide();
    		$('#dis').hide();
    		$('#accountRecoveryBoxId').val('');
    	}
    	function showAccountRecoveryBox(id){
    		$('#'+id).show();
    	}
    </script>
    

</body>

</html>
