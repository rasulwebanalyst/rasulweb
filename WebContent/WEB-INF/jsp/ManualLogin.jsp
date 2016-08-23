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
			
            <div class="loginCenterBlock" style="background:rgba(255,255,255,0.5); border-top: #224e6b solid 3px; border-bottom: none;">
            <div class="close" style="margin-top: -16px; margin-right: -14px; font-size: 14px;"><i class="fa fa-times" aria-hidden="true" onclick="Closemanuallogin()"></i></div>
            	<form action="ManualLoginYes" name="ManualLoginYes">
            <!-- 	<label id="dis" style="color: red;"></label><br> -->
                	<h2 class="text-left" style="text-align: center;margin-bottom: 20px; font-size: 17px;">Do you already have cricketsocial account?</h2>
                <button type="submit" class="btn btn-default dBtn">Yes</button>
                <!-- <button type="submit" class="btn btn-default blockBtn">No</button> -->
                <button type="button" class="btn btn-default dBtn" onclick="ManualLoginNo()" >No</button><%-- <a href="${pageContext.request.contextPath}/ManualLoginNo" style="color: #fff;">No</a></button> --%>
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
    	
    	function ManualLoginNo()
    	{
    		window.location.href=  "${pageContext.request.contextPath}/ManualLoginNo";
    	}
    	
    	function Closemanuallogin()
    	{
    		window.location.href=  "${pageContext.request.contextPath}/";
    	}
    </script>
    

</body>

</html>
