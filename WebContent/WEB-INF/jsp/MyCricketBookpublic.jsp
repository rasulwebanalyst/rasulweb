<!DOCTYPE html>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<%@ include file="BuddyPublicHeader.jsp" %>

 <section class="middleContentBlock">
<%-- <div class="profileBanner"> <img src="${pageContext.request.contextPath }/images/innerBanner.png"> </div> --%>
<%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
           	<%@ include file="BuddyPublicSideMenu.jsp" %>

      
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
                
                
                	<div class="col-md-12">
                     	<h1 class="noBorder">${UserInfo.firstName} ${UserInfo.lastName}</h1><h4 style="text-align: right;"><a href="javascript:getPDF()">Click to download details</a></h4>
                     
                     
                     	<div class="col-md-5 statusUpdateBox colon">
                     	<script type="text/javascript">
                     	var roleinfotopdf="";
                     	</script>
                            <p><span>Role : </span><strong>
                            <!-- <span> -->
                            <c:forEach var = "roleDetails" items="${UserInfo.userRoleMap}" varStatus = "loop">                      
                            ${roleDetails.role}
                            		<script type="text/javascript">
                            		roleinfotopdf =roleinfotopdf+""+"${roleDetails.role}";
                            		</script>
                            		<c:if test="${!loop.last}">,
                            			<script type="text/javascript">
                            		roleinfotopdf =roleinfotopdf+", ";
                            			</script>	
                            		</c:if>                                          
                        </c:forEach><!-- </span> --></strong></p> 
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
                        <div class="col-md-4 noPadding">
                        	<h5>Batting Performance</h5>
                           <!--  --><br><span id="battingYearId">&nbsp</span>
                            </div>
                            <script type="text/javascript">
                       var battingrowObj=[];
                       var bowingrowObj=[];
                       var oDIobj=[];
                       var battingmatidList=[];
                       var bowlingmatidList=[];
                       var battingMatchesInfo=[];
                       </script>
                         <%-- <div class="col-md-5 drop pull-right">
                         	<div class="selectdiv">
                                    <select class="selectboxdiv" id="battingYears" onchange="yearWiseBatting(this.value)">
                                        <option>Years</option>
                                        <c:forEach var = "years" items="${yearsList}">
                                        
                                            <option value="${years}">${years}</option>
                                        </c:forEach>
                                       
                                    </select>
                                    <div class="out">Years</div>    
                                </div>
                         </div> --%>
                         <div class="col-md-12 noPadding MyScor-table">
                       <c:choose>  <c:when test="${battingPerformanceListSize eq 0 }">
                       <table>
                            	<thead>
                                	<tr>
                                    	<th>Date</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>POS</th>
                                        <th>RUNS</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>DISMISSAL TYPE</th>
                                        <th>SR</th>
                                        <th>MAN OF THE MATCH</th>
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
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>POS</th>
                                        <th>RUNS</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>DISMISSAL TYPE</th>
                                        <th>SR</th>
                                        <th>MAN OF THE MATCH</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                
                                <c:forEach var="batting" items="${battingPerformanceList}">
                                	<tr><td><fmt:formatDate value="${batting.gamedate}"
														pattern="MM/dd/yyyy" /></td>
                                    	<td>${batting.tournamentName}</td>
                                    	
                                    	
                                        <td>${batting.leagueBoardName}</td>
                                      
                                      <c:choose>
                                        <c:when test="${batting.positionOfStand == '' || batting.positionOfStand == 'null' || batting.positionOfStand == 'NO'}">
                                       <td>-</td>
                                        </c:when>
                                        <c:otherwise>
                                          <td>${batting.positionOfStandOrder}</td>
                                       
                                        </c:otherwise>
                                        
                                        </c:choose>
                                        
                                      <%--   <td>${batting.positionOfStand}</td> --%>
                                        <td>${batting.runs}</td>
                                        <td>${batting.fours}</td>
                                        <td>${batting.sixs}</td>
                                        <td>${batting.dismissType}</td>
                                        <td><fmt:formatNumber type="number" pattern="##########.##" value="${batting.strikeRate}" /></td>
                                        <c:choose><c:when test="${batting.manOftheMatch eq 0 }">
                                        <td></td>
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
                                    			strikeRate : "<fmt:formatNumber type='number' pattern='##########.##' value='${batting.strikeRate}' />"
                                        		}		 
                                     );
                                     battingmatidList.push("${batting.matchId}");
                                     </script>
                                    </c:forEach>
                                </tbody>
                            </table>
                         	<!-- <button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreBattings()">LOAD MORE</button> -->
                     
                     <c:forEach items="${BattingMatchesScoreList}" var="score">
                     		  <script type="text/javascript">
                     		  
                     		  var batsmanlist=[];
                     		  var bowlwerlist=[];
                     		  var batsmanlist2=[];
                    		  var bowlwerlist2=[];
                    		  var followofWicketsArr=[];
                    		  var followofWicketsArr2=[];
                     		  </script>
                     		  
                     		  <c:forEach items="${score.firstInnings.battingPlayer}" var="player">
                     		  	<script type="text/javascript">
                     		  
                     		  	batsmanlist.push({                     		  		
                     		  			playerId : "${player.playerId}",
                     		  			playerName : "${player.playerName}",
                     		  			ballNumber : "${player.ballNumber}",
                     		  			battingOvers : "${player.battingOvers}",
                     		  			fours : "${player.fours}",
                     		  			six : "${player.six}",
                     		  			wicketBy : "${player.wicketBy}",
                     		  			strikeRate : "${player.strikeRate}",
                     		  			runs : "${player.runs}",
                     		  		 });
                     		  </script>
                     		  </c:forEach>
                     		  <c:forEach items="${score.firstInnings.bowlingPlayer}" var="player">
                     		  	<script type="text/javascript">
                     		  
                     		  	bowlwerlist.push({                     		  		
                     		  		playerId : "${player.playerId}",
                 		  			playerName : "${player.playerName}",
                 		  			matchId : "${player.matchId}",
                 		  			bowlingOvers : "${player.bowlingOvers}",
                 		  			wickets : "${player.wickets}",
                 		  			six : "${player.six}",
                 		  			average : "${player.average}",
                 		  			meidan : "${player.meidan}",
                 		  			econamyRate : "${player.econamyRate}",
                 		  			zeroRuns : "${player.zeroRuns}",
                 		  			four : "${player.four}"
                     		  		 });
                     		  </script>
                     		  </c:forEach>
                     		  <%--  <c:forEach items="${score.firstInnings.followOfWickets}" var="followofWickets">
                     		   		followofWicketsArr.push({
                     		   		
                     		   		});
                     		   </c:forEach>
                     		   <c:forEach items="${score.secondInnings.followOfWickets}" var="followofWickets">
                     		   </c:forEach> --%>
                     		  <c:forEach items="${score.secondInnings.battingPlayer}" var="player">
                     		  	<script type="text/javascript">
                     		  
                     		  		 batsmanlist2.push({                     		  		
                     		  			playerId : "${player.playerId}",
                     		  			playerName : "${player.playerName}",
                     		  			ballNumber : "${player.ballNumber}",
                     		  			battingOvers : "${player.battingOvers}",
                     		  			fours : "${player.fours}",
                     		  			six : "${player.six}",
                     		  			wicketBy : "${player.wicketBy}",
                     		  			strikeRate : "${player.strikeRate}",
                     		  			runs : "${player.runs}",
                     		  		 });
                     		  </script>
                     		  </c:forEach>
                     		  <c:forEach items="${score.secondInnings.bowlingPlayer}" var="player">
                     		  	<script type="text/javascript">
                     		  /* 	private UUID playerId;
                     			private String playerName;
                     			private UUID matchId;
                     			private double bowlingOvers;	
                     			private int wickets;
                     			private double average;	
                     			private int runs;
                     			private int meidan;
                     			private String econamyRate;
                     			private int zeroRuns;
                     			private int four;
                     			private int six; */
                     		  	bowlwerlist2.push({                     		  		
                     		  			playerId : "${player.playerId}",
                     		  			playerName : "${player.playerName}",
                     		  			matchId : "${player.matchId}",
                     		  			bowlingOvers : "${player.bowlingOvers}",
                     		  			wickets : "${player.wickets}",
                     		  			six : "${player.six}",
                     		  			average : "${player.average}",
                     		  			meidan : "${player.meidan}",
                     		  			econamyRate : "${player.econamyRate}",
                     		  			zeroRuns : "${player.zeroRuns}",
                     		  			four : "${player.four}"
                     		  		 });
                     		  </script>
                     		  </c:forEach>
                     		  <script type="text/javascript">
                     			  battingMatchesInfo.push({
                     				 firstInnings: {
                     					battingTeamId : "${score.firstInnings.battingTeamId}",
                     					battingTeamName : "${score.firstInnings.battingTeamName}",
                     					bowlingTeamId : "${score.firstInnings.bowlingTeamId}",
                     					bowlingTeamName : "${score.firstInnings.bowlingTeamName}",
                     					rpo : "${score.firstInnings.rpo}",
                     					totalOvers : "${score.firstInnings.totalOvers}",
                     					totalRuns : "${score.firstInnings.totalRuns}",
                     					totalWickets : "${score.firstInnings.totalWickets}",
                     					battingPlayer:batsmanlist,
                     					bowlingPlayer : bowlwerlist,
                     					followOfWickets : [
                     					                   
                     					                   ]
                     					
                     				 },
                     				secondInnings: {
                     					battingTeamId : "${score.secondInnings.battingTeamId}",
                     					battingTeamName : "${score.secondInnings.battingTeamName}",
                     					bowlingTeamId : "${score.secondInnings.bowlingTeamId}",
                     					bowlingTeamName : "${score.secondInnings.bowlingTeamName}",
                     					rpo : "${score.secondInnings.rpo}",
                     					totalOvers : "${score.secondInnings.totalOvers}",
                     					totalRuns : "${score.secondInnings.totalRuns}",
                     					totalWickets : "${score.secondInnings.totalWickets}",
                     					battingPlayer:batsmanlist2,
                     					bowlingPlayer : bowlwerlist2
                     				},
                     					
                     				rpo :"${score.rpo}",
                     				totalOvers :"${score.totalOvers}",
                     				totalRuns :"${score.totalRuns}", 
                     				matchDetails : {
                                        active: "${score.matchDetails.active}",
                                        noOfOvers: "${score.matchDetails.noOfOvers}",
                                        tournamentName: "${score.matchDetails.tournamentName}",
                                        loseTeamOvers: "${score.matchDetails.loseTeamOvers}",
                                        loseTeamRuns: "${score.matchDetails.loseTeamRuns}",
                                        loseTeamWickets: "${score.matchDetails.loseTeamWickets}",
                                        winTeamOvers: "${score.matchDetails.winTeamOvers}",
                                        winTeamRuns: "${score.matchDetails.winTeamRuns}",
                                        winTeamWickets: "${score.matchDetails.winTeamWickets}",
                                        innings: "${score.matchDetails.innings}",
                                        matchDate: "${score.matchDetails.matchDate}"
                                    }
                     			  
                     			  });                     			
                     			</script>                     
                     </c:forEach>
                     
                     			
                       </c:otherwise>
                         
                         </c:choose>
                         	
                         
                         </div>
                         
                          
                      
                        <div class="col-md-4 noPadding">
                        	<h5>Bowling Performances</h5>
                           <!--  --><br><span id="bowlingYearId"></span>
                            </div>
                         <%-- <div class="col-md-5 drop pull-right">
                         	<div class="selectdiv">
                                    <select class="selectboxdiv" onchange="yearWiseBowling(this.value)">
                                        <option>Years</option>
                                        <c:forEach var = "years" items="${yearsList}">
                                        
                                            <option value="${years}">${years}</option>
                                        </c:forEach>
                                       
                                    </select>
                                    <div class="out">Years</div>    
                                </div>
                         </div> --%>
                         <div class="col-md-12 noPadding MyScor-table">
                         	
                         	<c:choose>  <c:when test="${bowlingPerformanceListSize eq 0 }">
                         	<table>
                            	<thead>
                                	<tr>
                                    	<th>DATE</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>OVERS</th>
                                        <th>MAIDENS</th>
                                        <th>RUNS</th>
                                        <th>WICKETS</th>
                                       	<th>SR</th>
                                        <th>MAN OF THE MATCH</th>
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
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>OVERS</th>
                                        <th>MAIDENS</th>
                                        <th>RUNS</th>
                                        <th>WICKETS</th>
                                       	<th>SR</th>
                                        <th>MAN OF THE MATCH</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                <c:forEach var="bowling" items="${bowlingPerformanceList}">
                                	<tr><td><fmt:formatDate value="${bowling.gameDate}"
														pattern="MM/dd/yyyy" /></td>
                                    	<td>${bowling.tournamentName}</td>
                                        
                                        <td>${bowling.leagueBoardName}</td>
                                       
                                        <td>${bowling.bowlerovers}</td>
                                        <td>${bowling.maidenOvers}</td>
                                        <td>${bowling.bowlingruns}</td>
                                        <td>${bowling.wickets}</td>
                                        <td><fmt:formatNumber type="number" pattern="##########.##" value="${bowling.strikeRate}" /></td>
                                       <c:choose><c:when test="${bowling.manOftheMatch eq 0 }">
                                        <td></td>
                                        </c:when><c:otherwise>
                                        <td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>
                                        </c:otherwise>
                                        </c:choose>
                                        <td><img src="${pageContext.request.contextPath}/images/scorecard.png" onclick="showScoreCard('${bowling.matchId}')"></td>
                                    </tr>
                                     <script type="text/javascript">
                                     bowingrowObj.push(
                                    		{
                                    			gameDate : "<fmt:formatDate value='${bowling.gameDate}' pattern='MM/dd/yyyy' />",
                                    			tournamentName : "${bowling.tournamentName}",
                                    			leagueBoardName : "${bowling.leagueBoardName}",
                                    			bowlerovers : "${bowling.bowlerovers}",
                                    			maidenOvers : "${bowling.maidenOvers}",
                                    			bowlingruns : "${bowling.bowlingruns}",
                                    			wickets : "${bowling.wickets}",
                                    			strikeRate : "${bowling.strikeRate}"
                                    			
                                        		}		 
                                     );
                                     </script>
                                    </c:forEach>
                                </tbody>
                            </table>
                         	<!-- <button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreBowlings()">LOAD MORE</button> -->
                       </c:otherwise>
                         
                         </c:choose>    
                            
                         </div>
                         
                        <div class="col-md-12 statusUpdateBox noPadding">
                        <div class="buluback">Achievement</div>
                            	<div class="col-md-12 noPadding AchHead">
                                	<!-- <h4>ODI Series Match Record</h4> -->
                                	
                                	<c:choose>  <c:when test="${achievementsListSize eq 0 }">
                         	<table>
                            	<thead>
                                	<tr>
                                    	<th>DATE</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>OVERS</th>
                                        <th>MAIDENS</th>
                                        <th>RUNS</th>
                                        <th>WICKETS</th>
                                       	<th>SR</th>
                                        <th>MAN OF THE MATCH</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead></table>
                         	<span style="color:red">No Details Available</span>
                  
                       
                       </c:when>
                       
                       <c:otherwise>
                       <table id="achievementsTable">
                            	<thead>
                                	<tr>
                                    	<th>DATE</th>
                                        <th>TROPHY</th>
                                        <th>LEAGUE</th>
                                        <th>OVERS</th>
                                        <th>MAIDENS</th>
                                        <th>RUNS</th>
                                        <th>WICKETS</th>
                                       	<th>SR</th>
                                        <th>MAN OF THE MATCH</th>
                                        <th>SCORE CARD</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                <c:forEach var="achieve" items="${achievementsList}">
                                	<tr><td><fmt:formatDate value="${achieve.gameDate}"
														pattern="MM/dd/yyyy" /></td>
                                    	<td>${achieve.tournamentName}</td>
                                      
                                    	
                                        <td>${achieve.leagueBoardName}</td>
                                        
                                        <td>${achieve.bowlerovers}</td>
                                        <td>${achieve.maidenOvers}</td>
                                        <td>${achieve.bowlingruns}</td>
                                        <td>${achieve.wickets}</td>
                                        <td><fmt:formatNumber type="number" pattern="##########.##" value="${achieve.strikeRate}" /></td>
                                        <c:choose><c:when test="${achieve.manOftheMatch eq 0 }">
                                        <td></td>
                                        </c:when><c:otherwise>
                                        <td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>
                                        </c:otherwise>
                                        </c:choose>
                                        <td><img src="${pageContext.request.contextPath}/images/scorecard.png" onclick="showScoreCard('${achieve.matchId}')"></td>
                                    </tr>
                                    <script type="text/javascript">
                                    oDIobj.push(
                                    		{
                                    			gameDate : "<fmt:formatDate value='${bowling.gameDate}' pattern='MM/dd/yyyy' />",
                                    			tournamentName : "${bowling.tournamentName}",
                                    			leagueBoardName : "${bowling.leagueBoardName}",
                                    			bowlerovers : "${bowling.bowlerovers}",
                                    			maidenOvers : "${bowling.maidenOvers}",
                                    			bowlingruns : "${bowling.bowlingruns}",
                                    			wickets : "${bowling.wickets}",
                                    			strikeRate : "${bowling.strikeRate}"
                                    			
                                        		}		 
                                     );
                                    </script>
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



