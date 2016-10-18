<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<title>Cricket Social</title>
	
		<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
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
	
	function getDateInObject(timestamp)
	{
		
		var date = new Date(timestamp);
		var dateNew = new Date(date.getTime() + date.getTimezoneOffset()*60000);
		var offset = new Date().getTimezoneOffset() * 60 * 1000;
		var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		return formatAMPMTime(gettingFromServer); 
	};
	 
</script>
        
        <%@ include file="BoardSideMenu.jsp" %>

      
                     
    		<div class="col-md-10">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                     	 <div class="buluback" style="font-weight:100; width: 100%">Match Details
                     	 
                     	 <div class="col-md-5 drop pull-right" style="margin-right:-15px; width: 120px !important;">
								    <div class="selectdiv" style="height: 25px !important;">
								        <c:choose>
								            <c:when test="${yearListSize eq 0 }">
								                <select class="selectboxdiv" id="matchesYears" style="color: black; font-size: 12px !important; height: 25px !important;">
									            	<option style="color: black; font-size: 12px !important; height: 25px !important;"></option>
									            </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div>
								            </c:when>
								            <c:otherwise>
								                <select name="yearDropDown" class="selectboxdiv" id="matchesYears" onchange="yearWiseMatches(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
			                                        <!-- <option>Years</option> -->
			                                        <c:forEach var = "yearsMatches" items="${yearsList}">
			                                            <option value="${yearsMatches}" style="font-size: 12px; height: 25px !important;">${yearsMatches}</option>
			                                        </c:forEach>
								                                       
								                </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div> 
								            </c:otherwise>
								        </c:choose>
								    </div>
						</div>
                     	  <div id="matchesYearId" style="display: none;"></div>
                     	 </div> 
                     	
                        <div class="col-md-12 Padding">
                     
