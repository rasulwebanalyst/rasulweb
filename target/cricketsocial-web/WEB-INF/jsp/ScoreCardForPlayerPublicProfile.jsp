 <!DOCTYPE html>
 <%@taglib uri="http://example.com/functions" prefix="f" %>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>s
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
 
 <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">  -->
<title>Cricket Social</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
	
	<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
       <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
  <style>

table{
font-size: 12px;
}
</style>
<style>

.dropbtn {
    color: blue;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 200px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 9;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}




</style>
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
	  var strTime = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear()+" "+ hours + ':' + minutes + ' ' + ampm;
	  return strTime;
	}
	function test(gamedate){
		console.log(gamedate)
		var date = $("#formatDate_").html();	
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	console.log(gettingFromServer);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	}
	
	function calculateage(dob)
	{
		
		var birthdate=new Date(dob); 
		var birthda=birthdate.getDate();
		var birthmonth=birthdate.getMonth();
		var birthyear=birthdate.getFullYear()
		
		var date=new Date();
		var nowdate=date.getDate();
		var nowmonth=date.getMonth();
		var nowyear=date.getFullYear();
		
		var age=nowyear-birthyear;
		var agemonth=nowmonth-birthmonth;
		var agedate=nowdate-birthda;
		
		 if(agemonth < 0 || (agemonth == 0 && agedate < 0))
			 {
			 age=parseInt(age)-1;
			 }
		return age;
	}
	 
