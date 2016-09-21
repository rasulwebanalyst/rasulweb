<!DOCTYPE html>
<html lang="en">
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

<script src="${pageContext.request.contextPath }/js/jspdf.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jspdf.plugin.autotable.js"></script>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="CSCommon.jsp" %>
		<%@ include file="BuddyPublicHeader.jsp" %>

 <section class="middleContentBlock myScorePage">
  <%@ include file="BuddyPublicBanner.jsp" %>
<%-- <div class="profileBanner"> <img src="${pageContext.request.contextPath }/images/innerBanner.png"> </div> --%>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
      <script>
   var formatAMPMTime = function(date) {
	  var hours = date.getHours();
	  console.log(hours);
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  hours = hours < 10 ? '0'+hours : hours ;
	  var strTime = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear();
	  return strTime;
	};
	function test(id){
		var date = $("#formatDate_"+id).html();	
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	};
	
	/* function getDateInObject(timestamp)
	{
		
		var date = new Date(timestamp);
		var dateNew = new Date(date.getTime() + date.getTimezoneOffset()*60000);
		var offset = new Date().getTimezoneOffset() * 60 * 1000;
		var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		return formatAMPMTime(gettingFromServer); 
	}; */
	 
</script>
        
           	<%@ include file="BuddyPublicSideMenu.jsp" %>

      <div class="userName col-md-10" id="likesDiv">
	
							<div class="hitBoard">
							            
							            
							            <c:choose>
							                   		<c:when test="${BuddyFanReq}">
							                   			<a href="javascript:" class=""> <span>Fan</span> <span>(${BuddyPublicFanCount})</span></a>
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:FanAction('${USRID}','${BuddyPublicUserId}','buddyFanToBuddy')" class="" id="becomeFan${BuddyPublicUserId}"> <span>Become a Fan</span><span>(${BuddyPublicFanCount})</span> </a>
							                   			<a href="javascript:" class="" id="fan${BuddyPublicUserId}" style="display: none"> <span>Fan</span> <span>(${BuddyPublicFanCount+1})</span> </a>	
							                   		</c:otherwise>
							                   </c:choose>
							            
							            <c:choose>
							                   		<c:when test="${BuddyFriend}">
							                   			<a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Friend</span> </a>
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:buddyRequest2('${BuddyPublicUserId}','')" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy Request</span></a>
							                   		</c:otherwise>
							                   </c:choose>
							                   
							            </div>

