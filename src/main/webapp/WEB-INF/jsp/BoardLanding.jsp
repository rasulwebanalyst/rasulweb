<!DOCTYPE html>
<html lang="en">
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
     <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
    
<script>var ctx="${pageContext.request.contextPath}";</script>

<script type="text/javascript">
var pageNum=10;
</script>
<SCRIPT>
function feedDuration(feeddate)
{
	
	var date2= new Date(feeddate);
	 var date = new Date(date2.getFullYear()+"-"+(date2.getMonth()+1)+"-"+date2.getDate()+" "+date2.getHours()+":"+(date2.getMinutes()-1)+":"+date2.getSeconds()+" UTC");
	 var d1=new Date();
	 console.log("local dates"+d1);
	 console.log("utc to ist date "+date);
	var  result;
	var hours = Math.abs(d1 - date) / 36e5;
	var min=Math.abs(d1 - date) / (60*1000);
	var sec=Math.abs(d1 - date) /(1000);
	if(sec<60)
	{
		result=Math.round(sec)+' sec';
		
	}else if(min<60){
		result=Math.round(min)+' minutes';
	}else if(hours<=24){
		result=Math.round(hours)+' hours';
	}else{
		 var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
		 var days=(d1.getTime() - date2.getTime())/(oneDay);
		/*  if(days<=30)
			 {
			 	result=Math.round(Math.abs(days))+' days';
			 	
			 }else{
				var differemonth=days/30; 
				 result=Math.round(Math.abs(differemonth))+' months ago';
			 }
		 */
		 var monthNames = ["January", "February", "March", "April", "May", "June",
		                   "July", "August", "September", "October", "November", "December"
		                 ];
			var monthNme= monthNames[date2.getMonth()];
			result=date2.getDate()+' '+monthNme+' '+date2.getFullYear()+' at '+date2.getHours()+':'+date2.getMinutes();
	}

return result;
}

</SCRIPT>

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
	function test(id,gamedate){
		console.log(gamedate)
		var date = $("#formatDate_"+id).html();	
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	console.log(gettingFromServer);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	}
	
	
	 
</script>
<style type="text/css">

.txt-flow:hover{
    overflow: visible; 
    white-space: normal; 
}

</style>
</head>

