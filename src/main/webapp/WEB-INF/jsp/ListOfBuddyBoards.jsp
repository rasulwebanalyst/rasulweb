<!DOCTYPE html>
<html lang="en">
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
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
</head>
<body>
	<%-- <%@ include file="BoardHeader.jsp" %> --%>
	<%@ include file="BuddyPublicHeader.jsp" %>
	
	<section>
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        	<%-- <%@ include file="BoardSideMenu.jsp" %> --%>
        	
        	<%@ include file="BuddyPublicSideMenu.jsp" %>
        
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
          
		          <h1 class="">Board List</h1>
          	
          	
 					<c:choose>
                    <c:when test="${empty BRDlist}"> 
                   					 <div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No league around you.
                             		</div>
                    </c:when>
                        	<c:otherwise>  
                        	<c:forEach items="${BRDlist}" var="brd">    
                        	<a href="${pageContext.request.contextPath}/${brd.boardName}/board/${brd.boardId}">  	
                        <div class="buddysBlock col-md-6">
                				<div class="media" >
                                  <div class="media-left">
                                      <img src="${brd.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading">${brd.boardName}</h4>
                                    <p>
                                    	<strong>Fans :</strong> ${brd.boardfancount}<br>
                                    	<strong class="blueText">${brd.category}</strong>
									</p>
                                    
                                  </div>
                                </div>
			            </div>
			            </a>
			            </c:forEach>
			         </c:otherwise>
			            </c:choose>
                        
                        
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>

<%@ include file="Footer.jsp" %>
</body>
</html>