</div>
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
                
                
                	<%-- <div class="col-md-12 msHead">
                     	<h1 class="noBorder">${UserInfo.firstName} ${UserInfo.lastName}</h1>
                     
                     
                     	<div class="col-md-5 statusUpdateBox ">
                     	<script type="text/javascript">
                     	var roleinfotopdf="";
                     	</script>
                            <p><span>Role : </span><strong><c:forEach var = "roleDetails" items="${UserInfo.userRoleMap}" varStatus = "loop">                      
                            <span>${roleDetails.role}
                            		<script type="text/javascript">
                            		roleinfotopdf =roleinfotopdf+""+"${roleDetails.role}";
                            		</script>
                            		<c:if test="${!loop.last}">,
                            			<script type="text/javascript">
                            		roleinfotopdf =roleinfotopdf+", ";
                            			</script>	
                            		</c:if></span>                                          
                        </c:forEach></strong></p> 
                            <p><span>Bats :</span> <strong>${SelectedPlayersInfo.player1.battingInfo}</strong></p> 
                            <p><span>Bowls : </span> <strong>${SelectedPlayersInfo.player1.bowlingInfo}</strong></p>
                            <p><span>Country :  </span> <strong>${UserInfo.country}</strong></p>
                    	</div> 
                        
                        <div class="col-md-7">
                            <div class="cube bulucolor">${UserMatchInfo.playedMatches}<br><p>Matches</p></div>
                            <div class="cube greencolor">${UserMatchInfo.totalMadeRuns}<br> <p>Runs</p></div>
                            <div class="cube redcolor">${UserMatchInfo.totalWicketTaken}<br> <p>Wickets<p></div>
                            
                            
                        </div>
                        
                        	
                           
                           
                        
                        </div> 
                	 --%>
                	 <div class="col-md-12">
                     	<h1 class="noBorder">${UserInfo.firstName} ${UserInfo.lastName}</h1>
                     
                     
                     	<div class="col-md-5 statusUpdateBox ">
                            <p><span>Role : </span><strong>
                            <span>
                            <c:forEach var = "roleDetails" items="${UserInfo.userRoleMap}" varStatus = "loop">                      
                            ${roleDetails.role}<c:if test="${!loop.last}">,</c:if>                                          
                        </c:forEach></span> </strong></p> 
                            <p><span>Bats :</span> <strong>${SelectedPlayersInfo.player1.battingInfo}</strong></p> 
                            <p><span>Bowls : </span> <strong>${SelectedPlayersInfo.player1.bowlingInfo}</strong></p>
                            <p><span>Country : </span> <strong>${UserInfo.country}</strong></p>
                    	</div> 
                        
                        <div class="col-md-7">
                            <div class="cube bulucolor">${UserMatchInfo.playedMatches}<br><p>Matches</p></div>
                            <div class="cube greencolor">${UserMatchInfo.totalMadeRuns}<br> <p>Runs</p></div>
                            <div class="cube redcolor">${UserMatchInfo.totalWicketTaken}<br> <p>Wickets<p></div>
                            
                            
                        </div>
                        
                        	
                           
                           
                        
                        </div> 
                	
                     
                     <%-- <div class="col-md-12">
                     	<h1 class="noBorder">${UserInfo.firstName} ${UserInfo.lastName}</h1>
                     
                     
                     	<div class="col-md-2 statusUpdateBox ">
                            <p>Role</p> 
                            <p>Bats</p> 
                            <p>Bowls</p>
                            <p>Nationality</p>
                    	</div>
                        
                     <div class="col-md-3 statusUpdateBox ">
                     <p>
                        <c:forEach var = "roleDetails" items="${UserInfo.userRoleMap}" varStatus = "loop">                      
                            <span>${roleDetails.role}<c:if test="${!loop.last}">,</c:if></span>                                          
                        </c:forEach>
                        </p>
                        
                        <c:choose>
                        <c:when test="${!empty SelectedPlayersInfo.player1.battingInfo}">
                         <p>${SelectedPlayersInfo.player1.battingInfo}</p>
                        </c:when>
                        <c:otherwise>
                         <p>&nbsp</p>
                        </c:otherwise>
                        </c:choose>
                      
                      <c:choose>
                      <c:when test="${!empty SelectedPlayersInfo.player1.bowlingInfo}">
                        <p>${SelectedPlayersInfo.player1.bowlingInfo}</p>
                      </c:when>
                      <c:otherwise>
                        <p>&nbsp</p>
                      </c:otherwise>
                      </c:choose>
                          
                             
                             <p>${UserInfo.country}</p>
                        
                        </div> 
                        
                        
                       <div class="col-md-7 pageMiddleBlock">
                            <div class="cube bulucolor">${UserMatchInfo.playedMatches}<br><p>Matches</p></div>
                            <div class="cube greencolor">${UserMatchInfo.totalMadeRuns}<br> <p>Runs</p></div>
                            <div class="cube redcolor">${UserMatchInfo.totalWicketTaken}<br> <p>Wickets<p></div>
                            
                            
                                                    </div>
                        
                        	
                           
                           
                        
                        </div>  --%>
                        </div>
                        
                     <!--Right Block-->
                     	
                     
                     <!--/Right Block End-->

                        
                     </div> 
                      
                     
                     
                     
                     
                     
                     
                     
                     
    		<div class="col-md-10">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                        <!-- <div class="col-md-4 noPadding">
                        	<h5>Batting Performance</h5> -->
                        	<div class="col-md-12 statusUpdateBox noPadding">
                        	 <div class="buluback" style="font-weight:100;">Batting & Fielding Performances</div>
                           <!--  --><br><span id="battingYearId">&nbsp</span>
                            </div>
                            <script type="text/javascript">
                       var battingrowObj=[];
                       </script>
                         <div class="col-md-5 drop pull-right" style="margin-bottom: 15px;">
                         	<div class="selectdiv">
                                    <select class="selectboxdiv" id="battingYears" onchange="yearWiseBatting(this.value)">
                                        <option>Years</option>
                                        <c:forEach var = "years" items="${yearsList}">
                                        
                                            <option value="${years}">${years}</option>
                                        </c:forEach>
                                       
                                    </select>
                                    <div class="out">Years</div>    
                                </div>
                         </div>
                         <div class="col-md-12 noPadding MyScor-table">
                       <c:choose>  <c:when test="${battingPerformanceListSize eq 0 }">
                       <table>
                            	<thead>
                                	<tr>
                                    	<th>Date</th>
                                    	<th>HOME TEAM</th>
                                    	<th>AWAY TEAM</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>POS</th>
                                        <th>RUNS</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>DISMISSAL TYPE</th>
                                        <th>SR</th>
                                        <th>MOM</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead>
                               </table>
                                	<span id="battingNoData" style="color:red">No Details Available</span>
                                   
                              
                           
                       
                       </c:when>
                       
                       <c:otherwise>
                       
                       <table id="battingTable">
                            	<thead>
                                	<tr>
                                    	<th>DATE</th>
                                    	<th>HOME TEAM</th>
                                    	<th>AWAY TEAM</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>POS</th>
                                        <th>RUNS</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>DISMISSAL TYPE</th>
                                        <th>SR</th>
                                        <th>MOM</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                
                                <c:forEach var="batting" items="${battingPerformanceList}">
                                	<tr><td><fmt:formatDate value="${batting.gamedate}"
														pattern="MM/dd/yyyy" /></td>
									<td><a href="${pageContext.request.contextPath}/${batting.homeTeamName}/board/${batting.hometeamId}">${batting.homeTeamName}</a></td>	
									<td><a href="${pageContext.request.contextPath}/${batting.awayTeamName}/board/${batting.awayTeamId}">${batting.awayTeamName}</a></td>
                                    	<td>${batting.tournamentName}</td>
                                    	
                                    	
                                        <td><a href="${pageContext.request.contextPath}/${batting.leagueBoardName}/board/${batting.leagueBoardId}">${batting.leagueBoardName}</a></td>
                                      
                                        
                                      <c:choose>
                                        	<c:when test="${batting.positionOfStand == '' || batting.positionOfStand == 'null' || batting.positionOfStand == 'NO'}">
                                       			<c:choose>
                                       				<c:when test="${empty batting.positionOfStandOrder}">
                                       	 				<td>-</td>
                                       	 			</c:when>
                                       	 			<c:otherwise>
                                       	 				<td>${batting.positionOfStandOrder}</td>
                                       	 			</c:otherwise>
                                       			</c:choose>
                                        </c:when>
                                        <c:otherwise>
                                          <td>${batting.positionOfStandOrder}</td>
                                       
                                        </c:otherwise>
                                        
                                        </c:choose>
                                        <td>${batting.runs}</td>
                                        <td>${batting.fours}</td>
                                        <td>${batting.sixs}</td>
                                       <%--   <c:choose><c:when test ="${empty batting.dismissType}">
                                        <td>-<td>
                                        </c:when>
                                        <c:otherwise> --%> 
                                        <td>${batting.dismissType}</td>
                                        <%--  </c:otherwise>
                                        </c:choose> 
                                         --%>
                                        <td>${batting.strikeRate}</td>
                                         <c:choose><c:when test="${batting.manOftheMatch eq 0 }">
                                        <td>-</td>
                                        </c:when><c:otherwise> 
                                        <td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>
                                         </c:otherwise>
                                        </c:choose> 
                                        
                                        
                                        <td><img src="${pageContext.request.contextPath}/images/scorecard.png" onclick="showScoreCard('${batting.matchId}')"></td>
                                    </tr>
                                     <script type="text/javascript">
                                     battingrowObj.push(
                                    		{
                                    			gamedate : "<fmt:formatDate value='${batting.gamedate}' pattern='MM/dd/yyyy' />",
                                    			tournamentName : "${batting.tournamentName}",
                                    			leagueBoardName : "${batting.leagueBoardName}",
                                    			positionOfStand : "${batting.positionOfStand}",
                                    			runs : "${batting.runs}",
                                    			fours : "${batting.fours}",
                                    			sixs : "${batting.sixs}",
                                    			dismissType : "${batting.dismissType}",
                                    			strikeRate : "${batting.strikeRate}"
                                        		}		 
                                     );
                                     </script>
                                    </c:forEach>
                                </tbody>
                            </table>
                         	<button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreBattings()">LOAD MORE</button>
                       </c:otherwise>
                         
                         </c:choose>
                         	
                         
                         </div>
                         
                          
                      
                        <!-- <div class="col-md-4 noPadding">
                        	<h5>Bowling Performance</h5> -->
                        	<div class="col-md-12 statusUpdateBox noPadding">
                        	  <div class="buluback" style="font-weight:100;">Bowling Performances</div>
                           <!--  --><br><span id="bowlingYearId"></span>
                            </div>
                         <div class="col-md-5 drop pull-right" style="margin-bottom: 15px;">
                         	<div class="selectdiv">
                                    <select class="selectboxdiv" onchange="yearWiseBowling(this.value)">
                                        <option>Years</option>
                                        <c:forEach var = "years" items="${yearsList}">
                                        
                                            <option value="${years}">${years}</option>
                                        </c:forEach>
                                       
                                    </select>
                                    <div class="out">Years</div>    
                                </div>
                         </div>
                         <div class="col-md-12 noPadding MyScor-table">
                         	
                         	<c:choose>  <c:when test="${bowlingPerformanceListSize eq 0 }">
                         	<table>
                            	<thead>
                                	<tr>
                                    	<th>DATE</th>
                                    	<th>HOME TEAM</th>
                                    	<th>AWAY TEAM</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>OVERS</th>
                                        <th>MAIDENS</th>
                                        <th>RUNS</th>
                                        <th>WICKETS</th>
                                       	<th>SR</th>
                                        <th>MOM</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead></table>
                         	<span style="color:red">No Details Available</span>
                  
                       
                       </c:when>
                       
                       <c:otherwise>
                       <table id="bowlingTable">
                            	<thead>
                                	<tr>
                                    	<th>DATE</th>
                                    	<th>HOME TEAM</th>
                                    	<th>AWAY TEAM</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>OVERS</th>
                                        <th>MAIDENS</th>
                                        <th>RUNS</th>
                                        <th>WICKETS</th>
                                       	<th>SR</th>
                                        <th>MOM</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                <c:forEach var="bowling" items="${bowlingPerformanceList}">
                                	<tr><td><fmt:formatDate value="${bowling.gameDate}"
														pattern="MM/dd/yyyy" /></td>
		<td><a href="${pageContext.request.contextPath}/${bowling.homeTeamName}/board/${bowling.hometeamId}">${bowling.homeTeamName}</a></td>	
		<td><a href="${pageContext.request.contextPath}/${bowling.awayTeamName}/board/${bowling.awayTeamId}">${bowling.awayTeamName}</a></td>
                                    	<td>${bowling.tournamentName}</td>
                                        
                                        <td>${bowling.leagueBoardName}</td>
                                       
                                        <td>${bowling.bowlerovers}</td>
                                        <td>${bowling.maidenOvers}</td>
                                        <td>${bowling.bowlingruns}</td>
                                        <td>${bowling.wickets}</td>
                                        <td>${bowling.strikeRate}</td>
                                       <c:choose><c:when test="${bowling.manOftheMatch eq 0 }">
                                        <td>-</td>
                                        </c:when><c:otherwise> 
                                        <td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>
                                        </c:otherwise>
                                        </c:choose> 
                                        <td><img src="${pageContext.request.contextPath}/images/scorecard.png" onclick="showScoreCard('${bowling.matchId}')"></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                         	<button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreBowlings()">LOAD MORE</button>
                       </c:otherwise>
                         
                         </c:choose>    
                            
                         </div>
                         
                        <div class="col-md-12 statusUpdateBox noPadding">
                        <div class="buluback" style="font-weight:100;">Achievements</div>
                            	<div class="col-md-12 noPadding AchHead">
                                	<!-- <h4>ODI Series Match Record</h4> -->
                                	
                                	<c:choose>  <c:when test="${achievementsListSize eq 0 }">
                         	<table>
													<thead>
														<tr>
															<th>DATE</th>
															<th>HOME TEAM</th>
															<th>AWAY TEAM</th>
															<th>TROPHY</th>
															<th>LEAGUE</th>
															<th>RUNS SCORED</th>
															<th>WICKETS</th>
															<th>CATCHES/STUMPINGS</th>
															<th>SCORE CARD</th>
														</tr>
													</thead>
												</table>
												<div class="noContentDivRed">No Details Available</div>


											</c:when>

											<c:otherwise>
												<table id="achievementsTable">
													<thead>
														<tr>
															<th>DATE</th>
															<th>HOME TEAM</th>
															<th>AWAY TEAM</th>
															<th>TROPHY</th>
															<th>LEAGUE</th>
															<th>RUNS SCORED</th>
															<th>WICKETS</th>
															<th>CATCHES/STUMPINGS</th>
															<th>SCORE CARD</th>
														</tr>
													</thead>
													<tbody align="center">
														<c:forEach var="achieve" items="${achievementsList}">
															<tr>
																<td><p id="formatDate_${achieve.matchId}"
																		style="display: none">
																		<fmt:formatDate pattern="M/d/YYYY hh:mm a"
																			value="${achieve.gameDate}" />
																	</p>
																	<script>
																		document
																				.writeln(test("${achieve.matchId}"));
																	</script></td>
																<%-- <td><fmt:formatDate value="${achieve.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
																<td><a
																	href="${pageContext.request.contextPath}/${achieve.homeTeamName}/board/${achieve.hometeamId}">${achieve.homeTeamName}</a></td>
																<td><a
																	
																	href="${pageContext.request.contextPath}/${achieve.awayTeamName}/board/${achieve.awayTeamId}">${achieve.awayTeamName}</a></td>
																<td>${achieve.tournamentName}</td>


																<td><a
																	href="${pageContext.request.contextPath}/${achieve.leagueBoardName}/board/${achieve.leagueBoardId}">${achieve.leagueBoardName}</a></td>

																<td>${achieve.runs}</td>
																<td>${achieve.wickets}</td>
																<%--   <c:choose><c:when test="${achieve.manOftheMatch eq 0 }">
                                        <td></td>
                                        </c:when><c:otherwise> --%>
																<%--      </c:otherwise>
                                        </c:choose> --%>
                                                                <td>${achieve.catchStumpingCount}</td>
																<td><img
																	src="${pageContext.request.contextPath}/images/scorecard.png"
																	onclick="showScoreCard('${achieve.matchId}')"></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
                         	<button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreAchievements()">LOAD MORE</button>
                       </c:otherwise>
                         
                         </c:choose>  
                                	
                                </div>
                            </div>
                        </div>
                        	
  </div>
  
  
  
  
  
  
            
            
            
            
            
            
 </div>
                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>

  <!--/Content Block-->