<body class="cs-dboard">
   <%@ include file="CSCommon.jsp" %>
   <%@ include file="BoardHeader.jsp" %>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/feedFunction.js"></script>
    <section class="middleContentBlock">
       <%@ include file="BoardBanner.jsp" %>
       
 
   <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
                   
           <%@ include file="BoardSideMenu.jsp" %>
                    <div class="col-md-7 pageMiddleBlock">

                      <input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}">
                      
                      <div id="postedresult">
       
                      </div>
                       
                      
                        <div class="col-md-12 feedBlock whiteBox" id="feedMainDIV">
                        <h4 class="cs-db-title">Stars of the Week</h4>
                        
                        	<div class="col-md-6 col-xs-6 noPadding cs-view-list">
                        	<h4>Star Batsmen of the Week</h4>
                        	<ul>
                        	<c:choose>
                        	<c:when test="${!empty StarBatsman}">
                        	<c:forEach items="${StarBatsman}" var="Batsman">
                        	<li><img src="${Batsman.userImageUrl}" onerror="this.src='${pageContext.request.contextPath}/images/profileIcon.png'">
                        	<div class="cs-list-holder" style="width: 75%;">
                        	<div class="list-holder-txt">
                        	
                        	<a href="${pageContext.request.contextPath}/buddy/${Batsman.userName}/${Batsman.userId}" >${Batsman.userName}</a>
                        	<span style="float: right;">
                        	<span>${Batsman.totalruns}</span>
                        	<c:if test="${Batsman.notOutFlag eq 'NotOut'}">
                        	 <div class="star-rating">*</div></c:if>
                        	 <span style="margin-left: -6px;">(${Batsman.battingBalls})</span></span>
                        	 
                        	 </div> 
                        	<p class="cs-list-team">
                        	 <%-- <a href="${pageContext.request.contextPath}/${Batsman.teamBoardInfo.boardName}/board/${Batsman.teamBoardInfo.boardId}">${Batsman.teamBoardInfo.boardName}</a> 
                        	 </p>  --%>
                        	 
                        	 <%-- <a class="vw-score" style="float: right;" href="javascript:void(0);" onclick="showScoreCard('${Batsman.tournamentSchedulerId}','${BoradInfo.boardId}')">View Score</a> --%>
                        	 <a style="float: left;text-overflow: ellipsis; overflow: hidden;  width: 104px;  white-space: nowrap;" href="${pageContext.request.contextPath}/${Batsman.teamBoardInfo.boardName}/board/${Batsman.teamBoardInfo.boardId}">${Batsman.teamBoardInfo.boardName}</a> 
                        	 <a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="showScoreCard('${Batsman.tournamentSchedulerId}','${BoradInfo.boardId}')">View Score</a>
                        	 </p>
                        	</div></li>
                        	</c:forEach>
                        	</c:when>
                        	<c:otherwise>
                        	<li style="font-size: 13px; color: #FF5722">No Star Batsman for the week</li>
                        	</c:otherwise>
                        	</c:choose>
                        	<!-- <li><img src="http://s.ndtvimg.com/images/entities/300/lokesh-rahul-1688.png">
                        	<div class="cs-list-holder">
                        	<p>Raj Sundaram</p>
                        	<p class="cs-list-team">AW League</p>
                        	</div></li>    
                        	                    	
                        	<li><img src="http://s.ndtvimg.com/images/entities/300/lokesh-rahul-1688.png">
                        	<div class="cs-list-holder">
                        	<p>Dinesh Chandrasekaran</p>
                        	<p class="cs-list-team">AW League</p>
                        	</div></li>
                        	<li><img src="http://s.ndtvimg.com/images/entities/300/lokesh-rahul-1688.png">
                        	<div class="cs-list-holder">
                        	<p>Madhavan Ramalingam</p>
                        	<p class="cs-list-team">AW League</p>
                        	</div></li> -->
                        	</ul>
                        	
                        	</div><!-- col md 6 -->
                        	<div class="col-md-6 col-xs-6 noPadding cs-view-list">
                        	<h4>Star Bowlers of the Week</h4>
                        	<ul>
                        	
                        	<c:choose>
                        	<c:when test="${!empty StarBowler}">
                        	<c:forEach items="${StarBowler}" var="Bowler">
                        	<li><img src="${Bowler.userImageUrl}" onerror="this.src='${pageContext.request.contextPath}/images/profileIcon.png'">
                        	
                        	<div class="cs-list-holder" style="width: 75%;">
                        	<div class="list-holder-txt">
                        	<a href="${pageContext.request.contextPath}/buddy/${Bowler.userName}/${Bowler.userId}">${Bowler.userName}</a></span><span style="float: right;"> ${Bowler.wickets}/${Bowler.runs} (${Bowler.overs})</span>
                        	</div>
                        	<p class="cs-list-team">
                        	<a style="float: left;text-overflow: ellipsis; overflow: hidden;  width: 104px;  white-space: nowrap;" href="${pageContext.request.contextPath}/${Bowler.teamBoardInfo.boardName}/board/${Bowler.teamBoardInfo.boardId}"> ${Bowler.teamBoardInfo.boardName}</a> 
                        	 <a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="showScoreCard('${Bowler.tournamentSchedulerId}','${BoradInfo.boardId}')">View Score</a>
                        	 </p> 
                        	 
                        	 
                        	 
                        	</div>
                        	</li>
                        	</c:forEach>
                        	</c:when>
                        	<c:otherwise>
                        	<li style="font-size: 13px; color: #FF5722">No Star Bowler for the week</li>
                        	</c:otherwise>
                        	</c:choose>
                        	
                        	
                        	<!-- <li><img src="http://s.ndtvimg.com/images/entities/300/lokesh-rahul-1688.png">
                        	<div class="cs-list-holder">
                        	<p>Raj Sundaram</p>
                        	<p class="cs-list-team">AW League</p>
                        	</div>cs-list-holder end
                        	</li>                        	
                        	<li>
                        	<img src="http://s.ndtvimg.com/images/entities/300/lokesh-rahul-1688.png">
                        	<div class="cs-list-holder">
                        	<p>Dinesh Chandrasekaran</p>
                        	<p class="cs-list-team">AW League</p>
                        	</div></li>
                        	<li><img src="http://s.ndtvimg.com/images/entities/300/lokesh-rahul-1688.png">
                        	<div class="cs-list-holder">
                        	<p>Madhavan Ramalingam</p>
                        	<p class="cs-list-team">AW League</p>
                        	</div></li> -->
                        	</ul>
                        	
                        	</div><!-- col md 6 -->
                        	
                        	
                        	
                        	
                        	<div class="col-md-12 col-xs-12 whiteBox cs-gm-list">
                        	<h4>Recent Match Results</h4>
                        	<div class="result-list-scroller">
                        	<ul class="result-list">
                        	
                        	
                        	<c:choose>
                        	<c:when test="${empty completedMatchesList}">
                        	<li><span  style="font-size: 13px; color: #FF5722">No completed match results</span></li>
                        	
                        	</c:when>
                        	<c:otherwise>
                        	<c:forEach items="${completedMatchesList}" var ="completed">
                        	<c:choose>
                        	<c:when test="${completed.matchWonBy eq completed.homeTeamId}">
                        	<li><span class="txt-flow"> <%--  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName} </a> ${completed.statusOfMatch} --%>
                        	<c:choose>
                        	<c:when test="${!empty completed.resultMessage}">
                        	 <span >${completed.resultMessage}</span></c:when><c:otherwise> 
                        	 
                        	 <c:choose>
                           <c:when test="${completed.statusOfMatch eq 'tie'}">
                           		<span >Match Tied</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'draw'}">
                           		<span >Match Drawn</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'forfeit'}">
                           		<span >${completed.winTeamName} won the match by forfeit</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'walkover'}">
                           		<span >${completed.winTeamName} won the match by walkover</span>
                           </c:when>
                           <c:otherwise>
                           <span >${completed.winTeamName} won the match</span>
                           </c:otherwise>
                           </c:choose>
                           
                        	 
                        	 </c:otherwise> 
                        	 </c:choose> (<a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName}</a>:${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}, <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.awayTeamId}">${completed.loseTeamName}</a>:${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers})  </span><a class="vw-score" href="javascript:void(0);" onclick="showScoreCard('${completed.tournamentSchedulerId}','${completed.leagueCreatedBy}')">View Score</a></li>
                        	</c:when>
                        	<c:otherwise>
                        	<li><span class="txt-flow"> <%--  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName} </a> ${completed.statusOfMatch} --%>
                        	<c:choose>
                        	<c:when test="${!empty completed.resultMessage}">
                        	<span > ${completed.resultMessage} </span></c:when><c:otherwise> 
                        	 
                        	 <c:choose>
                           <c:when test="${completed.statusOfMatch eq 'tie'}">
                           		<span >Match Tied</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'draw'}">
                           		<span >Match Drawn</span>
                           </c:when>
                            <c:when test="${completed.statusOfMatch eq 'forfeit'}">
                           		<span >${completed.winTeamName} won the match by forfeit</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'walkover'}">
                           		<span >${completed.winTeamName} won the match by walkover</span>
                           </c:when>
                           <c:otherwise>
                           <span >${completed.winTeamName} won the match</span>
                           </c:otherwise>
                           </c:choose>
                        	 </c:otherwise>
                        	 </c:choose>
                        	 (<a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName}</a>:${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}, <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.homeTeamId}">${completed.loseTeamName}</a>:${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers})   </span><a class="vw-score" href="javascript:void(0);" onclick="showScoreCard('${completed.tournamentSchedulerId}','${completed.leagueCreatedBy}')">View Score</a></li>
                        	</c:otherwise>
                        	</c:choose>
                        	
                        	
                        	</c:forEach>
                        	
                        	</c:otherwise>
                        	
                        	
                        	</c:choose>
                        	
                        	
                        	<%-- <c:choose>
                        	<c:when test="${empty completedMatchesList}">
                        	<li><span style="font-size: 13px; color: #FF5722">No completed match results</span></li>
                        	
                        	</c:when>
                        	<c:otherwise>
                        	<c:forEach items="${completedMatchesList}" var ="completed">
                        	<c:choose>
                        	<c:when test="${completed.matchWonBy eq completed.homeTeamId}">
                        	<li><span>  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName} </a> ${completed.statusOfMatch}
                        	
                        	 ${completed.resultMessage} (<a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName}</a>:${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}, <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.awayTeamId}">${completed.loseTeamName}</a>:${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers})  </span></li>
                        	
                        	</c:when>
                        	<c:otherwise>
                        	<li><span>  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName} </a> ${completed.statusOfMatch} 
                        	
                        	${completed.resultMessage} (<a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName}</a>:${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}, <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.homeTeamId}">${completed.loseTeamName}</a>:${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers})   </span></li>
                        	
                        	</c:otherwise>
                        	</c:choose>
                        	
                        	
                        	</c:forEach>
                        	
                        	</c:otherwise>
                        	
                        	
                        	</c:choose> --%>
                        	
                        	
                        	
                        		<!-- <li><span>Somerset Cavalier Won (hbcc:60/10 in 31.2, Somerset Cavalier:61/1 in 6.3)</span></li>
                        		<li><span>Somerset Cavalier Won (hbcc:60/10 in 31.2, Somerset Cavalier:61/1 in 6.3)</span></li>
                        		<li><span>Somerset Cavalier Won (hbcc:60/10 in 31.2, Somerset Cavalier:61/1 in 6.3)</span></li>
                        		<li><span>Somerset Cavalier Won (hbcc:60/10 in 31.2, Somerset Cavalier:61/1 in 6.3)</span></li>
                        		<li><span>Somerset Cavalier Won (hbcc:60/10 in 31.2, Somerset Cavalier:61/1 in 6.3)</span></li> -->
                        	
                        	
                        	</ul>
                        	</div><!-- result view scroller end -->
                        	</div><!-- col 12 end -->
                        	
                        	
                        	<div class="col-md-12 col-xs-12 whiteBox cs-gm-list">
                        	<h4>Upcoming/In progress Matches</h4>
                        	<div class="result-list-scroller">
                        	<ul class="result-list">
                        	<c:choose>
                        	<c:when test="${empty upcomingMatchesList}">
                        	<li><span style="font-size: 13px; color: #FF5722">No upcoming matches</span></li>
                        	
                        	</c:when>
                        	<c:otherwise>
                        	<c:forEach items="${upcomingMatchesList}" var ="upcomming">
                        	
                        	<li><span class="txt-flow">${upcomming.tournamentName} : <a href="${pageContext.request.contextPath}/${upcomming.homeTeamName}/board/${upcomming.homeTeamId}">${upcomming.homeTeamName}</a> vs <a href="${pageContext.request.contextPath}/${upcomming.awayTeamName}/board/${upcomming.awayTeamId}">${upcomming.awayTeamName}</a> - <p id="formatDate_${upcomming.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${upcomming.gameDate}" /></p><script>document.writeln(test("${upcomming.tournamentSchedulerId}","${upcomming.gameDate}"));</script></span> 
                        	
                        	<c:if test="${upcomming.status eq 'InProgress'}">
                        	<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${upcomming.tournamentSchedulerId}','${upcomming.leagueCreatedBy}')">Live Score</a>
                        	
                        	</c:if>
                        	<c:if test="${upcomming.status eq 'Upcoming'}">
                        	
                        	<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${upcomming.tournamentSchedulerId}','no')">View Score</a>
                        	</c:if>
                        	
                        	 </li>
                        	</c:forEach>
                        	
                        	</c:otherwise>
                        	
                        	
                        	</c:choose>
                        		<!-- <li><span>3rd ODI: Bangladesh v England at Chittagong - Oct 12, 2016 </span></li>
                        		<li><span>3rd ODI: Bangladesh v England at Chittagong - Oct 12, 2016 </span></li>
                        		<li><span>3rd ODI: Bangladesh v England at Chittagong - Oct 12, 2016 </span></li>
                        		<li><span>3rd ODI: Bangladesh v England at Chittagong - Oct 12, 2016 </span></li>
                        		<li><span>3rd ODI: Bangladesh v England at Chittagong - Oct 12, 2016 </span></li> -->
                        	</ul>
                        	
                        	</div><!-- col 12 end -->
                        	                                                                                
						</div><!-- whitebox end -->
                       </div>
                      </div>

    
                       <%--  <%@ include file="AroundYouMenu2.jsp" %> --%>
                       
