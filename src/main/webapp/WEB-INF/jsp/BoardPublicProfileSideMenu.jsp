<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>

<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.css" rel="stylesheet" type="text/css">
</head>

<style>

#slideshow {
 /*  margin: 80px auto; */
  position: relative;
 /*  width: 240px; */
  height: 230px;
  padding: 10px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

#slideshow > div {
  position: absolute;
  top: 10px;
  left: 10px;
  right: 10px;
  bottom: 10px;
} 

.eye {
z-index: 9;
right: -106px;
top: 100px;
}
.bx-wrapper img {
height: 200px
}
ul.leftMenu li:last-child {
border: none;
}	

.bx-wrapper .bx-next {

right: -2px;
}

.bx-wrapper .bx-prev {
left: -2px;
}



.bx-viewport {
height: 225px !important;
}
ul.bxslider li img {
margin-bottom: 2px !important;
}
ul.bxslider li {
   text-align: center;
   margin-bottom: 0;
   padding-bottom: 5px;
   background: #e9eaed;
}
.bx-wrapper .bx-controls-direction a {
top: auto;
bottom: 5px;
}

.sponser-Flow{
text-overflow: ellipsis;
    overflow: hidden;
    width: 67%;
    display: inline-block;
    white-space: nowrap;
}

</style>

<body>
<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg">
                    	<%-- <a href="${pageContext.request.contextPath}/BoardInfoPublic/${BoradInfo.boardId}"> --%>
                    	<a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/board/${BoradInfo.boardId}">
                    	
                    	<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/boardIcon.png';">
                        	 </a>${BoradInfo.boardName}<br>
                        	 
                        	  <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 <span class="nonOff">Status : Unofficial</span>
                        	  	</c:when>
                        	  	<c:otherwise>
                     		 <!-- <span class="nonOff">Status : Official</span> -->
                     			</c:otherwise>
                        	  </c:choose>
                        	  
                        </span>
                        
                        
                     		<ul class="leftMenu">
                     		<li><a href="${pageContext.request.contextPath}/BoardInfoPublic/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/board-icon.png"></i>Board Info</a></li>
                     		<c:choose>
                     		<c:when test="${Fromuser eq 'Fromuser'}">
                     		
                     		<li><a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/boardPitchfromuser/${BoradInfo.boardId}/byBoard/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/pitch-icon.png"></i>Pitch</a></li>
                     		</c:when>
                     		<c:otherwise>
                     		<li><a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/boardPitch/${BoradInfo.boardId}/byBoard/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/pitch-icon.png"></i>Pitch</a></li>
                     		</c:otherwise>
                     		</c:choose>
                     		<%-- <li><a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/boardPitch/${BoradInfo.boardId}/byBoard/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li> --%>
                            	<li><a href="${pageContext.request.contextPath}/BoardscorePublicProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/MyScore.png"></i>Score</a></li>
                            	<li><a href="${pageContext.request.contextPath}/board/events/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="${pageContext.request.contextPath}/Board-Fan/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="${pageContext.request.contextPath}/boardFanOf/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/IAmFanOf.png"></i>Fan Of</a></li>
                            	
<%--                             	<li><a href="${pageContext.request.contextPath}/createRoaster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
 --%>                            	
 								<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
		                        	  		<li><a href="javascript:"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/MyBuddyList.png"></i>Squad</a></li>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<li><a href="${pageContext.request.contextPath}/rosterProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="https://cdn.cricketsocial.com/images/MyBuddyList.png"></i>Squad</a></li>
		                     			</c:otherwise>
		                        	  </c:choose>
		                        	  <c:if test="${LeaguManagement ne 'No'}">
		                       <c:if test="${BoradInfo.category eq 'Academy' }">
                            		
		                            	<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
		                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<%-- <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if> 	  
 								<c:if test="${BoradInfo.category eq 'League' }">
                            		
		                            	<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
		                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<%-- <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if>		
                            	</c:if>
                            	
                            	
                            	
                            	<c:if test="${showsponsers eq 'YES' }">
                            	 <c:choose>
                        			<c:when test="${SponserSize eq 0 }">
	                            	</c:when>
	                            	<c:otherwise>
	                            	<li style="border-bottom: 0 !important;">
	                            	<a >Sponsors</a>
		
		<div class="ImageBox" style="margin-top: 5px;">
		<ul class="bxslider">
		
		<c:forEach var="sponser" items="${spoResponse.boardSponsorsList}">
		    <div>
		      <li style="text-align: center;"><img style=" margin-bottom: 9px;"  src="${sponser.imageUrl}" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/boardIcon.png';" /><span class="sponser-Flow" title="${sponser.sponsorName}">${sponser.sponsorName}</span></li>
		   </div>
		 
		</c:forEach>
		
		</ul>
	</div>
                            	</li>
	                            	</c:otherwise>
	                            	</c:choose> 
                            	</c:if>
                            	
                            	
                            </ul>
                        
                        
                    </div>
                    
                    
                    
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.js" type="text/javascript"></script>
		
		  <script type="text/javascript">
		
		$("#slideshow > div:gt(0)").hide();

		setInterval(function() {
		  $('#slideshow > div:first')
		    .fadeOut(1000)
		    .next()
		    .fadeIn(1000)
		    .end()
		    .appendTo('#slideshow');
		}, 4000);
		
		
		</script> 
		 
		 
		 
		 <script>
		$(window).load(function(){
		  $('.bxslider').bxSlider({
		  		/* pager	:	false,
		  		auto	:	true,	 */
			  /* auto: true,
			  speed: 500,
			  pause: 3000,
			  pager: false,
			  controls: true,
			  responsive:true, */
			  
			 
              
			  pager	:	false,
		  		auto	:	true,
		  		stopAutoClickOn	:	true
		  });
		});
	</script>
                    
                    
                    
</body>
</html>