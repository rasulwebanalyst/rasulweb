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
</head>
<body>
	<%@ include file="CSCommon.jsp" %>
	
	<div id="scorarPopupDIV" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Assign Scorer</span>
               <span class="close_btn" onclick="hideAssignScorerForm()"> <i class="fa fa-close"></i> </span>
				<div id="scorarTable">
				<table style="width: 500px;" id="myTable">
					<thead>
							<tr>
								<th style="display: none;">Scorer</th>
								<!-- <th style="text-align:center;">Action</th>  -->
						   </tr>
					</thead>
					<tbody>
							<tr>
								<td id="umpireNameId">Dinesh</td>								 
								</tr><tr><td id="umpireNameId">Dilsan</td>								 
								</tr><tr><td id="umpireNameId">Devarala</td>
								</tr>								
									</tbody></table>
								
				
				</div>
               <div class="popupContentDiv">
                
                <input type="text" class="form-control" value="" style="width:80%; float:left;" placeholder=""  id="addMemberNameDIV" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
               	<div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;margin-top: 37px;">
																<ul>
						                                        	<li>murthy</li>
						                                        </ul>                                  	
						                                  </div> 
					
                     <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="addMemberIDDIV">
                     <input type="hidden" id="hiddenSchedulerId" name="hiddenSchedulerId">
                    <div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick=" addScorer()">Assign</button></div><br>
<br>
					<div style="color: red; text-align: left;" id="Scorarerror"></div>

                    <b> Event will be Shared to above list that they have been assigned as a scorer</b>                    
               </div>
           </div>

        </div>
	
	
	<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	<%@ include file="BoardPublicProfileSideMenu.jsp" %>
      
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
                	<%-- <h1 class="">EVENT LISTING <a href="${pageContext.request.contextPath}/create-event/${BoradInfo.boardId}"><button type="submit" class="btn dBtn pull-right btnalian1">ADD EVENTS</button></a></h1> --%>
                	<h1 class="">EVENTS</h1>
                      <c:choose>
                      	<c:when test="${!empty EventList.upcomingeventObj}">                      			
                      			<!-- schedual list -->
                      		
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
			                       	
			                         </div>
			                      
                    		 </div>
                    		 </c:if>
                     		</c:forEach>
                     
                     </c:forEach>
                      			
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
                     <c:forEach items="${EventList.upcomingeventObj.upcomingfanOfBoardEventsList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>                        
                         </div>
                         
                     </div>
                     
                     </c:forEach>
                     
                     
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingBuddyBoardMapForEventsList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">                         	
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>
                        
                         </div>
                         
                     </div>
                     
                     </c:forEach>
                     
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingBuddyBoardMapForEventsList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
                        </div>
                        
                         </div>
                        
                     </div>
                     
                     </c:forEach>
                     
                     
                     <c:choose>
                     		<c:when test="${!empty EventList.upcomingeventObj.upcomingBoardBoardMapForEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.upcomingeventObj.upcomingBoardBoardMapForEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                          <div class="col-md-1 noPadding N-btn">
		                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
		                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
							 	</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar" onError='userErrorDefaultImg(this)'> ${event.usersInfo.firstName}
		                         		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                      
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
		                          <div class="col-md-1 noPadding N-btn">
		                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
							 	<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
							 	</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar" onError='userErrorDefaultImg(this)'> ${event.usersInfo.firstName}
		                         	
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                      
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
		                          <div class="col-md-1 noPadding N-btn">
		                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
		                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
							 	</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         	<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
		                         	<%-- <img src="${USRIMG}" class="nav-avatar" onError='userErrorDefaultImg(this)'>  ${USRFNA} --%>
		                            
		                            
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
		                         
		                                                 
		                          
		                     </div>
		                     
                     </c:forEach>                    		
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
                      			
                     <c:choose>
                     		<c:when test="${!empty EventList.completedeventObj.completedfanOfBuddyEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.completedeventObj.completedfanOfBuddyEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                          <div class="col-md-1 noPadding N-btn">
		                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
		                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
							 	</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         	<img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}
		                            
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
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
		                          <div class="col-md-1 noPadding N-btn">
		                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
		                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
							 	</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}
		                         	
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                      
		                         </div>
		                         
		                        
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	
                     	
                     <c:forEach items="${EventList.completedeventObj.mycompletedevents}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>${event.eventName}</h4>
                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
                          <p>${event.venue}</p>
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
