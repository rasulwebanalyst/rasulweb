<!DOCTYPE html>
<html lang="en">
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
          <!-- responsive css -->
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


<style>

.dropbtn {
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
    background-color: #9197a3;
    min-width: 130px;
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


<body class="cs-dboard">


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



   <%@ include file="CSCommon.jsp" %>
   <%@ include file="BoardHeaderSession.jsp" %>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/feedFunction.js"></script>
    <section class="middleContentBlock">
       <%@ include file="BoardPublicProfileBanner.jsp" %>
       
       
        <div id="feedhittedlist" class="popupDiv feedhit" style="display: none;">
												
												           <div class="box">
												                <span class="head">Hit List</span>
												                <span class="close_btn" > <i class="fa fa-close" onclick="closeFeededit()"></i> </span>
												
												                <div class="popupContentDiv">
												                
												                		<div id="hittedlists"></div>
												                        	
												                          
												                          <!-- <div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="updatePost()">OK</button></div> -->
												                       
												                </div>
												            </div>
												 
												 	</div>
       
       <div id="feededit" class="popupDiv" style="display: none;">
												
												           <div class="box">
												                <span class="head">Edit feed</span>
												                <span class="close_btn" > <i class="fa fa-close" onclick="closeFeededit()"></i> </span>
												
												                <div class="popupContentDiv">
												                
												                		
												                        	<textarea class="form-control" id="feedsedited" rows="5" placeholder="" ></textarea>
												                        	<input type="hidden" id="EditedId">
												                          
												                          <div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="updatePost()">OK</button></div>
												                       
												                </div>
												            </div>
												 
												 	</div>
       
 
   <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
                   
           <%@ include file="BoardSideMenuSession.jsp" %>
          <%--  <%@ include file="BoardFanMenu.jsp" %> --%>
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
                        	
                        	<a href="javascript:void(0);" onclick="PleaseLogin()" >${Batsman.userName}</a>
                        	<span style="float: right;">
                        	<span>${Batsman.totalruns}</span>
                        	<c:if test="${Batsman.notOutFlag eq 'NotOut'}">
                        	 <div class="star-rating">*</div></c:if>
                        	 <span style="margin-left: -6px;">(${Batsman.battingBalls})</span></span></div> 
                        	<p class="cs-list-team">
                        	<%--  <a href="${pageContext.request.contextPath}/${Batsman.teamBoardInfo.boardName}/board/${Batsman.teamBoardInfo.boardId}">${Batsman.teamBoardInfo.boardName}</a> --%>
                        	
                        	<a style="float: left;text-overflow: ellipsis; overflow: hidden;  width: 104px;  white-space: nowrap;" href="javascript:void(0);" onclick="PleaseLogin()">${Batsman.teamBoardInfo.boardName}</a> 
                        	 <a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="PleaseLogin()">View Score</a> 
                        	 </p> 
                        	 
                        	</div></li>
                        	</c:forEach>
                        	</c:when>
                        	<c:otherwise>
                        	<li style="font-size: 13px; color: #FF5722">No Star Batsman for the week</li>
                        	</c:otherwise>
                        	</c:choose>
                        	
                        	
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
                        	<a href="javascript:void(0);" onclick="PleaseLogin()">${Bowler.userName}</a></span><span style="float: right;"> ${Bowler.wickets}/${Bowler.runs} (${Bowler.overs})</span>
                        	</div>
                        	<p class="cs-list-team">
                        	<%-- <a href="${pageContext.request.contextPath}/${Bowler.teamBoardInfo.boardName}/board/${Bowler.teamBoardInfo.boardId}"> ${Bowler.teamBoardInfo.boardName}</a> --%>
                        	<a style="float: left;text-overflow: ellipsis; overflow: hidden;  width: 104px;  white-space: nowrap;" href="javascript:void(0);" onclick="PleaseLogin()"> ${Bowler.teamBoardInfo.boardName}</a> 
                        	 <a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" href="javascript:void(0);" onclick="PleaseLogin()">View Score</a> 
                        	 </p> 
                        	</div>
                        	</li>
                        	</c:forEach>
                        	</c:when>
                        	<c:otherwise>
                        	<li style="font-size: 13px; color: #FF5722">No Star Bowler for the week</li>
                        	</c:otherwise>
                        	</c:choose>
                        	
                        	
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
                        	 </c:choose> (<a href="javascript:void(0);" onclick="PleaseLogin()">${completed.winTeamName}</a>:${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}, <a href="javascript:void(0);" onclick="PleaseLogin()">${completed.loseTeamName}</a>:${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers})  </span><a class="vw-score" href="javascript:void(0);" onclick="PleaseLogin()">View Score</a></li>
                        	</c:when>
                        	<c:otherwise>
                        	<li><span class="txt-flow"> <%--  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.matchWonBy}">${completed.winTeamName} </a> ${completed.statusOfMatch} --%>
                        	<c:choose>
                        	<c:when test="${!empty completed.resultMessage}">
                        	 <span >${completed.resultMessage}</span> </c:when><c:otherwise> 
                        	 
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
                        	 (<a href="javascript:void(0);" onclick="PleaseLogin()">${completed.winTeamName}</a>:${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}, <a href="javascript:void(0);" onclick="PleaseLogin()">${completed.loseTeamName}</a>:${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers})   </span><a class="vw-score" href="javascript:void(0);" onclick="PleaseLogin()">View Score</a></li>
                        	</c:otherwise>
                        	</c:choose>
                        	
                        	
                        	</c:forEach>
                        	
                        	</c:otherwise>
                        	
                        	
                        	</c:choose>
                        	
                        		
                        	</ul>
                        	</div>
                        	</div><!-- col 12 end -->
                        	
                        	
                        	<div class="col-md-12 col-xs-12 whiteBox cs-gm-list">
                        	<h4>Upcoming/In progress Matches</h4>
                        	<div class="result-list-scroller">
                        	<ul class="result-list">
                        	
                        	<c:choose>
                        	<c:when test="${empty upcomingMatchesList}">
                        	<li><span  style="font-size: 13px; color: #FF5722">No upcoming matches</span></li>
                        	
                        	</c:when>
                        	<c:otherwise>
                        	<c:forEach items="${upcomingMatchesList}" var ="upcomming">
                        	
                        	<li><span class="txt-flow">${upcomming.tournamentName} : <a href="javascript:void(0);" onclick="PleaseLogin()">${upcomming.homeTeamName}</a> vs <a href="javascript:void(0);" onclick="PleaseLogin()">${upcomming.awayTeamName}</a> - <p id="formatDate_${upcomming.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${upcomming.gameDate}" /></p><script>document.writeln(test("${upcomming.tournamentSchedulerId}","${upcomming.gameDate}"));</script>  </span>
                        	
                        	
                        	<c:if test="${upcomming.status eq 'InProgress'}">
                        	<a class="vw-score" href="javascript:void(0);" onclick="PleaseLogin()">Live Score</a>
                        	
                        	</c:if>
                        	<c:if test="${upcomming.status eq 'Upcoming'}">
                        	
                        	<a class="vw-score" href="javascript:void(0);" onclick="PleaseLogin()">View Score</a>
                        	</c:if>
                        	
                        	
                        	
                        	
                        	</li>
                        	</c:forEach>
                        	
                        	</c:otherwise>
                        	
                        	
                        	</c:choose>
                        	
                        		
                        	</ul>
                        	</div>
                        	
                        	</div><!-- col 12 end -->
                        	                                                                                
						</div><!-- whitebox end -->

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
		                        	  		
		                        	  		
		                        	  		 <!-- <div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             			
                             		</div> -->
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		 <a href="javascript:"><i class="fa fa-angle-right"></i> Points Table</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Schedule List</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Schedule & Scores</a>
                             	            
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1"> 
                             			<a href="javascript:"><i class="fa fa-angle-right"></i> Umpire List</a>                                         
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Ground List</a>
                             			
                             			<a href="javascript:"><i class="fa fa-angle-right"></i> Teams</a>                                         
                                           
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Centuries</a>                            			
                             			    <a href="javascript:"><i class="fa fa-angle-right"></i> Half Centuries</a>
											<a href="javascript:"><i class="fa fa-angle-right"></i> 5fer</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Top Batsmen</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Top Bowlers</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Top Umpires</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
		                        	  		
		                        	  		
		                        	  		
		                        	  		
		                        	  		
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<%-- <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                     			
		                     			
		                     			<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		   
                             			
                             			
                             			
                                    	      <c:choose>
                                    	      <c:when test="${fn:length(entrymenu) gt 3}">
                                    	      
                                    	      <c:forEach var="ground" items="${entrymenu}" begin="0" end="2">                                   	      		   			
                                    	      		   						${ground}                                    	      		   
                                    	      		   				</c:forEach>
                                    	      
                                    	      </c:when>
                                    	      <c:otherwise>
                                    	      <c:if test="${!empty entrymenu}">
                                    	      		   			<c:forEach var="ground" items="${entrymenu}" >                                   	      		   			
                                    	      		   						${ground}                                    	      		   
                                    	      		   				</c:forEach>                                   	      		   			
                                    	      </c:if>
                                    	      </c:otherwise>
                                    	     </c:choose>
                                    	      
                                    	        
                             			
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                             			
                             			
                             			<c:if test="${fn:length(entrymenu) gt 3}">
										 <c:forEach var="ground1" items="${entrymenu}" begin="3">
											${ground1}  
											</c:forEach> 
											</c:if>
                             			
                             			
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             			
                             			
                             		</div>
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		
                             		<a href="${pageContext.request.contextPath}/LeaguePointsProfilesite/${BoradInfo.boardId}"> Points Table</a>
                             		
                             		<c:if test="${!empty Viewmenu}">
										 <c:forEach var="ground1" items="${Viewmenu}" begin="2" end="3">
											${ground1}  
											</c:forEach> 
											</c:if>
                             	       
                                            

                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">
                             			<c:if test="${!empty Viewmenu}">
										 <c:forEach var="ground1" items="${Viewmenu}" begin="0" end="1">
											${ground1}  
											</c:forEach> 
											</c:if>
                             			
                             			<c:if test="${!empty Viewmenu}">
                                    	      <c:if test="${fn:length(Viewmenu) gt 4}">
										 <c:forEach var="ground1" items="${Viewmenu}" begin="4" >
											
											${ground1}  
											
											</c:forEach> 
											</c:if>
											</c:if>
                             			
                             			<a href="javascript:void(0);" onclick="PleaseLogin()"> Teams</a>    
                             			      
                             			      
                             			        <c:if test="${!empty LeaugeMenuList}">
                                    	      			<c:if test="${!empty LeaugeMenuList.contactDetails}">
                                    	      		   			<c:forEach var="contact" items="${LeaugeMenuList.contactDetails}" >                                   	      		   			
                                    	      		   						${contact.URL}                                    	      		   
                                    	      		   				</c:forEach>                                   	      		   			
                                    	      		   </c:if>
                                    	      </c:if>
                             			      
                             			      
                             			                                     
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Centuries</a>                             			
                             			 <a href="javascript:void(0);" onclick="PleaseLogin()"> Half Centuries</a>
											<a href="javascript:void(0);" onclick="PleaseLogin()"> 5fer</a></li>
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Top Batsmen</a>
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Top Bowlers</a>
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Top Umpires</a>  
                                             
                                             <c:if test="${!empty LeaugeMenuList}">
                                             <c:if test="${!empty LeaugeMenuList.disputeManagment}">
                                            	 <li>${LeaugeMenuList.disputeManagment}</li>        
                                             </c:if>
                                             
                                             </c:if>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
		                     			
		                     			
		                     			
		                     			
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if> 	  
 								<c:if test="${BoradInfo.category eq 'League' }">
                            		
		                            	<c:choose>
		                        	  	<c:when test="${BoradInfo.statusId==19}">	
		                        	  	 	
		                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                        	  		
		                        	  		<!-- <div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             			
                             		</div> -->
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             	            <a href="${pageContext.request.contextPath}/LeaguePointsProfilesite/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Points Table</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Schedule List</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Schedule & Scores</a>
                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">    
                             			 <a href="javascript:"><i class="fa fa-angle-right"></i> Umpire List</a>                                         
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Ground List</a>
                             			
                             			    <a href="javascript:"><i class="fa fa-angle-right"></i> Teams</a>                                         
                                           
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Centuries</a>                         			
                             			    <a href="javascript:"><i class="fa fa-angle-right"></i> Half Centuries</a>
											<a href="javascript:"><i class="fa fa-angle-right"></i> 5fer</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Top Batsmen</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Top Bowlers</a>
                                            <a href="javascript:"><i class="fa fa-angle-right"></i> Top Umpires</a>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>
		                        	  		
		                        	  		
		                        	  		
		                        	  	</c:when>
		                        	  	<c:otherwise>
		                     				<%-- <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
		                     				
		                     			<c:if test="${!empty entrymenu}">	
		                     			<div class="EntryMenu">
                             		<h4>Entry Menu</h4>
                             		   
                             			
                             			
                             			
                                    	      
                                    	         <c:choose>
                                    	      <c:when test="${fn:length(entrymenu) gt 3}">
                                    	      
                                    	      <c:forEach var="ground" items="${entrymenu}" begin="0" end="2">                                   	      		   			
                                    	      		   						${ground}                                    	      		   
                                    	      		   				</c:forEach>
                                    	      
                                    	      </c:when>
                                    	      <c:otherwise>
                                    	      <c:if test="${!empty entrymenu}">
                                    	      		   			<c:forEach var="ground" items="${entrymenu}" >                                   	      		   			
                                    	      		   						${ground}                                    	      		   
                                    	      		   				</c:forEach>                                   	      		   			
                                    	      </c:if>
                                    	      </c:otherwise>
                                    	     </c:choose>
                                    	       
                             			<c:if test="${fn:length(entrymenu) gt 3}">
                             			<div class="moreview" id="more">...More</div>
                             			<span class="showmore" id="showmore">
                             			
                             			<c:if test="${fn:length(entrymenu) gt 3}">
										 <c:forEach var="ground1" items="${entrymenu}" begin="3">
											${ground1}  
											</c:forEach> 
											</c:if>
											
                             			</span>
                             			<div class="lessview" id="less">...Less</div>
                             			
                             			</c:if>
                             			
                             		</div>
                             		
                             		</c:if>
                             		
                             		
                             		<div class="ViewMenu">
                             		<h4>View Menu</h4>
                             		
                             		
                             		<a href="${pageContext.request.contextPath}/LeaguePointsProfilesite/${BoradInfo.boardId}"> Points Table</a>
                             		
                                    	      
                                    	      
                                    	      <c:if test="${!empty Viewmenu}">
                                    	      <c:if test="${fn:length(Viewmenu) gt 2}">
										 <c:forEach var="ground1" items="${Viewmenu}" begin="2" end="3">
											${ground1}  
											</c:forEach> 
											</c:if>
											</c:if>
                             	       

                             			<div class="moreview" id="more1">...More</div>
                             			<span class="showmore" id="showmore1">
                             			
                             			<c:if test="${!empty Viewmenu}">
										 <c:forEach var="ground1" items="${Viewmenu}" begin="0" end="1">
											${ground1}  
											</c:forEach> 
											</c:if>
                             			
                             			<c:if test="${!empty Viewmenu}">
                                    	      <c:if test="${fn:length(Viewmenu) gt 4}">
										 <c:forEach var="ground1" items="${Viewmenu}" begin="4">
											
											${ground1}  
											
											</c:forEach> 
											</c:if>
											</c:if>
                             			
                             			 
                             			<a href="javascript:void(0);" onclick="PleaseLogin()"> Teams</a>                                         
                                            
                                            
                                            <c:if test="${!empty LeaugeMenuList}">
                                    	      			<c:if test="${!empty LeaugeMenuList.contactDetails}">
                                    	      		   			<c:forEach var="contact" items="${LeaugeMenuList.contactDetails}" >                                   	      		   			
                                    	      		   						${contact.URL}                                 	      		   
                                    	      		   				</c:forEach>                                   	      		   			
                                    	      		   </c:if>
                                    	      </c:if>
                                            
                                            
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Centuries</a>                            			
                             			 <a href="javascript:void(0);" onclick="PleaseLogin()"> Half Centuries</a>
											<a href="javascript:void(0);" onclick="PleaseLogin()"> 5fer</a></li>
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Top Batsmen</a>
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Top Bowlers</a>
                                            <a href="javascript:void(0);" onclick="PleaseLogin()"> Top Umpires</a>  
                                             
                                             <c:if test="${!empty LeaugeMenuList}">
                                             <c:if test="${!empty LeaugeMenuList.disputeManagment}">
                                            	 <li>${LeaugeMenuList.disputeManagment}</li>        
                                             </c:if>
                                             
                                             </c:if>
                             			</span>
                             			<div class="lessview" id="less1">...Less</div>
                             		</div>	
		                     				
		                     				
		                     			</c:otherwise>
		                        	  </c:choose>
                            	</c:if>		
                             		
                            		
                             		
                             		
                             		
	               
                            </div>
                          </div>
                          </div>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                         <%--  <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content feedBlock" style="overflow-y: scroll; height: 458px;">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/matchesAroundYou">Recent Posts</a></div>
                              
                              
                                <div class="sidebar-list">
                                
                  
                   
	                              			 
	                             		 </div>
	                             
                             
                            </div>
                          </div> --%>
                          
                          

                    
                          
                          
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
		 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgressPublicProfile/boardId/"+bid+"/matchId/"+id;
			}
		}