<div class="col-md-3 pull-right noPadding pageRightBlock">
                          
                          <div class="box-inner">
                          
                            <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"> <a href="">Frequently Used Menus</a></div>
                              
                            
                             		<div class="sidebar-list">
                             		
                             		
                             		
                             		
                             		
                             		<!--                 For Side menu start                -->
                             		
                             		
                             		
                             		
                             		 <c:if test="${BoradInfo.category eq 'Academy' }">
                               <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                        	  	
                             		
                             		<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a href="javascript:" class="active"> Create Umpire</a>
                             			<a href="javascript:"> Create Ground</a>
                             			<a href="javascript:"> Create Trophy</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                              			<a href="javascript:"> Create Schedule</a>
                             			<a href="javascript:"> Assign Umpire to Schedule </a>
                             			<a href="javascript:"> Assign Scorer to Schedule</a>
                             			<a href="javascript:"> Cancel Game by date</a>
                             			<a href="javascript:"> Edit/Cancel Tournament</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		   <a href="javascript:"> Points Table</a>
                                       <a href="javascript:"> Schedule List</a>                      			
                             		   <a href="javascript:"> Schedule & Scores</a>                             		   
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">  
                             			<a href="javascript:"> Umpire List</a>    
                             			<a href="javascript:"> Ground List</a>
                             			
                             			<a href="javascript:"> Teams</a>
                             			<a href="javascript:"> Team Contacts</a>
                             			
                             			<a href="javascript:"> Centuries</a>
                             			<a href="javascript:"> Half Centuries</a>
                             			<a href="javascript:"> 5fer</a>
                             			<a href="javascript:"> Top Batsmen</a>
                             			<a href="javascript:"> Top Bowlers</a>
                             			<a href="javascript:"> Top Umpires</a>
                             			<a href="javascript:"> Dispute Management</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
                             		
                             		
                             		
                             		
                        	  	
                        	  	
                        	  	
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
                             			<%-- <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                             			
                             			
                             			
                             			<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}" class="active"> Create Umpire</a>
                             			<a href="${pageContext.request.contextPath}/CreateGround/boardId/${BoradInfo.boardId}"> Create Ground</a>
                             			<a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${BoradInfo.boardId}"> Create Trophy</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                              			<a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${BoradInfo.boardId}"> Create Schedule</a>
                             			<a href="${pageContext.request.contextPath}/AssignUmpire/boardId/${BoradInfo.boardId}"> Assign Umpire to Schedule </a>
                             			<a href="${pageContext.request.contextPath}/AssignScorer/boardId/${BoradInfo.boardId}"> Assign Scorer to Schedule</a>
                             			<a href="${pageContext.request.contextPath}/CancelGameByDate/boardId/${BoradInfo.boardId}"> Cancel Game by date</a>
                             			<a href="${pageContext.request.contextPath}/CancelTournament/boardId/${BoradInfo.boardId}"> Edit/Cancel Tournament</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		    <a href="${pageContext.request.contextPath}/LeaguePoints/${BoradInfo.boardId}"> Points Table</a>
                             	        <a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"> Schedule List</a>                            			
                             			<a href="${pageContext.request.contextPath}/GameSchedule/boardId/${BoradInfo.boardId}"> Schedule & Scores</a>
                             			
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1"> 
                             			<a href="${pageContext.request.contextPath}/UmpireList/boardId/${BoradInfo.boardId}"> Umpire List</a>
                             			<a href="${pageContext.request.contextPath}/GroundList/boardId/${BoradInfo.boardId}"> Ground List</a>
                             			
                             			
                             			<a href="${pageContext.request.contextPath}/teamdetails/${BoradInfo.boardId}"> Teams</a>
                             			<a href="${pageContext.request.contextPath}/teamcontacts/${BoradInfo.boardId}">Team Contacts</a>
                             			
                             			<a href="${pageContext.request.contextPath}/leaguecenturies/${BoradInfo.boardId}"> Centuries</a>
                             			<a href="${pageContext.request.contextPath}/leaguehalfcenturies/${BoradInfo.boardId}"> Half Centuries</a>
                             			<a href="${pageContext.request.contextPath}/fivewickets/${BoradInfo.boardId}"> 5fer</a>
                             			<a href="${pageContext.request.contextPath}/topbatsman/${BoradInfo.boardId}"> Top Batsmen</a>
                             			<a href="${pageContext.request.contextPath}/topbowler/${BoradInfo.boardId}"> Top Bowlers</a>
                             			<a href="${pageContext.request.contextPath}/topUmpire/${BoradInfo.boardId}"> Top Umpires</a>
                             			<a href="${pageContext.request.contextPath}/DisputeManagement/boardId/${BoradInfo.boardId}"> Dispute Management</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
                             			
                             			
                             			
                             			
                             			
                              </c:when>
                              <c:otherwise>
                                  <%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                                  		
                                  		<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}" class="active"> Create Umpire</a>
                             			<a href="${pageContext.request.contextPath}/CreateGround/boardId/${BoradInfo.boardId}"> Create Ground</a>
                             			<a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${BoradInfo.boardId}"> Create Trophy</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                              			<a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${BoradInfo.boardId}"> Create Schedule</a>
                             			<a href="${pageContext.request.contextPath}/AssignUmpire/boardId/${BoradInfo.boardId}"> Assign Umpire to Schedule </a>
                             			<a href="${pageContext.request.contextPath}/AssignScorer/boardId/${BoradInfo.boardId}"> Assign Scorer to Schedule</a>
                             			<a href="${pageContext.request.contextPath}/CancelGameByDate/boardId/${BoradInfo.boardId}"> Cancel Game by date</a>
                             			<a href="${pageContext.request.contextPath}/CancelTournament/boardId/${BoradInfo.boardId}"> Edit/Cancel Tournament</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		    <a href="${pageContext.request.contextPath}/LeaguePoints/${BoradInfo.boardId}"> Points Table</a>
                             	        <a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"> Schedule List</a>                           			
                             			<a href="${pageContext.request.contextPath}/GameSchedule/boardId/${BoradInfo.boardId}"> Schedule & Scores</a>
                             			
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">  
                             			<a href="${pageContext.request.contextPath}/UmpireList/boardId/${BoradInfo.boardId}"> Umpire List</a>
                             			<a href="${pageContext.request.contextPath}/GroundList/boardId/${BoradInfo.boardId}"> Ground List</a>
                             			
                             			
                             			<a href="${pageContext.request.contextPath}/teamdetails/${BoradInfo.boardId}"> Teams</a>
                             			<a href="${pageContext.request.contextPath}/teamcontacts/${BoradInfo.boardId}"> Team Contacts</a>
                             			
                             			<a href="${pageContext.request.contextPath}/leaguecenturies/${BoradInfo.boardId}"> Centuries</a>
                             			<a href="${pageContext.request.contextPath}/leaguehalfcenturies/${BoradInfo.boardId}"> Half Centuries</a>
                             			<a href="${pageContext.request.contextPath}/fivewickets/${BoradInfo.boardId}"> 5fer</a>
                             			<a href="${pageContext.request.contextPath}/topbatsman/${BoradInfo.boardId}"> Top Batsmen</a>
                             			<a href="${pageContext.request.contextPath}/topbowler/${BoradInfo.boardId}"> Top Bowlers</a>
                             			<a href="${pageContext.request.contextPath}/topUmpire/${BoradInfo.boardId}"> Top Umpires</a>
                             			<a href="${pageContext.request.contextPath}/DisputeManagement/boardId/${BoradInfo.boardId}"> Dispute Management</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose> 
                               </c:if>                                              	
                               <c:if test="${BoradInfo.category eq 'League' }">
 						
                            	 <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                        	  		
                        	  		
                        	  		<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a href="javascript:" class="active"> Create Umpire</a>
                             			<a href="javascript:"> Create Ground</a>
                             			<a href="javascript:"> Create Trophy</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                              			<a href="javascript:"> Create Schedule</a>
                             			<a href="javascript:"> Assign Umpire to Schedule </a>
                             			<a href="javascript:"> Assign Scorer to Schedule</a>
                             			<a href="javascript:"> Cancel Game by date</a>
                             			<a href="javascript:"> Edit/Cancel Tournament</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		    <a href="javascript:"> Points Table</a>
                                        <a href="javascript:"> Schedule List</a>                          			
                             			<a href="javascript:"> Schedule & Scores</a>                             	        
                             			
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">
                             			<a href="javascript:"> Umpire List</a>
                             			<a href="javascript:"> Ground List</a>   
                             			
                             			
                             			<a href="javascript:"> Teams</a>
                             			<a href="javascript:"> Team Contacts</a>
                             			
                             			<a href="javascript:"> Centuries</a>
                             			<a href="javascript:"> Half Centuries</a>
                             			<a href="javascript:"> 5fer</a>
                             			<a href="javascript:"> Top Batsmen</a>
                             			<a href="javascript:"> Top Bowlers</a>
                             			<a href="javascript:"> Top Umpires</a>
                             			<a href="javascript:"> Dispute Management</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
                        	  		
                        	  		
                        	  		
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
                             			<%-- <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                             			
                             			
                             			<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}" class="active"> Create Umpire</a>
                             			<a href="${pageContext.request.contextPath}/CreateGround/boardId/${BoradInfo.boardId}"> Create Ground</a>
                             			<a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${BoradInfo.boardId}"> Create Trophy</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                              			<a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${BoradInfo.boardId}"> Create Schedule</a>
                             			<a href="${pageContext.request.contextPath}/AssignUmpire/boardId/${BoradInfo.boardId}"> Assign Umpire to Schedule </a>
                             			<a href="${pageContext.request.contextPath}/AssignScorer/boardId/${BoradInfo.boardId}"> Assign Scorer to Schedule</a>
                             			<a href="${pageContext.request.contextPath}/CancelGameByDate/boardId/${BoradInfo.boardId}"> Cancel Game by date</a>
                             			<a href="${pageContext.request.contextPath}/CancelTournament/boardId/${BoradInfo.boardId}"> Edit/Cancel Tournament</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		<a href="${pageContext.request.contextPath}/LeaguePoints/${BoradInfo.boardId}"> Points Table</a>
                             	      <a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"> Schedule List</a>                       			
                             			<a href="${pageContext.request.contextPath}/GameSchedule/boardId/${BoradInfo.boardId}"> Schedule & Scores</a>  
                             			
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">  
                             			<a href="${pageContext.request.contextPath}/UmpireList/boardId/${BoradInfo.boardId}"> Umpire List</a>
                             			<a href="${pageContext.request.contextPath}/GroundList/boardId/${BoradInfo.boardId}"> Ground List</a>    
                             			
                             			
                             			<a href="${pageContext.request.contextPath}/teamdetails/${BoradInfo.boardId}"> Teams</a>
                             			<a href="${pageContext.request.contextPath}/teamcontacts/${BoradInfo.boardId}"> Team Contacts</a>
                             			
                             			<a href="${pageContext.request.contextPath}/leaguecenturies/${BoradInfo.boardId}"> Centuries</a>
                             			<a href="${pageContext.request.contextPath}/leaguehalfcenturies/${BoradInfo.boardId}"> Half Centuries</a>
                             			<a href="${pageContext.request.contextPath}/fivewickets/${BoradInfo.boardId}"> 5fer</a>
                             			<a href="${pageContext.request.contextPath}/topbatsman/${BoradInfo.boardId}"> Top Batsmen</a>
                             			<a href="${pageContext.request.contextPath}/topbowler/${BoradInfo.boardId}"> Top Bowlers</a>
                             			<a href="${pageContext.request.contextPath}/topUmpire/${BoradInfo.boardId}"> Top Umpires</a>
                             			<a href="${pageContext.request.contextPath}/DisputeManagement/boardId/${BoradInfo.boardId}"> Dispute Management</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
                             			
                              </c:when>
                              <c:otherwise>
                                  <%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                                  
                                  
                                  		<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}" class="active"> Create Umpire</a>
                             			<a href="${pageContext.request.contextPath}/CreateGround/boardId/${BoradInfo.boardId}"></i> Create Ground</a>
                             			<a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${BoradInfo.boardId}"></i> Create Trophy</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                              			<a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${BoradInfo.boardId}"> Create Schedule</a>
                             			<a href="${pageContext.request.contextPath}/AssignUmpire/boardId/${BoradInfo.boardId}"> Assign Umpire to Schedule </a>
                             			<a href="${pageContext.request.contextPath}/AssignScorer/boardId/${BoradInfo.boardId}"> Assign Scorer to Schedule</a>
                             			<a href="${pageContext.request.contextPath}/CancelGameByDate/boardId/${BoradInfo.boardId}"> Cancel Game by date</a>
                             			<a href="${pageContext.request.contextPath}/CancelTournament/boardId/${BoradInfo.boardId}"> Edit/Cancel Tournament</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		     <a href="${pageContext.request.contextPath}/LeaguePoints/${BoradInfo.boardId}"> Points Table</a>
                             	         <a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"> Schedule List</a>                          			
                             			 <a href="${pageContext.request.contextPath}/GameSchedule/boardId/${BoradInfo.boardId}"> Schedule & Scores</a>   
                             			
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1"> 
                             			<a href="${pageContext.request.contextPath}/UmpireList/boardId/${BoradInfo.boardId}"> Umpire List</a>
                             			<a href="${pageContext.request.contextPath}/GroundList/boardId/${BoradInfo.boardId}"> Ground List</a>  
                             			
                             			
                             			<a href="${pageContext.request.contextPath}/teamdetails/${BoradInfo.boardId}"> Teams</a>
                             			<a href="${pageContext.request.contextPath}/teamcontacts/${BoradInfo.boardId}">Team Contacts</a>
                             			
                             			<a href="${pageContext.request.contextPath}/leaguecenturies/${BoradInfo.boardId}"> Centuries</a>
                             			<a href="${pageContext.request.contextPath}/leaguehalfcenturies/${BoradInfo.boardId}"> Half Centuries</a>
                             			<a href="${pageContext.request.contextPath}/fivewickets/${BoradInfo.boardId}"> 5fer</a>
                             			<a href="${pageContext.request.contextPath}/topbatsman/${BoradInfo.boardId}"> Top Batsmen</a>
                             			<a href="${pageContext.request.contextPath}/topbowler/${BoradInfo.boardId}"> Top Bowlers</a>
                             			<a href="${pageContext.request.contextPath}/topUmpire/${BoradInfo.boardId}"> Top Umpires</a>
                             			<a href="${pageContext.request.contextPath}/DisputeManagement/boardId/${BoradInfo.boardId}"> Dispute Management</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose>
                            	</c:if>	
                             		
                             		
                             		
                             		<!--                 For Side menu end                -->
                             		
                             		
                             		
                             		
                             		
                             		<!-- <div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		    <a>consectetur</a>
                             			<a>consectetur</a>
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                             			<a>consectetur</a>
                              			<a>consectetur</a>
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             	        <a>consectetur</a>
                             			<a>consectetur</a>
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">                             			
                             			<a>consectetur</a>
                             			<a>consectetur</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div> -->
    
	               
                            </div>
                          </div>
                          </div>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content" style="overflow-y: scroll; height: 458px;">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/matchesAroundYou">Recent Posts</a></div>
                              
                              
                                <div class="sidebar-list">
                                
                                   
                        <c:choose>
                        	<c:when test="${empty FeedsList}">
                        	 <div class="media" id="NoFeedMsgDIV">
                        	 	Currently there are no feeds available in your pitch
                        	 </div>
                        	</c:when>
                        		
                        	<c:otherwise>
                        	
                        		 <c:forEach var="feed" items="${FeedsList}" varStatus="index">

                                <div class="media feedDiv${feed.feedId}">
	                                  <!-- <div class="media-left"> -->
	                                  <div class="feed-left">
	                                    <a href="#">
	                                      <img src="${feed.userImageurl}" class="nav-avatar" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
	                                      
	                                    </a>
	                                     <h4 class="media-heading">${feed.postedByName}</h4>
	                                  </div>
	
	                                  <div class="media-body">
	                                   
		                                    <div class="headRight">
		                                    	<%-- <span id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</span><span id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</span> --%>
		                                    	
		                                    	<c:choose>
		                                    		<c:when test="${feed.postedBy eq USRID}">
		                                    			<p class="trash-holder" onclick="feedDelete('${feed.feedId}')" title="Delete"><i class="fa fa-trash trash"></i> </p>
		                                    		</c:when>
		                                    		<c:otherwise>
		                                    			<p class="trash-holder" onclick="feedSpam('${feed.feedId}')" title="Report spam"><i class="fa fa-ban"></i> </p>
		                                    		</c:otherwise>
		                                    	</c:choose>
		                                    	<p id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</p>
		                                    	 <p id="HitCountDIv${index.count}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p>
		                                    </div>
	                                    
	                                    <span class="postTime"><script type="text/javascript">
                                    	
                                    	//document.write(feedDuration("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	document.write(feedDisplayDate("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	</script></span>
	                                    <div class="galleryBlock">
	                                     <c:if test="${not empty feed.fileAttachement }">
	                                    	<c:forEach var="feedImage" items="${feed.fileAttachement}">
	                                    	<%-- 	<img src="${feedImage.attachmentUrl }"> --%>
	                                    		<c:choose>
	                                    			<c:when test="${feedImage.attachmentType eq 'video'}">
	                                    					<video width="100%" height="" controls>
																							  <source src="${feedImage.attachmentUrl}" type="video/mp4">
																							 <%--  <source src="${feedImage.attachmentUrl}" type="video/ogg"> --%>
															</video>
	                                    					
	                                    			</c:when>
	                                    			<c:otherwise>
	                                    					<%-- <embed style="width:100%; height:320px;" src="${feedImage.attachmentUrl }">	
	                                    						  --%>
	                                    						  <%-- <iframe width="269" height="200" src="${feedImage.attachmentUrl}" frameborder="0" allowfullscreen></iframe> --%>
				                                    					<img src="${feedImage.attachmentUrl}">	                                     				
	                                    			</c:otherwise>
	                                    			
	                                    		
	                                    		</c:choose>
	                                    	</c:forEach>
	                                    </c:if>

	                                         <p>${feed.content}</p>
	                                    </div>
	                                    
	                                    <%-- <a href="javascript:addfeedHit('${feed.feedId}')" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a> --%>
	                                    <c:choose>
	                                    		<c:when test="${feed.userFeedHit}">
	                                    					<%-- <a href="javascript:" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a> --%>
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>	
	                                    		</c:when>
	                                    		<c:otherwise>
	                                    					
	                                    					<%-- <a href="javascript:addfeedHit2('${feed.feedId}', this)" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a> --%>
	                                    					<div class="hitIconDiv" id="hittDiv${index.count}"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" id="feed${index.count}"><i class="fa hitIcon"></i> Hit</a></div>
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}" style="display: none;"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>
	                                    		</c:otherwise>
	                                    </c:choose>
	                                    <%-- <a href="#" class="shareLink" onclick="showCommentDIV('${feed.feedId}')"><i class="fa fa-commenting"></i> Comment</a> --%>
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="javascript:shareFeed('${feed.feedId}')" class="shareLink" ><i class="fa fa-share"></i> Share</a>
	                                    
	                                    <div class="postBlock commentBlock" id="feedContenDIVt${feed.feedId}" style="display: none;">
                                            <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">
                                            <textarea class="form-control" id="feedcontent${feed.feedId}" placeholder="Write a Comment"></textarea>
                                            <a href="javascript:" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" style="margin-top: 6px;" onclick="sendFeedComments(this)" value="${feed.feedId}">BOWL</button></a>
                                            <div style="color: red; margin-left: 54px;" id="feedcmderrorDiv${feed.feedId}"></div>
                                            
                                        </div>
                                        
	                                  </div>
                                </div>
                               
                                </c:forEach>
                        		
                        	</c:otherwise>
                        	
                        </c:choose>
                   
	                              			 
	                             		 </div>
	                              <%--  <c:choose>
	                             	<c:when test="${empty MatchesArroundYou}">
	                             		<div class="sidebar-list noContentDiv">
	                             			No Matches around you.
	                             		</div>
	                             	</c:when>
	                             	<c:otherwise>
		                              <c:forEach items="${MatchesArroundYou}" var="match" begin="0" end="5">
		                              <c:set var="board" value="${match.homeTeamInfo}"></c:set>
		                               <c:set var="board1" value="${match.awayTeamInfo}"></c:set>
		                               
		                               <div class="sidebar-list">
	                              			<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}">${board.boardName}</a> vs <a href="${pageContext.request.contextPath}/${board1.boardName }/board/${board1.boardId}">${board1.boardName}</a><br> <strong>${match.gameDateStr}</strong>
	                                   		 
	                                   		 <c:choose>
	                              			<c:when  test="${match.status eq 'InProgress'}">
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','${match.createdBy}')">View Score</a>
	                              			</c:when>
	                              			<c:otherwise>
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','no')">View Score</a>
	                              			</c:otherwise>
	                              			</c:choose>
	                                   		 
	                                   		 <span class="teamLogos">
	                                			<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}"><img src="${board.boardImageURL }?" class="teamLogo" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" ></a> <b>VS</b> <a href="${pageContext.request.contextPath}/${board1.boardName }/board/${board1.boardId}"><img src="${board1.boardImageURL }" class="teamLogo"></a>
	                                		</span>
	                             		 </div>
		                              		
		                              </c:forEach>
	                             	</c:otherwise>
	                             </c:choose>  --%>
                             
                            </div>
                          </div>
                          
                          

                          

                          
                          
                    <%--         <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/TeamAroundYou">Teams Around You</a></div>
                              
                              
                              
                              <c:choose>
                              	<c:when test="${empty TEAMAroundYou}">
                              		<div class="sidebar-list noContentDiv">
                             			No teams around you.
                             		</div>
                              	</c:when>
                              	<c:otherwise>
                              		 <c:forEach items="${TEAMAroundYou}" var="brd" begin="0" end="5">
                              		 <a href="${pageContext.request.contextPath}/${brd.boardName}/board/${brd.boardId}">
                              		<div class="sidebar-list"> 
                                   	 <img src="${brd.boardImageURL}?" class="teamLogo" title="${brd.boardName}" alt="${brd.boardName}" onError="imgError(this)" >
                                     
                                     <span>${brd.boardName}</span>
                                     
                                      </div>
                                    </a>
                                    </c:forEach>
                                   
                              	</c:otherwise>
                              </c:choose>
                             	
                            
                              
                            </div>
                          </div>
                          
                            <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/merchantsAroundYou">Merchants Around You </a><span class="sidebar-header-light"></span></div>
                               <c:choose>
                             	<c:when test="${empty Merchants}">
                 					<div class="sidebar-list noContentDiv">
                             			No Merchants around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${Merchants}" var="merchant" begin="0" end="5">
			                               <c:if test="${not empty merchant.boardName}">
			                            
			                              <div class="sidebar-list" >
			                                    <div class="teamLogos">
			                             <a href="${pageContext.request.contextPath}/${merchant.boardName}/board/${merchant.boardId}">
			                                	<img src="${merchant.boardImageURL}?" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="teamLogo" >
			                                	</a>
                          	</div>
			                                     <a href="${pageContext.request.contextPath}/${merchant.boardName}/board/${merchant.boardId}">
			                                     ${merchant.boardName}
			                                     </a>
			                                     <br>
			                                     ${merchant.city}
			                              </div>
			                              </a>
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              
                            
                        
                              
                            </div>
                          </div>
                          
                          
                           --%>
                          
                          
                          </div>
                        </div>
   




                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>

    <%@ include file="Footer.jsp" %>
