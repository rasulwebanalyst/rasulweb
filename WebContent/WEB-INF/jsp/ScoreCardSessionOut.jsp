 <!DOCTYPE html>
 <%@taglib uri="http://example.com/functions" prefix="f" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <title>Cricket Social</title>
 
 <style>
<!--

-->

table{
font-size: 12px;
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
	
	
	 
</script>
<%@ include file="BoardHeaderSession.jsp" %>

    <section class="middleContentBlock">
    
    <div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <i class="fa fa-camera changePhoto" title="Change Photo"></i>
          </div>
          
          
        
        
        <!--<div class="container bannerBtnsblock">
        <div class="bannerBtns">
        	<i class="fa fa-camera changePhoto" title="Change Photo"></i>
            
           <div class="boardHitBtn"> <i class="fa boardHit"></i>Hit </div>
         </div>   
        </div>-->
        
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
        
    </div>
    
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                 <%@ include file="BoardSideMenuSession.jsp" %>

                 
                 <div class="col-md-7 pageMiddleBlock">
     
                     	<div class="col-md-12 statusUpdateBox whiteBox ">

                        <!-- 	<h1 class="noBorder">Match Summary</h1>   -->
                            
                            <%-- <div class="col-md-12 noPadding myscor">
                           
                            	<p><strong>${FirstInningsTeamInfo.boardName}   :</strong>${FirstInningsTeamInfo.runs}/${FirstInningsTeamInfo.wickets}</p>
                                <p class="pull-right"><strong>${SecondInningsTeamInfo.boardName}    :</strong>${SecondInningsTeamInfo.runs}/${SecondInningsTeamInfo.wickets}</p>
                            
                            
                            	
                            
                         	 <table>
                            	<thead>
                                	<tr>
                                    	<th>Bats man</th>
                                        <th>R</th>
                                        <th>B</th>
                                        <th>4s</th>
                                        <th>6s</th>
                                        <th>SR</th>
                                        <th>This Bowler</th>
                                        <th>Last 5 Overs</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<tr><td>${battingInfo.battingName}</td>
                                    	<td>${battingInfo.runs }</td>
                                        <td>${battingInfo.ballnumber }</td>
                                        <td>${battingInfo.four }</td>
                                        <td>${battingInfo.six }</td>
                                        <td>${battingInfo.strikeRate }</td>
                                        <td>-</td>
                                        <td>-</td>
                                       
                                    </tr>
                                    <tr><td>${runnerInfo.runnerName}</td>
                                    	<td>${runnerInfo.runs}</td>
                                        <td>${runnerInfo.ballnumber}</td>
                                        <td>${runnerInfo.four}</td>
                                        <td>${runnerInfo.six}</td>
                                        <td>${runnerInfo.strikeRate}</td>
                                        <td>-</td>
                                        <td>-</td>
                                       
                                    </tr>
                                  
                                  
                                    
                                </tbody>
                            </table> 
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
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                	<tr>
                                        <td>${bowlingInfo.bowlerName}</td>
                                    	<td>${bowlingInfo.overNumber}</td>
                                        <td>${bowlingInfo.meidan}</td>
                                        <td>${bowlingInfo.runs}</td>
                                        <td>${bowlingInfo.wickets}</td>
                                        <td>${bowlingInfo.economyRate}</td>
                                        <td>${bowlingInfo.zeroRuns}</td>
                                        <td>${bowlingInfo.fours}</td>
                                        <td>${bowlingInfo.six}</td>
                                       
                                    </tr>
                                  
                                  
                                    
                                </tbody>
                            </table>
                            <p style="color:red">Current Partnership - under Development</p>
                            
                           <!--  <p class="redtext">Current Partnership 94 rens , 14.2 Overs RR :6.55(rajasundaram 138 , Ashwin 51)</p> -->
                         </div> --%>
                         
                         
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
                                	<a style="width: 100%;font-size: 14px; color: #3253a8" href="javascript:void(0);" onclick="PleaseLogin()">${scoreCardList.homeTeamName}</a> vs <a style="width: 100%;font-size: 14px; color: #3253a8" href="javascript:void(0);" onclick="PleaseLogin()">${scoreCardList.awayTeamName}</a><br><br>
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
                                	<tr><td style="width: 190px;"><a href="javascript:void(0);" onclick="PleaseLogin()">${list1.playerFullName}</a></td>
                                    	<c:choose>
                                    	<c:when test="${list1.wicketBy == 'NotOut'}">
                                    	<td style="width: 150px;">Not Out</td>
                                    	</c:when>
                                    	<c:otherwise>
                                    	<td style="width: 150px;">${list1.wicketBy}</td>
                                    	</c:otherwise>
                                    	</c:choose>
                                    	
                                    	
                                        <td>${list1.runs} 
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
                                
                                
                                </c:otherwise>
                                </c:choose>
	
	
	
                         	
                         
                          
                          <!--  <p style="color:red">Fall of wickets - Under Development</p> -->
                          <%-- <c:choose>
                              <c:when test="${ empty fallOfWicketsFirstInnings} ">
                              <p style="color:red">Fall of wickets - No Details Available</p> 
                              </c:when>
                              <c:otherwise>
                              <script type="text/javascript">
                              console.log("sized ================="+'${fallOfWicketsFirstInningsSize}');
                              </script>
                              
                                 <p class="redtext">Fall of wickets  <c:forEach var="wickets" items="${fallOfWicketsFirstInnings}" varStatus = "loop">
                            ${wickets.wicketNumber}-${wickets.runs} (${wickets.playerName}, ${wickets.overNumber} ov) <c:if test="${!loop.last}">,</c:if>
                            </c:forEach></p>  
                              </c:otherwise>
                              </c:choose> --%>
                            
                            <%-- <c:if test="${empty fallOfWicketsFirstInnings }">
                              <p style="color:red">Fall of wickets - No Details Available</p> 
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
                                	<tr><td><a href="javascript:void(0);" onclick="PleaseLogin()">${list.playerFullName }</a></td>
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
                                    	<%-- <th>${getSecondInnings.battingTeamName }</th>
                                        <th></th> --%>
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
                                	<tr><td style="width: 190px;"><a href="javascript:void(0);" onclick="PleaseLogin()">${list1.playerFullName}</a>	</td>
                                    	<c:choose>
                                    	<c:when test="${list1.wicketBy == 'NotOut'}">
                                    	<td style="width: 150px;">Not Out</td>
                                    	</c:when>
                                    	<c:otherwise>
                                    	<td style="width: 150px;"> ${list1.wicketBy }</td>
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
                                        <p>Total Score  (${getSecondInnings.totalWickets } wickets; ${getSecondInnings.totalOvers } overs)</p>
                                        <button class="btn btn-default dBtn color">${getSecondInnings.totalRuns }</button>
                                        <p>(${getSecondInnings.rpo} Runs per over)</p>
                                        </th>
                                    </tr>
                                </thead>
                                    
                                </tbody>
                            </table>
                                
                                
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
                            
                         <c:choose>
                         	<c:when test="${ empty fallOfWicketsSecondInnings}">
                         		<p style="color:red" id="secondInningsFallOfWicketsScoriingApp">Fall of wickets : No fall of wickets</p>
                         		
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
                         
                         
                        <%--  <c:if test="${!empty webPortalScoreCard}">
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
                                	<tr><td><a href="javascript:void(0);" onclick="PleaseLogin()">${list.playerFullName }</a></td>
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
                         
                         <!-- <div class="points">
                            <p style="color:red">Player of the match - Under Development</p>
                                <p>Player of the match - Raj Sundram(Roster A)</p>
                                <p>Umpires - IJ Gould (England) and RJ Tucker (Australia)</p>
                                <p>TV umpire - NJ Llong (England)</p>
                                <p>Match referee - DC Boon (Australia)</p>
                                <p>Reserve umpire - BNJ Oxenford (Australia)</p>
                            </div> -->
                            <div class="points">
                         <c:if test="${!empty PlayerOfTheMatch}">
                            <p style="color:red">Player of the match - ${PlayerOfTheMatch} </p>
                         </c:if>
                         <c:if test="${empty PlayerOfTheMatch}">
                         	<p style="color:red">Player of the match - </p>
                         </c:if>
                            
                            </div>
                                
                                </c:otherwise>
                                  
                                
                                </c:choose>
                           
                          
                          <!--  <p style="color:red">Fall of wickets - Under Development</p> -->
                           <!-- <p class="redtext">Fall of wickets 1-83 (Subramaniam, 34.2 ov), 2-96 ( Kondapalli, 37.5 ov), 3-146 (Ashok Kumar, 126.1 ov), 4-219 (Sadasivam, 138.2 ov)</p>  -->

                         
                         </div>
                         
                         
                      <c:if test="${!empty  CommentryAvailable}">
                           
	                           <p ><strong>First Innings Match Notes:</strong></p>
	                             <c:forEach var="powerPlayComments" items="${firstInningsPowerPlayDetails}">
	                              <p>${powerPlayComments.commentaryName} </p>
	                             </c:forEach>
	                             <c:forEach var="comments" items="${firstInningsCommentryDetails}">
	                               <p>${comments.commentaryName} </p>
	                             </c:forEach>
	                             
	                           <p ><strong>Second Innings Match Notes:</strong></p>
	                             <c:forEach var="powerPlayComments" items="${secondInningsPowerPlayDetails}">
	                              <p>${powerPlayComments.commentaryName} </p>
	                             </c:forEach>
	                             <c:forEach var="comments" items="${secondInningsCommentryDetails}">
	                               <p>${comments.commentaryName} </p>
	                             </c:forEach>
	                            
                         	</c:if>
                        
                         
                         
            
                        </div>
                        
                        
                        
                        
                        
                        
                     	
                     
                     
                     	
                        
                        
                        
                        
                        


                      </div>

                     <!--Right Block-->
                     	 <%@ include file="AroundYouMenuSession.jsp" %>
                     
                     <!--/Right Block End-->
                            
                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    
    <div id="ScoreCardPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        <div id="RoasterPopupText">
        <p style="text-align: center; id="RoasterPopupText">Please login or Signup to proceed further.</p>
        <ol type="number" class="roa-ol">
        	
        </ol>
        </div>
      </div>
      <div class="modal-footer action">
      <button type="button" onclick="PleaseLoginSuccess()" class="btn btn-default ok">OK</button>
      <button type="button" onclick="ScoreCardPopuphide()" class="btn btn-default ok">cancel</button>
       </div>
    </div>

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
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

 	<!--Select Box-->
	<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>

	<!--File Upload-->
	<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
		});
   </script>      

<!--Select Box-->
	<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>

<!--Accordion Arrow-->
<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-chevron-down").removeClass("fa-chevron-down").addClass("fa-chevron-up");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-chevron-up").removeClass("fa-chevron-up").addClass("fa-chevron-down");
			});
		});
        
        function PleaseLogin()
        {
        	$("#ScoreCardPopup").show();
        }
        function ScoreCardPopuphide()
        {
        	$("#ScoreCardPopup").hide();
        }
        function PleaseLoginSuccess()
        {
        	window.location.href="${pageContext.request.contextPath}/";
        }
   </script>            
    

</body>

</html>