<script>
function showScoreCard(id){
	 window.location.href = "${pageContext.request.contextPath}/showScoreCard/matchId/"+id;
}
var startBat = 0;
var endBat = 10;

function loadMoreBattings(){
	
	var add = 10;
	var startNode = startBat+add;
	var endNode = endBat+add;
	
	var gameBean = {
			startNode : startNode,
			endNode : endNode,
	}
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/paginationBattingPerformance",
		data : JSON.stringify(gameBean),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
				 html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISSAL TYPE</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
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
					 
					 html += '<tr><td>'+dateChange+'</td>';
					 html += '<td>'+res[i].tournamentName+'</td>';
					 
						 html += '<td>'+res[i].leagueBoardName+'</td>';
					
						 if(res[i].positionOfStand == '' || res[i].positionOfStand == 'null' || res[i].positionOfStand == 'NO'){
							 html += '<td>-</td>';
							 
						 }else{
							 html += '<td>'+res[i].positionOfStandOrder+'</td>';
						 }
					 
					// html += '<td>'+res[i].positionOfStand+'</td>';
					 html += '<td>'+res[i].runs+'</td>';
					 html += '<td>'+res[i].fours+'</td>';
					 html += '<td>'+res[i].sixs+'</td>';
					 html += '<td>'+res[i].dismissType+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td></td>';
					 }else{
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				 html += '</tbody>';
				 html += '</table>';
				
				 $("#battingTable").html(html).trigger('create');
				
				 startBat = startNode;
				 endBat = endNode;
				 
			}else{
				
				var html = '';
				
				 html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISSAL TYPE</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
				 html += '<th>SCORE CARD</th>';
				 html += '</tr></thead></table>';
				 html += '<span style="color:red">No More Details Available</span>';
				 $("#battingTable").html(html).trigger('create');
				
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

	var add = 10;
	var startNode = startBowl+add;
	var endNode = endBowl+add;
	
	var gameBean = {
			startNode : startNode,
			endNode : endNode,
	}
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/paginationBowlingPerformance",
		data : JSON.stringify(gameBean),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
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
				 html += '</tr></thead><tbody align="center">';
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
					 html += '<td>'+res[i].tournamentName+'</td>';
					
						 html += '<td>'+res[i].leagueBoardName+'</td>';
					
					 html += '<td>'+res[i].bowlerovers+'</td>';
					 html += '<td>'+res[i].maidenOvers+'</td>';
					 html += '<td>'+res[i].bowlingruns+'</td>';
					 html += '<td>'+res[i].wickets+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td></td>';
					 }else{
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				 html += '</tbody>';
				 html += '</table>';
				
				 $("#bowlingTable").html(html).trigger('create');
				
				 startBowl = startNode;
				 endBowl = endNode;
				 
			}else{
				var html = '';
				
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
				 $("#bowlingTable").html(html).trigger('create');
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
			
		
	})
}

