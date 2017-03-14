<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>

#slideshow {
 /*  margin: 80px auto; */
  position: relative;
 /*  width: 240px; */
  height: 200px;
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



</style>

<body>
<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><a href="${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}">
                    	<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	</a>
                        	<a href="${pageContext.request.contextPath}/boardProfile?bid=${BoradInfo.boardId}"><i class="fa fa-pencil" title="Edit Profile"></i></a>
                        	 ${BoradInfo.boardName} <br>
                        	
                        	
                        	  <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 <span class="nonOff">Status : Unofficial</span>
                        	  	</c:when>
                        	  	<c:otherwise>
                     		<!--  <span class="nonOff">Status : Official</span> -->
                     			</c:otherwise>
                        	  </c:choose>
                        </span>
                        
                        
                     		<ul class="leftMenu">
                     		<li><a href="${pageContext.request.contextPath}/Organizationdetails/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/board-icon.png"></i>Board Info</a></li>
                     		<li><a href="${pageContext.request.contextPath}/Pitch?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li>
                            	<li><a href="${pageContext.request.contextPath}/Boardscore/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Score</a></li>
                            	<%-- <li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Edit Profile</a></li> --%>
                            	<li><a href="${pageContext.request.contextPath}/boardEvent/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="${pageContext.request.contextPath}/Board-Fan?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="${pageContext.request.contextPath}/boardFanOf?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>Fan Of</a></li>
                            	
<%--                             	<li><a href="${pageContext.request.contextPath}/createRoaster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
 --%>
                           <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		 <li><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Squad</a></li>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				 <li><a href="${pageContext.request.contextPath}/roster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Squad</a></li>
                     			</c:otherwise>
                        	  </c:choose>
   
 <li><a href="${pageContext.request.contextPath}/inviteBoardPage/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/inviteIcon.png"></i>Invite</a></li>     
 
 <c:if test="${LeaguManagement ne 'No'}">
 
 <c:if test="${BoradInfo.category eq 'Academy' }">
                               <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<%-- ${BoradInfo.scheduleFlag} --%>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
                             			<%-- <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:when>
                              <c:otherwise>
                                 <%--  <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose> 
  </c:if>                                              	
 <%-- <li><a href="${pageContext.request.contextPath}/inviteToMergeAccount/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/inviteIcon.png"></i>Merge Account</a></li> --%>
 <c:if test="${BoradInfo.category eq 'League' }">
 						
                            		<%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                            	 <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<%-- ${BoradInfo.scheduleFlag} --%>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
                             			<%-- <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:when>
                              <c:otherwise>
                                  <%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose>
                            	
                            	
                            	<%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>Create Umpire</a></li> --%>
                            	</c:if>	
                            	</c:if>	
                            	
                            	
                            	 <c:choose>
                        			<c:when test="${sponsersize == 0 }">
	                            	</c:when>
	                            	<c:otherwise>
	                            	<li>
	                            	<a style="margin-left: 47px;">Sponsers</a>
                            	<div id="slideshow">
                            	<c:forEach var="sponser" items="${spoResponse.boardSponsorsList}">
		    <div>
		     <img style="width: 146px; height: 184px;" src="${sponser.imageUrl}">
		   </div>
		 
		</c:forEach>
		</div>
                            	</li>
	                            	</c:otherwise>
	                            	</c:choose> 
                            	
                            	
                            	
                            </ul>
                            
                        
                        
                    </div>
                    
		                    
		
		
		
		 <script type="text/javascript">
		
		$("#slideshow > div:gt(0)").hide();

		setInterval(function() {
		  $('#slideshow > div:first')
		    .fadeOut(1000)
		    .next()
		    .fadeIn(1000)
		    .end()
		    .appendTo('#slideshow');
		}, 3000);
		
		
		</script> 
		
		
</body>
</html>