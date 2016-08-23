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
	
	<div id="umpireRattingFromPopup" class="popupDiv" style="display: none;">

          <div class="box">
          <form action="" id="umpireRattingFrom" name="umpireRattingFrom" >
               <span class="head">Umpire Rating</span>
               <span class="close_btn" onclick="hideUmpireRatingForm()"> <i class="fa fa-close"></i> </span>

               <div class="popupContentDiv">
					<!-- <div class="Umpireratingcont">
                    	<label class="poplabel">Name </label>
                    	
                    	<input type="text" class="form-control"  placeholder="">
                    	                   	
                    	<div class="selectdiv">
                                              <select class="selectboxdiv" id="umpireName" name="umpireName">
                                                  <option> Select Umpire</option>
                                                  <option> Select Umpire</option>
                                                  <option> Select Umpire</option>
                                                  <option> Select Umpire</option>
                                              </select>
                                              <div class="out"></div>    
                                          </div>
                    	
                    	
                        <label class="poplabel">Match</label><input type="text" class="form-control"  placeholder="" readonly id="matchname" >
                        
                        <label class="poplabel">Tournament</label><input type="text" class="form-control"  placeholder="" id="tournmentName" name="tournmentName">
                        <label class="poplabel">Date</label><input type="text" class="form-control"  placeholder="" id="matchDate" name="matchDate">
                        <label class="poplabel">Rating</label>
                       
                        <div class="col-md-3 ratingstar">
                            <div class="star height"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <b>4.5</b><br></div>
                        </div>
                        
                        <label class="poplabel">Comments</label><textarea class="form-control" id="umpireComment" rows="5" placeholder="" name="umpireComment"></textarea>
                       
                    </div> -->
                    <div class="Umpireratingcont">
	
    				<div class="form-group">
                        <div class="col-md-4"><label class="poplabel">Name </label> </div>
                        <div class="col-md-8">
                          <div class="selectdiv">
                              <select class="selectboxdiv" id="umpireName" name="umpireName">
                                 
                              </select>
                              <div class="out" id="umpireNameselect">Select Umpire</div>    
                          </div>
                          <div style="color: red;" id="umpireNameerror"></div>
                        </div>
                        
					</div>
                                       
                    <div class="form-group">
                        <div class="col-md-4"><label class="poplabel">Tournament</label> </div>
                        <div class="col-md-8">
                          <input type="text" class="form-control"  placeholder="" id="tournmentName" name="tournmentName" readonly>
                          <div style="color: red;"> </div>
                        </div>
                        
					</div>
                    
                    <div class="form-group">
                        <div class="col-md-4"><label class="poplabel">Date</label> </div>
                        <div class="col-md-8">
                          <input type="text" class="form-control"  placeholder="" id="matchDate" name="matchDate" readonly>
                          <div style="color: red;"> </div>
                        </div>
					</div>
                    
                    <div class="form-group">
                        <div class="col-md-4"><label class="poplabel">Rating</label> </div>
                        <div class="col-md-8">
                          
                          <div class="ratingDiv">
	                            <input type="radio" name="example" class="rating" value="1"  />
	                            <input type="radio" name="example" class="rating" value="2" />
	                            <input type="radio" name="example" class="rating" value="3" />
	                            <input type="radio" name="example" class="rating" value="4" />
	                            <input type="radio" name="example" class="rating" value="5" />
                        	</div>
                        
                        <b class="ratValue" id="umpireRatting"></b>
                        <div style="color: red;" id="umpireRattingerror"></div>
                        </div>
                        
					</div>
                     <div class="form-group">
                        <div class="col-md-4"><label class="poplabel">Comments</label> </div>
                        <div class="col-md-8">
                          <!-- <input type="text" class="form-control"  placeholder="" name="umpireComment" id="umpireComment"> -->
                          <textarea rows="" cols="" name="umpireComment" id="umpireComment" style="margin: 0px; width: 277px; height: 109px;"></textarea>
                          <div style="color: red;" id="umpireCommenterror"></div>
                        </div>
                        
					</div>
                    
                    <div class="form-group centerbtns">
                    <button type="button" class="btn btn-default blueBtn" onclick="umpireInitialValidation()">Save</button>
                    </div>
                    
                    
                    
                    </div>
                    <input type="hidden" id="matchId" name="matchId">                  
                    <input type="hidden" id="teamId" name="teamId">                  
                    <input type="hidden" id="tournamentId" name="tournamentId">
                    <input type="hidden" id="teamCaptainId" name="teamCaptainId" value="${USRID}">
                    <!-- <button type="button" class="btn btn-default blueBtn">Save</button> -->
                    
                    </div>
                    </form>                   
               </div>
           </div>
	
	
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
	
	<%@ include file="BuddyHeader.jsp" %>



 <section class="middleContentBlock">