</section>

<!--Select Box-->
<%@ include file ="Footer.jsp" %>

<script>
function showScoreCard(id){
	var uid = "${publicUserId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardPlayerPublicView/matchId/"+id+"/uid/"+uid;
}
var startBat = 0;
var endBat = 10;

function loadMoreBattings(){
	var uid = "${publicUserId}";
	var add = 10;
	var startNode = startBat+add;
	var endNode = endBat+add;
	
	var gameBean = {
			userId : uid,
			startNode : startNode,
			endNode : endNode,
	}
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/paginationBattingPerformanceScorer",
		data : JSON.stringify(gameBean),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
				/*  html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISS TYPE</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead><tbody align="center">'; */
				 for(var i=0; i< res.length; i++){
					 var date  = new Date(res[i].gamedate);
					 var id = res[i].matchId;
					 console.log("date ======="+date.toLocaleDateString());
					 var dateChange = date.toLocaleDateString();
					 
					 
					  var formatDate  = null;
					 if(date != null){
						
						formatDate = dateChange;
						  //formatDate = date.getDate().format("{MM}/{dd}/{yyyy}"); 
					 }else{
						 formatDate = "";
					 }
			
					 console.log("format Date :"+formatDate);
					 
					 html += '<tr><td>'+dateChange+'</td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].hometeamId+'">'+res[i].homeTeamName+'</a></td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
					 
					 html += '<td>'+res[i].tournamentName+'</td>';
					 
						 html += '<td>'+res[i].leagueBoardName+'</td>';
					
					 
					 
						 if(res[i].positionOfStand == '' || res[i].positionOfStand == 'null' || res[i].positionOfStand == 'NO'){
							 html += '<td>-</td>';
							 
						 }else{
							 html += '<td>'+res[i].positionOfStandOrder+'</td>';
						 }
					 html += '<td>'+res[i].runs+'</td>';
					 html += '<td>'+res[i].fours+'</td>';
					 html += '<td>'+res[i].sixs+'</td>';
					 html += '<td>'+res[i].dismissType+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td>-</td>';
					 }else{ 
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				// html += '</tbody>';
				 //html += '</table>';
				
				 $("#battingTable").append(html);
				
				 startBat = startNode;
				 endBat = endNode;
				 
			}else{
				
				/* var html = '';
				
				 html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISS TYPE</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead></table>';
				 html += '<span style="color:red">No More Details Available</span>';
				 $("#battingTable").html(html).trigger('create'); */
				displaynotification('No More Details Available',1500);
				
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
			
		
	})
}

