<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

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
			
            <div class="loginCenterBlock" style="text-align:left; margin-top:30px">
            	
                <h2>Identify your account</h2>
                <c:choose>
                <c:when test="${empty ErrorMSG}">
                  <p>The accounts matched your search</p>
                </c:when>
                <c:otherwise>
                <p></p>
                </c:otherwise>
                </c:choose>
              
				
                
                <div >
                
             <%--    <c:choose>
               	<c:when test="${not empty Users } ">  --%>
               	<div class="usersBlock scrollContent">               	
               		<c:forEach var="User" items="${Users}">
	                <div class="media userDetailBlock">
	                  <div class="media-left userImg">
	                 
	                      <img src="${User.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
	                  </div>
	                  
	                  <div class="media-body userDet">
	                      <h4 class="media-heading">${User.fullName }</h4>
	                      ${User.city}<br>
	
	                      <div class="form-group">
	                      	<form action="resetPasswordWithAccount" name="resetPasswordWithAccount" method="post">
	                      		 <input type="hidden" name="userId" value="${User.userId }" >
	                      		 <input type="hidden" name="email" value="${User.emailAddress }" >
	                       		 <button type="submit" class="btn btn-default dBtn pull-left">This is my account</button>
	                        </form>
	                      </div>                                   
	                  </div>
	                </div>
                </c:forEach>
                </div>
                
                <c:choose>
                <c:when test="${empty ErrorMSG}">
              		<div style="text-align: center;margin-top: 15px">
                <a href="${pageContext.request.contextPath}/account-recovery"  class="btn btn-default blockBtn" >Close</a>
                </div>
                </c:when>
                <c:otherwise>
                  <br/><br/><br/><p><b>${ErrorMSG }</b></p>
                
              <!--    <div class="form-group"> -->
                        <input type="button" class="btn btn-default dBtn" value="Close" onclick="closeFunction()">
                  <!--     </div>   -->
                </c:otherwise>
                </c:choose>
                
               
                
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


                 
<!--Custom smooth Scroll-->                 
    <script type="text/javascript" src="js/CustomScrollbar.min.js"></script>

<script>
  (function($){
      $(window).load(function(){
        
        $(".scrollContent").mCustomScrollbar({
          scrollButtons:{
            enable:true
          },
          callbacks:{
            onScrollStart:function(){ myCallback(this,"#onScrollStart") },
            onScroll:function(){ myCallback(this,"#onScroll") },
            onTotalScroll:function(){ myCallback(this,"#onTotalScroll") },
            onTotalScrollOffset:60,
            onTotalScrollBack:function(){ myCallback(this,"#onTotalScrollBack") },
            onTotalScrollBackOffset:50,
            whileScrolling:function(){ 
              myCallback(this,"#whileScrolling"); 
              $("#mcs-top").text(this.mcs.top);
              $("#mcs-dragger-top").text(this.mcs.draggerTop);
              $("#mcs-top-pct").text(this.mcs.topPct+"%");
              $("#mcs-direction").text(this.mcs.direction);
              $("#mcs-total-scroll-offset").text("60");
              $("#mcs-total-scroll-back-offset").text("50");
            },
            alwaysTriggerOffsets:false
          }
        });
        
        function myCallback(el,id){
          if($(id).css("opacity")<1){return;}
          var span=$(id).find("span");
          clearTimeout(timeout);
          span.addClass("on");
          var timeout=setTimeout(function(){span.removeClass("on")},350);
        }
        
        $(".callbacks a").click(function(e){
          e.preventDefault();
          $(this).parent().toggleClass("off");
          if($(e.target).parent().attr("id")==="alwaysTriggerOffsets"){
            var opts=$(".content").data("mCS").opt;
            if(opts.callbacks.alwaysTriggerOffsets){
              opts.callbacks.alwaysTriggerOffsets=false;
            }else{
              opts.callbacks.alwaysTriggerOffsets=true;
            }
          }
        });
        
      });
    })($);
  
function closeFunction(){
	window.location.href = "${pageContext.request.contextPath}/account-recovery";
}
  
</script>

</body>

</html>