<%-- <div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div> --%>
<%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	<%@ include file="BuddySideMenu.jsp" %>
      
                  
           <div class="col-md-7 pageMiddleBlock">
      			<div class="col-md-12 whiteBox">
                	<h1 class="">EVENT LISTING <a href="${pageContext.request.contextPath}/create-buddyevent"><button type="submit" class="btn dBtn pull-right btnalian1">ADD EVENT</button></a></h1>
                      <c:choose>
                      	<c:when test="${!empty EventList.upcomingeventObj}">                      			
                      			
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingRosterMatchList}" var="schedual">
                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
                     			<c:if test="${!empty event.boardInfo}">
                     			<c:if test="${event.status ne 'Completed'}">
                     			<div class="col-md-12 noPadding leag-Acc">
			                          <div class="col-md-1 eveDate">
			                          <%--   <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
			                          <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
								 	</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                        
			                          <h4>${event.tournamentInfo.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                           <h4><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></h4><br>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                        <c:choose>
			                        	<c:when test="${event.status eq 'Upcoming'}">
			                        			<div class="col-md-6 threebtn">
                            
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="schedualStatus(198,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationacceptcountdisp${schedual.eventMatchMapId}')" id="inviteReject${schedual.eventMatchMapId}"><br><a href="javascript:gettingmatchAcceptedPeopleList('${schedual.eventMatchMapId}','${event.tournamentSchedulerId}','${schedual.rosterId}','acceptingMatches${schedual.eventMatchMapId}',201)" id="invitationacceptcountdisp${schedual.eventMatchMapId}">Rejected :${schedual.rejectedCount} </a></p>
						                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationmaybecountdisp${schedual.eventMatchMapId}')" id="inviteMaybe${schedual.eventMatchMapId}"><br><a href="javascript:gettingmatchAcceptedPeopleList('${schedual.eventMatchMapId}','${event.tournamentSchedulerId}','${schedual.rosterId}','acceptingMatches${schedual.eventMatchMapId}',202)" id="invitationmaybecountdisp${schedual.eventMatchMapId}">May Be : ${schedual.maybeCount}</a></p>
						                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationrejectcountdisp${schedual.eventMatchMapId}')" id="inviteAccept${schedual.eventMatchMapId}"><br><a href="javascript:gettingmatchAcceptedPeopleList('${schedual.eventMatchMapId}','${event.tournamentSchedulerId}','${schedual.rosterId}','acceptingMatches${schedual.eventMatchMapId}',200)" id="invitationrejectcountdisp${schedual.eventMatchMapId}">Accepted : ${schedual.acceptedCount}</a></p>
                                           		 </div>
			                        	</c:when>
			                        	<c:otherwise>
			                        	
			                        	</c:otherwise>
			                        </c:choose>
			                       
			                         </div>
			                         
                         			<div id="acceptingMatches${schedual.eventMatchMapId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
																				                     <h1 class="noBorder">Accepted Guys</h1>
																				                     
																				                     <div class=" col-md-12 accptguybg">
																				                    	<p>1 Govind</p>
																				                        <img class="pull-right" src="images/userImg3.jpg">
																				                     </div>
																			                     
																			                     
																			                     
																			                     </div>             
                          
                    		 </div>
                    		 </c:if>
                    		 </c:if>
                     		</c:forEach>
                     
                     </c:forEach>
                      			
                      			<c:choose>
                      				<c:when test="${!empty EventList.upcomingeventObj.upcomingAllStatusMatchList}">
                      					<c:if test="${!empty EventList.upcomingeventObj.upcomingAllStatusMatchList.acceptedMatchList}">
							                      						<c:forEach items="${EventList.upcomingeventObj.upcomingAllStatusMatchList.acceptedMatchList}" var="schedual">
													                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
													                     			<c:if test="${!empty event.boardInfo}">
													                     			<c:if test="${event.status ne 'Completed'}">
														                     			<div class="col-md-12 noPadding leag-Acc">
																	                          <div class="col-md-1 eveDate">
																	                            <%-- <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
																	                            <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
																						 	</div>
																	                    
																	                    	 <div class="col-md-11">
																	                         
																	                         <div class="col-md-12 noPadding eventUserDetails">
																	                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
																	                            
																	                            
																	                            		<div class="teamLogos">
																	                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a>
																	                                	</div>
																	                            
																	                         </div>
																	                         
																	                        <div class="col-md-6 Leag-Img">
																	                          <h4>${event.tournamentInfo.tournamentName}</h4>
																	                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
																	                           <%-- <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p><br> --%>
																	                           <h4><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></h4><br>
																	                          <p>${event.groundDetails.groundName}<br>
																	                          	${event.groundDetails.address1},${event.groundDetails.city}
																	                          </p>
																	                        </div>
																	                        <c:choose>
																	                        	<c:when test="${event.status eq 'Upcoming'}">
																	                        			<div class="col-md-6 threebtn">
														                            
																				                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="schedualStatus(198,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationacceptcountdisp${schedual.eventMatchMapId}')" id="inviteReject${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',201)" id="invitationacceptcountdisp${schedual.eventMatchMapId}">Rejected : ${schedual.rejectedCount}</a></p>
																				                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationmaybecountdisp${schedual.eventMatchMapId}')" id="inviteMaybe${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',202)" id="invitationmaybecountdisp${schedual.eventMatchMapId}">May Be : ${schedual.maybeCount}</a></p>
																				                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationrejectcountdisp${schedual.eventMatchMapId}')" id="inviteAccept${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',200)" id="invitationrejectcountdisp${schedual.eventMatchMapId}">Accepted : ${schedual.acceptedCount}</a></p>
														                                           		 </div>
																	                        	</c:when>
																	                        	<c:otherwise>
																	                        	
																	                        	</c:otherwise>
																	                        </c:choose>
																	                      
																	                         </div>
																	                         <div id="invitationreject${event.eventMatchMapId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
																				                     <h1 class="noBorder">Accepted Guys</h1>
																				                     
																				                     <div class=" col-md-12 accptguybg">
																				                    	<p>1 Govind</p>
																				                        <img class="pull-right" src="images/userImg3.jpg">
																				                     </div>
																			                     
																			                     
																			                     
																			                     </div>
																	                         
														                    		 </div>
													                    		 </c:if>
													                    		 </c:if>
											                     		</c:forEach>
							                     
							                     </c:forEach>
                      					</c:if>
                      					<c:if test="${!empty EventList.upcomingeventObj.upcomingAllStatusMatchList.maybeMatchList}">
                      						<c:forEach items="${EventList.upcomingeventObj.upcomingAllStatusMatchList.maybeMatchList}" var="schedual">
													                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
													                     			<c:if test="${!empty event.boardInfo}">
													                     			<c:if test="${event.status ne 'Completed'}">
														                     			<div class="col-md-12 noPadding leag-Acc">
																	                          <div class="col-md-1 eveDate">
																	                            <%-- <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
																	                            <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
																						 	</div>
																	                    
																	                    	 <div class="col-md-11">
																	                         
																	                         <div class="col-md-12 noPadding eventUserDetails">
																	                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
																	                            
																	                            
																	                            		<div class="teamLogos">
																	                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a>
																	                                	</div>
																	                            
																	                         </div>
																	                         
																	                        <div class="col-md-6 Leag-Img">
																	                          <h4>${event.tournamentInfo.tournamentName}</h4>
																	                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
																	                           <%-- <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p><br> --%>
																	                           <h4><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></h4><br>
																	                          <p>${event.groundDetails.groundName}<br>
																	                          	${event.groundDetails.address1},${event.groundDetails.city}
																	                          </p>
																	                        </div>
																	                        <c:choose>
																	                        	<c:when test="${event.status eq 'Upcoming'}">
																	                        			<div class="col-md-6 threebtn">
														                            
																				                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="schedualStatus(198,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationacceptcountdisp${schedual.eventMatchMapId}')" id="inviteReject${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',201)" id="invitationacceptcountdisp${schedual.eventMatchMapId}">Rejected : ${schedual.rejectedCount}</a></p>
																				                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationmaybecountdisp${schedual.eventMatchMapId}')" id="inviteMaybe${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',202)" id="invitationmaybecountdisp${schedual.eventMatchMapId}">May Be : ${schedual.maybeCount}</a></p>
																				                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationrejectcountdisp${schedual.eventMatchMapId}')" id="inviteAccept${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',200)" id="invitationrejectcountdisp${schedual.eventMatchMapId}">Accepted : ${schedual.acceptedCount}</a></p>
														                                           		 </div>
																	                        	</c:when>
																	                        	<c:otherwise>
																	                        	
																	                        	</c:otherwise>
																	                        </c:choose>
																	                      
																	                         </div>
																	                         
														                    		 </div>
													                    		 </c:if></c:if>
											                     		</c:forEach>
							                     
							                     </c:forEach>
                      					
                      					</c:if>
                      					<c:if test="${!empty EventList.upcomingeventObj.upcomingAllStatusMatchList.rejectMatchList}">
                      						<c:forEach items="${EventList.upcomingeventObj.upcomingAllStatusMatchList.rejectMatchList}" var="schedual">
													                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
													                     			<c:if test="${!empty event.boardInfo}">
													                     			<c:if test="${event.status ne 'Completed'}">
														                     			<div class="col-md-12 noPadding leag-Acc">
																	                          <div class="col-md-1 eveDate">
																	                           <%--  <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p> --%>
																	                           <span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
																						 	</div>
																	                    
																	                    	 <div class="col-md-11">
																	                         
																	                         <div class="col-md-12 noPadding eventUserDetails">
																	                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
																	                            
																	                            
																	                            		<div class="teamLogos">
																	                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a>
																	                                	</div>
																	                            
																	                         </div>
																	                         
																	                        <div class="col-md-6 Leag-Img">
																	                          <h4>${event.tournamentInfo.tournamentName}</h4>
																	                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
																	                          <%--  <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p><br> --%>
																	                          <h4><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></h4><br>
																	                          <p>${event.groundDetails.groundName}<br>
																	                          	${event.groundDetails.address1},${event.groundDetails.city}
																	                          </p>
																	                        </div>
																	                        <c:choose>
																	                        	<c:when test="${event.status eq 'Upcoming'}">
																	                        			<div class="col-md-6 threebtn">
														                            
																				                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="schedualStatus(198,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationacceptcountdisp${schedual.eventMatchMapId}')" id="inviteReject${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',201)" id="invitationacceptcountdisp${schedual.eventMatchMapId}">Rejected : ${schedual.rejectedCount}</a></p>
																				                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationmaybecountdisp${schedual.eventMatchMapId}')" id="inviteMaybe${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',202)" id="invitationmaybecountdisp${schedual.eventMatchMapId}">May Be : ${schedual.maybeCount}</a></p>
																				                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}','invitationrejectcountdisp${schedual.eventMatchMapId}')" id="inviteAccept${event.eventMatchMapId}" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('${event.eventMatchMapId}','${event.tournamentSchedulerId}','${event.rosterId}','invitationreject${event.eventMatchMapId}',200)" id="invitationrejectcountdisp${schedual.eventMatchMapId}">Accepted : ${schedual.acceptedCount}</a></p>
														                                           		 </div>
																	                        	</c:when>
																	                        	<c:otherwise>
																	                        	
																	                        	</c:otherwise>
																	                        </c:choose>
																	                      
																	                         </div>
																	                         
														                    		 </div>
													                    		 </c:if></c:if>
											                     		</c:forEach>
							                     
							                     </c:forEach>
                      					</c:if>
                      				</c:when>
                      				<c:otherwise>
                      				
                      				</c:otherwise>
                      			
                      			</c:choose>
                      			
                      			
                      			
                     
                     <!-- Govind UI Fix 1-12-2015 -->
                     
                     <c:forEach items="${EventList.upcomingeventObj.myUpcomingInvitationList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 eveDate">
                          
                          <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                          
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
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
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     
                     </c:forEach>
                     
                     <c:forEach items="${EventList.upcomingeventObj.upcomingRostersInvitationList}" var="event" varStatus="index">
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 eveDate">
                            <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
                            <img src="${event.usersInfo.userImageUrl}" class="nav-avatar" onerror="userErrorDefaultImg(this)"> ${event.usersInfo.firstName}
                            
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
                            
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     
                     </c:forEach>
                     <c:choose>
                     	<c:when test="${!empty EventList.upcomingeventObj.upcomingAllStatusEvents}">
                     		<!-- <div>Accepted</div> -->
                     		<c:forEach items="${EventList.upcomingeventObj.upcomingAllStatusEvents.acceptedEvents}" var="event">
                     			<div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 eveDate">
                          
                          <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                          
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
                            <img src="${event.usersInfo.userImageUrl}" class="nav-avatar" onerror="userErrorDefaultImg(this)"> ${event.usersInfo.firstName}
                            
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
                            
                                <p><input disabled="disabled" src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     		</c:forEach>
                     		<!-- <div>May be </div> -->
                     		<c:forEach items="${EventList.upcomingeventObj.upcomingAllStatusEvents.mayBeEvents}" var="event">
                     				<div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 eveDate">
                          
                          <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                          
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
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
                            
                                <p><input disabled="disabled" src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     		</c:forEach>
                     		<!-- <div>Cancel</div> -->
                     		<c:forEach items="${EventList.upcomingeventObj.upcomingAllStatusEvents.rejectedEvents}" var="event">
                     			
                     			<div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 eveDate">
                          
                          <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                          
                            <%-- <p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /><p> --%>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
                            <img src="${event.usersInfo.userImageUrl}" class="nav-avatar" onerror="userErrorDefaultImg(this)"> ${event.usersInfo.firstName}
                            
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
                            
                                <p><input disabled="disabled" src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
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
                     		<c:when test="${!empty EventList.upcomingeventObj.upcomingfanOfBuddyEventsList}">
                     		<div></div>
                     			<c:forEach items="${EventList.upcomingeventObj.upcomingfanOfBuddyEventsList}" var="event" varStatus="index">
		                     <div class="col-md-12 noPadding leag-Acc">
		                          <div class="col-md-1 eveDate">
                          
                          <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 	</div>
		                    
		                    	 <div class="col-md-11">
		                         
		                         <div class="col-md-12 noPadding eventUserDetails">
		                         <img src="${event.usersInfo.userImageUrl}" class="nav-avatar" onerror="userErrorDefaultImg(this)"> ${event.usersInfo.firstName}
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
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.acceptedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.rejectedCount}</a></p>
		                            
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
		                         <c:choose>
		                         		<c:when test="${!empty event.usersInfo}">
		                         					<a href="${pageContext.request.contextPath}/buddy/${event.usersInfo.firstName}/${event.usersInfo.userId}"><img src="${event.usersInfo.userImageUrl}" class="nav-avatar"> ${event.usersInfo.firstName}</a>		
		                         		</c:when>
		                         		<c:when test="${!empty event.boardInfo}">
		                         					<a href="${pageContext.request.contextPath}/${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>		
		                         		</c:when>
		                         		<c:otherwise>
		                         					<%-- <a href="${pageContext.request.contextPath}/${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a> --%>
		                         		</c:otherwise>
		                         </c:choose>
		                         
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
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.acceptedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.rejectedCount}</a></p>
		                            
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
		                         	<img src="${USRIMG}" class="nav-avatar" onerror="userErrorDefaultImg(this)">  ${USRLastName}
		                            
		                            
		                            		<!-- <div class="teamLogos">
		                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
		                                	</div> -->
		                            <a href="${pageContext.request.contextPath}/editEvent/${event.eventId}"><i class="fa fa-pencil" title="Edit Event"></i></a>
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                        <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount}</a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}  </a></p>
		                             	<%-- <p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Edit event" onclick="editEvent('${event.eventId}');" ></p> --%>
		                            
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
                     		<c:when test="${!empty EventList.completedeventObj.buddyCancelledMatchesList}">
                     			<h4>Cancelled matches</h4>
                     			
                     			<c:forEach items="${EventList.completedeventObj.buddyCancelledMatchesList}" var="schedual">
                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
                     			
                     			<c:if test="${event.status ne 'Completed'}">
                     			<div class="col-md-12 noPadding leag-Acc">
			                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
                                                     
					 				</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${event.tournamentInfo.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                           <%-- <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p><br> --%>
			                           <h4><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></h4><br>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                       
			                        <c:if test="${!empty event.cancelReason}">
			                         	<div class="col-md-6 Leag-Img">
					                        	<h4>Reason</h4>
					                        	 <p>${event.cancelReason}</p>
			                        	 </div>
			                        </c:if>
			                       
			                             		
			                         </div>
			                         
                         
                         
                          
                    		 </div>
                    		 </c:if>
                     		</c:forEach>
                     
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
                  <c:forEach items="${EventList.upcomingeventObj.upcomingRosterMatchList}" var="schedual">
                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
                     			<c:if test="${!empty event.boardInfo}">
                     			<c:if test="${event.status eq 'Completed'}">
                     			<div class="col-md-12 noPadding leag-Acc">
			                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /></span>
                                                     
					 				</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo" onError='imgError(this)'></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${event.tournamentInfo.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                          <%--  <p>${event.homeTeamInfo.boardName} Vs ${event.awayTeamInfo.boardName}</p><br> --%>
			                          <h4><a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}">${event.homeTeamInfo.boardName}</a> Vs <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}">${event.awayTeamInfo.boardName}</a></h4><br>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                        <c:choose>
			                        	<c:when test="">
			                        	
			                        	</c:when>
			                        	<c:otherwise>
			                        	
			                        	</c:otherwise>
			                        </c:choose>
			                        <!-- <div class="col-md-6 threebtn">
			                            
			                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject"><br>Rejected:3 </p>
			                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br>May Be:3M</p>
			                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"><br>Accepted:7</p>
			                            
			                         </div> -->
			                         <c:if test="${!empty event.player_role}">
			                         	 <c:if test="${event.player_role eq 'Captian'}">
			                         		<button type="submit" class="btn dBtn pull-right btnalian" onclick="showRateUmpireForm('${event.tournamentInfo.tournamentName}','${event.tournamentSchedulerId}','${event.homeTeamInfo.boardId}','${event.tournamentInfo.tournamentId}', '<fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" />')">Rate Umpire</button>
												<%-- <button type="submit" class="btn dBtn pull-right btnalian" onclick="showAssignScorerForm('${event.tournamentSchedulerId}')">Assign Scorer</button> --%>			                         		
			                         	</c:if>
			                         </c:if>
			                         		
			                         </div>
			                         
                         
                         
                          
                    		 </div>
                    		 </c:if></c:if>
                     		</c:forEach>
                     
                     </c:forEach>
                  
                  
                  <c:choose>
                      	<c:when test="${!empty EventList.completedeventObj}">
                      			<%-- <c:forEach items="${EventList.completedeventObj.completedMatches}" var="schedual">
                     	<c:forEach items="${schedual.tournamentSchedulerList}" var="event" varStatus="index">
                     			<div class="col-md-12 noPadding leag-Acc">
			                          <div class="col-md-1 noPadding N-btn">
			                            <p><fmt:formatDate pattern="d" value="${event.gameDate}" /><br><fmt:formatDate pattern="E" value="${event.gameDate}" /><p>
								 	</div>
			                    
			                    	 <div class="col-md-11">
			                         
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}
			                            
			                            
			                            		<div class="teamLogos">
			                                	<img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo"> <b>VS</b> <img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo">
			                                	</div>
			                            
			                         </div>
			                         <div class="col-md-12 noPadding eventUserDetails">
			                         	<a href="${pageContext.request.contextPath}/ ${event.boardInfo.boardName}/board/ ${event.boardInfo.boardId}"><img src="${event.boardInfo.boardImageURL}" class="nav-avatar"> ${event.boardInfo.boardName}</a>
			                            
			                            
			                            		<div class="teamLogos">
			                                	<a href="${pageContext.request.contextPath}/ ${event.homeTeamInfo.boardName}/board/ ${event.homeTeamInfo.boardId}"><img src="${event.homeTeamInfo.boardImageURL}" class="teamLogo"></a> <b>VS</b> <a href="${pageContext.request.contextPath}/ ${event.awayTeamInfo.boardName}/board/ ${event.awayTeamInfo.boardId}"><img src="${event.awayTeamInfo.boardImageURL}" class="teamLogo"></a>
			                                	</div>
			                            
			                         </div>
			                         
			                        <div class="col-md-6 Leag-Img">
			                          <h4>${event.tournamentInfo.tournamentName}</h4>
			                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.gameDate}" /> </p>
			                          <p>${event.groundDetails.groundName}<br>
			                          	${event.groundDetails.address1},${event.groundDetails.city}
			                          </p>
			                        </div>
			                        <!-- <div class="col-md-6 threebtn">
			                            
			                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject"><br>Rejected:3 </p>
			                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be"><br>May Be:3M</p>
			                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"><br>Accepted:7</p>
			                            
			                         </div> -->
			                         </div>
			                         
                         
                         
                          
                    		 </div>
                     		</c:forEach>
                     
                     </c:forEach> --%>
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
		                            
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                        <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected :  ${event.rejectedCount}</a></p>
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
		                         	
		                         </div>
		                         
		                        <div class="col-md-6 Leag-Img">
		                          <h4>${event.eventName}</h4>
		                          <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>
		                          <p>${event.venue}</p>
		                        </div>
		                       <%--  <div class="col-md-6 threebtn">
		                            
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.acceptedCount} </a></p>
		                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
		                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.rejectedCount}</a></p>
		                            
		                         </div> --%>
		                         </div>
		                         
		                        
		                     </div>
		                     
                     </c:forEach>                    		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		</c:otherwise>
                     	
                     	</c:choose>
                     	<c:choose>
                     	<c:when test="${!empty EventList.completedeventObj.completedAllStatusEvents}">
                     		<!-- <div>Accepted</div> -->
                     		<c:forEach items="${EventList.completedeventObj.completedAllStatusEvents.acceptedEvents}" var="event">
                     			<div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
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
                            
                                <p><input disabled="disabled" src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     		</c:forEach>
                     		<!-- <div>May be </div> -->
                     		<c:forEach items="${EventList.completedeventObj.completedAllStatusEvents.mayBeEvents}" var="event">
                     				<div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
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
                            
                                <p><input disabled="disabled" src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
                     <h1 class="noBorder">Accepted Guys</h1>
                     
                     <div class=" col-md-12 accptguybg">
                    	<p>1 Govind</p>
                        <img class="pull-right" src="images/userImg3.jpg">
                     </div>
                     
                     
                     
                     </div>
                         
                          
                     </div>
                     		</c:forEach>
                     		<!-- <div>Cancel</div> -->
                     		<c:forEach items="${EventList.completedeventObj.completedAllStatusEvents.rejectedEvents}" var="event">
                     			
                     			<div class="col-md-12 noPadding leag-Acc">
                           <div class="col-md-1 eveDate">
                          
                         			<span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span>
                                                     
					 				</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                        <!--  	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
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
                            
                                <p><input disabled="disabled" src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('${event.eventId}',73,this,'invitationacceptcountdisp${event.eventId}')" id="inviteReject${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',143)" id="invitationacceptcountdisp${event.eventId}">Rejected : ${event.rejectedCount} </a></p>
                                <p><input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('${event.eventId}',72,this,'invitationmaybecountdisp${event.eventId}')" id="inviteMaybe${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',152)" id="invitationmaybecountdisp${event.eventId}">May Be : ${event.maybeCount}</a></p>
                             	<p> <input src="" type="button" disabled="disabled" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="eventoption2('${event.eventId}',71,this,'invitationrejectcountdisp${event.eventId}')" id="inviteAccept${event.eventId}"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','invitationreject${event.eventId}',151)" id="invitationrejectcountdisp${event.eventId}">Accepted : ${event.acceptedCount}</a></p>
                            
                         </div>
                         </div>
                         
                         <div id="invitationreject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
                     
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
                    
            <div class="col-md-3 pull-right pageRightBlock">      			<div class="col-md-12 whiteBox noPadding">
            <div class="col-md-12 noPadding">
                	
                    <!--<input type="text" class="form-control datepicker" placeholder="" id=""> <i style="top:20px;" class="fa fa-calendar calIcon"></i>-->
                    <div id="demo" class="yui3-skin-sam yui3-g"> 
	                     <div id="mycalendar"></div>
                    </div>
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

	<%@ include file="Footer.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/event.js"></script>
<script type="text/javascript">

$(function(){
	$('#loading').hide();
});
</script>

   <script type="text/javascript" src="${pageContext.request.contextPath}/js/rating.js"></script>
    
    <script type="text/javascript">
        $(function(){
           $('.ratingDiv').rating();
        
           /*   $('body').click(':not(.accptguybg)').hide(); */
        });
        
        
        
    </script>  
   
   <script src="${pageContext.request.contextPath}/js/yui-min.js"></script>
<script type="text/javascript">
YUI().use('calendar', 'datatype-date', 'cssbutton',  function(Y) {

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
      window.location.href='${pageContext.request.contextPath}/userEvent/date/'+dtdate.format(newDate);
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