<script type="text/javascript">



function showScoreCardInProgress(id,bid){
		//alert("hello");
		if(bid == 'no')
			{
			displaynotification('Match not yet started',2000);
			}else{
		 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgress/boardId/"+bid+"/matchId/"+id;
			}
		}


function showScoreCard(id,boardId){
	 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
}



$(window).data('ajaxready', true).scroll(function(e) {
    console.log('scroll');
    
	if ($(window).data('ajaxready') == false) {
	//	alert('no ajax');
        return;
    }else{
    	
        if( $(window).scrollTop()+1 >= ($(document).height() - $(window).height())){
        	pageNum=parseInt(pageNum)+parseInt(10);
        	console.log('page -->'+pageNum);
        	getTeamAroundYou(pageNum,10);
        		
        }
    }
    
});

function getTeamAroundYou(pageNum, numberOFRecords){
	 var nodes={
       		startNode : pageNum,
       		endNode : numberOFRecords,
       		userID : "${USRID}",
       		feedHitUserId : "${USRID}",
       		boardId : "${BoradInfo.boardId}"
	     };
       var postinfo=JSON.stringify(nodes);
  	 var   projectURL=  document.getElementById('projectURL').value;

       $.ajax({
   		type : "POST",
   		url :ctx+"/boardFeedsSearch",
   		dataType: "json",
           contentType: "application/json; charset=utf-8",
           data : postinfo,	
   		success : function(res) {
   			console.log(res);
   			var htm ='';
			if(res!=null)
				{
						if(res.length>0)
							{
									for(var f in res){

										
										var date2= new Date(res[f].createdDate);
										var d1= new Date();
										 var  result;
										 var hours = Math.abs(d1 - date2) / 36e5;
										 var min=Math.abs(d1 - date2) / (60*1000);
										 var sec=Math.abs(d1 - date2) /(1000);
										 console.log("hours"+hours);
										 console.log("min"+min);
										 console.log("sec"+sec);
									 if(sec<=60)
									 {
									 	result=Math.round(sec)+' sec';
									 	
									 }else if(min<60){
									 	result=Math.round(min)+' minutes';
									 }else{
									 	result=Math.round(hours)+' hours';
									 }
									 
									 var userImage=$('#userImageId').val();
									 
										 var fid="'"+res[f].feedId+"'";
										 var fid2="'scroll"+res[f].feedId+"'";
										 var fid3="'scroll"+f+""+res[f].feedId+"'";
										 var feedtype="'Buddy'";
										htm +='<div class="col-md-12 feedBlock whiteBox" >'           	
						               
										 +'<div class="media">'
						                +'<div class="media-left">'
						                +'<a href="#">';
										if(userImage != null || userImage !=""){
											htm +='<img src="'+userImage+'" class="nav-avatar">';
										}else{
											htm +='<img src="'+projectURL+'images/profileIcon.png" class="nav-avatar">';
										}
											
										htm +='</a>'
						              +'</div>'
						              +'<div class="media-body">'
						                +'<h4 class="media-heading">'+res[f].postedByName+'</h4>'
						                +'<div class="headRight">';
						               // +	'<span id="HitCountDIv'+res[f].feedId+'"><img src="'+ctx+'/images/hitIcon1.png" width="18" class="hitIcon1"  >'+res[f].feedHitCount+'</span><span id="commentCount'+res[f].feedId+'"><i class="fa fa-commenting-o"></i>'+res[f].feedCommentCount+'</span>'
										if(res[f].postedBy==userID){
							            	  htm +='<p class="trash-holder" onclick="feedDelete('+fid+')" title="Delete"><i class="fa fa-trash trash"></i> </p>';
							              }else{
							            	  htm +='<p class="trash-holder" onclick="feedDelete('+fid+')" title="Report spam"><i class="fa fa-ban"></i> </p>';
							              }
						               htm+='<p id="commentCountscroll'+f+''+res[f].feedId+'" onclick="getAllComments('+fid+')"><i class="fa fa-commenting"></i>'+res[f].feedCommentCount+'</p> <p id="HitCountDIvscroll'+f+''+res[f].feedId+'"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" id="commentCountscroll'+f+''+res[f].feedId+'" >'+res[f].feedHitCount+'</p>'
						                +'</div>';
						                
						              //  +'<span class="postTime">'+result+'</span>'
						             htm +='<span class="postTime">'+feedDuration(res[f].createdDate)+'</span>';
						              
						              htm +='<div class="galleryBlock">';
										var attachments=res[f].fileAttachement;
										console.log("attachments"+JSON.stringify(attachments));
						                if(attachments != null && attachments.length>0){
						                	for(var i=0;i<attachments.length;i++){
						                		
						                		if(attachments[i].attachmentType == 'video')
						                			{
						                				htm +='<video width="100%" controls>';
						                				htm +='<source src="'+attachments[i].attachmentUrl	 +'" type="video/mp4">';
						                				htm +='</video>';  
						                			}else{
						                				htm +='<img src="'+attachments[i].attachmentUrl	 +'">';
						                			}
						                	}
						                }
						               
						                htm +='<p>'+res[f].content+'</p>'               	
						                	+'</div>';
						                	
						             //   +'<a href="javascript:addfeedHit('+fid+')" class="shareLink"><i class="fa hitIcon"></i> Hit</a>'
						                	if(res[f].userFeedHit)
						                		{
						                		///htm+'<div class="hitIconDiv" id="hittDivscroll'+res[f].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid2+')" class="shareLink" id="feed'+res[f].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>'
						                		htm	+='<div class="hitIconDiv" id="hittedDivscroll'+res[f].feedId+'" style="display: block;"><img src="'+ctx+'/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>';
						                		}else{
						                			htm	+='<div class="hitIconDiv" id="hittDivscroll'+res[f].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid2+')" class="shareLink" id="feed'+res[f].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>';
						                			htm	+='<div class="hitIconDiv" id="hittedDivscroll'+res[f].feedId+'" style="display: none;"><img src="'+ctx+'/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>';
						                		}
						             		
						                	htm +='<a href="javascript:showCommentDIV('+fid3+')" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>'
						               // +'<a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>'
						                +'<a href="javascript:shareMenus('+fid3+')" class="shareLink" id="share${feed.feedId}" ><i class="fa fa-share"></i> Share</a>'
						                +'<span class="shareMenus" id="shareMenusscroll'+f+''+res[f].feedId+'" style="display: none;">'
						                 +'<input type="radio" class="" checked id="allOption'+res[f].feedId+'" name="shareOption'+res[f].feedId+'"  onclick="shareFeed2('+fid+','+feedtype+',this.value)" value="All">'
						                 +'<label for="allOption'+res[f].feedId+'"><span></span>All</label>'                                            
						                 +'<input type="radio" class="" id="buddyOption'+res[f].feedId+'" name="shareOption'+res[f].feedId+'" onclick="shareFeed2('+fid+','+feedtype+',this.value)" value="Buddy">'
						                 +'<label for="buddyOption'+res[f].feedId+'"><span></span>Buddy</label>'                                          
						                 +'</span>'
						              +'</div>'
						            +'</div>'
						            +'<div class="postBlock commentBlock" id="feedContenDIVtscroll'+f+''+res[f].feedId+'" style="display: none;">'
						            +'<img src="'+buddyIMG+'" onError="this.onerror=null;this.src=/images/profileIcon.png;" class="nav-avatar">'
						            +'<textarea class="form-control" id="feedcontentscroll'+f+''+res[f].feedId+'" placeholder="Write a Comment"></textarea>'
						            +'<div style="color: red; margin-left: 54px;" id="feedcmderrorDivscroll'+f+''+res[f].feedId+'"></div>'
						           // +'<a href="#" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" onclick="sendFeedComments(this)" value="'+res[f].feedId+'">BOWL</button></a>'
						           //sendFeedComments2 
						           //+'<a href="#" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" onclick="sendFeedComments2(this,'+fid3+')" value="'+res[f].feedId+'">BOWL</button></a>'
						           +'<button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" onclick="sendFeedComments2(this,'+fid3+')" value="'+res[f].feedId+'">BOWL</button>'
						           +'</div>'
						            
						            +'</div>';
									}
										
							}else{
								$(window).data('ajaxready', false);
							}
				}
			
			$("#feedMainDIV").append(htm);
			document.getElementById('content').value='';
   		},
   		error:function(response){
   			console.log("Your request failed due to some service problem"+JSON.stringify(response));
   		},
   	
   	}); 
}