var startBowl = 0;
var endBowl = 10;
function loadMoreBowlings(){
	var uid = "${publicUserId}";
	var add = 10;
	var startNode = startBowl+add;
	var endNode = endBowl+add;
	var flag ="forMyScore";
	var gameBean = {
			userId : uid,
			startNode : startNode,
			endNode : endNode,
			flag :flag,
	}
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/paginationBowlingPerformanceScorer",
		data : JSON.stringify(gameBean),
		contentType : "application/json",
		success : function(res){
			var flag=0;
			if(res.length!=0){
				for(var i=0;i<res.length; i++){
					if(res[i].bowlerovers!=0.0 || res[i].bowlerovers!=0){
						flag=1;
					}
				}
			}
			if(res.length != 0 && flag!=0){
				var html = '';
		
				/*  html += '<table id="bowlingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>OVERS</th>';
				 html += '<th>MAIDENS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>WICKETS</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead><tbody align="center">'; */
				 for(var i=0; i< res.length; i++){
					 if(res[i].bowlerovers!=0.0 || res[i].bowlerovers!=0){
					 var date  = new Date(res[i].gameDate);
					 var id = res[i].matchId;
					 console.log("date ======="+date.toLocaleDateString());
					 var dateChange = date.toLocaleDateString();
					 
					 
					  var formatDate  = null;
					 if(date != null){
						
						formatDate = dateChange;
						  //formatDate = date.getDate().format("{MM}/{dd}/{yyyy}"); 
					 }else{
						 formatDate = "";
					 }
			
					 console.log("format Date :"+formatDate);
					 
					 html += '<tr><td>'+dateChange+'</td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].hometeamId+'">'+res[i].homeTeamName+'</a></td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
					 html += '<td>'+res[i].tournamentName+'</td>';
					
				     html += '<td>'+res[i].leagueBoardName+'</td>';
					
					 html += '<td>'+res[i].bowlerovers+'</td>';
					 html += '<td>'+res[i].maidenOvers+'</td>';
					 html += '<td>'+res[i].bowlingruns+'</td>';
					 html += '<td>'+res[i].wickets+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					  if(res[i].manOftheMatch == 0){
						 html += '<td>-</td>';
					 }else{ 
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					}
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
			}
				// html += '</tbody>';
				// html += '</table>';
				
				 $("#bowlingTable").append(html);
				
				 startBowl = startNode;
				 endBowl = endNode;
				 
			}else{
				/* var html = '';
				
				 html += '<table id="bowlingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>OVERS</th>';
				 html += '<th>MAIDENS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>WICKETS</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead></table>';
				 html += '<span style="color:red">No More Details Available</span>';
				 $("#bowlingTable").html(html).trigger('create'); */
				displaynotification('No More Details Available',1500);
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
			
		
	})
}

var startAchieve = 0;
var endAchieve = 500;
function loadMoreAchievements(){
	var uid = "${publicUserId}";
	var add = 500;
	var startNode = startAchieve+add;
	var endNode = endAchieve+add;
	
	var gameBean = {
			userId : uid,
			startNode : startNode,
			endNode : endNode,
	}
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/paginationMatchAchievementsScorer",
		data : JSON.stringify(gameBean),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
				/*  html += '<table id="achievementsTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>OVERS</th>';
				 html += '<th>MAIDENS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>WICKETS</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead><tbody align="center">'; */
				 for(var i=0; i< res.length; i++){
					 var date  = new Date(res[i].gameDate);
					 var id = res[i].matchId;
					 console.log("date ======="+date.toLocaleDateString());
					 var dateChange = date.toLocaleDateString();
					 
					 
					  var formatDate  = null;
					 if(date != null){
						
						formatDate = dateChange;
						  //formatDate = date.getDate().format("{MM}/{dd}/{yyyy}"); 
					 }else{
						 formatDate = "";
					 }
			
					 console.log("format Date :"+formatDate);
					 
					 html += '<tr><td>'+dateChange+'</td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].hometeamId+'">'
						+ res[i].homeTeamName + '</a></td>';
				html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'
						+ res[i].awayTeamName + '</a></td>';
				html += '<td>' + res[i].tournamentName
						+ '</td>';
				html += '<td><a href="${pageContext.request.contextPath}/'+res[i].leagueBoardName+'/board/'+res[i].leagueBoardId+'">'
						+ res[i].leagueBoardName + '</a></td>';
					
					 html += '<td>'+res[i].runs+'</td>';
					 html += '<td>'+res[i].wickets+'</td>';
					/*  if(res[i].manOftheMatch == 0){
						 html += '<td></td>';
					 }else{ */
					// }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				// html += '</tbody>';
				// html += '</table>';
				
				 $("#achievementsTable").append(html);
				
				 startAchieve = startNode;
				 endAchieve = endNode;
				 
			}else{
				
				/* var html = '';
				
				 html += '<table id="achievementsTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>OVERS</th>';
				 html += '<th>MAIDENS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>WICKETS</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead></table>';
				 html += '<span style="color:red">No More Details Available</span>';
				 $("#achievementsTable").html(html).trigger('create'); */
				displaynotification('No More Details Available',1500);
				
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
			
		
	})
}

