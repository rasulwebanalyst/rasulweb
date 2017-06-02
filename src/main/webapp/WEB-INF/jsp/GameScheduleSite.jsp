<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">

<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">

<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
    
 <!-- jQuery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
				$('.datepicker').datepicker({
					 autoclose: true
				});
				$('.datepicker').on('changeDate', function(ev){
					$(this).datepicker('hide');
				});
				
			});
		</script>
		
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
	function test(id){
		var date = $("#formatDate_"+id).html();	
		console.log("Date :"+date);
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	console.log("gettingFromServer :"+gettingFromServer);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	}
	
	function enterScoreCard(id,tournmentId,tournmentShudulorId,homeId,awayTeamId,date,createdBy){
	//alert("id"+id+"<><>"+tournmentId+"<><>"+tournmentId+",,"+homeId);
	 window.location.href = "${pageContext.request.contextPath}/EnterScoreSelectedMatch/boardId/"+id+"/"+tournmentId+"/"+tournmentShudulorId+"/"+homeId+"/"+awayTeamId+"/"+date+"/"+createdBy;
	}
	 
</script>
		
		
</head>

<style>


.dropdown-content {
    /* display: none;  */
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

.dropdown-content.request {  
background: #fff;
    width: 150px;
    right: 30px;
    top: 46px;
}
.dropdown-content.request::before {
    border-top: 5px solid transparent;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-bottom: 5px solid rgba(0,0,0,0.8);
    content: "";
    position: absolute;
    top: -9px;
    right: 0px;
}
.dropdown-content.request ul {
padding-left: 0;
margin-bottom: 0px;
}
.dropdown-content.request ul li {  
list-style: none;
white-space: nowrap;
padding: 0 0px 0 10px;
display: flex;
display: -webkit-flex;
display: -ms-flexbox;
justify-content: space-between;
-webkit-justify-content: space-between;
-ms-justify-content: space-between;
align-items: center;
-webkit-align-items: center;
-ms-align-items: center;
border: 1px solid rgba(0,0,0,0.3);
}
.dropdown-content.request ul li a img {
width: 16px;
}
.dropdown-content.request ul li a {
padding: 6px 16px;
}
td:last-child { 
position: relative;
}
.dropdown-content.request ul li:last-child {
border-top: none;}



</style>

<body>

<div id="ScoreCardPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        <div id="RoasterPopupText">
        <p style="text-align: center; id="RoasterPopupText">You have signed in as a limited access user, Kindly signup/login with cricketsocial for full access.</p>
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

<div id="Requestpopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
    
    
    <p style="text-align: center; font-weight: 600; margin: 10px 0;" class="head">Requester </p>
                <span class="close_btn" > <i class="fa fa-close" onclick="Requestpopup()"></i> </span>
    
    
      <div class="modal-body">
        <div id="RequestPopupcontent" style="text-align: left; margin: 0px 10px;">
        
        Do You want to lock scorecard for this user
        
        </div>
        
        
        <input type="hidden" id="UidRequest">
        <input type="hidden" id="TidRequest">
        <input type="hidden" id="StatusRequest">
        <input type="hidden" id="Status1Request">
        <input type="hidden" id="FlagRequest">
        
        
        
        
        
      </div>
       <div class="modal-footer action">
      <button type="button" onclick="Requestpopupok()" class="btn btn-default ok">Close</button>
       </div> 
    </div>

  </div>
</div>





<div id="ScoreCardPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        
        <p >The operation you have requested will erase the match data .</p>
        <br>
        <p>Do you want to continue?</p>
        
        <input type="hidden" id="ScoreCardBoardId">
        <input type="hidden" id="ScoreCardTournamentId">
        <input type="hidden" id="ScoreCardtournmentShudulorId">
        <input type="hidden" id="ScoreCardhomeId">
        <input type="hidden" id="ScoreCardawayTeamId">
        <input type="hidden" id="ScoreCarddate">
        <input type="hidden" id="ScoreCardcreatedBy">
        
        
      </div>
      <div class="modal-footer action">
      <button type="button" onclick="ScoreCardPopupok()" class="btn btn-default ok">Yes</button>
      <button type="button" onclick="ScoreCardPopuphide()" class="btn btn-default ok">No</button>
       </div>
    </div>

  </div>
</div>

	<div id="EditSCoreCard" class="modal" role="dialog"
		style="display: none;">
		<div class="modal-dialog">

			<div class="modal-content">
			
				<div class="modal-body">
					<p style="text-align:left;">Please choose options.</p>
				</div>
				<div class="modal-footer action" style="text-align:center;">
                   <div style="text-align:left !important;">
					<input type="radio" id="Male" name="gender" value="1"> <label
						for="Male"><span></span>Do you want to edit Scorecard?</label> <input
						type="radio" id="female" name="gender" value="2"> <label
						for="female"><span></span>Do you want to enter Scorecard?</label>
				   </div>
					<button type="button" onclick="EnterScoreCardPopupok()"
						class="btn btn-default ok">OK</button>
					<button type="button" onclick="ScoreCardPopuphide()"
						class="btn btn-default ok">Cancel</button>

				</div>
			</div>

		</div>
	</div>

	<div id="editScoreCardPopUp" class="modal" role="dialog"
		style="display: none;">
		<div class="modal-dialog">

			<div class="modal-content">
				

				<div class="modal-body">
					<p style="text-align:center;">Under Development</p>
					<br>
				</div>
				<div class="modal-footer action">
					<button type="button" onclick="ScoreCardPopuphide()"
						class="btn btn-default ok">OK</button>
				</div>
			</div>
		</div>
	</div>
	
<div id="EditSCoreCard1" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
      <div class="modal-body">
        
        
        <p >The operation you have requested will erase the match data .</p>
        <br>
        <p>Do you want to continue?</p>
        
        <input type="hidden" id="ScoreCardBoardId">
        <input type="hidden" id="ScoreCardTournamentId">
        <input type="hidden" id="ScoreCardtournmentShudulorId">
        <input type="hidden" id="ScoreCardhomeId">
        <input type="hidden" id="ScoreCardawayTeamId">
        <input type="hidden" id="ScoreCarddate">
        <input type="hidden" id="ScoreCardcreatedBy">
        
        
      </div>
      <div class="modal-footer action">
      <button type="button" onclick="EnterScoreCardPopupok1()" class="btn btn-default ok">Yes</button>
      <button type="button" onclick="ScoreCardPopuphide()" class="btn btn-default ok">No</button>
       </div>
    </div>

  </div>
</div>

<input type="hidden" id="Logeduserid" value='<%=session.getAttribute("USRID")%>'>

	<input type="hidden" id="hiddenDate" value="${dateString}"> 
<input type="hidden" id="hiddenDateStart" value="${startDate}">
<% java.util.Calendar date=java.util.Calendar.getInstance();
%>

<c:set var="curr" value="<%=new java.util.Date()%>" />
<%
date.add(java.util.Calendar.DATE, +6);
%>
<c:set value="<%=date.getTime()%>" var="toDateStr" />
<%@ include file="CSCommon.jsp" %>
 <%@ include file="BoardHeaderSession.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
  <%@ include file="publicLeagueManagementSideMenusite.jsp" %>
      
      
      <div id="popupDiv" class="popupDiv" style="display: none;">

           <div class="box">
                <span class="head">Reason</span>
                <span class="close_btn" > <i class="fa fa-close" onclick="okFun()"></i> </span>

                <div class="popupContentDiv">
                
                		
                        	<textarea class="form-control" id="reason" rows="5" placeholder=""></textarea>
                          
                          <div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="cancelFunction()">OK</button></div>
                       
                </div>
            </div>
 
 	</div>
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Schedule & Scores</h1>
                  <form id="filterForm" method="POST" action="${pageContext.request.contextPath}/filterScheduleFunctionSite.htm">
                  <div class="col-md-12 noPadding">
                     	
                        
                        <div class="col-md-2 noLeftPad">
                        <label for="">From Date</label> 
                        <c:choose>
                        	<c:when test="${!empty GameFilter.fromDate}">
                      				  <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate" value="${GameFilter.fromDate}">  	
                        	</c:when>
                        	<c:otherwise>
                        			 <%--  <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate" value="<fmt:formatDate pattern='MM/dd/YYYY' value='${curr}' />"> --%>
                             		  <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate" value="${startDateSet}">
                        	</c:otherwise>
                        </c:choose>
                      
                         
                          <span id="error" style="color:red"></span>
                         <!--  <i class="fa fa-calendar calIcon"></i> -->
                        </div>
                        
                        
                        <div class="col-md-2 noLeftPad">
                          <label for="">To Date</label> 
                          <c:choose>
                          	<c:when test="${!empty GameFilter.toDate}">
                         				 <input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate" value="${GameFilter.toDate}"> 	
                          	</c:when>
                          	<c:otherwise>
                          			<%-- <input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate" value="<fmt:formatDate pattern="MM/dd/YYYY" value="${curr}" />"> --%>
                          			<input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate" value="${endDateSet}">
                          	</c:otherwise>
                          
                          </c:choose>
                          
                          <span id="error1" style="color:red"></span>
                         <!--  <i class="fa fa-calendar calIcon"></i> -->
                        
                     	</div>
                        
                        <input type="hidden" value="${boardId}" name="boardId">
                        
                        <div class="col-md-3 noLeftPad">
                       <label for="">Tournament</label> <input type="text" placeholder="" class="form-control tbox" id="torunament" name="tournament" onkeyup='getTournamentAutoComplete(this,"addMemberautoCompleteDIV","addMemberIDDIV")' value="">
                     	<div class='autoComplete' id='addMemberautoCompleteDIV' style='display:none;'>
                                        <ul><li></li></ul>
                                        </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV' name="tournamentHiddenId" value="">
                     	<span id="error2" style="color:red"></span></div>
                           </form>
                        <div class="col-md-5 noLeftPad">
                        <input type="button" onclick="filterFunction()" class="btn btn-default dBtn GSfbtn" value="Filter">
                     	    <div class="" style="display: inline-block">	
							<button type="button" class="btn btn-default dBtn btn" id="previous" onclick="loadPrev('previous')" style=" margin-top: 25px;">Prev</button>
                   			 <button type="button" class="btn btn-default blueBtn" id="next" onclick = "loadPrev('next')" style=" margin-top: 25px;">Next</button>
                  			</div> 
							</div>
								
								       	
                     	</div>
                        
                
              
                 </div>
                 </div> 
                 
            								 
                  <div id="replaceId">
                  <div id="upcommingmatchesdiv">
            <div class="col-md-10 pull-right rightnone">
      		<div class="col-md-12 whiteBox">
                  <h2 class="noBorder noLeftPad">Upcoming Matches</h2>
                  <div class="form-group" style="font-size: 12px;">
                  <c:choose>
                       <c:when test="${upcomingMatchesListSize == 0 }">
                      <table>
                       <thead> 
                        <tr>
                          <th class="tbDate">Date (MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Trophy</th>
                          <!-- <th>Match Status</th> -->
                         <!--  <th style="width:60px;">Action</th> -->
                        </tr>
                       </thead>

                      
                     
                       
                      </table>
                      
                       <span class="noContentDivRed">No Upcoming Matches</span>

                       </c:when>
                       <c:otherwise>
						<table>
                       <thead> 
                        <tr>
                          <th class="tbDate">Date (MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Trophy</th>
                         <!--  <th>Match Status</th> -->
                          <th>Enter Scorecard</th>
                         <!--  <th style="width:60px;">Action</th> -->
                        </tr>
                       </thead>

                       <tbody>
                      
                          <c:forEach var="upcoming" items="${upcomingMatchesList}">
                       <tr>
                       <td><p id="formatDate_${upcoming.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${upcoming.gameDate}" /></p><script>document.writeln(test("${upcoming.tournamentSchedulerId}"));</script></td>
                        <%--  <td><fmt:formatDate value="${upcoming.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                          <%-- <td>${upcoming.gameDate}</td> --%>
                          <td><a href="javascript:void(0);" onclick="PleaseLogin()">${upcoming.homeTeamName}</a></td>
                          <td><a href="javascript:void(0);" onclick="PleaseLogin()">${upcoming.awayTeamName}</a></td>
                          
                          <c:choose>
                          <c:when test="${upcoming.groundName ne null}">
                          <td class="tdAlignLeft">${upcoming.groundName}</td>
                          </c:when>
                          <c:otherwise><td>-</td></c:otherwise>
                          </c:choose>
                          
                          
                         <%--  <td>${upcoming.groundName}</td> --%>
                          <td> <div >
                          
                           <c:choose>
                          <c:when test="${fn:length(upcoming.umpireNamesList) gt 0}">
														<c:forEach var="umpire"
										items="${upcoming.umpireNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${umpire.umpireName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 
												<td> <div >
                          
                           <c:choose>
                          <c:when test="${fn:length(upcoming.scorerNamesList) gt 0}">
														<c:forEach var="Scorer"
										items="${upcoming.scorerNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${Scorer.scorerName}/${Scorer.scorerId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${Scorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 
												<td> <div >
                          
                           <c:choose>
                          <c:when test="${fn:length(upcoming.portalScorerList) gt 0}">
														<c:forEach var="portalscorer"
										items="${upcoming.portalScorerList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${portalscorer.scorerName}/${portalscorer.scorerId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${portalscorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 
                          <td>${upcoming.tournamentName}</td>
                          <!-- <td><span class="text-success">Active</span></td> -->
                          <td align="center"><input type="button" value="Enter Scorecard"  onclick="PleaseLogin()"><%-- <a href="${pageContext.request.contextPath}/EnterScore/boardId/${boardId}"> Enter Score</a> --%></td>
                         
                        </tr>
                      </c:forEach>
                  
                        
					</tbody>
                 </table>                  
                         </c:otherwise>
                       </c:choose>    
                             
                  
                  
                       </div>
                	</div>
                	
                	</div>
                	</div><!-- form group end-->
                	
                	<div id="incompletegamesdiv">
                	<div class="col-md-10 pull-right rightnone">
      		<div class="col-md-12 whiteBox">
                  <h2 class="noBorder noLeftPad">Incomplete Matches</h2>
                  <div class="form-group" style="font-size: 12px;">
                  <c:choose>
                       <c:when test="${inCompletedMatchesListSize == 0 }">
                      <table>
                       <thead> 
                        <tr>
                          <th class="tbDate">Date (MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Trophy</th>
                          <!-- <th>Match Status</th> -->
                        </tr>
                       </thead>

                      
                     
                       
                      </table>
                       <span class="noContentDivRed">No Incomplete Matches</span>

                       </c:when>
                       <c:otherwise>
						<table>
                       <thead> 
                        <tr>
                          <th class="tbDate">Date (MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Trophy</th>
                          <!-- <th>Match Status</th> -->
                          <th>Enter Scorecard</th>
                        </tr>
                       </thead>

                       <tbody>
                      
                          <c:forEach var="incomplete" items="${inCompletedMatches}">
                       <tr>
                       <td><p id="formatDate_${incomplete.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${incomplete.gameDate}" /></p><script>document.writeln(test("${incomplete.tournamentSchedulerId}"));</script></td>
                        <%--  <td><fmt:formatDate value="${upcoming.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                          <%-- <td>${upcoming.gameDate}</td> --%>
                          <td><a href="javascript:void(0);" onclick="PleaseLogin()">${incomplete.homeTeamName}</a></td>
                          <td><a href="${pageContext.request.contextPath}/${incomplete.awayTeamName}/board/${incomplete.awayTeamId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${incomplete.awayTeamName}</a></a></td>
                          
                          <c:choose>
                          <c:when test="${incomplete.groundName ne null}">
                          <td class="tdAlignLeft">${incomplete.groundName}</td>
                          </c:when>
                          <c:otherwise><td>-</td></c:otherwise>
                          </c:choose>
                          
                          
                          <td> <div >
                          
                          <c:choose>
                          <c:when test="${fn:length(incomplete.umpireNamesList) gt 0}">
                          
														<c:forEach var="umpire"
										items="${incomplete.umpireNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${umpire.umpireName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											
											</c:choose>
											
											
											
														</div>
											
												</td> 
												
												<td> <div>
                          
                           <c:choose>
                          <c:when test="${fn:length(incomplete.scorerNamesList) gt 0}">
														<c:forEach var="Scorer"
										items="${incomplete.scorerNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${Scorer.scorerName}/${Scorer.scorerId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${Scorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 
												<td> <div>
                          
                           <c:choose>
                          <c:when test="${fn:length(incomplete.portalScorerList) gt 0}">
														<c:forEach var="portalscorer"
										items="${incomplete.portalScorerList }" varStatus="loop">
												<span><a href="javascript:void(0);" onclick="PleaseLogin()">${portalscorer.scorerName}</a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 
												
												
                          <td>${incomplete.tournamentName}</td>
                         <!--  <td><span class="text-success">Active</span></td> -->
                          <td align="center"><input type="button" value="Enter Scorecard" onclick="PleaseLogin()"><%-- <a href="${pageContext.request.contextPath}/EnterScore/boardId/${boardId}"> Enter Score</a> --%></td>
                        </tr>
                      </c:forEach>
                  
                        
					</tbody>
                 </table>                  
                         </c:otherwise>
                       </c:choose>    
                             
                  
                  
                       </div>
                	</div>
                	
                	</div>
                	</div><!-- form group end -->
                    <div id="inprogressmatchesdiv">
                    <div class="col-md-10 pull-right rightnone">
      		<div class="col-md-12 whiteBox">
                  <h2 class="noBorder noLeftPad">In progress Matches</h2>
                  <div class="form-group" style="font-size: 12px;">
                   <c:choose>
                       <c:when test="${inprogressMatchesListSize == 0 }">
                      <table>
                        <thead class="">
                         <tr>
                          <th class="tbDate">Date(MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Trophy</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Enter Scorecard</th>
                          <!-- <th>Match Status</th>   -->
                         </tr>
                        </thead>

              
                      </table>
                       <span class="noContentDivRed">No In progress Matches</span>
	

                       </c:when>
                       <c:otherwise>
						<table>
                       <thead> 
                        <tr>
                           <th class="tbDate">Date(MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Trophy</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <!-- <th>Match Status</th> -->
                          <th>Enter Scorecard</th>
                           <th>Scorecard</th>
                        </tr>
                       </thead>

                       <tbody>
                          <c:forEach var="inprogress" items="${inprogressMatchesList}">
                       <tr>
                       <td><p id="formatDate_${inprogress.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${inprogress.gameDate}" /></p><script>document.writeln(test("${inprogress.tournamentSchedulerId}"));</script></td>
                      <%--  <td><fmt:formatDate value="${inprogress.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                         <%-- <td>${completed.gameDate}</td> --%>
                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${inprogress.homeTeamName}/board/${inprogress.homeTeamId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${inprogress.homeTeamName}</a></a></td>
                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${inprogress.awayTeamName}/board/${inprogress.awayTeamId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${inprogress.awayTeamName}</a></a></td>
                          
                           <c:choose>
                          <c:when test="${inprogress.groundName ne null}">
                          <td class="tdAlignLeft">${inprogress.groundName}</td>
                          </c:when>
                          <c:otherwise><td>-</td></c:otherwise>
                          </c:choose>
                          
                          <%-- <td class="tdAlignLeft">${inprogress.groundName}</td> --%>
                          
                          <td class="tdAlignLeft">${inprogress.tournamentName}</td>
                          
                          <td class="tdAlignLeft"> <div >
                          
                          <c:choose>
                          <c:when test="${fn:length(inprogress.umpireNamesList) gt 0}">
                          
									<c:forEach var="umpire"
										items="${inprogress.umpireNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${umpire.umpireName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
											
											</div>
												</td> 
						
						
						<td class="tdAlignLeft"> <div>
						
						
						 <c:choose>
                          <c:when test="${fn:length(inprogress.scorerNamesList) gt 0}">
						
                             <c:forEach var ="scorer" items="${inprogress.scorerNamesList}" varStatus="loop">
                                   <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        <a href="javascript:void(0);" onclick="PleaseLogin()">${scorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>
                                        </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                        <span>-</span>
                                        </c:otherwise>
                                        </c:choose>
                                        
                                        
                                        </div></td>			
						
						<td> <div>
                          
                           <c:choose>
                          <c:when test="${fn:length(inprogress.portalScorerList) gt 0}">
														<c:forEach var="portalscorer"
										items="${inprogress.portalScorerList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${portalscorer.scorerName}/${portalscorer.scorerId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${portalscorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 
						
                          
                            <!-- <td><span class="text-success">Active</span></td> -->
                            <td align="center"><input type="button" value="Enter Scorecard" onclick="PleaseLogin()">
                            <td align="center" ><a href="#" onclick="showScoreCardInProgress('${inprogress.tournamentSchedulerId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
                        </tr>
                      </c:forEach>
                
                        
					</tbody>
                 </table>                  
                         </c:otherwise>
                       </c:choose> 
                  
                       </div>
                	</div>
                    </div>
                    </div><!-- form group end -->
                    
                    <div id="completedmatchesdiv">
                    <div class="col-md-10 pull-right rightnone">
      		<div class="col-md-12 whiteBox">
                  <h2 class="noBorder noLeftPad">Completed Matches</h2>
                  <div class="form-group" style="font-size: 12px;">
                   <c:choose>
                       <c:when test="${completedMatchesListSize == 0 }">
                      <table>
                        <thead class="">
                         <tr>
                          <th class="tbDate">Date(MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Trophy</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Result</th>
                          <th>Edit Scorecard</th>
                          <th>Scorecard</th>
                         </tr>
                        </thead>

                   
                      </table>
                       <span class="noContentDivRed">No Completed Matches</span>


                       </c:when>
                       <c:otherwise>
						<table>
                       <thead> 
                        <tr>
                           <th  class="tbDate">Date(MM-DD-YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Trophy</th>
                          <th>Umpire</th>
                          <th>App Scorer</th>
                          <th>Portal Scorer</th>
                          <th>Result</th>
                          <th>Edit Scorecard</th>
                          <th>Scorecard</th>
                        </tr>
                       </thead>

                       <tbody>
                          <c:forEach var="completed" items="${completedMatchesList}">
                       <tr>
                       <td><p id="formatDate_${completed.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${completed.gameDate}" /></p><script>document.writeln(test("${completed.tournamentSchedulerId}"));</script></td>
                      <%--  <td><fmt:formatDate value="${completed.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                         <%-- <td>${completed.gameDate}</td> --%>
                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${completed.homeTeamName}/board/${completed.homeTeamId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${completed.homeTeamName}</a></a></td>
                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${completed.awayTeamName}/board/${completed.awayTeamId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${completed.awayTeamName}</a></a></td>
                          
                          <c:choose>
                          <c:when test="${completed.groundName ne null}">
                          <td class="tdAlignLeft">${completed.groundName}</td>
                          </c:when>
                          <c:otherwise><td>-</td></c:otherwise>
                          </c:choose>
                          
                          
                         <%--  <td class="tdAlignLeft">${completed.groundName}</td> --%>
                          
                          <td class="tdAlignLeft">${completed.tournamentName}</td>
                          
                          <td class="tdAlignLeft"> <div >
                          
                          
                          <c:choose>
                          <c:when test="${fn:length(completed.umpireNamesList) gt 0}">
                          
									<c:forEach var="umpire"
										items="${completed.umpireNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${umpire.umpireName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
											
											
											</div>
												</td> 
						
						
						<td class="tdAlignLeft"> <div>
						
						<c:choose>
                          <c:when test="${fn:length(completed.scorerNamesList) gt 0}">
                          
                             <c:forEach var ="scorer" items="${completed.scorerNamesList}" varStatus="loop">
                                   <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        <a href="javascript:void(0);" onclick="PleaseLogin()">${scorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>
                                        </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                        <span>-</span>
                                        </c:otherwise>
                                        </c:choose>
                                        </div></td>		
                                        
                                        <td> <div>
                          
                           <c:choose>
                          <c:when test="${fn:length(completed.portalScorerList) gt 0}">
														<c:forEach var="portalscorer"
										items="${completed.portalScorerList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${portalscorer.scorerName}/${portalscorer.scorerId}"><a href="javascript:void(0);" onclick="PleaseLogin()">${portalscorer.scorerName}</a></a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
											
											
											</c:when>
											<c:otherwise>
											<span>-</span>
											</c:otherwise>
											</c:choose>
														</div>
											
												</td> 	
						
                          
                            <td align="center">
                           <c:choose>
                           <c:when test="${completed.statusOfMatch eq 'tie'}">
                           <span class="text-danger">Match Tied</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'draw'}">
                           <span class="text-danger">Match Drawn</span>
                           </c:when>
                            <c:when test="${completed.statusOfMatch eq 'Noresult'}">
                           <span class="text-danger">Match Abandoned</span>
                           </c:when>
                           <c:otherwise>
                           <span class="text-danger">${completed.winTeamName} won</span>
                           </c:otherwise>
                           </c:choose>
                           <br>
                           
                           <c:if test="${completed.statusOfMatch ne 'Noresult'}">
							  ${completed.winTeamName} : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  ${completed.loseTeamName} : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}
							  </c:if>
							  </td> 
							  
							  
							 <%--  <td align="center">
                           <c:choose>
                           <c:when test="${completed.statusOfMatch eq 'tie'}">
                           <span class="text-danger">Match Tied</span>
                           </c:when>
                           <c:when test="${completed.statusOfMatch eq 'draw'}">
                           <span class="text-danger">Match Drawn</span>
                           </c:when> 
                           <c:otherwise>                       
                           <c:choose>
                           <c:when test="${completed.statusOfMatch ne 'Noresult'}"> 
                           <span class="text-danger">${completed.winTeamName} won</span>     
							  ${completed.winTeamName} : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  ${completed.loseTeamName} : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}
							 </c:when>
							 <c:otherwise>
							 <span class="text-danger">Match Abandoned</span>							 
							 </c:otherwise> 
							 </c:choose>
                        </c:otherwise>   
                           </c:choose>
                           <br>
                           
							 </td> --%>
							  
							  
							  <td> 
                             <a href="javascript:void(0)" onclick="PleaseLogin()"><i class="fa fa-pencil" title="Edit Profile"></i></a>
                        	 <a href="javascript:void(0)" onclick="PleaseLogin()">Edit Scorecard</a>
                             </td>
                          <td align="center" >
                          <%-- <c:choose>
                          <c:when test="${completed.scorecardLock eq 'OFF'}">
                          <a id="${completed.tournamentSchedulerId }OFF" href="javascript:void(0)" onclick="lockscorecard('${completed.tournamentSchedulerId }','ON','OFF')"><img src="${pageContext.request.contextPath}/images/unlock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          <a   id="${completed.tournamentSchedulerId }ON" style="display: none;"  href="javascript:void(0)" onclick="lockscorecard('${completed.tournamentSchedulerId }','OFF','ON')"><img src="${pageContext.request.contextPath}/images/lock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          </c:when>
                          <c:otherwise>
                          <a id="${completed.tournamentSchedulerId }ON" href="javascript:void(0)" onclick="lockscorecard('${completed.tournamentSchedulerId }','OFF','ON')"><img src="${pageContext.request.contextPath}/images/lock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          <a id="${completed.tournamentSchedulerId }OFF" style="display: none;" href="javascript:void(0)" onclick="lockscorecard('${completed.tournamentSchedulerId }','ON','OFF')"><img src="${pageContext.request.contextPath}/images/unlock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          </c:otherwise>
                          
                          </c:choose> --%>
                          
                           <c:choose>
                          <c:when test="${completed.scorecardLock eq 'OFF'}">
                          
                          
                          <div id="Requestlist_${completed.tournamentSchedulerId}"></div>
                          
                          
                          <a id="${completed.tournamentSchedulerId }OFF" href="javascript:void(0)" onclick="PleaseLogin()"><img src="${pageContext.request.contextPath}/images/unlock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          <a   id="${completed.tournamentSchedulerId }ON" style="display: none;"  href="javascript:void(0)" onclick="PleaseLogin()"><img src="${pageContext.request.contextPath}/images/lock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          </c:when>
                          <c:otherwise>
                          
                          
                          <div id="Requestlist_${completed.tournamentSchedulerId}"></div>
                          
                          <a id="${completed.tournamentSchedulerId }ON" href="javascript:void(0)" onclick="PleaseLogin()"><img src="${pageContext.request.contextPath}/images/lock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          <a id="${completed.tournamentSchedulerId }OFF" style="display: none;" href="javascript:void(0)" onclick="PleaseLogin()"><img src="${pageContext.request.contextPath}/images/unlock.png" style="max-width: 22px;margin-right: 5px; margin-bottom: 17px;"></a>
                          </c:otherwise>
                          
                          </c:choose> 
                          
                          
                          <a href="#" onclick="showScoreCard('${completed.tournamentSchedulerId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
                        </tr>
                      </c:forEach>
                
                        
					</tbody>
                 </table>                  
                         </c:otherwise>
                       </c:choose> 
                  
                       </div>
                	</div>
                	</div>
                    </div>
            
          	
          </div>    
      </div>
          
          <input type="hidden" id="hiddenIdForCancel">
          
    </div>
  </div>
  </div><!-- form group -->
  <!--/Content Block-->

</section>


<!--Select Box-->
<script>
        $(document).ready(function () {
        	$('#loading').hide();
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
	<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-plus-circle").removeClass("fa-plus-circle").addClass("fa-minus-circle");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			});
		});
   </script>
   
         <!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
   
   <!--Gallery-->
   
   <script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
		

   
 
 <script>
 function filterFunction(){
	// fromDateValidateFunction();
	// toDateValidateFunction();
	 //tournamentErrorFunction();
	 
	 var tournamentName = $("#torunament").val();
	 //alert(tournamentName);
	 
	 if(tournamentName == ''){
		 $("#addMemberIDDIV").val('');
	 }else{
		 
	 }
	 
	  if(todateVal()==true && fromdate()==true && dateValidation()==true){
		  $("#filterForm").submit();
		  return true;
	  }else{
		  
		  return false;
	  }
	/*  if(fromDateValidateFunction() == true && toDateValidateFunction() == true){
		 $("#filterForm").submit();
		 return true;
	 }else{
		 return false;
	 } */
 }
 
 function todateVal(){
	 var date=$('#toDate').val();
	 if(date!=''){
		 return true;
	 }else{
		 $('#error1').html('Please choose the to date');
		 return false;
	 }
 }
 
 function fromdate(){
	 
	 var date=$('#fromDate').val();
	 $('#error').html('');
	 if(date!=''){
		 return true;
	 }else{
		 $('#error').html('Please choose the to date');
		 return false;
	 }
 }
 
 function dateValidation(){
	 var strdate=$('#fromDate').val();
	 var str2date2=$('#toDate').val();
	 var date=new Date(strdate);
	 var date2= new Date(str2date2);
	 if(date < date2){
		 
		 return true;
	 }else{
		 displaynotification("To date must be greater than from date",1500);
		 return false;
	 }
 }
 function cancelSchedule(id){
	 
	 document.getElementById("hiddenIdForCancel").value= id;
	 
	 $("#popupDiv").show();
 }
 
	 
	 function okFun(){
		 $("#popupDiv").hide();
	 }
	 
	 function cancelFunction(){
		 $("#popupDiv").hide();
	
	 var boardId = "${boardId}";
	 var id = $("#hiddenIdForCancel").val();
	 var reason = $("#reason").val();
	 
	 var scheduler = {
			 tournamentSchedulerId : id,
			 scheduleCancelReason : reason
	 }
	 $.ajax({
		type:"Post",
		url:"${pageContext.request.contextPath}/cancelSchedule",
		headers : {'Name' : HeaderName},
		data : JSON.stringify(scheduler),
		contentType :"application/json",
		success : function(res){
			window.location.href = "${pageContext.request.contextPath}/GameSchedule/boardId/"+boardId;
		},
		error:function(err){
			console.log(err);
		}
		 
	 })
	 
 }	 
 
 function getTournamentAutoComplete(elem,divId,hiddenId){
		var boardId = "${boardId}";
	 	var key=$(elem).val();
	 	var textBoxId=$(elem).attr('id');
	 	console.log('value : '+key);
	 	console.log('textBoxId : '+textBoxId);
	 	var bean = {
	 			key : key,
	 			boardId : boardId,
	 	}
	 	
	 	if(key.length>2) {
	 			    $.ajax({
	 						type : "POST",
	 						url : "${pageContext.request.contextPath}/TournamentNameSearchForFilter",
	 						headers : {'Name' : HeaderName},
	 						/* dataType: "json", */
	 			        contentType: "application/json; charset=utf-8",
	 			        data :JSON.stringify(bean),		            
	 						success : function(res) {
	 							console.log(res);	
	 							var html="";
	 							
	 							if(res != null){
	 								var tournament=res.tournamentSearchBean;
	 								//console.log(JSON.stringify(tournament));
	 								html+="<ul>";
	 								
	 								if(tournament!= null && tournament.length >0){
	 									for(var i in tournament){
	 										var name=tournament[i].tournamentName;
	 								
	 								
	 								html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+tournament[i].tournamentId+"','"+hiddenId+"')>";
			                            
			                          
			                      /* 	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	} */
			                      	html += " ";
			                      	html+=""+name+"";
			                          html+='</div>'
			              			+'</li>';
	 									}
	 								}
	 								
	 								
											html+="</ul>";
	     							$('#'+divId).html(html);
	     							$('#'+divId).show();
	     						
	 							}else{
										html+="<ul>";
										html+="<li>No results found...</li>";
											html+="</ul>";
	     							$('#'+divId).html(html);
	     							$('#'+divId).show();
	 							}	  
	 						},
	 						
	 						error:function(response){
	 							$('#'+divId).hide();
	 						console.log("Error message"+JSON.stringify(response));
	 						},
	 					
	 						
	 					}); 
	 				
	 	   }else{
	 		   $('#'+divId).hide();
	 	   }
	   
	 } 

function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
		$('#'+textBox).val($(elem).text());
		$('#'+divId).hide();	
		$('#'+hiddenId).val(userId);	
		
}
 
 
 function showScoreCard(id){
	 var boardId ="${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
 }
 
 function showScoreCardInProgress(id){
	 var boardId ="${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgress/boardId/"+boardId+"/matchId/"+id;
 }
 </script> 
   <script type="text/javascript">
    var url = window.location.href;
   
    if(url.indexOf('GameSchedule') != -1){
    	 $("#torunament").val("");
      	  $("#addMemberIDDIV").val("");
    }else{
    	//alert('inside not contains');
    	

    }
    var dateString = null;
    
    function loadPrev(type)
    {
    	var mavValue = null;
    	if(type == "previous"){
    		
    		 mavValue = $("#hiddenDateStart").val();
    		 //alert("text ++++++++++++++++"+text+"value -----------------"+mavValue);
       
    	}else{
    		 mavValue = $("#hiddenDate").val();
    		 
    		 //alert("text next ++++++++++++++++"+text+"value next-----------------"+mavValue);
    	}
    	 dateString  = mavValue;     
    	// dateString  = "2016-03-14";
    	console.log("before response  :::"+dateString);
    	
    	var boardid="${boardId}";
    	var prevnext={
    			boardId : boardid,
    			dateString : dateString,
    			previousNextFlag : type,
    	}
    	
    	
    	$.ajax({
    		type : "POST",
    		url : "${pageContext.request.contextPath}/gameScheduletPreNextsite",
    		contentType : "application/json; charset=utf-8",
    		data : JSON.stringify(prevnext),
    		success : function(response)
    		{
    			var startGameDate  = new Date(response.startDateStr);
   			 var endGameDate  = new Date(response.endDateStr);
   			 console.log(JSON.stringify(response));
   			 
   			 var fromStart = response.startDateStr.split("-");
   		
   			 var fromDateToDatePicker = fromStart[1]+"/"+fromStart[2]+"/"+fromStart[0];
   			
   			 var toEnd = response.endDateStr.split("-");
   			 var toDateToDatePicker = toEnd[1]+"/"+toEnd[2]+"/"+toEnd[0];
   			 
   				
   			 console.log("start game date ==================="+fromDateToDatePicker+ "end game date ======================"+toDateToDatePicker);
   			
   			 if(type =='previous'){
   					document.getElementById("fromDate").value = startGameDate.toLocaleDateString();
   					document.getElementById("toDate").value = endGameDate.toLocaleDateString();
   					
   					$('#toDate').datepicker('update',toDateToDatePicker);
   					$("#fromDate").datepicker("update", fromDateToDatePicker);
   				
   				}
   				else{
   					
   					document.getElementById("toDate").value = endGameDate.toLocaleDateString();
   					document.getElementById("fromDate").value = startGameDate.toLocaleDateString();
   					
   					
   					$('#fromDate').datepicker('update',fromDateToDatePicker);
   					$("#toDate").datepicker("update", toDateToDatePicker);
   				
   				}
   			
   			
   			 
   			document.getElementById("hiddenDateStart").value = response.startDateStr;
   			document.getElementById("hiddenDate").value = response.endDateStr;
   			
   			var responselist=response.gameSchedule; 
   			var upcomminglist=responselist.upComingMatchesList;
   			var completedlist=responselist.completedMatchesList;
   			var inprogresslist=responselist.inprogressMatchesList;
   			var incomepltelist=responselist.incompleteMatchesList;
   			
   			//alert(JSON.stringify(incomepltelist));
   			// upcomming list
   			
   			
   			 var htmlco="";
            htmlco+="<div class='col-md-10 pull-right rightnone'><div class='col-md-12 whiteBox' style='font-size: 12px;'><h2 class='noBorder noLeftPad'>Upcoming Matches</h2><div class='form-group'>";      
   			htmlco+="<table><thead><tr><th class='tbDate'>Date (MM-DD-YYYY)</th><th>Home Team</th><th>Away Team</th><th>Ground</th><th>Umpire</th><th>App Scorer</th><th>Portal Scorer</th><th>Trophy</th><th>Enter Scorecard</th></tr></thead>";
   			if(upcomminglist.length !=0)
   				{
   				htmlco+="<tbody>";
   				for(var i=0;i<upcomminglist.length;i++)
   				{
   					var dateNewObject = formatDateValue(upcomminglist[i].gameDate);
   					
   					
   				 htmlco+="<tr>";	
   				htmlco+="<td>"+dateNewObject+"</td>";
   				htmlco+="<td><a href='${pageContext.request.contextPath}/"+upcomminglist[i].homeTeamName+"/board/"+upcomminglist[i].homeTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+upcomminglist[i].homeTeamName+"</a></a></td>";
   				htmlco+="<td><a href='${pageContext.request.contextPath}/"+upcomminglist[i].awayTeamName+"/board/"+upcomminglist[i].awayTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+upcomminglist[i].awayTeamName+"</a></a></td>";
   				
   				if(upcomminglist[i].groundName == "" || upcomminglist[i].groundName == null)
   				{
   					htmlco+="<td>-</td>";
   				}else{
   				htmlco+="<td>"+upcomminglist[i].groundName+"</td>";}
   				htmlco+="<td> <div >";
   				
   				var upcommingumpire=upcomminglist[i].umpireNamesList;
   				if(upcommingumpire.length > 0){
   				for(var j=0; j < upcommingumpire.length;j++)
   				{
   				htmlco+="<span><a href='${pageContext.request.contextPath}/buddy/"+upcommingumpire[j].umpireName+"/"+upcommingumpire[j].umpireId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+upcommingumpire[j].umpireName+"</a></a>";
   				
   				if(j === upcommingumpire.length-1) {  
   					
   				} else {
			        	htmlco += ',</span>';
			        } 
   				
   				}}else
   					{
   					htmlco+="<span>-</span>";
   					}
   				htmlco+="</div></td>";
   				
   				//App Scorer
   				htmlco+="<td> <div >";
   				var upcommingscorer=upcomminglist[i].scorerNamesList;
   				if(upcommingscorer.length > 0){
   				for(var j=0; j < upcommingscorer.length;j++)
   				{
   				htmlco+="<span><a href='${pageContext.request.contextPath}/buddy/"+upcommingscorer[j].scorerName+"/"+upcommingscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+upcommingscorer[j].scorerName+"</a></a>";
   				
   				if(j === upcommingscorer.length-1) {  
   					
   				} else {
			        	htmlco += ',</span>';
			        } 
   				
   				}}else
   					{
   					htmlco+="<span>-</span>";
   					}
   				htmlco+="</div></td>";
   				
   				//Portal Scorer
   				htmlco+="<td> <div >";
   				var Portalscorer=upcomminglist[i].portalScorerList;
   				if(Portalscorer != null){
   				if(Portalscorer.length > 0){
   				for(var j=0; j < Portalscorer.length;j++)
   				{
   				htmlco+="<span><a href='${pageContext.request.contextPath}/buddy/"+Portalscorer[j].scorerName+"/"+Portalscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+Portalscorer[j].scorerName+"</a></a>";
   				
   				if(j === Portalscorer.length-1) {  
   					
   				} else {
			        	htmlco += ',</span>';
			        } 
   				
   				}}else
   					{
   					htmlco+="<span>-</span>";
   					}
   				}else
					{
					htmlco+="<span>-</span>";
					}
   				
   				htmlco+="</div></td>";
   				htmlco+="<td>"+upcomminglist[i].tournamentName+"</td>";
   				/* htmlco+="<td><span class='text-success'>Active</span></td>"; */
   				htmlco+="<td align='center'><input type='button' value='Enter Scorecard' onclick='PleaseLogin()'></td>";
   				
   				htmlco+="</tr>";
   				}
   				htmlco+="</tbody></table>";
   				}
   				else
   				{
   				
   				htmlco+="</table>";
   				htmlco+="<span class='noContentDivRed'>No Upcoming Matches</span>";
   			}
   			
   			htmlco+="</div></div></div>"; 
   			$("#upcommingmatchesdiv").html(htmlco).trigger('create');
   			
   			
   			// incomepltelist
   			   var htmlco1="";
   			  htmlco1="<div class='col-md-10 pull-right rightnone'><div class='col-md-12 whiteBox' style='font-size: 12px;'><h2 class='noBorder noLeftPad'>Incomplete Matches</h2><div class='form-group'>";
   			 htmlco1+="<table><thead><tr><th class='tbDate'>Date (MM-DD-YYYY)</th><th>Home Team</th><th>Away Team</th><th>Ground</th><th>Umpire</th><th>App Scorer</th><th>Portal Scorer</th><th>Trophy</th><th>Enter Scorecard</th></tr></thead>";
   			if(incomepltelist.length!=0){
   				htmlco1+="<tbody>";
   				for(var i=0;i<incomepltelist.length;i++){
   					var dateNewObject = formatDateValue(incomepltelist[i].gameDate);
   					
   					htmlco1+="<tr>";
   					htmlco1+="<td>"+dateNewObject+"</td>";
   					htmlco1+="<td><a href='${pageContext.request.contextPath}/"+incomepltelist[i].homeTeamName+"/board/"+incomepltelist[i].homeTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+incomepltelist[i].homeTeamName+"</a></a></td>";
   					htmlco1+="<td><a href='${pageContext.request.contextPath}/"+incomepltelist[i].awayTeamName+"'/board/"+incomepltelist[i].awayTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+incomepltelist[i].awayTeamName+"</a></a></td>";
   				    
   					if(incomepltelist[i].groundName == "" || incomepltelist[i].groundName == null)
   	   				{
   						htmlco1+="<td>-</td>";
   	   				}else{
   					
   					htmlco1+="<td>"+incomepltelist[i].groundName+"</td>";}
   				    htmlco1+="<td> <div>";
   				    var incompleteumpire=incomepltelist[i].umpireNamesList;
   				    
   				    if(incompleteumpire.length > 0){
   				    for(var j=0;j<incompleteumpire.length;j++){
   				    htmlco1+="<span><a href='${pageContext.request.contextPath}/buddy/"+incompleteumpire[j].umpireName+"/"+incompleteumpire[j].umpireId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+incompleteumpire[j].umpireName+"</a></a>";
   				 if(j === incompleteumpire.length-1) {  
  			        } else {
  			        	htmlco1 += ',</span>';
  			        } 
   				    }}else{ htmlco1+="<span>-</span>";}
   				    htmlco1+="</div></td> ";
   				    
   				//App Scorer
   	   				htmlco1+="<td> <div >";
   	   				var upcommingscorer=incomepltelist[i].scorerNamesList;
   	   				if(upcommingscorer.length > 0){
   	   				for(var j=0; j < upcommingscorer.length;j++)
   	   				{
   	   				htmlco1+="<span><a href='${pageContext.request.contextPath}/buddy/"+upcommingscorer[j].scorerName+"/"+upcommingscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+upcommingscorer[j].scorerName+"</a></a>";
   	   				
   	   				if(j === upcommingscorer.length-1) {  
   	   					
   	   				} else {
   				        	htmlco1 += ',</span>';
   				        } 
   	   				
   	   				}}else
   	   					{
   	   					htmlco1+="<span>-</span>";
   	   					}
   	   				htmlco1+="</div></td>";
   	   				
   	   				//Portal Scorer
   	   				htmlco1+="<td> <div >";
   	   				var Portalscorer=incomepltelist[i].portalScorerList;
   	   			if(Portalscorer != null){
   	   				if(Portalscorer.length > 0){
   	   				for(var j=0; j < Portalscorer.length;j++)
   	   				{
   	   				htmlco1+="<span><a href='${pageContext.request.contextPath}/buddy/"+Portalscorer[j].scorerName+"/"+Portalscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+Portalscorer[j].scorerName+"</a></a>";
   	   				
   	   				if(j === Portalscorer.length-1) {  
   	   					
   	   				} else {
   				        	htmlco1 += ',</span>';
   				        } 
   	   				
   	   				}}else
   	   					{
   	   					htmlco1+="<span>-</span>";
   	   					}
   	   		    }else
					{
					htmlco1+="<span>-</span>";
					}
   	   				htmlco1+="</div></td>";
   				    
   				     htmlco1+="<td>"+incomepltelist[i].tournamentName+"</td>";
   				   /*  htmlco1+="<td><span class='text-success'>Active</span></td>"; */
   				    htmlco1+="<td align='center'><input type='button' value='Enter Scorecard' onclick='PleaseLogin()'></td>";
   				    htmlco1+="</tr>";
   				}
   				htmlco1+="</tbody></table>";
   			
   			}else{
   			
   			htmlco1+="</table>";
   				htmlco1+="<span class='noContentDivRed'>No Incomplete Matches</span>";
   			}
   			htmlco1+="</div></div></div>";
   			
   			$("#incompletegamesdiv").html(htmlco1).trigger('create'); 
   			
   			
   			
   			
   		// inprogress
   		
			   var htmlco2="";
			  htmlco2="<div class='col-md-10 pull-right rightnone'><div class='col-md-12 whiteBox' style='font-size: 12px;'><h2 class='noBorder noLeftPad'>In progress Matches</h2> <div class='form-group'>";
			 htmlco2+="<table><thead><tr><th class='tbDate'>Date (MM-DD-YYYY)</th><th>Home Team</th><th>Away Team</th><th>Ground</th><th>Trophy</th><th>Umpire</th><th>App Scorer</th><th>Portal Scorer</th><th>Enter Scorecard</th><th>Scorecard</th></tr></thead>";
			if(inprogresslist.length!=0){
				htmlco2+="<tbody>";
				for(var i=0;i<inprogresslist.length;i++){
					var dateNewObject = formatDateValue(inprogresslist[i].gameDate);
					
					htmlco2+="<tr>";
					htmlco2+="<td>"+dateNewObject+"</td>";
					htmlco2+="<td class='tdAlignLeft'><a href='${pageContext.request.contextPath}/"+inprogresslist[i].homeTeamName+"/board/"+inprogresslist[i].homeTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+inprogresslist[i].homeTeamName+"</a></a></td>";
					htmlco2+="<td class='tdAlignLeft'><a href='${pageContext.request.contextPath}/"+inprogresslist[i].awayTeamName+"'/board/"+inprogresslist[i].awayTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+inprogresslist[i].awayTeamName+"</a></a></td>";
				   
					if(inprogresslist[i].groundName == "" || inprogresslist[i].groundName == null)
   	   				{
						htmlco2+="<td>-</td>";
   	   				}else{
					
					htmlco2+="<td class='tdAlignLeft'>"+inprogresslist[i].groundName+"</td>";}
					
				    htmlco2+="<td class='tdAlignLeft'>"+inprogresslist[i].tournamentName+"</td>";
				    htmlco2+="<td class='tdAlignLeft'> <div>";
				    var inprogressumpire=inprogresslist[i].umpireNamesList;
				    if(inprogressumpire.length > 0){
				    for(var j=0;j<inprogressumpire.length;j++){
				    htmlco2+="<span><a href='${pageContext.request.contextPath}/buddy/"+inprogressumpire[j].umpireName+"/"+inprogressumpire[j].umpireId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+inprogressumpire[j].umpireName+"</a></a>";
				 if(j === inprogressumpire.length-1) {  
			        } else {
			        	htmlco2 += ',</span>';
			        } 
				    }}else{
				    	htmlco2+="<span>-</span>";
				    }
				    htmlco2+="</div></td> ";
				    htmlco2+="<td class='tdAlignLeft'> <div>";
				    var inprogressscorer=inprogresslist[i].scorerNamesList;
				    if(inprogressscorer.length > 0){
				    for(var j=0;j<inprogressscorer.length;j++){
				    htmlco2+="<span><a href='${pageContext.request.contextPath}/buddy/"+inprogressscorer[j].scorerName+"/"+inprogressscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+inprogressscorer[j].scorerName+"</a></a>";
				 if(j === inprogressscorer.length-1) {  
			        } else {
			        	htmlco2 += ',</span>';
			        } 
				    }}else{htmlco2+="<span>-</span>";}
				    htmlco2+="</div></td> ";
				    
				  //Portal Scorer
   	   				htmlco2+="<td> <div >";
   	   				var Portalscorer=inprogresslist[i].portalScorerList;
   	   			if(Portalscorer != null){
   	   				if(Portalscorer.length > 0){
   	   				for(var j=0; j < Portalscorer.length;j++)
   	   				{
   	   				htmlco2+="<span><a href='${pageContext.request.contextPath}/buddy/"+Portalscorer[j].scorerName+"/"+Portalscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+Portalscorer[j].scorerName+"</a></a>";
   	   				
   	   				if(j === Portalscorer.length-1) {  
   	   					
   	   				} else {
   				        	htmlco2 += ',</span>';
   				        } 
   	   				
   	   				}}else
   	   					{
   	   					htmlco2+="<span>-</span>";
   	   					}
   	   				}else
   	   					{
   	   	   					htmlco2+="<span>-</span>";
   	   	   					}
   	   				
   	   				htmlco2+="</div></td>";
				    
				    
				    
				   /*  htmlco2+="<td><span class='text-success'>Active</span></td>"; */
				    htmlco2+="<td align='center'><input type='button' value='Enter Scorecard' onclick='PleaseLogin()'></td>";
				    htmlco2+="<td align='center' ><a href=javascript:void(0); onclick=showScoreCardInProgress('"+inprogresslist[i].tournamentSchedulerId+"')><i class='fa fa-newspaper-o editIcon'></i></a></td>";
				    htmlco2+="</tr>";
				}
				htmlco2+="</tbody></table>";
			
			}else{
			
			htmlco2+="</table>";
				htmlco2+="<span class='noContentDivRed'>No In progress Matches</span>";
			}
			htmlco2+="</div></div></div>";
			
			$("#inprogressmatchesdiv").html(htmlco2).trigger('create'); 
			
			
			
			// completed
			
	   		
			   var htmlco3="";
			  htmlco3="<div class='col-md-10 pull-right rightnone'><div class='col-md-12 whiteBox' style='font-size: 12px;'><h2 class='noBorder noLeftPad'>Completed Matches</h2><div class='form-group'>";
			 htmlco3+="<table><thead><tr><th class='tbDate'>Date (MM-DD-YYYY)</th><th>Home Team</th><th>Away Team</th><th>Ground</th><th>Trophy</th><th>Umpire</th><th>App Scorer</th><th>Portal Scorer</th><th>Result</th><th>Edit Scorecard</th><th>Scorecard</th></tr></thead>";
			if(completedlist.length!=0){
				htmlco3+="<tbody>";
				for(var i=0;i<completedlist.length;i++){
					var dateNewObject = formatDateValue(completedlist[i].gameDate);
					
					htmlco3+="<tr>";
					htmlco3+="<td>"+dateNewObject+"</td>";
					htmlco3+="<td class='tdAlignLeft'><a href='${pageContext.request.contextPath}/"+completedlist[i].homeTeamName+"/board/"+completedlist[i].homeTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+completedlist[i].homeTeamName+"</a></a></td>";
					htmlco3+="<td class='tdAlignLeft'><a href='${pageContext.request.contextPath}/"+completedlist[i].awayTeamName+"'/board/"+completedlist[i].awayTeamId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+completedlist[i].awayTeamName+"</a></a></td>";
				   
					if(completedlist[i].groundName == "" || completedlist[i].groundName == null)
   	   				{
						htmlco3+="<td>-</td>";
   	   				}else{
					
					htmlco3+="<td class='tdAlignLeft'>"+completedlist[i].groundName+"</td>";}
					
				    htmlco3+="<td class='tdAlignLeft'>"+completedlist[i].tournamentName+"</td>";
				    htmlco3+="<td class='tdAlignLeft'> <div>";
				    var completeumpire=completedlist[i].umpireNamesList;
				    if(completeumpire.length > 0){
				    for(var j=0;j<completeumpire.length;j++){
				    htmlco3+="<span><a href='${pageContext.request.contextPath}/buddy/"+completeumpire[j].umpireName+"/"+completeumpire[j].umpireId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+completeumpire[j].umpireName+"</a></a>";
				 if(j === completeumpire.length-1) {  
			        } else {
			        	htmlco3 += ',</span>';
			        } 
				    }}else{htmlco3+="<span>-</span>";}
				    htmlco3+="</div></td> ";
				    htmlco3+="<td class='tdAlignLeft'> <div>";
				    var completescorer=completedlist[i].scorerNamesList;
				    
				    if(completescorer.length > 0)
				    	{
				    for(var j=0;j<completescorer.length;j++){
				    htmlco3+="<span><a href='${pageContext.request.contextPath}/buddy/"+completescorer[j].scorerName+"/"+completescorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+completescorer[j].scorerName+"</a></a>";
				 if(j === completescorer.length-1) {  
			        } else {
			        	htmlco3+= ',</span>';
			        } 
				    }
				    	}else
				    		{
				    		htmlco3+="<span>-</span>";
				    		}
				    htmlco3+="</div></td> ";
				    
				    
				    //Portal Scorer
   	   				htmlco3+="<td> <div >";
   	   				var Portalscorer=completedlist[i].portalScorerList;
   	   			if(Portalscorer != null){
   	   				if(Portalscorer.length > 0){
   	   				for(var j=0; j < Portalscorer.length;j++)
   	   				{
   	   				htmlco3+="<span><a href='${pageContext.request.contextPath}/buddy/"+Portalscorer[j].scorerName+"/"+Portalscorer[j].scorerId+"'><a href='javascript:void(0);' onclick='PleaseLogin()'>"+Portalscorer[j].scorerName+"</a></a>";
   	   				
   	   				if(j === Portalscorer.length-1) {  
   	   					
   	   				} else {
   				        	htmlco3 += ',</span>';
   				        } 
   	   				
   	   				}}else
   	   					{
   	   					htmlco3+="<span>-</span>";
   	   					}
   	   		         }else
					{
					htmlco3+="<span>-</span>";
					}
   	   				htmlco3+="</div></td>";
				    
				    
				   // htmlco3+="<td><span class='text-success'>Active</span></td>";
				  /*  if(completedlist[i].statusOfMatch == 'tie'){
				    htmlco3+="<td align='center'><span class='text-danger'>Match Tied</span><br>";
				    }else if(completedlist[i].statusOfMatch == 'draw'){
						   htmlco3+="<td align='center'><span class='text-danger'>Match Drawn</span><br>";
					   }else{
					   htmlco3+="<td align='center'><span class='text-danger'>"+completedlist[i].winTeamName+" won</span><br>";}
				   
				    htmlco3+=""+completedlist[i].winTeamName+": "+completedlist[i].winTeamRuns+"/"+completedlist[i].winTeamWickets+" in "+completedlist[i].winTeamOvers+"<br>";
				    htmlco3+=""+completedlist[i].loseTeamName+" : "+completedlist[i].loseTeamRuns+"/"+completedlist[i].loseTeamWickets+" in "+completedlist[i].loseTeamOvers+"</td>";
				     */
				    
   	   			 
				    if(completedlist[i].statusOfMatch == 'tie'){
					    htmlco3+="<td align='center'><span class='text-danger'>Match Tied</span><br>";
					    }else if(completedlist[i].statusOfMatch == 'draw'){
							   htmlco3+="<td align='center'><span class='text-danger'>Match Drawn</span><br>";
						   }else if(completedlist[i].statusOfMatch == 'Noresult'){
					    
							   htmlco3+="<td align='center'><span class='text-danger'>Match Abandoned</span><br>";}
					    else{
						   htmlco3+="<td align='center'><span class='text-danger'>"+completedlist[i].winTeamName+" won</span><br>";}
				    
				    if(completedlist[i].statusOfMatch != 'Noresult'){
					    htmlco3+=""+completedlist[i].winTeamName+": "+completedlist[i].winTeamRuns+"/"+completedlist[i].winTeamWickets+" in "+completedlist[i].winTeamOvers+"<br>";
					    htmlco3+=""+completedlist[i].loseTeamName+" : "+completedlist[i].loseTeamRuns+"/"+completedlist[i].loseTeamWickets+" in "+completedlist[i].loseTeamOvers+"</td>"; 
					    
				    }
				    
				    
				    
				    htmlco3+="<td><a href=javascript:void(0); onclick='PleaseLogin()'><i class='fa fa-pencil' title='Edit Profile'></i></a><a href=javascript:void(0); onclick='PleaseLogin()'>Edit Scorecard</a></td>";
				    htmlco3+="<td align='center' >";
				    
				    
				    console.log("completedlist[i].scorecardLock :"+completedlist[i].scorecardLock);
				    
				    
				    
				    if(completedlist[i].scorecardLock == "OFF"){
				    	
				    	
				    	console.log("inside off :"+completedlist[i].scorecardLock);
				    	htmlco3+="<div id='Requestlist_"+completedlist[i].tournamentSchedulerId+"'></div>";
				    	
				    	htmlco3+="<a id='"+completedlist[i].tournamentSchedulerId+"OFF' href='javascript:void(0)' onclick='PleaseLogin()'><img src='${pageContext.request.contextPath}/images/unlock.png' style='max-width: 22px;margin-right: 5px; margin-bottom: 17px;'></a>";
				    	htmlco3+="<a id='"+completedlist[i].tournamentSchedulerId+"ON' style='display: none;'  href='javascript:void(0)' onclick='PleaseLogin()'><img src='${pageContext.request.contextPath}/images/lock.png' style='max-width: 22px;margin-right: 5px; margin-bottom: 17px;'></a>";
				    	
				    }else{
				    	
				    	
				    	console.log("inside On :"+completedlist[i].scorecardLock)
				    	htmlco3+="<div id='Requestlist_"+completedlist[i].tournamentSchedulerId+"'></div>";
				    	
				    	
				    	htmlco3+="<a id='"+completedlist[i].tournamentSchedulerId+"ON' href='javascript:void(0)' onclick='PleaseLogin()'><img src='${pageContext.request.contextPath}/images/lock.png' style='max-width: 22px;margin-right: 5px; margin-bottom: 17px;'></a>";
				    	htmlco3+="<a id='"+completedlist[i].tournamentSchedulerId+"OFF' style='display: none;'  href='javascript:void(0)' onclick='PleaseLogin()'><img src='${pageContext.request.contextPath}/images/unlock.png' style='max-width: 22px;margin-right: 5px; margin-bottom: 17px;'></a>";
				    	
				    }
				    
				    
                    htmlco3+="<a href=javascript:void(0); onclick=showScoreCard('"+completedlist[i].tournamentSchedulerId+"')><i class='fa fa-newspaper-o editIcon'></i></a></td>";
				    
				    htmlco3+="</tr>";
				}
				htmlco3+="</tbody></table>";
			
			}else{
			
			htmlco3+="</table>";
				htmlco3+="<span class='noContentDivRed'>No Completed Matches</span>";
			}
			htmlco3+="</div></div></div>";
			
			$("#completedmatchesdiv").html(htmlco3).trigger('create'); 
   			 
    		}
    		
    	})
    	
    }
	        
				
    </script>
    
                	<script type="text/javascript">
                	
                	 function formatDateValue(date1) {
                		 
                		 
                         var date = date1;
                 		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
                 		var gettingFromServer= new Date(date);
                 		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
                 		 
               		  var hours = gettingFromServer.getHours();
               		  console.log(hours)
               		  var minutes = gettingFromServer.getMinutes();
               		  var ampm = hours >= 12 ? 'PM' : 'AM';
               		  hours = hours % 12;
               		  hours = hours ? hours : 12; // the hour '0' should be '12'
               		  minutes = minutes < 10 ? '0'+minutes : minutes;
               		  hours = hours < 10 ? '0'+hours : hours ;
               		  var strTimeHours = hours + ':' + minutes + ampm;
               		  var strTime = (gettingFromServer.getMonth()+1)+"/"+gettingFromServer.getDate()+"/"+gettingFromServer.getFullYear()+" "+strTimeHours;
               		  return strTime;
               		};
                	
               		
               		
               		$(document).ready(function(){
               			var endstr= "${endDateSet}";
               			var startstr="${startDateSet}";
               			//alert(endstr);
               			if(endstr != ''){
               				console.log("endstr :"+endstr);
               			$('#fromDate').datepicker('update',startstr);
       					$("#toDate").datepicker("update", endstr);
               			}
               			
               		})
                	</script>
                	<script type="text/javascript">
                	
                	function DeleteScoreCard(id,tournmentId,tournmentShudulorId,homeId,awayTeamId,date,createdBy)
                	{
                		
                		
                	//	alert("hello");
                		 var tournamentBean = {
                					   tournamentId : tournmentId,
                					   createdBy : id,
                					   tournamentSchedulerId : tournmentShudulorId,
                			   }; 
                			   
                			  $.ajax({
                				type :"Post",
                				url:"${pageContext.request.contextPath}/getScheduleHomeAwayName",
                				headers : {'Name' : HeaderName},
                				data:JSON.stringify(tournamentBean),
                				contentType:"application/json",
                				success:function(response){
                					
                					 if(response.length > 0){	  
                					 
                				//	 window.location.href = "${pageContext.request.contextPath}/EnterScoreSelectedMatchPublicProfile/boardId/"+boardId+"/"+tournmentId+"/"+tournmentShudulorId+"/"+homeId+"/"+awayTeamId+"/"+date+"/"+createdBy;
                					
                						 $("#ScoreCardBoardId").val(id);
                	                		$("#ScoreCardTournamentId").val(tournmentId);
                	                		$("#ScoreCardtournmentShudulorId").val(tournmentShudulorId);
                	                		$("#ScoreCardhomeId").val(homeId);
                	                		$("#ScoreCardawayTeamId").val(awayTeamId);
                	                		$("#ScoreCarddate").val(date);
                	                		$("#ScoreCardcreatedBy").val(createdBy);
                	                		
                	                		$("#ScoreCardPopup").show();
                					 
                					 }
                					 else{					 
                						 showNotification("You are not a valid user to enter the score", 2000);
                						 hide_notificationpoup(2000);					 
                					 }
                					
                					
                				},
                				error:function(err){
                					console.log(err);
                				}
                				  
                			  });
                		
                		
                	}
                	function ScoreCardPopuphide()
                	{
                		$("#ScoreCardPopup").hide();
                		$("#EditSCoreCard").hide();
                		$("#EditSCoreCard1").hide();
                		$("#editScoreCardPopUp").hide();
                	}
                	function ScoreCardPopupok()
                	{
                		var boardid=$("#ScoreCardBoardId").val();
                		var tournametid=$("#ScoreCardTournamentId").val();
                		var tournamentschedulerid=$("#ScoreCardtournmentShudulorId").val();
                	    var homeid=$("#ScoreCardhomeId").val();
                	    var awayteamid= $("#ScoreCardawayTeamId").val();
                	    var date=$("#ScoreCarddate").val();
                	    var createdby=$("#ScoreCardcreatedBy").val();
                	
                	var request={
                			boardId : boardid,
                			tournamentId : tournametid,
                			tournamentSchedulerId : tournamentschedulerid,
                			homeTeamId : homeid,
                			awayTeamId : awayteamid,
                			dateString : date,
                			createdBy : createdby,
                	}
                	
                	$.ajax({
                	type : "POST",
                	url : "${pageContext.request.contextPath}/clearScore",
                	contentType : "application/json; charset=utf-8",
                	data : JSON.stringify(request),
                	success : function(response)
                	{
                		$("#ScoreCardPopup").hide();
                	if(response == 'Success')
                		{
                		window.location.href = "${pageContext.request.contextPath}/EnterScoreSelectedMatch/boardId/"+boardid+"/"+tournametid+"/"+tournamentschedulerid+"/"+homeid+"/"+awayteamid+"/"+date+"/"+createdby;	
                		}else
                			{
                			showNotification("You are not a valid user to enter the score", 2000);
                			hide_notificationpoup(2000);
                			}
                		}
                	})
                	
                	}
                	
                	</script>
                	<script>
                	function EDITSCORECARD(id,tournmentId,tournmentShudulorId,homeId,awayTeamId,date,createdBy)
                	{
            	  var tournamentBean = {
                					   tournamentId : tournmentId,
                					   createdBy : id,
                					   tournamentSchedulerId : tournmentShudulorId,
                			   }; 
                			   
                			  $.ajax({
                				type :"Post",
                				url:"${pageContext.request.contextPath}/getScheduleHomeAwayName",
                				headers : {'Name' : HeaderName},
                				data:JSON.stringify(tournamentBean),
                				contentType:"application/json",
                				success:function(response){
                					
                					 if(response.length > 0){	  
                					 		$("#ScoreCardBoardId").val(id);
                	                		$("#ScoreCardTournamentId").val(tournmentId);
                	                		$("#ScoreCardtournmentShudulorId").val(tournmentShudulorId);
                	                		$("#ScoreCardhomeId").val(homeId);
                	                		$("#ScoreCardawayTeamId").val(awayTeamId);
                	                		$("#ScoreCarddate").val(date);
                	                		$("#ScoreCardcreatedBy").val(createdBy);
                	                
                	                		$("#EditSCoreCard").show();
                					 
                					 }
                					 else{					 
                						 showNotification("You are not a valid user to enter the score", 2000);
                						 hide_notificationpoup(2000);					 
                					 }
                					
                					
                				},
                				error:function(err){
                					console.log(err);
                				}
                				  
                			  });
                		
                		
                	}
                	
                	 function EnterScoreCardPopupok1(){
                 		
                 		$("#EditSCoreCard1").hide();
                 		var boardid=$("#ScoreCardBoardId").val();
                 		var tournametid=$("#ScoreCardTournamentId").val();
                 		var tournamentschedulerid=$("#ScoreCardtournmentShudulorId").val();
                 	    var homeid=$("#ScoreCardhomeId").val();
                 	    var awayteamid= $("#ScoreCardawayTeamId").val();
                 	    var date=$("#ScoreCarddate").val();
                 	    var createdby=$("#ScoreCardcreatedBy").val();
                 	
                 	 var request={
                 			boardId : boardid,
                 			tournamentId : tournametid,
                 			tournamentSchedulerId : tournamentschedulerid,
                 			homeTeamId : homeid,
                 			awayTeamId : awayteamid,
                 			dateString : date,
                 			createdBy : createdby,
                 	}
                 	
                 	$.ajax({
                 	type : "POST",
                 	url : "${pageContext.request.contextPath}/clearScore",
                 	contentType : "application/json; charset=utf-8",
                 	data : JSON.stringify(request),
                 	success : function(response)
                 	{
                 	 	
                 	if(response == 'Success')
                 		{
                 		window.location.href = "${pageContext.request.contextPath}/EnterScoreSelectedMatch/boardId/"+boardid+"/"+tournametid+"/"+tournamentschedulerid+"/"+homeid+"/"+awayteamid+"/"+date+"/"+createdby;	
                 		}else
                 			{
                 			showNotification("You are not a valid user to enter the score", 2000);
                 			hide_notificationpoup(2000);
                 			} 
                 		}
                 	});
                 	} 
                	 function EnterScoreCardPopupok(){
                 		var completedPop = $("input[name='gender']:checked").val();
                 		if(completedPop=='2'){
                 		$("#EditSCoreCard").hide();
                 		$("#EditSCoreCard1").show();
                 		}else{
                 			$("#EditSCoreCard").hide();
                 			$("#editScoreCardPopUp").show();
                 			
                 		}
                 	}
                	</script>
                	
                	<script type="text/javascript">
                	
                	/* function lockscorecard(tid,status,status1)
                	{
                		
                		var array=[];
                		var obj={
                				tournamentSchedulerId : tid, 
                					scorecardLock : status
                		}
                		array.push(obj);
                		
                		var request={
                				tournamentScheduler : array
                		}
                		console.log(JSON.stringify(request));
                		
                		$.ajax({
                			type : "POST",
                			url : "${pageContext.request.contextPath}/lockScorecard",
                			contentType : "application/json; charset=utf-8",
                			data : JSON.stringify(request),
                			success : functionlockscorecard(response)
                			{
                				
                				if(response != null){
                					$("#"+tid+""+status).show();
                					$("#"+tid+""+status1).hide();
                				 console.log(response);
                				 } 
                			}
                			
                		})
                		
                	} */
                	
                	function lockscorecard(tid,status,status1)
                	{
                		
                		var userid=$("#Logeduserid").val();
                		var request={
                				tournamentSchedulerId : tid
                		}
                		console.log(JSON.stringify(request));
                		console.log(userid)
                		
                		$.ajax({
                			type : "POST",
                			url : "${pageContext.request.contextPath}/unLockrequesterList",
                			contentType : "application/json; charset=utf-8",
                			data : JSON.stringify(request),
                			success : function(response)
                			{
                				
                				 var res=JSON.parse(response);
                				 var result=res.results;
                				 var requestlist=result.RequestList
                				 
                				 
                				 
                				 var htm="";
                				 htm+="<div class='dropdown-content request'>";
                				 htm+="<ul>";
                				 // for only me
                				 htm+="<li>Only me"; 
                				 if(status1 == 'OFF'){
                					 console.log("status1 :"+status1)
             				    	htm+="<a id='"+userid+"OFF' href='javascript:void(0)' onclick=scorecardLock('"+userid+"','"+tid+"','ON','OFF','ME')><img src='${pageContext.request.contextPath}/images/unlock.png' ></a>";
             				    	htm+="<a id='"+userid+"ON' style='display: none;'  href='javascript:void(0)' onclick=scorecardLock('"+userid+"','"+tid+"','OFF','ON','ME')><img src='${pageContext.request.contextPath}/images/lock.png' ></a>";
             				    	
             				    }else{
             				    	console.log("status1 :"+status1)
             				    	htm+="<a id='"+userid+"ON' href='javascript:void(0)' onclick=scorecardLock('"+userid+"','"+tid+"','OFF','ON','ME')><img src='${pageContext.request.contextPath}/images/lock.png' ></a>";
             				    	htm+="<a id='"+userid+"OFF' style='display: none;'  href='javascript:void(0)' onclick=scorecardLock('"+userid+"','"+tid+"','ON','OFF','ME')><img src='${pageContext.request.contextPath}/images/unlock.png' ></a>";
             				    }
                				 htm+="</li>";
                				 
                				 
                				 if(requestlist.length > 0){
                				 console.log(res.results.RequestList[0].fullName);
                				 
                				 for(var i in requestlist)
                				 {
                					 
                					 
                				 htm+="<li>"+requestlist[i].fullName+""; 
                				 
                				 
                				 var requestid=requestlist[i].userId;
                				 
                				 
                				 if(requestlist[i].userFlag == 'ON'){
                					 console.log("requestlist[i].userFlag :"+requestlist[i].userFlag)
                					 htm+="<a id='"+requestid+"ON' href='javascript:void(0)' onclick=scorecardLock('"+requestid+"','"+tid+"','OFF','ON','OTHERS')><img src='${pageContext.request.contextPath}/images/lock.png' ></a>";
              				    	htm+="<a id='"+requestid+"OFF' style='display: none;'  href='javascript:void(0)' onclick=scorecardLock('"+requestid+"','"+tid+"','ON','OFF','OTHERS')><img src='${pageContext.request.contextPath}/images/unlock.png' ></a>";
             				    	
             				    }else{
             				    	console.log("requestlist[i].userFlag :"+requestlist[i].userFlag)
             				    	htm+="<a id='"+requestid+"OFF' href='javascript:void(0)' onclick=scorecardLock('"+requestid+"','"+tid+"','ON','OFF','OTHERS')><img src='${pageContext.request.contextPath}/images/unlock.png' ></a>";
             				    	htm+="<a id='"+requestid+"ON' style='display: none;'  href='javascript:void(0)' onclick=scorecardLock('"+requestid+"','"+tid+"','OFF','ON','OTHERS')><img src='${pageContext.request.contextPath}/images/lock.png' ></a>";
             				    
             				    
             				    }
                				 htm+="</li>";
                				 
                				 
                				 
                				 
                				 }
                				 }
                				 htm+="</ul>";
                					 htm+="</div>";
                				 
                				 
                				 
                				 
                					/* $("#RequestPopupcontent").html(htm); */
                				 $("#Requestlist_"+tid).html(htm).trigger('create');;
                				 
                					  $("#Requestlist_"+tid).show(); 
                			}
                			
                		})
                		
                	}
                	
                	function Requestpopup(){
                		$("#Requestpopup").hide();
                	}
                	
                	
                	
                	
                	function scorecardLock(uid,tid,status,status1,flag)
                	{
                		
                		
                	        $("#UidRequest").val(uid);
                	        $("#TidRequest").val(tid);
                	        $("#StatusRequest").val(status);
                	        $("#Status1Request").val(status1);
                	        $("#FlagRequest").val(flag);
                		
                		
                		
                		$("#Requestpopup").show();
                		
                		/* var userid=$("#Logeduserid").val();
                		var array=[];
                		var obj={
                				tournamentSchedulerId : tid, 
                				createdBy : userid,
                					scorecardLock : status,
                					status : flag,
                					scorerId : uid
                		}
                		array.push(obj);
                		
                		var request={
                				tournamentScheduler : array
                		}
                		console.log(JSON.stringify(request));
                		
                		$.ajax({
                			type : "POST",
                			url : "${pageContext.request.contextPath}/lockScorecard",
                			contentType : "application/json; charset=utf-8",
                			data : JSON.stringify(request),
                			success : function(response)
                			{
                				console.log(response);
                				if(response != null){
                					if(flag == 'ME'){
                					$("#"+tid+""+status).show();
                					$("#"+tid+""+status1).hide();
                				 }
                					
                					$("#"+uid+""+status).show();
                					$("#"+uid+""+status1).hide();
                					
                					
                					
                				 } 
                			}
                			
                		}) */
                		
                	} 
                	
                	
                	$('body').click(function() {
                		$(".dropdown-content").hide();
                		});
                	
                	
                	function Requestpopupok(){
                		
                		
		                var uid=$("#UidRequest").val();
		             	var tid=$("#TidRequest").val();
		             	var status=$("#StatusRequest").val();
		             	var status1=$("#Status1Request").val();
		             	var flag=$("#FlagRequest").val();
                		
                		
                		var userid=$("#Logeduserid").val();
                		var array=[];
                		var obj={
                				tournamentSchedulerId : tid, 
                				createdBy : userid,
                					scorecardLock : status,
                					status : flag,
                					scorerId : uid
                		}
                		array.push(obj);
                		
                		var request={
                				tournamentScheduler : array
                		}
                		console.log(JSON.stringify(request));
                		
                		$.ajax({
                			type : "POST",
                			url : "${pageContext.request.contextPath}/lockScorecard",
                			contentType : "application/json; charset=utf-8",
                			data : JSON.stringify(request),
                			success : function(response)
                			{
                				console.log(response);
                				if(response != null){
                					if(flag == 'ME'){
                					$("#"+tid+""+status).show();
                					$("#"+tid+""+status1).hide();
                				 }
                					
                					$("#"+uid+""+status).show();
                					$("#"+uid+""+status1).hide();
                					
                					
                					
                				 } 
                			}
                			
                		}) 
                		
                		$("#Requestpopup").hide();
                		
                		
                	}
                	
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