</script>
<script type="text/javascript">


$(document).ready(function(){
	$('#loading').hide();
});

var feedImagesArray=[];

function readURL(input) {
	
    if (input.files) {
    	var fileTextBoxLength=$('input:file').length;
        var reader = new FileReader();
        reader.onload = function (e) {
        	 console.log('fileTextBoxLength');
        	console.log(fileTextBoxLength);
        	console.log('response : ');
        	console.log(e);
        	var result=e.target.result;
        	
        	var bytes=result.substring(result.indexOf(',')+1,result.length);
            var imageType=result.substring(result.indexOf('data:')+5,result.indexOf('/'));
            var fileSize = (e.total)/1024/1024;
    		////alert(fileSize);
    		if(fileSize<=2.1){
    			
    			 if(imageType=='image'  ){
    				 
    				 

        			 var feedImage={
        	           		 id:fileTextBoxLength,
        	            		imageOrVideoByteDatastr:bytes,
        	            		attachmentType:imageType
        	            };
        	            console.log('image details');
        	            console.log(feedImage);
        	            feedImagesArray.push(feedImage);
        	            
        	        	
        	        	var html='';
        	        	html+='<div class="uploadedImg" >';
        	        //	html+='<img src="'+result+'">';
        	        if(imageType=='video')
        	            		{
        	            		
        	            		html+='<img src="${pageContext.request.contextPath}/images/video_image.png">';
        	            		}else{
        	            			html+='<img src="'+result+'">';
        	            		}
        	        	html+=' <i class="fa fa-close upclose" onclick="removeFeedImage(this,'+fileTextBoxLength+')"></i>';
        	        	html+='</div>';
        	        	
        	        	
        	        	$('.uploadedFiles').append(html);
        	        	 var filehtml="<input id='upload"+fileTextBoxLength+"' type='file' style='display:none;' name='file' onchange='readURL(this)' />";
        	             $('#fileDiv').append(filehtml);
        			
    				 
    			 }else{
                 	displaynotification('Please upload image files only',1500);
                 }
    			
    		}else{
    			displaynotification('Please upload below 2 MB file',2000);
    		}
           
        };
        
        reader.readAsDataURL(input.files[0]);
    }
}