<!--                        <button  class="btn btn-default dBtn  lodbtn  pull-right" onclick="enterScore()" style="margin-left: 10px;">Enter Score</button>
 -->                       <!-- <button class="btn btn-default dBtn  lodbtn  pull-right">Share</button> -->
                     
                            </div>
                         
                         <div class="col-md-12 noPadding MyScor-table ">
                         	
                         	<c:choose>
                         	<c:when test="${completedMatchesListSize eq 0 }">
                         	<table  style="font-size: 14px">
                            	<thead>
                                	<tr>
                                    	<th>Date (MM/DD/YYYY)</th>
                                        <th>Trophy</th>
                                        <th>Home Team</th>
                                        <th>Away Team</th>
                                        <th style="min-width:200px;">Result</th>
                                        <th>Man Of The Match</th>
                                        <th>Score card</th>
                                    </tr>
                                </thead></table>
                         	<span id = "noMatchData" class="noContentDivRed">No Matches available</span>
                         	
                         	</c:when>
                         	<c:otherwise>
                         	
                         	<table id="dataTable" style="font-size: 14px">
                            	<thead>
                                	<tr>
                                    	<th>Date (MM/DD/YYYY)</th>
                                        <th>Trophy</th>
                                        <th>Home Team</th>
                                        <th>Away Team</th>
                                        <th style="min-width:200px;">Result</th>
                                        <th>Man Of The Match</th>
                                        <th>Score Card</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                 <c:forEach var="completed" items="${completedMatchesList}">
                                <tr><td><p id="formatDate_${completed.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${completed.gameDate}" /></p><script>document.writeln(test("${completed.tournamentSchedulerId}"));</script></td>
                                	<%-- <tr><td><fmt:formatDate value="${completed.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                          <td>${completed.tournamentName}</td> 
                          <td><a href="${pageContext.request.contextPath}/${completed.homeTeamName}/board/${completed.homeTeamId}">${completed.homeTeamName}</a></td>
                          <td><a href="${pageContext.request.contextPath}/${completed.awayTeamName}/board/${completed.awayTeamId}">${completed.awayTeamName}</a></td>
                                        
                                        <c:choose>
                        <c:when test="${completed.statusOfMatch eq 'tie' }">
                        <td align="center"><span class="text-danger">Match Tied</span><br>
                              <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.winTeamId}">${completed.winTeamName}</a> : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.loseTeamId}">${completed.loseTeamName}</a> : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}</td>
                        
                        </c:when>
                        <c:when test="${completed.statusOfMatch eq 'draw' }">
                        	<td align="center"><span class="text-danger">Match Drawn</span><br>
                              <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.winTeamId}">${completed.winTeamName}</a> : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.loseTeamId}">${completed.loseTeamName}</a> : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}</td>
                        
                        
                        </c:when>
                        <c:otherwise>
                        
                        <td align="center"><span class="text-danger">${completed.winTeamName} won</span><br>
							  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.winTeamId}">${completed.winTeamName}</a> : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.loseTeamId}">${completed.loseTeamName}</a> : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}</td>
                        
                        </c:otherwise>
                        </c:choose>
                       
                                       <c:choose><c:when test="${completed.manOfTheMatch eq ''  }">
                                        <td>-</td>
                                        </c:when><c:otherwise>
                                        <td>${completed.manOfTheMatchName}</td>
                                        </c:otherwise>
                                        </c:choose>
                                      <td><img src="${pageContext.request.contextPath}/images/scorecard.png" onclick="showScoreCard('${completed.tournamentSchedulerId}')"></td>
                                    </tr>
                                 </c:forEach> 
                                
                                    
                                </tbody>
                            </table>
                         	 	<button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreDetails()">LOAD MORE</button>
                         	</c:otherwise>
                         	
                         	</c:choose>
                          
                         </div>
                         
                         
                         
                         <div class="col-md-12 noPadding ">
                                 <h1>Board Achievements</h1>
                                <table id="myTableTour" class="boardAchievements">
                                	<thead>
                                    	<tr class="text-center">
                                        	<th>No. of Tournaments</th>
                                            <th>No. of Matches Played</th>
                                          <!--   <th>No. of Matches Won</th>
                                            <th>No. of Matches Lost</th> -->
                                            <th>No. of Matches Tie</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                  
                                    	<tr>
                                        	<td id="noOfTournamentsTd" onclick="showNoOfTournaments()">${boardAchieveMents.noOfTournaments }</td>
                                            <td id="noOfMatchesTd" onclick="showNoOfMatchesPlayed()">${boardAchieveMents.noOfMatchesPlayed }</td>
                                            <%-- <td id="noOfMatchesWonTd" onclick="showNoOfMatchesWon()">${boardAchieveMents.noOfMatchesWon}</td>
                                            <td id="noOfMatchesLostTd" onclick="showNoOfMatchesLost()">${boardAchieveMents.noOfMatchesLost }</td> --%>
                                            <td id="noOfMatchesTieTd" onclick="showNoOfMatchesTie()">${boardAchieveMents.noOfMatchesTie }</td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                                <div class="col-md-12 teem" id="tournamentsDiv">
                                	
                                	<!-- <div class="crol"> -->
                                	<h1 class="noBorder">Tournaments</h1>
                                    
                                    
                                    <%-- <c:forEach var="tournaments" items="${boardAchieveMents.tournamentList}" varStatus = "loop">
                                    <div class="boardachievements" >
                                    <p>${tournaments.tournamentName}</p>
                                	</div>
                                    
                                    </c:forEach> --%>
                               
                               		
                               		<c:choose>
                               		<c:when test="${!empty boardAchieveMents.tournamentList}">
                               		<ul class="noOfTour">
                               		<c:forEach var="tournaments" items="${boardAchieveMents.tournamentList}" varStatus = "loop">
                                    <li>${tournaments.tournamentName}</li>
                                    </c:forEach>
                                    </ul>
                               		</c:when>
                               		<c:otherwise>
                               		<div style="color:red">No Tournaments</div>
                               		</c:otherwise>
                               		</c:choose>
                               	<!-- 	</div> -->
                               		

                               		
                               
                               
                                   
                    </div>
                    
                    <div class="col-md-12 teem" id="matchesPlayedDiv" style="display:none">
                                	
                                	<div class="crol">
                                	<h1 class="noBorder">No. of Matches Played</h1>
                                	<c:choose>
                                	<c:when test="${!empty boardAchieveMents.matchesPlayedList}">
                                	
                                	
                                	
                                	<c:forEach var="matchesPlayed" items="${boardAchieveMents.matchesPlayedList}">
                                    <div class="teamLogos" >
                                    <c:choose>
                                    <c:when test="${matchesPlayed.winTeamId == matchesPlayed.homeTeamId }">
                                    
                                    
                                    <span class="winteam">
                                     <span class="starIcon1" >Winner<!--  <i class="fa fa-star staricon"></i> --></span> 
                                    <img src="${matchesPlayed.homeTeamImageUrl}" class="teamLogo"> </span> <b>VS</b> <span class="winteam"><span class="starIcon1"> </span> <img src="${matchesPlayed.awayTeamImageUrl}" class="teamLogo"></span>
                                  
                                    
                                    
                                    </c:when>
                                    <c:otherwise>
                                    
                                     <span class="winteam">
                                     <span class="starIcon1"> </span> 
                                    <img src="${matchesPlayed.homeTeamImageUrl}" class="teamLogo"></span> <b>VS</b> <span class="winteam"><span class="starIcon1">Winner <!-- <i class="fa fa-star staricon"></i> --></span>  <img src="${matchesPlayed.awayTeamImageUrl}" class="teamLogo">
                                    </span>
                                    
                                    </c:otherwise>
                                    
                                    </c:choose>
                                   
                                	
                                	</div>
                                    </c:forEach>
                                    
                                    
                                	</c:when>
                                	<c:otherwise>
                                	<div style = "color:red">No Matches Played</div>
                                	</c:otherwise>
                                	</c:choose>
                                	
                                    </div>
         
                    </div>
                    
                     <div class="col-md-12 teem" id="matchesWonDiv" style="display:none">
                                	<h1 class="noBorder">No. of Matches Won</h1>
                                    <c:choose>
                                	<c:when test="${!empty boardAchieveMents.matchesWonList}">
                                	 <c:forEach var="matchesWon" items="${boardAchieveMents.matchesWonList}">
                                    <div class="teamLogos" >
                                     <img src="${matchesWon.homeTeamImageUrl}" class="teamLogo"> <b>VS</b> <img src="${matchesWon.awayTeamImageUrl}" class="teamLogo">
                                	
                                	</div>
                                    
                                    </c:forEach>
                                	</c:when>
                                	<c:otherwise>
                                	<div style = "color:red">No Won Matches</div>
                                	</c:otherwise>
                                	</c:choose>
                                    
                                   
         
                    </div>
                    
                      <div class="col-md-12 teem" id="matchesLostDiv" style="display:none">
                                	<h1 class="noBorder">No. of Matches Lost</h1>
                                     <c:choose>
                                	<c:when test="${!empty boardAchieveMents.matchesLostList}">
                                	 <c:forEach var="matchesLost" items="${boardAchieveMents.matchesLostList}">
                                    <div class="teamLogos" >
                                    <img src="${matchesLost.homeTeamImageUrl}" class="teamLogo"> <b>VS</b> <img src="${matchesLost.awayTeamImageUrl}" class="teamLogo">
                                	</div>
                                    
                                    </c:forEach>
                                	</c:when>
                                	<c:otherwise>
                                	<div style = "color:red">No Lost Matches</div>
                                	</c:otherwise>
                                	</c:choose>
                                    
                                   
         
                    </div>
                    
                      <div class="col-md-12 teem" id="matchesTieDiv" style="display:none">
                      <div class="crol">
                                	<h1 class="noBorder">No. of Matches Tie</h1>
                                    <c:choose>
                                	<c:when test="${!empty boardAchieveMents.matchesTieList}">
                                	  <c:forEach var="matchesTie" items="${boardAchieveMents.matchesTieList}">
                                    <div class="teamLogos" >
                                    <img src="${matchesTie.homeTeamImageUrl}" class="teamLogo"> <b>VS</b> <img src="${matchesTie.awayTeamImageUrl}" class="teamLogo">
                                	
                                	</div>
                                    
                                    </c:forEach>
                                	</c:when>
                                	<c:otherwise>
                                	<div style = "color:red">No Tie Matches</div>
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
</div>