function yearWiseBatting(val){
	var uid = "${publicUserId}";
	if(val != 'Years'){
		document.getElementById("battingYearId").innerHTML = val;
		
		
	/* }else{
		document.getElementById("battingYearId").innerHTML = "";
	} */
	
	console.log(" Batting years :"+val);

	var year = {
			playerId : uid,
			filterByYear : val,
	}
	$.ajax({
	
		type:"Post",
		url :"${pageContext.request.contextPath}/yearWiseBattingScorer",
		data:JSON.stringify(year),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
				 html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>HOME TEAM</th>';
				 html += '<th>AWAY TEAM</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISS TYPE</th>';
				 html += '<th>SR</th>';  
				 html += '<th>MOM</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead><tbody align="center">';
				 for(var i=0; i< res.length; i++){
					 var date  = new Date(res[i].gamedate);
					 var id = res[i].matchId;
					 console.log("date ======="+date.toLocaleDateString());
					 var dateChange = date.toLocaleDateString();
					 
					 
					  var formatDate  = null;
					 if(date != null){
						
						formatDate = dateChange;
						  //formatDate = date.getDate().format("{MM}/{dd}/{yyyy}"); 
					 }else{
						 formatDate = "";
					 }
			
					 console.log("format Date :"+formatDate);
					 
					 html += '<td>'+dateChange+'</td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].hometeamId+'">'+res[i].homeTeamName+'</a></td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
					 html += '<td>'+res[i].tournamentName+'</td>';
					
					html += '<td>'+res[i].leagueBoardName+'</td>';
					
						 if(res[i].positionOfStand == '' || res[i].positionOfStand == 'null' || res[i].positionOfStand == 'NO'){
							/*  html += '<td>-</td>'; */
							 if(res[i].positionOfStandOrder == 'null'){
								 html += '<td>-</td>';}else{html += '<td>'+res[i].positionOfStandOrder+'</td>';}
							 
						 }else{
							 html += '<td>'+res[i].positionOfStandOrder+'</td>';
						 }
					 html += '<td>'+res[i].runs+'</td>';
					 html += '<td>'+res[i].fours+'</td>';
					 html += '<td>'+res[i].sixs+'</td>';
					 html += '<td>'+res[i].dismissType+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					  if(res[i].manOftheMatch == 0){
						 html += '<td>-</td>';
					 }else{ 
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				 html += '</tbody>';
				 html += '</table>';
				
				 $("#battingTable").html(html).trigger('create');
				
			}else{
				 /* var html = '';
				
				 html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>No Of Leagues Participated</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISS TYPE</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead></table>';
				 html += '<span style="color:red">No More Data</span>';
				 $("#battingTable").html(html).trigger('create');  */
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
		
		
	})
}else{
	document.getElementById("battingYearId").innerHTML = "";
}
	
}


function yearWiseBowling(val){
	var flag="forMyScore";
	var uid = "${publicUserId}";
	console.log(" Bowling Years"+val);
	if(val != 'Years'){
		document.getElementById("bowlingYearId").innerHTML = val;
	}else{
		document.getElementById("bowlingYearId").innerHTML = "";
	}
	var year = {
			playerId : uid,
			filterByYear : val,
			flag :flag,
	}
	$.ajax({
	
		type:"Post",
		url :"${pageContext.request.contextPath}/yearWiseBowlingScorer",
		data:JSON.stringify(year),
		contentType : "application/json",
		success : function(res){
			var flag=0;
			if(res.length!=0){
				for(var i=0;i<res.length; i++){
					if(res[i].bowlerovers!=0.0 || res[i].bowlerovers!=0){
						flag=1;
					}
				}
			}
			if(res.length != 0 && flag!=0){
				var html = '';
		
				 html += '<table id="bowlingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>HOME TEAM</th>';
				 html += '<th>AWAY TEAM</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>OVERS</th>';
				 html += '<th>MAIDENS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>WICKETS</th>';
				 html += '<th>SR</th>';
				 html += '<th>MOM</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead><tbody align="center">';
				 for(var i=0; i< res.length; i++){
					 if(res[i].bowlerovers!=0.0 || res[i].bowlerovers!=0){
					 var date  = new Date(res[i].gameDate);
					 var id = res[i].matchId;
					 console.log("date ======="+date.toLocaleDateString());
					 var dateChange = date.toLocaleDateString();
					 
					 
					  var formatDate  = null;
					 if(date != null){
						
						formatDate = dateChange;
						  //formatDate = date.getDate().format("{MM}/{dd}/{yyyy}"); 
					 }else{
						 formatDate = "";
					 }
			
					 console.log("format Date :"+formatDate);
					 
					 html += '<tr><td>'+dateChange+'</td>';
					 html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].hometeamId+'">'+res[i].homeTeamName+'</a></td>';
					  html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
					 html += '<td>'+res[i].tournamentName+'</td>';
					 html += '<td>'+res[i].leagueBoardName+'</td>';
					 html += '<td>'+res[i].bowlerovers+'</td>';
					 html += '<td>'+res[i].maidenOvers+'</td>';
					 html += '<td>'+res[i].bowlingruns+'</td>';
					 html += '<td>'+res[i].wickets+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td>-</td>';
					 }else{
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				 }
				 html += '</tbody>';
				 html += '</table>';
				
				 $("#bowlingTable").html(html).trigger('create');
				
			}else{
				/* var html = '';
				
				 html += '<table id="bowlingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>No Of Leagues Participated</th>';
				 html += '<th>OVERS</th>';
				 html += '<th>MAIDENS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>WICKETS</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead></table>';
				 $("#bowlingTable").html(html).trigger('create'); */
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
		
	});
}
</script>
 
   <script type="text/javascript">
   function getPDF(){
	   alert('getPDF function ');
	   
	   var doc = new jsPDF('p', 'pt');
	    doc.setProperties({
	    	title: 'Cricket Socio',
	    	subject: 'Buddy Score Card',
	    	author: 'Thamaramurthy Devarala',
	    	keywords: 'Batting, Bowling',
	    	creator: 'Cricket Social'
	    	
	    });
	    
	    //
	    
	 doc.setFontSize(20);
    doc.setFont("helvetica");
    doc.setFontType("bold");
    doc.setTextColor(50,83,168);
    doc.text(10,30,"${UserInfo.firstName} ${UserInfo.lastName}");
    doc.setFontSize(18);
    doc.setFontType("normal");
    doc.setTextColor(0,0,0);
    doc.text(30,70,"Role : ");
    doc.text(125,70,roleinfotopdf);
    doc.text(30,100,"Bats : ");
    doc.text(125,100,"${SelectedPlayersInfo.player1.battingInfo}");
    doc.text(30,130,"Bowls : ");
    doc.text(125,130,"${SelectedPlayersInfo.player1.bowlingInfo}");
    doc.text(30,160,"Nationality : ");
    doc.text(125,160,"${UserInfo.country}");
    doc.setDrawColor(8, 110, 194);
    doc.setFillColor(76, 159, 225);
    //
    doc.rect(340, 85, 60, 40, 'F');
    doc.setDrawColor(0,116,110);
    doc.setFillColor(1,155,145);
    doc.rect(420, 85, 60, 40, 'F');
    doc.setDrawColor(165,14,21);
    doc.setFillColor(215,30,38);
    doc.rect(500, 85, 60, 40, 'F');
    doc.setFontSize(16);
    doc.setFontType("normal");
    doc.text(343,140,"Matches");
    doc.text(423,140,"Runs");
    doc.text(503,140,"Wickets");
    
    doc.setFontSize(16);
    doc.setTextColor(255,255,255);
    doc.setFontType("bold");
    doc.text(355,110,"${UserMatchInfo.playedMatches}");
    doc.text(435,110,"${UserMatchInfo.totalMadeRuns}");
    doc.text(515,110,"${UserMatchInfo.totalWicketTaken}");
    

    
	    
    var columns = [
                   {title: "Date", dataKey: "gamedate"},
                   {title: "TROPHY", dataKey: "tournamentName"},
                   {title: "LEAGUE", dataKey: "leagueBoardName"},
                   {title: "POS", dataKey: "positionOfStand"},
                   {title: "RUNS", dataKey: "runs"},
                   {title: "4s", dataKey: "fours"},
                   {title: "6s", dataKey: "sixs"},
                   {title: "DISMISS TYPE", dataKey: "dismissType"},
                   {title: "SR", dataKey: "strikeRate"}				 			  
               ];
    var columns2 = [
                   {title: "Date", dataKey: "gamedate"},
                   {title: "TROPHY", dataKey: "tournamentName"},
                   {title: "LEAGUE", dataKey: "leagueBoardName"},
                   {title: "POS", dataKey: "positionOfStand"},
                   {title: "RUNS", dataKey: "runs"},
                   {title: "4s", dataKey: "fours"},
                   {title: "6s", dataKey: "sixs"},
                   {title: "DISMISS TYPE", dataKey: "dismissType"},
                   {title: "SR", dataKey: "strikeRate"}				 			  
               ];
    console.log(battingrowObj);
 			var yHeight=250;
 			if(battingrowObj.length>0)
 				{
 			    doc.setFontSize(20);
 			    doc.setFont("helvetica");
 			    doc.setFontType("bold");
 			    doc.setTextColor(50,83,168);
 			    doc.text(10,200,"Batting Performance");
 			    doc.setTextColor(0,0,0);
 					yHeight=parseInt(battingrowObj.length)*35+250;
 					
 					  doc.autoTable(columns,battingrowObj, {
 		 			        theme: 'grid',
 		 			        startY: 240,
 		 			        margin: {horizontal: 10},
 		 			        styles: {overflow: 'linebreak'},
 		 			        bodyStyles: {valign: 'top'},
 		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
 		 			        headerStyles: {fillColor: [99, 184, 255]}
 		 			    });
 					
 				}else{
 					yHeight=200;
 				}
 				
 			 
 				
 		
/* 	console.log('hieght ::: '+yHeight);
	   doc.setFontSize(20);
	    doc.setFont("helvetica");
	    doc.setFontType("bold");
	    doc.setTextColor(50,83,168);
	    doc.text(10,yHeight,"Bowlling Performance");
	    doc.setTextColor(0,0,0); */
	    
	    doc.save('${UserInfo.firstName}.pdf');
   }
   
   </script>
   
   
</body>
</html>