var startAchieve = 0;
var endAchieve = 10;
function loadMoreAchievements(){
	
	var add = 10;
	var startNode = startAchieve+add;
	var endNode = endAchieve+add;
	
	var gameBean = {
			startNode : startNode,
			endNode : endNode,
	}
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/paginationMatchAchievements",
		data : JSON.stringify(gameBean),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
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
				 html += '</tr></thead><tbody align="center">';
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
					 html += '<td>'+res[i].tournamentName+'</td>';
				     html += '<td>'+res[i].leagueBoardName+'</td>';
					
					 html += '<td>'+res[i].bowlerovers+'</td>';
					 html += '<td>'+res[i].maidenOvers+'</td>';
					 html += '<td>'+res[i].bowlingruns+'</td>';
					 html += '<td>'+res[i].wickets+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td></td>';
					 }else{
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
				 }
				 html += '</tbody>';
				 html += '</table>';
				
				 $("#achievementsTable").html(html).trigger('create');
				
				 startAchieve = startNode;
				 endAchieve = endNode;
				 
			}else{
				
				var html = '';
				
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
				 $("#achievementsTable").html(html).trigger('create');
				
			}
			
			
		},
		error :function(err){
			console.log(err);
		}
			
		
	})
}

function yearWiseBatting(val){
	if(val != 'Years'){
		document.getElementById("battingYearId").innerHTML = val;
	}else{
		document.getElementById("battingYearId").innerHTML = "";
	}
	
	console.log(" Batting years :"+val);

	var year = {
			filterByYear : val,
	}
	$.ajax({
	
		type:"Post",
		url :"${pageContext.request.contextPath}/yearWiseBatting",
		data:JSON.stringify(year),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
				 html += '<table id="battingTable"><thead><tr>';
				 html += '<th>DATE</th>';
				 html += '<th>TROPHY</th>';
				 html += '<th>LEAGUE</th>';
				 html += '<th>POS</th>';
				 html += '<th>RUNS</th>';
				 html += '<th>4s</th>';
				 html += '<th>6s</th>';
				 html += '<th>DISMISSAL TYPE</th>';
				 html += '<th>SR</th>';
				 html += '<th>MAN OF THE MATCH</th>';
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
					 
					 html += '<tr><td>'+dateChange+'</td>';
					 html += '<td>'+res[i].tournamentName+'</td>';
					
						 html += '<td>'+res[i].leagueBoardName+'</td>';
					
						 if(res[i].positionOfStand == '' || res[i].positionOfStand == 'null' || res[i].positionOfStand == 'NO'){
							 html += '<td>-</td>';
							 
						 }else{
							 html += '<td>'+res[i].positionOfStandOrder+'</td>';
						 }
						 
					 //html += '<td>'+res[i].positionOfStand+'</td>';
					 html += '<td>'+res[i].runs+'</td>';
					 html += '<td>'+res[i].fours+'</td>';
					 html += '<td>'+res[i].sixs+'</td>';
					 html += '<td>'+res[i].dismissType+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td></td>';
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
	
	
}


function yearWiseBowling(val){
	console.log(" Bowling Years"+val);
	if(val != 'Years'){
		document.getElementById("bowlingYearId").innerHTML = val;
	}else{
		document.getElementById("bowlingYearId").innerHTML = "";
	}
	var year = {
			filterByYear : val,
	}
	$.ajax({
	
		type:"Post",
		url :"${pageContext.request.contextPath}/yearWiseBowling",
		data:JSON.stringify(year),
		contentType : "application/json",
		success : function(res){
			if(res.length != 0){
				var html = '';
		
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
				 html += '</tr></thead><tbody align="center">';
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
					 html += '<td>'+res[i].tournamentName+'</td>';
					 html += '<td>'+res[i].leagueBoardName+'</td>';
					 html += '<td>'+res[i].bowlerovers+'</td>';
					 html += '<td>'+res[i].maidenOvers+'</td>';
					 html += '<td>'+res[i].bowlingruns+'</td>';
					 html += '<td>'+res[i].wickets+'</td>';
					 html += '<td>'+res[i].strikeRate+'</td>';
					 if(res[i].manOftheMatch == 0){
						 html += '<td></td>';
					 }else{
						 html += '<td><img src="${pageContext.request.contextPath}/images/mfmimg.png" title="mfm"></td>';
					 }
					 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
					 html += '</tr>';
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
	   //alert('getPDF function ');
	   
	   var doc = new jsPDF('p', 'pt','a4');
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
    doc.text(30,70,"Role ");
    doc.text(125,70,": "+roleinfotopdf);
    doc.text(30,100,"Bats");
    doc.text(125,100,": ${SelectedPlayersInfo.player1.battingInfo}");
    doc.text(30,130,"Bowls");
    doc.text(125,130,": ${SelectedPlayersInfo.player1.bowlingInfo}");
    doc.text(30,160,"Country");
    doc.text(125,160,": ${UserInfo.country}");
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
                    {title: "Date", dataKey: "gameDate"},
                    {title: "TROPHY", dataKey: "tournamentName"},
                    {title: "LEAGUE", dataKey: "leagueBoardName"},
                    {title: "OVERS", dataKey: "bowlerovers"},
                    {title: "MAIDENS", dataKey: "maidenOvers"},
                    {title: "RUNS", dataKey: "bowlingruns"},
                    {title: "WICKETS", dataKey: "wickets"},
                    {title: "SR", dataKey: "strikeRate"}
                   		 			  
                ];
    
    var columns3 = [
                    {title: "Date", dataKey: "gameDate"},
                    {title: "TROPHY", dataKey: "tournamentName"},
                    {title: "LEAGUE", dataKey: "leagueBoardName"},
                    {title: "OVERS", dataKey: "bowlerovers"},
                    {title: "MAIDENS", dataKey: "maidenOvers"},
                    {title: "RUNS", dataKey: "bowlingruns"},
                    {title: "WICKETS", dataKey: "wickets"},
                    {title: "SR", dataKey: "strikeRate"}
                   		 			  
                ];
    
    var firstInningbattingcolumn = [
                   {title: "BATSMAN", dataKey: "playerName"},
                   {title: "", dataKey: "wicketBy"},
                   {title: "R", dataKey: "runs"},
                   {title: "B", dataKey: "ballNumber"},
                   {title: "4s", dataKey: "fours"},
                   {title: "6s", dataKey: "sixs"},
                   {title: "SR", dataKey: "strikeRate"}				 			  
               ];
    var firstInningbowlingcolumn = [
                                    {title: "BOWLER", dataKey: "playerName"},
                                    {title: "O", dataKey: "bowlingOvers"},
                                    {title: "M", dataKey: "meidan"},
                                    {title: "R", dataKey: "runs"},
                                    {title: "Econ", dataKey: "econamyRate"},
                                    {title: "W", dataKey: "wickets"},
                                    {title: "0s", dataKey: "zeroRuns"},
                                    {title: "4s", dataKey: "four"},
                                    {title: "6s", dataKey: "six"}				 			  
                                ];
    
    console.log(battingrowObj);
    var yHeight=200;
 			if(battingrowObj.length>0)
 				{
 					
 			    doc.setFontSize(20);
 			    doc.setFont("helvetica");
 			    doc.setFontType("bold");
 			    doc.setTextColor(50,83,168);
 			    doc.text(10,yHeight,"Batting Performance");
 			    doc.setTextColor(0,0,0);
 					
 					
 					  doc.autoTable(columns,battingrowObj, {
 		 			        theme: 'grid',
 		 			        startY: parseInt(yHeight)+parseInt(20),
 		 			        margin: {horizontal: 10},
 		 			        styles: {overflow: 'linebreak'},
 		 			        bodyStyles: {valign: 'top'},
 		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
 		 			        headerStyles: {fillColor: [99, 184, 255]}
 		 			    });
 					
 				
 					  
 					  if(battingrowObj.length<3)
 						  {
							    yHeight=parseInt(battingrowObj.length)*100+yHeight;
 						  }else if(battingrowObj.length>=3)
 							  {
 							 	yHeight=parseInt(battingrowObj.length)*50+yHeight;
 							  }
 					  
 					
 				}
 				
 			 var yHeight2=100;
 			if(bowingrowObj.length>0)
				{
 				if(yHeight > 200)
					{
					
						if(battingrowObj.length<=4)
							{
								yHeight2=yHeight;
							}else{
								doc.addPage();
							}
					}else{
						yHeight2=yHeight;
					}
			    doc.setFontSize(20);
			    doc.setFont("helvetica");
			    doc.setFontType("bold");
			    doc.setTextColor(50,83,168);
			    doc.text(10,yHeight2,"Bowling Performance");
			    doc.setTextColor(0,0,0);
					
					
					  doc.autoTable(columns2,bowingrowObj, {
		 			        theme: 'grid',
		 			        startY: parseInt(yHeight2)+parseInt(30),
		 			        margin: {horizontal: 10},
		 			        styles: {overflow: 'linebreak'},
		 			        bodyStyles: {valign: 'top'},
		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
		 			        columnStyles: {email: {columnWidth: 'wrap'}},
		 			        headerStyles: {fillColor: [99, 184, 255]}
		 			    });
					  if(bowingrowObj.length<5)
						  {
						  	  yHeight2=parseInt(bowingrowObj.length)*50+yHeight2;
						  }else{
							  yHeight2=parseInt(bowingrowObj.length)*35+yHeight2;	  
						  }
					  
				}else{
					//yHeight=200;
				}
 					 
 					
 			yHeight3=100;
 			if(oDIobj.length>0)
			{
 				if(yHeight > 200){
						doc.addPage();
				}else{
					    yHeight3=yHeight;
				} 
		    doc.setFontSize(20);
		    doc.setFont("helvetica");
		    doc.setFontType("bold");
		    doc.setTextColor(50,83,168);
		  //  doc.text(10,yHeight,"ODI Series Match Record");
		    doc.setTextColor(0,0,0);
				
				
				  doc.autoTable(columns3,oDIobj, {
	 			        theme: 'grid',
	 			        startY: parseInt(yHeight3)+parseInt(20),
	 			        margin: {horizontal: 10},
	 			        styles: {overflow: 'linebreak'},
	 			        bodyStyles: {valign: 'top'},
	 			        alternateRowStyles: {fillColor: [233, 234, 237]},
	 			        columnStyles: {email: {columnWidth: 'wrap'}},
	 			        headerStyles: {fillColor: [99, 184, 255]}
	 			    });
				  yHeight3=parseInt(oDIobj.length)*35+yHeight3;
			}else{
				//yHeight=200;
			}
 			
/* 	console.log('hieght ::: '+yHeight);
	   doc.setFontSize(20);
	    doc.setFont("helvetica");
	    doc.setFontType("bold");
	    doc.setTextColor(50,83,168);
	    doc.text(10,yHeight,"Bowlling Performance");
	    doc.setTextColor(0,0,0); */
	    
	    
	    
	
		if(battingrowObj.length>0){
			
		 // var response= getMatchInfo(battingmatidList);
		  console.log('response value : ');
		  //console.log(response);
		 
						 for(var i in battingMatchesInfo)
					    	{
					    	    doc.addPage();
							  // for heading line
							    doc.setFontSize(20);
							    doc.setFont("helvetica");
							    doc.setFontType("bold");
							    doc.setTextColor(50,83,168);
							    doc.text(10,50,"Match Summary");
							// tournment name 
							    doc.setFontSize(18);
							    doc.setFontType("normal");
							    doc.setTextColor(0,0,0);
							    doc.text(10,70,"Tournment name  : ");
							    doc.text(150,70,battingMatchesInfo[i].matchDetails.tournamentName);
							    
							 // tournment  date 
							    doc.setFontSize(16);
							    doc.setFontType("normal");
							    doc.setTextColor(0,0,0);
							    doc.text(10,90,"Match Date : ");
							    doc.text(125,90,battingMatchesInfo[i].matchDetails.matchDate);
							    
							    // for displaying team name and score
							 
							    doc.setTextColor(0,0,0);
							    doc.setFontSize(16);
							    doc.setFontType("bold");
							    doc.text(10,110,battingMatchesInfo[i].firstInnings.battingTeamName +" :");
							    doc.text(300,110, battingMatchesInfo[i].secondInnings.battingTeamName +" :");
							    doc.setFontSize(16);
							    doc.setFontType("normal");
							    var bathead=parseInt(battingMatchesInfo[i].firstInnings.battingTeamName.length)*3;
							    var bathead2=parseInt(battingMatchesInfo[i].secondInnings.battingTeamName.length)*3;
							    console.log('againest team -- > '+bathead2);
							    doc.text(parseInt(bathead)+parseInt(110),110,battingMatchesInfo[i].firstInnings.totalRuns+"/" +battingMatchesInfo[i].firstInnings.totalOvers);
							    doc.text(parseInt(bathead2)+parseInt(400),110,battingMatchesInfo[i].secondInnings.totalRuns+"/"+battingMatchesInfo[i].secondInnings.totalOvers);
					    
							    
							    // first innings
							    
							    doc.setFontSize(16);
							    doc.setFont("helvetica");
							    doc.setFontType("bold");
							    doc.setTextColor(50,83,168);
							    doc.text(10,130,"Firstinnings");
							    
							    doc.autoTable(firstInningbattingcolumn, battingMatchesInfo[i].firstInnings.battingPlayer, {
							        theme: 'grid',
							        startY: 145,
							        margin: {horizontal: 10},
							        styles: {overflow: 'linebreak'},
							        bodyStyles: {valign: 'top'},
							        alternateRowStyles: {fillColor: [233, 234, 237]},
							        columnStyles: {email: {columnWidth: 'wrap'}},
							        headerStyles: {fillColor: [99, 184, 255]}
							    });
							    // for displaying batting score							    
							 /*    doc.setTextColor(218, 58, 64);
							    doc.setFontSize(14);
							    doc.rect(60, 385, 60, 340, 'F');
							    doc.setDrawColor(165,14,21);
							    doc.setFontType("normal");
							    doc.text(60,380,"Current Partnership 94 rens , 14.2 Overs RR :6.55(rajasundaram 138 , Ashwin 51)");
							     */
							   var  scroreHeight=180;
						 			if(battingMatchesInfo[i].firstInnings.battingPlayer.length>0)
									{
						 				
											scroreHeight=parseInt(battingMatchesInfo[i].firstInnings.battingPlayer.length)*20+parseInt(scroreHeight);
										 
						 				
									}else{
										scroreHeight=scroreHeight;
									}
							     doc.setDrawColor(8, 110, 194);
							     doc.setFillColor(76, 159, 225);
							     doc.rect(10, scroreHeight, 575.5, 40, 'F');
							     doc.setTextColor(255,255,255);
							     doc.setFontSize(12);
							     doc.text(20,parseInt(scroreHeight)+parseInt(23),"Total Score ("+battingMatchesInfo[i].firstInnings.totalWickets+" wickets; "+battingMatchesInfo[i].firstInnings.totalOvers+" overs; 0 mins)");
							     doc.setFillColor(34,78,107);
							     doc.roundedRect(245, parseInt(scroreHeight)+parseInt(10), 40, 20, 3, 3, 'F');
							     doc.setFontSize(14);
							     //total score
							     doc.text(253,parseInt(scroreHeight)+parseInt(23),battingMatchesInfo[i].firstInnings.totalRuns);
							     doc.setFontSize(12);
							     doc.text(290,parseInt(scroreHeight)+parseInt(23),"("+battingMatchesInfo[i].firstInnings.rpo+" Runs per over)");
							    /*  var y = "Fall of wickets 1-83 (Subramaniam, 34.2 ov), 2-96 ( Kondapalli, 37.5 ov), 3-146 (Ashok Kumar, 126.1 ov), 4-219 (Sadasivam, 138.2 ov)";
							 	lines = doc.setFont('Times', 'Roman').setFontSize(14).setTextColor(218, 58, 64).splitTextToSize(y, 460);
							 	doc.text(15, 330, lines); */
							     
							     
							    doc.autoTable(firstInningbowlingcolumn, battingMatchesInfo[i].firstInnings.bowlingPlayer, {
							        theme: 'grid',
							        startY: 430,
							        margin: {horizontal: 10},
							        styles: {overflow: 'linebreak'},
							        bodyStyles: {valign: 'top'},
							        alternateRowStyles: {fillColor: [233, 234, 237]},
							        columnStyles: {email: {columnWidth: 'wrap'}},
							        headerStyles: {fillColor: [99, 184, 255]}
							    });
							    		    
							    
							    doc.addPage();
							    
							    
 								// second innings
							   
 								doc.setFontSize(16);
							    doc.setFont("helvetica");
							    doc.setFontType("bold");
							    doc.setTextColor(50,83,168);
							    doc.text(10,50,"Secondinnings");
							    
							    doc.autoTable(firstInningbattingcolumn, battingMatchesInfo[i].secondInnings.battingPlayer, {
							        theme: 'grid',
							        startY: 130,
							        margin: {horizontal: 10},
							        styles: {overflow: 'linebreak'},
							        bodyStyles: {valign: 'top'},
							        alternateRowStyles: {fillColor: [233, 234, 237]},
							        columnStyles: {email: {columnWidth: 'wrap'}},
							        headerStyles: {fillColor: [99, 184, 255]}
							    });
							    
							    
							    /*  doc.setDrawColor(8, 110, 194);
							     doc.setFillColor(76, 159, 225);
							     doc.rect(10, 273, 575.5, 40, 'F');
							     doc.setTextColor(255,255,255);
							     doc.setFontSize(12);
							     doc.text(20,295,"Total Score ("+battingMatchesInfo[i].secondInnings.totalWickets+" wickets; "+battingMatchesInfo[i].secondInnings.totalOvers+" overs; 0 mins)");
							     doc.setFillColor(34,78,107);
							     doc.roundedRect(245, 283, 40, 20, 3, 3, 'F');
							     doc.setFontSize(14);
							     doc.text(255,297,battingMatchesInfo[i].secondInnings.totalRuns);
							     doc.setFontSize(12);
							     doc.text(290,295,"("+battingMatchesInfo[i].secondInnings.rpo+" Runs per over)"); */
							    /*  var y = "Fall of wickets 1-83 (Subramaniam, 34.2 ov), 2-96 ( Kondapalli, 37.5 ov), 3-146 (Ashok Kumar, 126.1 ov), 4-219 (Sadasivam, 138.2 ov)";
							 	lines = doc.setFont('Times', 'Roman').setFontSize(14).setTextColor(218, 58, 64).splitTextToSize(y, 460);
							 	doc.text(15, 330, lines); */
							 	var  scroreHeight2=180;
					 			if(battingMatchesInfo[i].secondInnings.battingPlayer.length>0)
								{
					 				
					 				scroreHeight2=parseInt(battingMatchesInfo[i].secondInnings.battingPlayer.length)*20+parseInt(scroreHeight2);
									 
					 				
								}else{
									scroreHeight2=scroreHeight2;
								}
						     doc.setDrawColor(8, 110, 194);
						     doc.setFillColor(76, 159, 225);
						     doc.rect(10, scroreHeight2, 575.5, 40, 'F');
						     doc.setTextColor(255,255,255);
						     doc.setFontSize(12);
						     doc.text(20,parseInt(scroreHeight2)+parseInt(23),"Total Score ("+battingMatchesInfo[i].secondInnings.totalWickets+" wickets; "+battingMatchesInfo[i].secondInnings.totalOvers+" overs; 0 mins)");
						     doc.setFillColor(34,78,107);
						     doc.roundedRect(245, parseInt(scroreHeight2)+parseInt(10), 40, 20, 3, 3, 'F');
						     doc.setFontSize(14);
						     //total score
						     doc.text(253,parseInt(scroreHeight2)+parseInt(23),battingMatchesInfo[i].secondInnings.totalRuns);
						     doc.setFontSize(12);
						     doc.text(290,parseInt(scroreHeight2)+parseInt(23),"("+battingMatchesInfo[i].secondInnings.rpo+" Runs per over)");
						    /*  var y = "Fall of wickets 1-83 (Subramaniam, 34.2 ov), 2-96 ( Kondapalli, 37.5 ov), 3-146 (Ashok Kumar, 126.1 ov), 4-219 (Sadasivam, 138.2 ov)";
						 	lines = doc.setFont('Times', 'Roman').setFontSize(14).setTextColor(218, 58, 64).splitTextToSize(y, 460);
						 	doc.text(15, 330, lines); */
							    
							    doc.autoTable(firstInningbowlingcolumn, battingMatchesInfo[i].secondInnings.bowlingPlayer, {
							        theme: 'grid',
							        startY: 430,
							        margin: {horizontal: 10},
							        styles: {overflow: 'linebreak'},
							        bodyStyles: {valign: 'top'},
							        alternateRowStyles: {fillColor: [233, 234, 237]},
							        columnStyles: {email: {columnWidth: 'wrap'}},
							        headerStyles: {fillColor: [99, 184, 255]}
							    });
							    
					    	}
						 
						
		   }
		   
		  
		
	    doc.save('CricketSocial-${UserInfo.firstName}.pdf');
   }
   
   </script>
   
   <script type="text/javascript">
   $(function(){
	   //getPDF();
   });
   
   function getMatchInfo(matchIdList){
	   //alert(ctx+'    ---'+matchIdList);
	   var datainfo={
			//   matchIdList : ["d9f12b37-5bc8-4e65-b79f-0b7bc4863d29","d9f12b37-5bc8-4e65-b79f-0b7bc4863d29"]
			   matchIdList:  matchIdList
		};
		var postinfo=JSON.stringify(datainfo);	
	   $.ajax({
			type : "POST",
			url :ctx+"/getMatchDetailsInfo",
			dataType: "json",
	        contentType: "application/json; charset=utf-8",
	        data : postinfo,
			success : function(res) {
				console.log('matchlist info');
				console.log(res);	
				return res;
			},
			error:function(response){
				console.log("Your request failed due to some service problem"+JSON.stringify(response));
			},
		
		});	   
   }
   </script>
   <!--Select Box-->
<%@ include file ="Footer.jsp" %>
</body>
</html>
