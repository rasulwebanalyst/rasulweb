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

<!--Gallery-->
<link rel="stylesheet" href="css/colorbox.css" />

<style type="text/css">
.eventoption{

max-height: 207px !important;
overflow-y: auto !important;
}

</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<%@ include file="CSCommon.jsp" %>
	<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	<%@ include file="BoardSideMenu.jsp" %>
      
                  
            <div class="col-md-7 pageMiddleBlock">
      			<div class="col-md-12 whiteBox">
                	<h1 class="">EVENT LISTING <a href="${pageContext.request.contextPath}/create-event/${BoradInfo.boardId}"><button type="submit" class="btn dBtn pull-right btnalian1">ADD EVENT</button></a></h1>
                      <c:choose>
                      	<c:when test="${!empty EventList.upcomingeventObj}">                      			
                      			<!-- schedual list -->
                      			
                      			<%-- <c:forEach items="${EventList.upcomingeventObj.upcomingMatches}" var="schedual">
                      			<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
                      <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p>
					 </div>
                    
                        <div class="col-md-4 Leag-Img">
                          <h4><img alt="" src="${event.boardInfo.boardImageURL}"><a href="#">${event.boardInfo.boardName}</a></h4>                       
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" />  <fmt:formatDate value="${event.eventDate}" pattern="HH:mm"/> / <fmt:formatDate value="${event.eventDate}" pattern="hh:mm a" /></p>
                          <p>
                         				 <span class="teamLogos">
	                                			<img src="${event.homeTeamInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" > <b>VS</b> <img src="${event.awayTeamInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="teamLogo">
	                                		</span>
                          </p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected"><br><a href="#">Rejected:3</a> </p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br>May Be:3M</p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted"><br>Accepted:7</p>
                            
                         </div>
                          
                     </div>
                     </c:forEach>
                     </c:forEach> --%>
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingMatches}" var="schedual">
                     	<c:forEach items="${schedual.tournamentScheduler}" var="event" varStatus="index">
                     			<c:if test="${!empty event.boardInfo}">
                     			<div class="col-md-12 noPadding leag-Acc">
			                          <div class="col-md-1 eveDate">
			                            <%-- <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
			                            <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
								 	</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo"></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo"></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${schedual.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                          <p><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></p>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                       	<div class="col-md-6 threebtn">
                            
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="" id="inviteReject${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','test${event.tournamentSchedulerId}',201)" id="invitationacceptcountdisp${event.tournamentSchedulerId}" >Rejected :${event.rejectedCount} </a></p>
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="" id="inviteMaybe${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','test${event.tournamentSchedulerId}',202)" id="invitationmaybecountdisp${event.tournamentSchedulerId}">May Be : ${event.maybeCount}</a></p>
						                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="" id="inviteAccept${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','test${event.tournamentSchedulerId}',200)" id="invitationacceptcountdisp${event.tournamentSchedulerId}">Accepted : ${event.acceptedCount}</a></p>
                                           		 </div>
			                         </div>
			                         <div id="test${event.tournamentSchedulerId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
																				                     <h1 class="noBorder">Accepted Guys</h1>
																				                     
																				                     <div class=" col-md-12 accptguybg">
																				                    	<p>1 Govind</p>
																				                        <img class="pull-right" src="images/userImg3.jpg">
																				                     </div>
																			                     
																			                     
																			                     
																			                     </div>                         
                         
                         
                          
                    		 </div></c:if>
                     		</c:forEach>
                     
                     </c:forEach>
                      			
                      			
                      			<c:forEach items="${EventList.upcomingeventObj.upComingTeamBoardMatchList}" var="event" varStatus="index">
                     			<c:if test="${!empty event.boardInfo}">
                     			<div class="col-md-12 noPadding leag-Acc">
			                          <div class="col-md-1 eveDate">
			                            <%-- <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
			                            <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
								 	</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo"></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo"></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${schedual.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                          <p><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></p>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                       	<div class="col-md-6 threebtn">
                            
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="" id="inviteReject${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','test${event.tournamentSchedulerId}',201)" id="invitationacceptcountdisp${event.tournamentSchedulerId}" >Rejected :${event.rejectedCount} </a></p>
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="" id="inviteMaybe${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','test${event.tournamentSchedulerId}',202)" id="invitationmaybecountdisp${event.tournamentSchedulerId}">May Be : ${event.maybeCount}</a></p>
						                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="" id="inviteAccept${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','test${event.tournamentSchedulerId}',200)" id="invitationacceptcountdisp${event.tournamentSchedulerId}">Accepted : ${event.acceptedCount}</a></p>
                                           		 </div>
			                         </div>
			                         <div id="test${event.tournamentSchedulerId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
																				                     <h1 class="noBorder">Accepted Guys</h1>
																				                     
																				                     <div class=" col-md-12 accptguybg">
																				                    	<p>1 Govind</p>
																				                        <img class="pull-right" src="images/userImg3.jpg">
																				                     </div>
																			                     
																			                     
																			                     
																			                     </div>                         
                         
                         
                          
                    		 </div></c:if>
                     		</c:forEach>
                      			
                      			<%-- <c:forEach items="${EventList.upcomingeventObj.myUpcomingInvitationList}" var="event" varStatus="index">
                      <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p>
					 </div>
                    
                        <div class="col-md-4 Leag-Img">
                          <h4>${event.eventName}</h4>                       
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" />  <fmt:formatDate value="${event.eventDate}" pattern="HH:mm"/> / <fmt:formatDate value="${event.eventDate}" pattern="hh:mm a" /></p>
                          <p>${event.venue}</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${index.count}',143)">Rejected : ${event.acceptedCount} </a></p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${index.count}',147)">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${index.count}',144)">Accepted : ${event.rejectedCount}</a></p>
                            
                         </div>
                          <div id="reject${index.count}" class="col-md-12 accbox " style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     </div>
                     </div>
                     </c:forEach> --%>
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingfanOfBoardEventsList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar">  -->
                            
                            
                            		<!-- <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div> -->
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="reject${event.eventId}" class="col-md-12 accbox " style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     
                     </c:forEach>
                     
                     
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingBuddyBoardMapForEventsList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar">  -->
                            
                            
                            		<!-- <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div> -->
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="reject${event.eventId}" class="col-md-12 accbox " style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     
                     </c:forEach>
                     
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingBuddyBoardMapForEventsList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar">  -->
                            
                            
                            		<!-- <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div> -->
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="reject${event.eventId}" class="col-md-12 accbox " style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     
                     </c:forEach>
                     
                     
                     <c:choose>
                     		<c:when test="${!empty EventList.upcomingeventObj.upcomingBoardBoardMapForEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.upcomingeventObj.upcomingBoardBoardMapForEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}
		                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
		                            
		                            
		                            		<!-- <div class="teamLogos">
		                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
		                                	</div> -->
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                       <%--  <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.acceptedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.rejectedCount}</a></p>
		                            
		                         </div> --%>
		                         </div>
		                         
		                        
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	<!-- Board fans event list -->
                     	<c:choose>
                     		<c:when test="${!empty EventList.upcomingeventObj.upcomingfanOfBoardEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.upcomingeventObj.upcomingfanOfBoardEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}
		                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
		                            
		                            
		                            		<!-- <div class="teamLogos">
		                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
		                                	</div> -->
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                       <%--  <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.acceptedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.rejectedCount}</a></p>
		                            
		                         </div> --%>
		                         </div>
		                         
		                        
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	<c:choose>
                     		<c:when test="${!empty EventList.upcomingeventObj.myupcomingevents}">
                     		<div>My Events</div>
                     			<c:forEach items="${EventList.upcomingeventObj.myupcomingevents}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
		                         	<img src="${USRIMG}" class="nav-avatar">  <%-- ${USRFNA} --%>${USRLastName}
		                            
		                            
		                            		<!-- <div class="teamLogos">
		                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
		                                	</div> -->
		                            <a href="${pageContext.request.contextPath}/editboardEvent/board/${BoradInfo.boardId}/${event.eventId}"><i class="fa fa-pencil" title="Edit Event"></i></a>
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                        <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}</a></p>
		                             	<%-- <p> <a class="btn dBtn btn-sm pull-right btnalian1" href="${pageContext.request.contextPath}/editboardEvent/board/${BoradInfo.boardId}/${event.eventId}"> Editevent</a></p> --%>
		                            
		                         </div>
		                         </div>
		                         
		                         <div id="reject${event.eventId}" class="col-md-12 accbox " style="display: none;">
		                     
		                     <h1 class="noBorder">Accepted Guys</h1>
		                     
		                     <div class=" col-md-12 accptguybg">
		                    	<p>1 Govind</p>
		                        <img class="pull-right" src="images/userImg3.jpg">
		                     </div>
		                     
		                     
		                     
		                     </div>
		                         
		                          
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	<c:choose>
                     		<c:when test="${!empty EventList.completedeventObj}">
                     				<c:if test="${!empty EventList.completedeventObj.boardCancelledmatchList}">
                     					<div>Cancel Events</div>
                     					<c:forEach items="${EventList.completedeventObj.boardCancelledmatchList}" var="schedual">
                     	<c:forEach items="${schedual.tournamentScheduler}" var="event" varStatus="index">
                     			<div class="col-md-12 noPadding leag-Acc">
			                          <div class="col-md-1 eveDate">
			                            <%-- <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
			                            <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
								 	</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo"></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo"></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${schedual.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                          <%-- <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p> --%>
			                           <p><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></p>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                       	<%-- <div class="col-md-6 threebtn">
                            
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="" id="inviteReject${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationaccept${event.tournamentSchedulerId}',201)" id="invitationacceptcountdisp${event.tournamentSchedulerId}" id="invitationacceptcountdisp${event.eventMatchMapId}">Rejected :${event.rejectedCount} </a></p>
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="" id="inviteMaybe${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationaccept${event.tournamentSchedulerId}',202)" id="invitationmaybecountdisp${event.tournamentSchedulerId}">May Be : ${event.rejectedCount}</a></p>
						                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" onclick="" id="inviteAccept${event.tournamentSchedulerId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.tournamentSchedulerId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationaccept${event.tournamentSchedulerId}',200)" id="invitationrejectcountdisp${event.tournamentSchedulerId}">Accepted : ${event.rejectedCount}</a></p>
                                           		 </div> --%>
			                         </div>
			                         <div id="invitationacceptcountdisp${event.tournamentSchedulerId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
																				                     <h1 class="noBorder">Accepted Guys</h1>
																				                     
																				                     <div class=" col-md-12 accptguybg">
																				                    	<p>1 Govind</p>
																				                        <img class="pull-right" src="images/userImg3.jpg">
																				                     </div>
																			                     
																			                     
																			                     
																			                     </div>                         
                         
                         
                          
                    		 </div>
                     		</c:forEach>
                     
                     </c:forEach>
                     				</c:if>
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	
                     	
                      	</c:when>
                      	<c:otherwise>
                      		<div style="color: red;">No Event</div>
                      	</c:otherwise>
                      </c:choose>
                      
                     
    		</div>
            
            <div class="col-md-12 whiteBox">
            	<h1 class="noBorder">PAST EVENTS</h1>
            </div>
            
            
            
            <div class="col-md-12 whiteBox">
                  <c:choose>
                      	<c:when test="${!empty EventList.completedeventObj}">
                      			<c:forEach items="${EventList.completedeventObj.completedMatches}" var="schedual">
                     	<c:forEach items="${schedual.tournamentScheduler}" var="event" varStatus="index">
                     			<c:if test="${!empty event.boardInfo}">
                     			<div class="col-md-12 noPadding leag-Acc">
			                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
                                                     
					 				</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo"></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo"></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${schedual.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                         <%--  <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p> --%>
			                          <p><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></p>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                       
			                         </div>
			                         
                         
                         
                          
                    		 </div></c:if>
                     		</c:forEach>
                     
                     </c:forEach>
                     <c:choose>
                     		<c:when test="${!empty EventList.completedeventObj.completedfanOfBuddyEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.completedeventObj.completedfanOfBuddyEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         	<img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}
		                            
		                            
		                            		<!-- <div class="teamLogos">
		                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
		                                	</div> -->
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                        <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}</a></p>
		                            
		                         </div>
		                         </div>
		                         
		                         <div id="reject${event.eventId}" class="col-md-12 accbox " style="display: none;">
		                     
		                     <h1 class="noBorder">Accepted Guys</h1>
		                     
		                     <div class=" col-md-12 accptguybg">
		                    	<p>1 Govind</p>
		                        <img class="pull-right" src="images/userImg3.jpg">
		                     </div>
		                     
		                     
		                     
		                     </div>
		                         
		                          
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	
                     	
                     	<c:choose>
                     		<c:when test="${!empty EventList.completedeventObj.completedfanOfBoardEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.completedeventObj.completedfanOfBoardEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}
		                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
		                            
		                            
		                            		<!-- <div class="teamLogos">
		                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
		                                	</div> -->
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                       <%--  <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.acceptedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.rejectedCount}</a></p>
		                            
		                         </div> --%>
		                         </div>
		                         
		                        
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	
                     	
                     <c:forEach items="${EventList.completedeventObj.mycompletedevents}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
                            
                            
                            		<!-- <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div> -->
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>
                        
                         </div>
                         
                         <div id="reject${event.eventId}" class="col-md-12 accbox " style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     
                     </c:forEach>
                     
                     
                      	</c:when>
                      	<c:otherwise>
                      			<div style="color: red;">No Event</div>
                      	</c:otherwise>
                      </c:choose>
                     
                     
    		</div>
 </div>
                    
                 <!-- <div class="col-md-3 pull-right pageRightBlock">
      			<div class="col-md-12 whiteBox noPadding">
                	<div class="col-md-12 noPadding">
                	
                    <input type="text" class="form-control datepicker" placeholder="" id=""> <i style="top:20px;" class="fa fa-calendar calIcon"></i>
                    <div id="demo" class="yui3-skin-sam yui3-g"> 
	                     <div id="mycalendar"></div>
                    </div>
                </div>
             </div>    --> 
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/event.js"></script>
<script type="text/javascript">

$(function(){
	$('#loading').hide();
});
</script>

   
   <script src="${pageContext.request.contextPath}/js/yui-min.js"></script>
<script type="text/javascript">
/* YUI().use('calendar', 'datatype-date', 'cssbutton',  function(Y) {

    // Create a new instance of calendar, placing it in
    // #mycalendar container, setting its width to 340px,
    // the flags for showing previous and next month's
    // dates in available empty cells to true, and setting
    // the date to today's date.
    var calendar = new Y.Calendar({
      contentBox: "#mycalendar",
      width:'100%',
      showPrevMonth: true,
      showNextMonth: true,
      date: new Date()}).render();

    // Get a reference to Y.DataType.Date
    var dtdate = Y.DataType.Date;

    // Listen to calendar's selectionChange event.
    calendar.on("selectionChange", function (ev) {

      // Get the date from the list of selected
      // dates returned with the event (since only
      // single selection is enabled by default,
      // we expect there to be only one date)
      var newDate = ev.newSelection[0];

     // alert(dtdate.format(newDate));
      window.location.href='${pageContext.request.contextPath}/boardEvent/${BoradInfo.boardId}/date/'+dtdate.format(newDate);
      // Format the date and output it to a DOM
      // element.
      Y.one("#selecteddate").setHTML(dtdate.format(newDate));
    });


    // When the 'Show Previous Month' link is clicked,
    // modify the showPrevMonth property to show or hide
    // previous month's dates
    Y.one("#togglePrevMonth").on('click', function (ev) {
      ev.preventDefault();
      calendar.set('showPrevMonth', !(calendar.get("showPrevMonth")));
    });

    // When the 'Show Next Month' link is clicked,
    // modify the showNextMonth property to show or hide
    // next month's dates
    Y.one("#toggleNextMonth").on('click', function (ev) {
      ev.preventDefault();
      calendar.set('showNextMonth', !(calendar.get("showNextMonth")));
    });
    
    
    
    
}); */
</script>   
   

<script type="text/javascript">
   
$(document).ready(function() {

	 /* $('body').click(function(){
		   // $('.eventoption').hide();
		   var id=this.className;
		   
		// var id2=  $('#id').attr('class');
		alert(id);
		if(id!='eventoption')
			{
				$('.eventoption').hide();
			}
	  });
	   */
	   
	   
	$("body").click(function(){
		$(".eventoption").fadeOut();
		});

		$(".eventoption").click(function(e){
		 e.stopPropagation();
		});
	   
	
	  
	  
});   
  
</script>
   
</body>
</html>
