<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<<<<<<< HEAD
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<div class="col-md-2 profileLogo pLUpdated">
<<<<<<< HEAD
                    	<span class="pLUpdatedImg">
                    	<%-- <a href="${pageContext.request.contextPath}/BoardInfoPublic/${BoradInfo.boardId}"> --%>
                    	<a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/board/${BoradInfo.boardId}">
                    	
                    	<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	 </a>${BoradInfo.boardName}<br>
=======
                    	<span class="pLUpdatedImg"><img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	 ${BoradInfo.boardName}<br>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                        	 
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
                     		<li><a href="${pageContext.request.contextPath}/BoardInfoPublic/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/board-icon.png"></i>Board Info</a></li>
<<<<<<< HEAD
                     		<c:choose>
                     		<c:when test="${Fromuser eq 'Fromuser'}">
                     		
                     		<li><a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/boardPitchfromuser/${BoradInfo.boardId}/byBoard/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li>
                     		</c:when>
                     		<c:otherwise>
                     		<li><a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/boardPitch/${BoradInfo.boardId}/byBoard/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li>
                     		</c:otherwise>
                     		</c:choose>
                     		<%-- <li><a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/boardPitch/${BoradInfo.boardId}/byBoard/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li> --%>
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                            	<li><a href="${pageContext.request.contextPath}/BoardscorePublicProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Score</a></li>
                            	<li><a href="${pageContext.request.contextPath}/board/events/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="${pageContext.request.contextPath}/Board-Fan/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="${pageContext.request.contextPath}/boardFanOf/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>Fan Of</a></li>
                            	
<%--                             	<li><a href="${pageContext.request.contextPath}/createRoaster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
 --%>                            	
 								<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
		                        	  		<li><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<li><a href="${pageContext.request.contextPath}/rosterProfile/ ${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
		                     			</c:otherwise>
		                        	  </c:choose>
<<<<<<< HEAD
		                        	  <c:if test="${LeaguManagement ne 'No'}">
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
		                       <c:if test="${BoradInfo.category eq 'Academy' }">
                            		
		                            	<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
<<<<<<< HEAD
		                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<%-- <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
=======
		                        	  		<li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if> 	  
 								<c:if test="${BoradInfo.category eq 'League' }">
                            		
		                            	<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
<<<<<<< HEAD
		                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<%-- <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if>		
                            	</c:if>
=======
		                        	  		<li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if>		
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                            </ul>
                        
                        
                    </div>
</body>
</html>