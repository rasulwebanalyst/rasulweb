<!DOCTYPE html>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
      <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<script>var ctx="${pageContext.request.contextPath}";</script>


</head>
<body>

<%@ include file="BuddyHeader.jsp" %>

<!-- <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header pull-left"> <a class="navbar-brand" href="#"> <img src="images/Logo.png"> </a>
      <div class="topSearch">
        <input type="text" class="form-control" placeholder="Search for buddies & boards">
        <i class="fa fa-search"></i> </div>
    </div>
    <div class="collapse navbar-collapse pull-right" id="">
      <ul class="nav navbar-nav topNav">
        <li class="myBoard"><span>My Board</span></li>
        <li> <a href="#"> <i class="fa fa-userIcon"><img src="images/usersIcon.png"></i></a> </li>
        <li> <a href="#"> <i class="fa fa-bell"></i></a> </li>
        <li>
            <img src="images/userImg.jpg" class="nav-avatar dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">
            <ul class="dropdown-menu logMenus" role="menu">
              <li><a href="#">My Profile</a></li>
              <li><a href="#">Change Password</a></li>
              <li><a href="#">Logout</a></li>
            </ul>
        </li>
        
      </ul>
    </div>
  </div>
</nav> -->


<div class="profileBanner"> <img src="images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
       
        
          <%@ include file="BuddySideMenu.jsp" %>
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
          
		          <h1 class="">Merchants Around You</h1>
          	  <c:forEach items="${MerchantsArroundYou}" var="Merchant">
          	  
          	    <c:choose>
          	  <c:when test="${not empty Merchant.boardName}">
 
                         <div class="laeguesBlock buddysBlock col-md-6">
                				<div class="media">
                                  <a href="${pageContext.request.contextPath}/${Merchant.boardName}/board/${Merchant.boardId}">
                                  <div class="media-left">
                                      <img src="${Merchant.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="teamLogo">
                                  </div>
                                  </a>

                                  <div class="media-body">
                                    <a href="${pageContext.request.contextPath}/${Merchant.boardName}/board/${Merchant.boardId}">
                                    			<h4 class="media-heading">${Merchant.boardName}</h4>
                                    			
                                     </a>
                                    
                                    
                                  </div>
                                </div>
			            </div>
			             
					</c:when>
					<c:otherwise>
						 No merchants around you.
					</c:otherwise>
				</c:choose>	
                   </c:forEach>
                   
                     
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>

</body>
</html>