function removeFeedImage(elem,fileLength){
	//alert("removing current one");
	$(elem).parent().remove();
	$('#upload'+fileLength).remove();
	if(feedImagesArray != null){
		for(var i=0;i<feedImagesArray.length;i++){
			var fileImage=feedImagesArray[i];
			if(fileImage.id = fileLength ){
				feedImagesArray.splice(i,1);
			}
		}
		
	}
	
	
	
	
}

$("#upload_link").on('click', function(e){
	e.preventDefault();
	var fileTextBoxLength=$('input:file').length;
	fileTextBoxLength=fileTextBoxLength-1;
	$("#upload"+fileTextBoxLength).trigger('click');
});

$(function(){
	$(function(){
		   
		$("body").click(function(){
			$("#bowlOptionDIV").fadeOut();
			});

			$("#content").click(function(e){
			 e.stopPropagation();
				$("#bowlOptionDIV").show();
			});
			$("#BowlOptionDiv").click(function(e){
				 e.stopPropagation();
				 
					$("#bowlOptionDIV").show();
					//alert('d');
				});
				
			 
		   
	});
});

$(document).ready(function() {
	$('#showmore').hide();
	$('#less').hide();
	$('#more').click(function() {
		$('#showmore').show();
		$('#less').show();
		$('#more').hide();
	});
	$('#less').click(function() {
		$('#showmore').hide();
		$('#more').show();
		$('#less').hide();
	});
});  
	$(document).ready(function() {	
	$('#showmore1').hide();
	$('#less1').hide();
	$('#more1').click(function() {
		$('#showmore1').show();
		$('#less1').show();
		$('#more1').hide();
	});
	$('#less1').click(function() {
		$('#showmore1').hide();
		$('#more1').show();
		$('#less1').hide();
	});
	
});



</script>

</body>

</html>