function showScoreCard(id,boardId){
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardPublicProfile/boardId/"+boardId+"/matchId/"+id;
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

<script type="text/javascript">

function feedEdit(id)
{
	var feed=$("#"+id).text();
	$("#feedsedited").val(feed);
	$("#EditedId").val(id);
	$("#feededit").show();
	console.log(feed);
	}
function closeFeededit()
{
	$("#feededit").hide();
	$("#feedhittedlist").hide();
	}
	
	function updatePost()
	{
		var feed=$("#feedsedited").val();
		var editedid=$("#EditedId").val();
		console.log("Edited feed :"+feed);
		
		
		var feedarray=feed.split(" ");
		var sentfeed="";
		for(var i in feedarray)
			{
			var word=linkify(feedarray[i]);
			console.log(sentfeed);
			console.log(i);
			if(i == 0){sentfeed+=word;}else{
			sentfeed+=" "+word;}
			}
		console.log(sentfeed);
		
		
var request={
				
				content : sentfeed,
				updateFlag : "feed",
				feedId : editedid,
		}
		
		$.ajax({
			
			type : "post",
			url : "${pageContext.request.contextPath}/UpdateFeed",
			data : JSON.stringify(request),
			contentType : "application/json",
			success : function(res){
				
				if(res == "success")
					{
					$("#"+editedid).html(sentfeed);
					}
				$("#feedsedited").val("");
				$("#EditedId").val("");
				$("#feededit").hide();
				}
			
		}) 
	}
	
	function linkify(text) {
	    var urlRegex =/(\b(((https?|ftp|file|):\/\/)|www[.])[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/ig;
	    return text.replace(urlRegex, function(url) {
	        return '<a href="' + url + '" target="_blank">' + url + '</a>';
	    });
	}
	
	
	 function SaveComment(id,fid)
	 {
		var comment=$("#Edited"+id).val();
		 /*alert(comment);*/
		
		console.log("Edited feed :"+comment);
		
		var request={
				feedCommentId : id,
				content : comment,
				updateFlag : "feedComment",
				feedId : fid,
		}
		
		$.ajax({
			
			type : "post",
			url : "${pageContext.request.contextPath}/UpdateComment",
			data : JSON.stringify(request),
			contentType : "application/json",
			success : function(res){
				
				if(res == "success")
					{
					console.log("Edit comment :"+res);
					$("#Original"+id).text(comment);
					$("#editdiv_"+id).show();
					 $("#body_"+id).hide();
					}
				}
			
		})
		
	 }
	 
	 function getHitList(fid)
	 {
		 console.log("add");
		 
		 var request={
				 feedId : fid,	 
		 }
		 $.ajax({
			 type : "post",
			 url : "${pageContext.request.contextPath}/hitList",
			 data : JSON.stringify(request),
			 contentType : "application/json",
			 success : function(res)
			 {
				 var htmlco="";
				 if(res !=null)
					 {
					 htmlco+="<div class='dropdown-content'>";
if(res.length > 5){
						 
						 
						 for(var i=0;i < 5;i++)
							 {
							 htmlco+="<li style='white-space: nowrap; overflow: hidden; text-overflow: ellipsis; width: 114px;'>"+res[i].hittedByName+"</li>";
							 }
						  htmlco+="<li>more .. </li>"; 
					 }else
						 {
						 
						 for(var i in res)
							{
							htmlco+="<li style='white-space: nowrap; overflow: hidden; text-overflow: ellipsis; width: 114px;'>"+res[i].hittedByName+"</li>";
							}
						 }
  
				 htmlco+="</div>";
	
					 }
				 
				 $("#Hitlist_"+fid).html(htmlco).trigger('create');
				 
			 }
			 
		 })
	 }
	 
	 function removeHitList(fid)
	 {
		  $("#Hitlist_"+fid).html("").trigger('create');
		 console.log("remove"); 
	 }
	 
	 function gitHitedList(fid)
	 {
		 var request={
				 feedId : fid,	 
		 }
		 $.ajax({
			 type : "post",
			 url : "${pageContext.request.contextPath}/hitList",
			 data : JSON.stringify(request),
			 contentType : "application/json",
			 success : function(res)
			 {
				 var htm="";
				 if(res !=null && res.length > 0)
					 {
				for(var i in res)
					{
					
					
					htm +='<li  class="selection-item">';
					
                        htm+='<div class="media">'
                        +'<div class="media-left">'
                      
                  	
                  		htm +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">'
                    +'</div>'
                    +'<div class="media-body">'
                    +'<a href="'+ctx+'/buddy/'+res[i].hittedByName+'/'+res[i].hittedBy+'">'
                     +' <h4 class="media-heading">'+res[i].hittedByName+'<br>'
                     +'</a>';
                  htm+='</h4>'
                   	 +'</div>'
                 	 +'</div>'
          			+'</li>';
					}
					 }
				 else{
					 htm +='<li  class="selection-item">  No Records';
						
	       			+'</li>';
						 
					 }
				 
				 $("#hittedlists").html(htm).trigger('create');
				 $("#feedhittedlist").show();
				 
			 }
			 
		 })
		
	 }
	 
	
</script>

<script type="text/javascript">

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