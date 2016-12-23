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


</head>
<body>
	<%-- <%@ include file="BoardHeader.jsp" %> --%>
	<%@ include file="BuddyHeader.jsp" %>
	
	<section>
<!-- <div class="profileBanner"> <img src="images/innerBanner.png"> </div> -->
   <%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        	<%-- <%@ include file="BoardSideMenu.jsp" %> --%>
        	
        	<%@ include file="BuddySideMenu.jsp" %>
        
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
          
		          <h1 class="">Board List</h1>
          	
          	
 					<c:choose>
                    <c:when test="${empty BRDlist}"> 
                   					 <div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No Boards for you.
                             		</div>
                    </c:when>
                        	<c:otherwise>  
                        	<c:forEach items="${BRDlist}" var="brd">      	
			                        <div class="buddysBlock col-md-6">
			                				<div class="media">
			                                  <div class="media-left">
			                                      <img src="${brd.boardImageURL}"  onclick="window.location.href='${pageContext.request.contextPath}/board?bid=${brd.boardId}'" style="cursor: pointer;" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="teamLogo">
			                                  </div>
			
			                                  <div class="media-body">
			                                    <h4 class="media-heading"  onclick="window.location.href='${pageContext.request.contextPath}/board?bid=${brd.boardId}'" style="cursor: pointer;">${brd.boardName}</h4>
			                                    <p>
			                                    	<strong>Fans :</strong> ${brd.boardfancount}<br>
			                                    	<strong class="blueText">${brd.category}</strong>
												</p>
			                                    
			                                  </div>
			                                </div>
						            </div>
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
