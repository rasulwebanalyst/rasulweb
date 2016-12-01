<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-2 profileLogo pLUpdated">
<<<<<<< HEAD
                    	<span class="pLUpdatedImg"><a href="${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}">
                    	<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	</a>
=======
                    	<span class="pLUpdatedImg">
                    	<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
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
<<<<<<< HEAD
                     		<li><a href="${pageContext.request.contextPath}/Pitch?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li>
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                            	<li><a href="${pageContext.request.contextPath}/Boardscore/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Score</a></li>
                            	<%-- <li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Edit Profile</a></li> --%>
                            	<li><a href="${pageContext.request.contextPath}/boardEvent/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="${pageContext.request.contextPath}/Board-Fan?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="${pageContext.request.contextPath}/boardFanOf?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>Fan Of</a></li>
                            	
<%--                             	<li><a href="${pageContext.request.contextPath}/createRoaster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
 --%>
                           <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		 <li><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				 <li><a href="${pageContext.request.contextPath}/roster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
                     			</c:otherwise>
                        	  </c:choose>
   
 <li><a href="${pageContext.request.contextPath}/inviteBoardPage/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/inviteIcon.png"></i>Invite</a></li>     
<<<<<<< HEAD
 
 <c:if test="${LeaguManagement ne 'No'}">
 
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
 <c:if test="${BoradInfo.category eq 'Academy' }">
                               <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
<<<<<<< HEAD
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
=======
                        	  		<li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<%-- ${BoradInfo.scheduleFlag} --%>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
<<<<<<< HEAD
                             			<%-- <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:when>
                              <c:otherwise>
                                 <%--  <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
=======
                             			<li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
                              </c:when>
                              <c:otherwise>
                                  <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
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
                        	  	 	
<<<<<<< HEAD
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
=======
                        	  		<li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<%-- ${BoradInfo.scheduleFlag} --%>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
<<<<<<< HEAD
                             			<%-- <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:when>
                              <c:otherwise>
                                  <%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
=======
                             			<li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
                              </c:when>
                              <c:otherwise>
                                  <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose>
                            	
                            	
                            	<%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>Create Umpire</a></li> --%>
<<<<<<< HEAD
                            	</c:if>	
                            	</c:if>	
=======
                            	</c:if>		
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
                            </ul>
                        
                        
                    </div>
</body>
</html>