</section>
<%@ include file="Footer.jsp" %>

 <script>
 
 $(function() {
	 function showNoOfTournaments(){
		 $("#noOfTournamentsTd").addClass("active");
		 $("#noOfMatchesTd").removeClass("active");
		// $("#noOfMatchesWonTd").removeClass("active");
		// $("#noOfMatchesLostTd").removeClass("active");
		 $("#noOfMatchesTieTd").removeClass("active");
		
		 
		 $("#tournamentsDiv").show();
		 $("#matchesPlayedDiv").hide();
		// $("#matchesWonDiv").hide();
		// $("#matchesLostDiv").hide();
		 $("#matchesTieDiv").hide();
		
	 }
	 function showNoOfMatchesPlayed(){
		 
		 $("#noOfTournamentsTd").removeClass("active");
		 $("#noOfMatchesTd").addClass("active");
		// $("#noOfMatchesWonTd").removeClass("active");
		// $("#noOfMatchesLostTd").removeClass("active");
		 $("#noOfMatchesTieTd").removeClass("active");
		 
		 $("#tournamentsDiv").hide();
		 $("#matchesPlayedDiv").show();
		// $("#matchesWonDiv").hide();
		// $("#matchesLostDiv").hide();
		 $("#matchesTieDiv").hide();
		
	 }
	 
	 function showNoOfMatchesTie(){
		 
		 $("#noOfTournamentsTd").removeClass("active");
		 $("#noOfMatchesTd").removeClass("active");
		 //$("#noOfMatchesWonTd").removeClass("active");
		// $("#noOfMatchesLostTd").removeClass("active");
		 $("#noOfMatchesTieTd").addClass("active");
		 
		 $("#tournamentsDiv").hide();
		 $("#matchesPlayedDiv").hide();
		// $("#matchesWonDiv").hide();
		// $("#matchesLostDiv").hide();
		 $("#matchesTieDiv").show();
		
	 }
	 
	   $(document).on("click", function(e) {
	    if ($(e.target).is("#noOfTournamentsTd, #noOfMatchesTd , #noOfMatchesTieTd") === false) {
	    	$("#noOfTournamentsTd").removeClass("active");
			 $("#noOfMatchesTd").removeClass("active");
			 //$("#noOfMatchesWonTd").removeClass("active");
			// $("#noOfMatchesLostTd").removeClass("active");
			 $("#noOfMatchesTieTd").removeClass("active");
			 
			 $("#tournamentsDiv").hide();
			 $("#matchesPlayedDiv").hide();
			// $("#matchesWonDiv").hide();
			// $("#matchesLostDiv").hide();
			 $("#matchesTieDiv").hide();
	    }
	  }); 
	});
 
 
 var start = 0;
	var end = 10;
	function loadMoreDetails(){
		
		var add = 10;
		var startNode = start+add;
		var endNode = end+add;
		var boardId = "${boardId}";
		var val = document.getElementById("matchesYears").value;
		var gameBean = {
				startNode : startNode,
				endNode : endNode,
				boardId : boardId,
				filterByYear : val,
		}
		$.ajax({
		type:"Post",
		url:"${pageContext.request.contextPath}/loadMoreBoardAchievementsData",
		data:JSON.stringify(gameBean),
		contentType:"application/json",
		success:function(res){
			if(res.length != 0){
				
				
				var html = '';
				/* html += '<table id="dataTable"><thead><tr>';
				html += '<th>Date (MM/DD/YYYY)</th>';
				html += '<th>Trophy</th>';
				html += '<th>Home Team</th>';
				html += '<th>Away Team</th>';
				html += '<th style="min-width:200px;">Result</th>';
				html += '<th>Man Of The Match</th>';
				html += '<th>Score Card</th>';
				html += '</tr></thead>';
				html += '<tbody align="center">'; */
				for(var i=0; i<res.length; i++){
				html += '<tr>';
				
				 var date  = new Date(res[i].gameDate);
				 var id = res[i].tournamentSchedulerId;
				
				 var dateChange = date.toLocaleDateString();
			
				 console.log(dateChange);
				 
				 var dateNewObject = getDateInObject(res[i].gameDate);
				 html += '<td>'+dateNewObject+'</td>';
				//html += '<tr><td>'+dateChange+'</td>';
				html += '<td>'+res[i].tournamentName+'</td>';
				html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].homeTeamId+'">'+res[i].homeTeamName+'</a></td>';
				html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
			
				if(res[i].statusOfMatch == 'tie'){
					html += '<td align="center"><span class="text-danger">Match Tied</span><br> <a href="${pageContext.request.contextPath}/'+res[i].winTeamName+'/board/'+res[i].winTeamId+'">'+res[i].winTeamName+' </a>: '+res[i].winTeamRuns+'/'+res[i].winTeamWickets+' in '+res[i].winTeamOvers+' <br> <a href="${pageContext.request.contextPath}/'+res[i].loseTeamName+'/board/'+res[i].loseTeamId+'"> '+res[i].loseTeamName+'</a> : '+res[i].loseTeamRuns+'/'+res[i].loseTeamWickets+' in'+ res[i].loseTeamOvers+'</td>';
					
				}else{
					html += '<td align="center"><span class="text-danger">'+res[i].winTeamName+' won</span><br><a href="${pageContext.request.contextPath}/'+res[i].winTeamName+'/board/'+res[i].winTeamId+'"> '+res[i].winTeamName+'</a> : '+res[i].winTeamRuns+'/'+res[i].winTeamWickets+' in '+res[i].winTeamOvers+' <br>  <a href="${pageContext.request.contextPath}/'+res[i].loseTeamName+'/board/'+res[i].loseTeamId+'">'+res[i].loseTeamName+'</a> : '+res[i].loseTeamRuns+'/'+res[i].loseTeamWickets+' in'+ res[i].loseTeamOvers+'';
				}
				
				
				
				
				 if(res[i].manOfTheMatch == ""){
					 html += '<td>-</td>';
				 }else{
					 html += '<td>'+res[i].manOfTheMatchName+'</td>';
				 }
				 html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\""+id+"\")''></td>";
				html += '</tr>';
				}
				/* html += '</tbody>'; */
			
				
				$("#dataTable").append(html);
				
				start = startNode;
				end = endNode;
				
				console.log("start --"+start);
				
			}else{
				
				var html = '';
				html += '<table id="dataTable"><thead><tr>';
				html += '<th>Date (MM/DD/YYYY)</th>';
				html += '<th>Trophy</th>';
				html += '<th>Home Team</th>';
				html += '<th>Away Team</th>';
				html += '<th style="min-width:200px;">Result</th>';
				html += '<th>Man Of The Match</th>';
				html += '<th>Score Card</th>';
				html += '</tr></thead>';
				html += '</table>';
				html += '<span class="noContentDivRed">No More Data</span>';
					$("#dataTable").html(html).trigger('create');
			}
			
		},
		error:function(err){
			console.log(err);
		}
		
		})
		
	 
	 
 }
	
	var i=0;
	function yearWiseMatches(val) {
		if(i==0)
	 	 {
	 	 i=1;
	 	 return false;
	 	 }
		
		document.getElementById("matchesYearId").innerHTML = val;
		var year = {
				boardId : "${boardId}",
				filterByYear : val,
			
		}
		$.ajax({

			type : "Post",
			url : "${pageContext.request.contextPath}/yearWiseMatches",
			data : JSON.stringify(year),
			contentType : "application/json",
			success : function(res) {
				start = 0;
				end = 10;
				if (res.length != 0) {
					var html = '';

					html += '<table id="dataTable"><thead><tr>';
					html += '<th>Date (MM/DD/YYYY)</th>';
					html += '<th>Trophy</th>';
					html += '<th>Home Team</th>';
					html += '<th>Away Team</th>';
					html += '<th style="min-width:200px;">Result</th>';
					html += '<th>Man Of The Match</th>';
					html += '<th>SCORE CARD</th>';
					html += '</tr></thead><tbody align="center">';
					for (var i = 0; i < res.length; i++) {
						html += '<tr>';
						 var date  = new Date(res[i].gameDate);
						 var id = res[i].tournamentSchedulerId;
						
						 var dateChange = date.toLocaleDateString();
					
						 console.log(dateChange);
						 
						 var dateNewObject = getDateInObject(res[i].gameDate);
						 html += '<td>'+dateNewObject+'</td>';
						//html += '<tr><td>'+dateChange+'</td>';
						html += '<td>' + res[i].tournamentName + '</td>';
				        html += '<td><a href="${pageContext.request.contextPath}/' + res[i].homeTeamName + '/board/' + res[i].homeTeamId + '">' + res[i].homeTeamName + '</a></td>';
				        html += '<td><a href="${pageContext.request.contextPath}/' + res[i].awayTeamName + '/board/' + res[i].awayTeamId + '">' + res[i].awayTeamName + '</a></td>';
				        
				        if (res[i].statusOfMatch == 'tie') {
				            html += '<td align="center"><span class="text-danger">Match Tied</span><br> <a href="${pageContext.request.contextPath}/' + res[i].winTeamName + '/board/' + res[i].winTeamId + '">' + res[i].winTeamName + ' </a>: ' + res[i].winTeamRuns + '/' + res[i].winTeamWickets + ' in ' + res[i].winTeamOvers + ' <br> <a href="${pageContext.request.contextPath}/' + res[i].loseTeamName + '/board/' + res[i].loseTeamId + '"> ' + res[i].loseTeamName + '</a> : ' + res[i].loseTeamRuns + '/' + res[i].loseTeamWickets + ' in' + res[i].loseTeamOvers + '</td>';

				        }else if (res[i].statusOfMatch == 'draw') {
				            html += '<td align="center"><span class="text-danger">Match Drawn</span><br> <a href="${pageContext.request.contextPath}/' + res[i].winTeamName + '/board/' + res[i].winTeamId + '">' + res[i].winTeamName + ' </a>: ' + res[i].winTeamRuns + '/' + res[i].winTeamWickets + ' in ' + res[i].winTeamOvers + ' <br> <a href="${pageContext.request.contextPath}/' + res[i].loseTeamName + '/board/' + res[i].loseTeamId + '"> ' + res[i].loseTeamName + '</a> : ' + res[i].loseTeamRuns + '/' + res[i].loseTeamWickets + ' in' + res[i].loseTeamOvers + '</td>';

				        } else {
				            html += '<td align="center"><span class="text-danger">' + res[i].winTeamName + ' won</span><br><a href="${pageContext.request.contextPath}/' + res[i].winTeamName + '/board/' + res[i].winTeamId + '"> ' + res[i].winTeamName + '</a> : ' + res[i].winTeamRuns + '/' + res[i].winTeamWickets + ' in ' + res[i].winTeamOvers + ' <br>  <a href="${pageContext.request.contextPath}/' + res[i].loseTeamName + '/board/' + res[i].loseTeamId + '">' + res[i].loseTeamName + '</a> : ' + res[i].loseTeamRuns + '/' + res[i].loseTeamWickets + ' in' + res[i].loseTeamOvers + '';
				        }
				        if (res[i].manOfTheMatch == "") {
				            html += '<td>-</td>';
				        } else {
				            html += '<td>' + res[i].manOfTheMatchName + '</td>';
				        }
				        html += "<td><img src='${pageContext.request.contextPath}/images/scorecard.png' onclick='showScoreCard(\"" + id + "\")''></td>";
				        html += '</tr>';
					}
					html += '</tbody>';
					html += '</table>';

					$("#dataTable").html(html).trigger('create');
					$('#noMatchData').hide();
				} else {
					html += '<table id="dataTable"><thead><tr>';
					html += '<th>Date (MM/DD/YYYY)</th>';
					html += '<th>Trophy</th>';
					html += '<th>Home Team</th>';
					html += '<th>Away Team</th>';
					html += '<th style="min-width:200px;">Result</th>';
					html += '<th>Man Of The Match</th>';
					html += '<th>SCORE CARD</th>';
					html += '</tr></thead></table>';
					$("#dataTable").html(html).trigger('create');
					$('#noMatchData').show();
				}
			},
			error : function(err) {
				console.log(err);
			}
		})
	console.log(" Matches years :" + val);
}
	
	
	
	
	
	
 
 function enterScore(){
	 
	 var boardId = "${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/EnterScore/boardId/"+boardId;
	 
 }
 
 function showScoreCard(id){
	 var boardId ="${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
 }
 
 function showNoOfTournaments(){
	 $("#noOfTournamentsTd").addClass("active");
	 $("#noOfMatchesTd").removeClass("active");
	// $("#noOfMatchesWonTd").removeClass("active");
	// $("#noOfMatchesLostTd").removeClass("active");
	 $("#noOfMatchesTieTd").removeClass("active");
	
	 
	 $("#tournamentsDiv").show();
	 $("#matchesPlayedDiv").hide();
	// $("#matchesWonDiv").hide();
	// $("#matchesLostDiv").hide();
	 $("#matchesTieDiv").hide();
	
 }
 function showNoOfMatchesPlayed(){
	 
	 $("#noOfTournamentsTd").removeClass("active");
	 $("#noOfMatchesTd").addClass("active");
	// $("#noOfMatchesWonTd").removeClass("active");
	// $("#noOfMatchesLostTd").removeClass("active");
	 $("#noOfMatchesTieTd").removeClass("active");
	 
	 $("#tournamentsDiv").hide();
	 $("#matchesPlayedDiv").show();
	// $("#matchesWonDiv").hide();
	// $("#matchesLostDiv").hide();
	 $("#matchesTieDiv").hide();
	
 }
 function showNoOfMatchesWon(){
	 
	 $("#noOfTournamentsTd").removeClass("active");
	 $("#noOfMatchesTd").removeClass("active");
	 $("#noOfMatchesWonTd").addClass("active");
	 $("#noOfMatchesLostTd").removeClass("active");
	 $("#noOfMatchesTieTd").removeClass("active");
	 
	 $("#tournamentsDiv").hide();
	 $("#matchesPlayedDiv").hide();
	 $("#matchesWonDiv").show();
	 $("#matchesLostDiv").hide();
	 $("#matchesTieDiv").hide();
	
 }
 function showNoOfMatchesLost(){
	 
	 $("#noOfTournamentsTd").removeClass("active");
	 $("#noOfMatchesTd").removeClass("active");
	 $("#noOfMatchesWonTd").removeClass("active");
	 $("#noOfMatchesLostTd").addClass("active");
	 $("#noOfMatchesTieTd").removeClass("active");
	 
	 $("#tournamentsDiv").hide();
	 $("#matchesPlayedDiv").hide();
	 $("#matchesWonDiv").hide();
	 $("#matchesLostDiv").show();
	 $("#matchesTieDiv").hide();
	
 }
 
 function showNoOfMatchesTie(){
	 
	 $("#noOfTournamentsTd").removeClass("active");
	 $("#noOfMatchesTd").removeClass("active");
	 //$("#noOfMatchesWonTd").removeClass("active");
	// $("#noOfMatchesLostTd").removeClass("active");
	 $("#noOfMatchesTieTd").addClass("active");
	 
	 $("#tournamentsDiv").hide();
	 $("#matchesPlayedDiv").hide();
	// $("#matchesWonDiv").hide();
	// $("#matchesLostDiv").hide();
	 $("#matchesTieDiv").show();
	
 }
 
 
 
 </script>  
   
   
</body>
</html>