</script>
<%@ include file="BuddyHeader.jsp" %>

    <section class="middleContentBlock">
    
    <div class="profileBanner">
     	
        
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
        
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                 <%@ include file="BuddyPublicSideMenu.jsp" %>

                 
                 <div class="col-md-10 pull-right">
     
     
     				 
                        
                          <div class="col-md-12  whiteBox">
                     	<h1 class="noBorder">${UserInfo.firstName} ${UserInfo.lastName}</h1>
                     
                     <div class="col-md-8 statusUpdateBox colon">
                     
                     <p><span><strong>Age </strong> </span> <script> document.writeln(calculateage("${UserMatchInfo.dob}"))</script></p>
                     
                            <p><span><strong>Playing role  </strong></span><c:forEach var = "roleDetails" items="${UserInfo.userRoleMap}" varStatus = "loop">                      
                            ${roleDetails.role}<c:if test="${!loop.last}">,</c:if>                                          
                        </c:forEach></p> 
                            <p><span><strong>Batting</strong> </span> ${SelectedPlayersInfo.player1.battingInfo}</p> 
                            <p><span><strong>Bowling </strong></span> ${SelectedPlayersInfo.player1.bowlingInfo}</p>
                            <p><span><strong>Country </strong></span> ${UserInfo.country}</p>

								<c:if test="${UserInfo.enableEmailAddress eq 1}">
									<p>
										<span><strong>E-mail </strong></span> ${UserInfo.emailAddress}
									</p>
								</c:if>

								<c:if test="${UserInfo.enablePhoneNo eq 1}">
									<c:choose>
										<c:when test="${UserInfo.phoneNumber eq 0}">
											<p>
												<span style="width: 100px;"><strong>Phone Number</strong> </span> 
											</p>
										</c:when>
										<c:otherwise>
											<p>
												<span style="width: 100px;"><strong>Phone Number </strong></span> ${UserInfo.phoneNumber}
											</p>
										</c:otherwise>
									</c:choose>
								</c:if>
								
								
                             <p><span><strong>MOM  </strong></span>  ${UserMatchInfo.manofMatchCount}</p>
                             
                             
                             <!-- Team Associate -->
                             
                             <div style="margin-bottom: 40px;"><p><span style="float:left; width: 134px; margin-right: 5px; clear:both"><strong>Teams Associated</strong> </span>  
                              <c:choose>
                             <c:when test="${fn:length(UserMatchInfo.teamBoardList) gt 2}">
                             
                             <c:forEach items="${UserMatchInfo.teamBoardList}" var="teams" varStatus="loop" begin="0" end="1">
                             <div style="float:left;">${teams.boardName}<c:if test="${!loop.last}">,&nbsp;</c:if></div>
                             </c:forEach>
                             
				   <div style="float:left;" class="dropdown">
				  <a style="font-size: 12px; color: #4c9fe1;" href="#" class="dropbtn">more</a>
				  <div class="dropdown-content">
				  <c:forEach items="${UserMatchInfo.teamBoardList}" var="teams" begin="2">
				    <a href="#">${teams.boardName}</a> 
				   
				     </c:forEach>
				    
				  </div>
				</div>
                             </c:when>
                             <c:otherwise>
                             
                             <c:forEach items="${UserMatchInfo.teamBoardList}" var="teams" varStatus="loop">
                          <div style="float:left;">   ${teams.boardName}<c:if test="${!loop.last}">,</c:if></div>
                             </c:forEach>
                             
                             </c:otherwise>
                             
                             </c:choose> 
                             </p>
                             </div>
                             
                             
                             <!-- Leage Associate -->
                             
                             <div><p><span style="float:left; width: 134px; margin-right: 5px; clear:both"><strong>Leagues Associated</strong> </span>  
                              <c:choose>
                             <c:when test="${fn:length(UserMatchInfo.leagueBoardList) gt 2}">
                             
                             <c:forEach items="${UserMatchInfo.leagueBoardList}" var="leagues" varStatus="loop" begin="0" end="1">
                             <div style="float:left;">${leagues.boardName}<c:if test="${!loop.last}">,&nbsp;</c:if></div>
                             </c:forEach>
                             
				   <div style="float:left;" class="dropdown">
				  <a style="font-size: 12px; color: #4c9fe1;" href="#" class="dropbtn">more</a>
				  <div class="dropdown-content">
				  <c:forEach items="${UserMatchInfo.leagueBoardList}" var="leagues" begin="2">
				    <a href="#">${leagues.boardName}</a> 
				   
				     </c:forEach>
				    
				  </div>
				</div>
                             </c:when>
                             <c:otherwise>
                             
                             <c:forEach items="${UserMatchInfo.leagueBoardList}" var="leagues" varStatus="loop">
                            <div style="float:left;"> ${leagues.boardName}<c:if test="${!loop.last}">,</c:if></div>
                             </c:forEach>
                             
                             </c:otherwise>
                             
                             </c:choose> 
                             </p>
                             </div>
								
								
							</div> 
                     
                     	
                        
                        <div class="col-md-4 feedcube">
                           <%--  <div class="cube bulucolor">${UserMatchInfo.playedMatches}<br><p>Matches</p></div>
                            <div class="cube greencolor">${UserMatchInfo.totalMadeRuns}<br> <p>Runs</p></div>
                            <div class="cube redcolor">${UserMatchInfo.totalWicketTaken}<br> <p>Wickets<p></div> --%>
                            
                            
                            <div class="pull-left cube-holder">
                            <div class="cube color5">${UserMatchInfo.playedMatches}</div>
                            <p style="font-size: 12px;">Matches</p>
                           	</div>
                           	<div class="pull-left cube-holder">
                            <div class="cube color5">${UserMatchInfo.totalMadeRuns}</div>
                            <p style="font-size: 12px;">Runs</p>
                            </div>
                           	<div class="pull-left cube-holder">
                            <div class="cube color5">${UserMatchInfo.totalWicketTaken}</div> 
                            <p style="font-size: 12px;">Wickets<p>
                            </div>
                            <div class="clearfix"></div>
                           	<div class="pull-left cube-holder">
                            <div class="cube color5">${UserMatchInfo.centuryCount}</div>
                            <p style="font-size: 12px;">Centuries</p>
                            </div>
                           	<div class="pull-left cube-holder">
                            <div class="cube color5">${UserMatchInfo.halfCenturiesCount}</div>
                            <p style="font-size: 12px;">Half Centuries</p>
                            </div>
                           	<div class="pull-left cube-holder">
                            <div class="cube color5">${UserMatchInfo.fiveFerCount}</div>
                            <p style="font-size: 12px;">5fer<p>
                            </div>
                            
                            
                                                    </div>
                        
                        	
                           
                           
                        
                        </div> 
                        
     				
     
                     	<div class="col-md-12 statusUpdateBox whiteBox ">

                      <!--  	<h1 class="noBorder">Match Summary</h1> -->  
                            
                            
                         <div class="col-md-12 statusUpdateBox whiteBox ">
                        
                        	<h1 class="noBorder">Full ScoreBoard</h1>  
                            <div>
                        		<c:choose>
                        			<c:when test="${scoreCardListSize == 0 }">
	                                	<div style="color:red">No Details Available</div>
	                            	</c:when>
                            	
                            	<c:otherwise>
                            		<div style="float: left; width: 50%;text-align: left;color: #3253a8">
                                	<%-- <span style="width: 100%;font-size: 16px">${scoreCardList.homeTeamName} Vs ${scoreCardList.awayTeamName }</span><br> --%>
                                	<p class="summary" style="width: 100%;font-size: 16px;">${scoreCardList.tournamentName}</p>
                                	<a style="width: 100%;font-size: 14px; color: #3253a8" href="${pageContext.request.contextPath}/${scoreCardList.homeTeamName }/board/${scoreCardList.homeTeamId}">${scoreCardList.homeTeamName}</a> vs <a style="width: 100%;font-size: 14px; color: #3253a8" href="${pageContext.request.contextPath}/${scoreCardList.awayTeamName }/board/${scoreCardList.awayTeamId}">${scoreCardList.awayTeamName}</a><br><br>
                                	<b style="width: 100%;font-size: 12px;margin-top: 50px;color:red">${scoreCardList.message}</b>
                                	</div>
                                	<div style="float: right; width: 50%; text-align:right;color: black;">
                                	<span style="width: 100%;font-size: 14px; ">Match type : ${scoreCardList.gameType}</span>
                                	<span style="width: 100%;font-size: 14px">Played at : ${scoreCardList.groundName}</span>
                                	<b style="font-size: 12px"><p id="formatDate_" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${scoreCardList.gameDate}" /></p><script>document.writeln(test("${scoreCardList.gameDate}"));</script></b>
                                	</div>
                            	</c:otherwise>
                            	</c:choose> 
                        	</div>
                            <div class="col-md-12 noPadding MyScor-table" style="clear: both;">
                           <h5>First Innings</h5>
                           <div class="form-group">
                            <c:choose>
                                <c:when test="${firstInningsBattingPlayerSize == 0 }">
                                <table>
                            	<thead>
                                	<tr>
                                    	<!-- <th>Team Innings Day3</th> -->
                                    	<th>${getFirstInnings.battingTeamName }</th>
                                        <th></th>
                                        <th>R</th>
                                        <th>B</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>SR</th>
                                        
                                       
                                    </tr>
                                </thead>
                                </table>
                                <div style="color:red">No Details Available</div>
                                </c:when>
                                <c:otherwise>
                                
                                <table>
                            	<thead>
                                	<tr>
                                    	<!-- <th>Team Innings Day3</th> -->
                                    	<th style="width: 190px;">${getFirstInnings.battingTeamName }</th>
                                        <th style="width: 150px;">&nbsp;</th>
                                        <th>R</th>
                                        <th>B</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>SR</th>
                                        
                                       
                                    </tr>
                                </thead>
                                <tbody>
                               
                                 <c:forEach var="list1" items="${firstInningsBattingPlayer}">
                                	<tr><td style="width: 190px;"><a style="color: #227fbc;" href="${pageContext.request.contextPath}/scorecard/buddy/${list1.playerFullName}/${list1.playerId}">${list1.playerFullName}</a></td>
                                    	<c:choose>
                                    	<c:when test="${list1.wicketBy == 'NotOut' || list1.wicketBy == 'Not Out'}">
                                    	<td style="width: 150px;text-align: left;">not out</td>
                                    	</c:when>
                                    	<c:when test="${list1.wicketBy == 'Retire Hurt'}">
                                    	<td style="width: 150px; text-align: left;">retire hurt</td>
                                    	</c:when>
                                    	<c:when test="${list1.wicketBy == 'Retire Out'}">
                                    	<td style="width: 150px; text-align: left;">retire out</td>
                                    	</c:when>
                                    	<c:otherwise>
                                    	<td style="width: 150px; text-align: left;">${list1.wicketBy }</td>
                                    	</c:otherwise>
                                    	</c:choose>
                                        <td>${list1.runs } 
                                        
                                        <c:choose>
			                                    	<c:when test="${list1.wicketBy == 'NotOut'}">
					                                    	<!-- <sup class="scorenotout">*</sup> -->
					                                 </c:when>
					                                 <c:otherwise>
					                                    	
			                                    	</c:otherwise>
	                                    		</c:choose>  
                                        </td>
                                        <td>${list1.ballNumber} </td>
                                        <td>${list1.fours}</td>
                                        <td>${list1.six}</td>
                                        <td>${list1.strikeRate}</td>
                                      
                                       
                                    </tr>
  												</c:forEach>
  								<thead>
                                	<tr>
                                    	<td><p> Extras</p></td>
                                        <td  colspan="6" style="text-align: right;">
                                        			
                                        			${getFirstInnings.totalNumExtras}<c:if test="${!empty getFirstInnings.totalExtras}">
                                        	(
                                        		<c:forEach items="${getFirstInnings.totalExtras}" var="ex" varStatus="status">
                                        				${ex}<c:if test="${not status.last}">,</c:if>
                                        		</c:forEach>
                                        	)
                                        	
                                        	</c:if>
                                        </td>
                                    </tr>
                                </thead>			
                                 <thead>
                                	<tr>
                                    	<%-- <th class="botmhed" colspan="7" >
                                        <p>Total Score  (0 wickets; ${scoreCardList.totalOvers } overs; 0 mins</p>
                                        <button class="btn btn-default dBtn color">${scoreCardList.totalRuns }</button>
                                        <p>(${scoreCardList.rpo} Runs per over)</p>
                                        </th> --%>
                                        
                                        <th class="botmhed" colspan="7" >
                                        <p>Total Score  (${getFirstInnings.totalWickets} wickets; ${getFirstInnings.totalOvers } overs)</p>
                                        <button class="btn btn-default dBtn color">${getFirstInnings.totalRuns }</button>
                                        <p>(${getFirstInnings.rpo} Runs per over)</p>
                                        </th>
                                    </tr>
                                </thead>
                                    
                                </tbody>
                            </table>
                            </div>
                                
                                
                                </c:otherwise>
                                </c:choose>
	
	
	
                         	
                         
                          
                          <!--  <p style="color:red">Fall of wickets - Under Development</p> -->
                         <%--  <c:choose>
                              <c:when test="${fallOfWicketsFirstInningsSize == 0} ">
                              <p style="color:red">Fall of wickets - No Details Available</p> 
                              </c:when>
                              <c:otherwise>
                                 <p class="redtext">Fall of wickets  <c:forEach var="wickets" items="${fallOfWicketsFirstInnings}" varStatus = "loop">
                            ${wickets.wicketNumber}-${wickets.runs} (${wickets.playerName}, ${wickets.overNumber} ov) <c:if test="${!loop.last}">,</c:if>
                            </c:forEach></p>  
                              </c:otherwise>
                              </c:choose> --%>
                              
                             <%--  <c:if test="${empty fallOfWicketsFirstInnings }">
                              <p style="color:red">Fall of wickets - No fall of wickets</p> 
                            </c:if>
                            <c:if test="${! empty fallOfWicketsFirstInnings }">
                            <p class="redtext">Fall of wickets  <c:forEach var="wickets" items="${fallOfWicketsFirstInnings}" varStatus = "loop">
                            ${wickets.wicketNumber}-${wickets.runs} (${wickets.playerName}, ${wickets.overNumber} ov) <c:if test="${!loop.last}">,</c:if>
                            </c:forEach></p> 
                            </c:if> --%>
                            
                            <c:choose>
                         	<c:when test="${ empty fallOfWicketsFirstInnings}">
                         		<p style="color:red" id="firstInningsFallOfWicketsScoriingApp">Fall of wickets : No fall of wickets</p>
                         	</c:when>
                         	<c:otherwise>
                         	<p style="color: red;margin-top:5px;">Fall of wickets :  
                         
                         	<c:forEach var="wickets" items="${fallOfWicketsFirstInnings}" varStatus = "loop">
                                 <c:choose>
                         				<c:when test="${loop.count eq 1}">
                         					  ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:when>
                         				<c:otherwise>
                         						 , ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:otherwise>
                         			</c:choose>
                            
                            </c:forEach>
                         	
                         	 </p>
                         	</c:otherwise>
                         
                         
                         </c:choose>
                            
                            <c:choose>
                         	<c:when test="${ empty fallOfWicketsFirstInningsWebPortal}">
                         		<p style="color:red" id="firstInningsFallOfWicketsWebPortal">Fall of wickets : No fall of wickets</p>
                         	</c:when>
                         	<c:otherwise>
                         	<p style="color: red;margin-top:5px;">Fall of wickets :  
                         
                         	<c:forEach var="wickets" items="${fallOfWicketsFirstInningsWebPortal}" varStatus = "loop">
                                 <c:choose>
                         				<c:when test="${loop.count eq 1}">
                         					  ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:when>
                         				<c:otherwise>
                         						 , ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:otherwise>
                         			</c:choose>
                            
                            </c:forEach>
                         	
                         	 </p>
                         	</c:otherwise>
                         
                         </c:choose>
                            
                            <c:choose>
                         
                         	<c:when test="${!empty getFirstInnings.doNotBatList}">
                         				<p style="color:red">DNB : ${f:listToStringConvertion(getFirstInnings.doNotBatList)}</p>
                         	</c:when>
                         	<c:otherwise>
                         	
                         	</c:otherwise>
                         	
                         	
                         </c:choose>
                            
                            
                            <div class="col-md-12 noPadding MyScor-table">
                            <div class="form-group">
                            
                             <c:choose>
                                <c:when test="${firstInningsBowlingPlayerSize == 0 }">
                                <table>
                            	<thead>
                                	<tr>
                                    	<th>Bowler</th>
                                        <th>O</th>
                                        <th>M</th>
                                        <th>R</th>
                                        <th>W</th>
                                        <th>Econ</th>
                                        <th>0s</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>Ex</th>
                                       
                                    </tr>
                                </thead></table>
                                <span style="color:red">No Details Available</span>
                                </c:when>
                                <c:otherwise>
                            
                            <table>
                            	<thead>
                                	<tr>
                                    	<th>Bowler</th>
                                        <th>O</th>
                                        <th>M</th>
                                        <th>R</th>
                                        <th>W</th>
                                        <th>Econ</th>
                                        <th>0s</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>Ex</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                               
                               
                                 <c:forEach var="list" items="${firstInningsBowlingPlayer}">
                                	<tr><td><a style="color: #227fbc;" href="${pageContext.request.contextPath}/scorecard/buddy/${list.playerFullName}/${list.playerId}">${list.playerFullName}</a></td>
                                    	<td>${list.bowlingOvers}</td>
                                        <td>${list.meidan}</td>
                                        <td>${list.runs}</td>
                                        <td>${list.wickets }</td>
                                        <td>${list.econamyRate }</td>
                                        <td>${list.zeroRuns }</td>
                                        <td>${list.four }</td>
                                        <td>${list.six }</td>
                                       <td>
                                        	
                                        	<c:choose>
                                        		<c:when test="${!empty list.extras}">
                                        			(
                                        		<c:forEach items="${list.extras}" var="ex" varStatus="status">
                                        				${ex}<c:if test="${not status.last}">,</c:if>
                                        		</c:forEach>
                                        	)
                                        		</c:when>
                                        		<c:otherwise>-
                                        		</c:otherwise>
                                        	
                                        	</c:choose>
                                        	                                       
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    
                                </tbody>
                                
                            </table>
                             </c:otherwise>
                                </c:choose>
                                
                            	
                            </div>
                            
                            </div>
                            
                           <!--  <div class="points">
                            <p style="color:red">Player of the match - Under Development</p>
                                <p>Player of the match - Raj Sundram(Roster A)</p>
                                <p>Umpires - IJ Gould (England) and RJ Tucker (Australia)</p>
                                <p>TV umpire - NJ Llong (England)</p>
                                <p>Match referee - DC Boon (Australia)</p>
                                <p>Reserve umpire - BNJ Oxenford (Australia)</p>
                            </div>
                             -->

                               
                         </div>
                         
                        
                           
                           
                           <c:choose>
                             
                                <c:when test="${SecondInningsBattingPlayerSize == 0 }">
                                <!-- <span style="color:red">No Details Available</span> -->
                                </c:when>
                                <c:otherwise>
                                
                              <div class="col-md-12 noPadding MyScor-table">
                              <h5>Second Innings</h5>
                              <div class="form-group">
                              <c:choose>
                             
                                <c:when test="${SecondInningsBattingPlayerSize == 0 }">
                                <table>
                            	<thead>
                                	<tr>
                                    	<!-- <th>Team Innings Day3</th> -->
                                    	<th>${getSecondInnings.battingTeamName }</th>
                                        <th></th>
                                        <th>R</th>
                                        <th>B</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>SR</th>
                                        
                                       
                                    </tr>
                                </thead></table>
                                 <span style="color:red">No Details Available</span>
                                </c:when>
                                <c:otherwise>
                                
                                <table>
                            	<thead>
                                	<tr>
                                    	<!-- <th>Team Innings Day3</th> -->
                                    	 <th style="width: 190px;">${getSecondInnings.battingTeamName}</th>
                                        <th style="width: 150px;">&nbsp;</th>
                                        <th>R</th>
                                        <th>B</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>SR</th>
                                        
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach var="list1" items="${SecondInningsBattingPlayer}">
                                	<tr><td style="width: 190px;"><a style="color: #227fbc;" href="${pageContext.request.contextPath}/scorecard/buddy/${list1.playerFullName}/${list1.playerId}">${list1.playerFullName}</a></td>
                                    	<c:choose>
                                    	<c:when test="${list1.wicketBy == 'NotOut' || list1.wicketBy == 'Not Out'}">
                                    	<td style="width: 150px;text-align: left;">not out</td>
                                    	</c:when>
                                    	
                                    	<c:when test="${list1.wicketBy == 'Retire Hurt'}">
                                    	<td style="width: 150px; text-align: left;">retire hurt</td>
                                    	</c:when>
                                    	<c:when test="${list1.wicketBy == 'Retire Out'}">
                                    	<td style="width: 150px; text-align: left;">retire out</td>
                                    	</c:when>
                                    	<c:otherwise>
                                    	<td style="width: 150px;text-align: left;">${list1.wicketBy }</td>
                                    	</c:otherwise>
                                    	</c:choose>
                                        <td>${list1.runs } 
                                        <c:choose>
			                                    	<c:when test="${list1.wicketBy == 'NotOut'}">
					                                    	<!-- <sup class="scorenotout">*</sup> -->
					                                 </c:when>
					                                 <c:otherwise>
					                                    	
			                                    	</c:otherwise>
	                                    		</c:choose>  
                                        </td>
                                        <td>${list1.ballNumber} </td>
                                        <td>${list1.fours}</td>
                                        <td>${list1.six}</td>
                                        <td>${list1.strikeRate}</td>
                                      
                                       
                                    </tr>
  												</c:forEach>
  									<thead>
                                	<tr>
                                    	<td>Extras</td>
                                        <td  colspan="6" style="text-align: right;">
                                        			
                                        			${getSecondInnings.totalNumExtras}<c:if test="${!empty getSecondInnings.totalExtras}">
                                        	(
                                        		<c:forEach items="${getSecondInnings.totalExtras}" var="ex" varStatus="status">
                                        				${ex}<c:if test="${not status.last}">,</c:if>
                                        		</c:forEach>
                                        	)
                                        	
                                        	</c:if>
                                        </td>
                                    </tr>
                                </thead>			
                                 <thead>
                                	<tr>
                                    	<%-- <th class="botmhed" colspan="7" >
                                        <p>Total Score  (0 wickets; ${scoreCardList.totalOvers } overs; 0 mins</p>
                                        <button class="btn btn-default dBtn color">${scoreCardList.totalRuns }</button>
                                        <p>(${scoreCardList.rpo} Runs per over)</p>
                                        </th> --%>
                                        <th class="botmhed" colspan="7" >
                                        <p>Total Score  (${getSecondInnings.totalWickets} wickets; ${getSecondInnings.totalOvers } overs)</p>
                                        <button class="btn btn-default dBtn color">${getSecondInnings.totalRuns }</button>
                                        <p>(${getSecondInnings.rpo} Runs per over)</p>
                                        </th>
                                    </tr>
                                </thead>
                                    
                                </tbody>
                            </table>
                                </div>
                                
                                </c:otherwise>
                                </c:choose>
                              
                                
                         
                        
                         
                           <%-- <c:choose>
                              <c:when test="${fallOfWicketsSecondInningsSize == 0} ">
                              <p style="color:red">Fall of wickets - No Details Available</p> 
                              </c:when>
                              <c:otherwise>
                                 <p class="redtext">Fall of wickets  <c:forEach var="wickets" items="${fallOfWicketsSecondInnings}" varStatus = "loop">
                            ${wickets.wicketNumber}-${wickets.runs} (${wickets.playerName}, ${wickets.overNumber} ov)<c:if test="${!loop.last}">,</c:if>
                            </c:forEach></p>  
                              </c:otherwise>
                              </c:choose> --%>
                              
                              <%-- <c:if test="${ empty fallOfWicketsSecondInnings}">
                               <p style="color:red">Fall of wickets - No fall of wickets</p> 
                              </c:if>
                              
                              <c:if test="${! empty fallOfWicketsSecondInnings}">
                                <p class="redtext">Fall of wickets  <c:forEach var="wickets" items="${fallOfWicketsSecondInnings}" varStatus = "loop">
                            ${wickets.wicketNumber}-${wickets.runs} (${wickets.playerName}, ${wickets.overNumber} ov)<c:if test="${!loop.last}">,</c:if>
                            </c:forEach></p>
                              
                              </c:if> --%>
                              
                              <c:choose>
                         	<c:when test="${ empty fallOfWicketsSecondInnings}">
                         		<p style="color:red" id="secondInningsFallOfWicketsScoriingApp">Fall of wickets : No fall Of Wickets</p>
                         	</c:when>
                         	<c:otherwise>
                         	<p style="color: red;margin-top:5px;">Fall of wickets :
                         
                         	<c:forEach var="wickets" items="${fallOfWicketsSecondInnings}" varStatus = "loop">
                                 <c:choose>
                         				<c:when test="${loop.count eq 1}">
                         					 ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:when>
                         				<c:otherwise>
                         						 , ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:otherwise>
                         			</c:choose>
                            
                            </c:forEach>
                         	
                         	 </p>
                         	</c:otherwise>
                         
                         
                         </c:choose>
                              
                              <c:choose>
                         	<c:when test="${ empty fallOfWicketsSecondInningsWebPortal}">
                         		<p style="color:red" id="secondInningsFallOfWicketsWebPortal">Fall of wickets : No fall of wickets</p>
                         	</c:when>
                         	<c:otherwise>
                         	<p style="color: red;margin-top:5px;">Fall of wickets : 
                         
                         	<c:forEach var="wickets" items="${fallOfWicketsSecondInningsWebPortal}" varStatus = "loop">
                                 <c:choose>
                         				<c:when test="${loop.count eq 1}">
                         					 ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:when>
                         				<c:otherwise>
                         						 , ${wickets.runs}-${wickets.wicketNumber} (${wickets.playerName}, ${wickets.overNumber} ov)
                         				</c:otherwise>
                         			</c:choose>
                            
                            </c:forEach>
                         	
                         	 </p>
                         	</c:otherwise>
                         
                         
                         </c:choose>
                         
                         <%-- <c:if test="${!empty webPortalScoreCard}">
                             <script type="text/javascript">
                             	 $("#secondInningsFallOfWicketsScoriingApp").hide();
                             	 $("#firstInningsFallOfWicketsScoriingApp").hide();
                             </script>
                         </c:if>
                          <c:if test="${empty webPortalScoreCard}">
                             <script type="text/javascript">
                             	 $("#secondInningsFallOfWicketsWebPortal").hide();
                             	 $("#firstInningsFallOfWicketsWebPortal").hide();
                             </script>
                         </c:if> --%>
                              
                         <c:choose>
                         
                         	<c:when test="${!empty getSecondInnings.doNotBatList}">
                         				<p style="color:red">DNB : ${f:listToStringConvertion(getSecondInnings.doNotBatList)}</p>
                         	</c:when>
                         	<c:otherwise>
                         	
                         	</c:otherwise>
                         	
                         	
                         </c:choose>
                            
                         
                         <div class="col-md-12 noPadding MyScor-table">
                            <div class="form-group">
                             <c:choose>
                                <c:when test="${SecondInningsBowlingPlayerSize == 0 }">
                                <table>
                            	<thead>
                                	<tr>
                                    	<th>Bowler</th>
                                        <th>O</th>
                                        <th>M</th>
                                        <th>R</th>
                                        <th>W</th>
                                        <th>Econ</th>
                                        <th>0s</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>Ex</th>
                                       
                                    </tr>
                                </thead></table>
                                <span style="color:red">No Details Available</span>
                                </c:when>
                                <c:otherwise>
                            <table>
                            	<thead>
                                	<tr>
                                    	<th>Bowler</th>
                                        <th>O</th>
                                        <th>M</th>
                                        <th>R</th>
                                        <th>W</th>
                                        <th>Econ</th>
                                        <th>0s</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>Ex</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                               
                               
                                 <c:forEach var="list" items="${SecondInningsBowlingPlayer}">
                                	<tr><td><a style="color: #227fbc;" href="${pageContext.request.contextPath}/scorecard/buddy/${list.playerFullName}/${list.playerId}">${list.playerFullName}</a></td>
                                    	<td>${list.bowlingOvers}</td>
                                        <td>${list.meidan}</td>
                                        <td>${list.runs}</td>
                                        <td>${list.wickets }</td>
                                        <td>${list.econamyRate }</td>
                                        <td>${list.zeroRuns }</td>
                                        <td>${list.four }</td>
                                        <td>${list.six }</td>
                                        <td>
                                        	
                                        	<c:choose>
                                        		<c:when test="${!empty list.extras}">
                                        			(
                                        		<c:forEach items="${list.extras}" var="ex" varStatus="status">
                                        				${ex}<c:if test="${not status.last}">,</c:if>
                                        		</c:forEach>
                                        	)
                                        		</c:when>
                                        		<c:otherwise>-
                                        		</c:otherwise>
                                        	
                                        	</c:choose>
                                        	                                       
                                         </td>
                                    </tr>
                                    </c:forEach>
                                   
                                </tbody>
                                
                            </table>
                            </div>
                            
                            </c:otherwise>
                            </c:choose>
                            
                            	
                            
                            
                            </div>
                          </div>
                          
                          <c:if test="${!empty webPortalScoreCard}">
                             <script type="text/javascript">
                             	 $("#secondInningsFallOfWicketsScoriingApp").hide();
                             	 $("#firstInningsFallOfWicketsScoriingApp").hide();
                             </script>
                         </c:if>
                          <c:if test="${empty webPortalScoreCard}">
                             <script type="text/javascript">
                             	 $("#secondInningsFallOfWicketsWebPortal").hide();
                             	 $("#firstInningsFallOfWicketsWebPortal").hide();
                             </script>
                         </c:if>
                         
                         <div class="points">
                            <c:if test="${!empty PlayerOfTheMatch}">
                            <p style="color:red">Player of the match - ${PlayerOfTheMatch} </p>
                         </c:if>
                         <c:if test="${empty PlayerOfTheMatch}">
                         	<p style="color:red">Player of the match - </p>
                         </c:if>
                                <!-- <p>Player of the match - Raj Sundram(Roster A)</p>
                                <p>Umpires - IJ Gould (England) and RJ Tucker (Australia)</p>
                                <p>TV umpire - NJ Llong (England)</p>
                                <p>Match referee - DC Boon (Australia)</p>
                                <p>Reserve umpire - BNJ Oxenford (Australia)</p> -->
                            </div>
                                
                                </c:otherwise>
                                  
                                
                                </c:choose>
                           
	
                         	
                          
                          <!--  <p style="color:red">Fall of wickets - Under Development</p> -->
                           <!-- <p class="redtext">Fall of wickets 1-83 (Subramaniam, 34.2 ov), 2-96 ( Kondapalli, 37.5 ov), 3-146 (Ashok Kumar, 126.1 ov), 4-219 (Sadasivam, 138.2 ov)</p>  -->
     
                         
                         </div>
                         
                         
                      
                        
                         
                         
            
                        </div>
                        
                        
                        
                        
                        
                        
                     	
                     
                     
                     	
                        
                        
                        
                        
                        


                    </div>

                     <!--Right Block-->
                     	<%--  <%@ include file="AroundYouMenu.jsp" %> --%>
                     
                     <!--/Right Block End-->
                            
                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    
    
    
    
   <%@ include file = "Footer.jsp" %>         
    

</body>

</html>
