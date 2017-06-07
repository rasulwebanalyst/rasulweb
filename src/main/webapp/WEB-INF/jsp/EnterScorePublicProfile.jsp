 <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <title>Cricket Social</title>
	<%@ include file="CSCommon.jsp" %>
		<%@ include file="BoardHeaderpublic.jsp" %>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.multiselect.css" type="text/css" />
<style type="text/css">

table sup{
	color: red;
}
</style>
</head>
<body>
<script type="text/javascript">
<!--

//-->
 var firstInninBattingArrayList=[];
 var firstInninBowlingArrayList=[];
 var firstInninBattingArrayObjectList=[];
 var firstInninBowlingArrayObjectList=[];
 var secondInninBattingArrayObjectList=[];
 var secondInninBowlingArrayObjectList=[];
  var tournamentSelectedDefault= true;
 var homeTeamId = "${homeTeamId}";
 var awayTeamId = "${awayTeamId}";
  var winTeamPoint = "${winPoint}";
 var firstTeamPlayersId = ${homeTeamRosterList};
// alert("sds"+ JSON.stringify(firstTeamPlayersId1));
// var firstTeamPlayersId = JSON.stringify(firstTeamPlayersId1);
 var sceondTeamPlayersId = ${awayTeamRosterList};
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/enterScoreValidation.js"></script>
 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="publicLeaugeManagementSideMenu.jsp" %>

      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="pageHead noBorder">Enter Score
                  
                  <div class="h1Sbox">
                              
                                
                                <div class="selectdiv pull-right">
                                    <select class="selectboxdiv" id="scheduler" onchange="teamName(this.value)">
                                        <option value="0">Scheduler list</option> 
                                        
                                    </select>
                                    <div class="out" id="schedulerTextVal">Scheduler list</div>    
                                </div>
                                
                                <%-- <div class="selectdiv pull-right">
                                    <select class="selectboxdiv" id="tournament" onchange="loadScheduler(this.value)">
                                        <option value="0">select tournament</option>
                                        <c:forEach var="tournaments" items="${tournamentOfTheBoard}">
                                        <option value="${tournaments.tournamentId }">${tournaments.tournamentName }</option>
                                        </c:forEach>
                                    </select>
                                    <div class="out">select tournament</div>    
                                </div> --%>
                                <div class="selectdiv pull-right">
                                     <select class="selectboxdiv valid" id="tournament" onchange="loadScheduler(this.value)">
                                    <!--  <option value="0" >Select tournament</option>  -->
                                        <c:forEach var="tournaments" items="${tournamentOfTheBoard}">
                                        <c:if test="${tournaments.tournamentId == selectedTournamentId }">
                                          <option value="${tournaments.tournamentId }" >${tournaments.tournamentName }</option>
                                        </c:if>
                                      
                                        </c:forEach>
                                        
                                    </select>
                                    <div class="out" id="tournamentTextVal">Select tournament</div>    
                                </div>
                                <script type="text/javascript">
                                	                // document.getElementById('tournament').options[0].selected=true;               
                                </script>
                              </div>
                  
                  </h1>
                  
                  </div></div>
                  <div class="col-md-10">
                  <div class="col-md-12 whiteBox" id="inningsDropdown">
                           <div class="h1Sbox inningSelectBox" >
                              
                                
                                <!-- <div class="selectdiv pull-right" >
                                    <select class="selectboxdiv" id="awayTeamName" onchange="checkInnings(this.value,this)">
                                       
                                        
                                    </select>
                                    <div class="out" id="awayTeamNameOUT" >Select first inning</div>  
                                     <label class="error"></label>  
                                </div> -->
                                
                                
                                <div style="float: right;width: 45%; margin-right: 2%;">
                                <label style="float: left;width: 52%;"><b> Second Innings</b></label> 
                                <div class="selectdiv" style="float: left; width: 100%; margin-left: 0;" >
                                 
                                    <select class="selectboxdiv" id="awayTeamName" onchange="checkInnings(this.value,this)">
                                       
                                        
                                    </select>
                                    <div class="out" id="awayTeamNameOUT" >Select first inning</div>  
                                     <label class="error"></label>  
                                </div>
                                </div><!-- div end -->
                               
                                <!-- <div class="selectdiv pull-right">
                                    <select class="selectboxdiv" id="homeTeamName" onchange="checkInnings(this.value,this)">
                                      
                                    </select>
                                    <div class="out" id="homeTeamNameOUT">Select second inning</div>
                                    <label class="error"></label>    
                                </div> -->
                                
                                <div style="float: left; width: 45%;">
                                <label style="float: left;width: 52%;"><b>First Innings</b></label> 
                                
                                <div class="selectdiv" style="float: left; width: 100%; margin-left: 0;">
                                 
                                    <select class="selectboxdiv" id="homeTeamName" onchange="checkInnings(this.value,this)">
                                      
                                    </select>
                                    <div class="out" id="homeTeamNameOUT">Select second inning</div>
                                    <label class="error"></label>    
                                </div>
                                </div><!-- div end -->
                                
                                
                                	
                              </div>
                              <div style="margin-top: 33px;">
                              	<input type="text" value="" id="matchDate" style="height: 36px;" readonly>
                              	<button onclick="matchStart('${homeTeamId}','${awayTeamId}')" class="btn btn-default dBtn" style="margin-left: 6px;" id="enterscoreStartbtn" >Enter score</button> <a href="#" style="margin-left: 6px;width: 98px;" class="btn btn-default dBtn" onclick="cancelValues()">Cancel</a>
                              	
                              </div>
                           
                           </div> 
                  
                  </div>
            <div class="col-md-10 pull-right">            
          
          <div class="col-md-12 statusUpdateBox whiteBox rooster enterScorePage" id="entescoreMainDIV" style="display: none;">
                        	<!--<h1 class="noBorder">Enter Score</h1>-->
                           
                            
                            
        <section id="cslide-slides" class="cslide-slides-master clearfix">
            <div class="cslide-prev-next clearfix">
                <span class="cslide-prev">Prev</span>
                <span id="Nextslidecaller" class="cslide-next">Next</span>
            </div>
            <div class="cslide-slides-container clearfix">
                <div class="cslide-slide">
                   	<!-- <p id="">(1st Innings)</p> -->
                   	   <p> 1st Innings <span id="firstInningsId" style="width: 80%;"></span><div id="inningsDropdown" style="display:none"><!-- <select id="homeTeamName"  onchange="checkInnings(this.value,this)"></select> --></div></p>
                   	   

 		 <table class = "firInnBatting" id="firInnBattingTable">
  			<thead>
        	<tr>
            	<th><sup>*</sup>Player Names</th>
                <th>Bowler</th>
                <th>Fielder</th>
                <th><sup>*</sup>Dismissal Type</th>
                <th><sup>*</sup>R</th>
                <th>M</th>
                <th><sup>*</sup>B</th>
                <th>4's</th>
                <th>6's</th>
                <th><sup>*</sup>SR</th>
                <th>0's<th>
            </tr>
            </thead>
            <tbody>
            <tr>
            	<td><!-- <input  type="text" class="wi-sel" id="firInnPlayerName" onkeyup="getBuddiesAutoCompleteFirstInning(this,'addMemberautoCompleteDIV','addMemberIDDIV')" onfocus="checkFunction()" value="" name="firInnPlayerName">  
            	<div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  -->
			                     <!--  <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="firInnPlayerName" name="firInnPlayerName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIV','FistInningBatting')">
													<option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> --> 
								<select style="width: 100px;" id="firInnPlayerName" name="firInnPlayerName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIV','FistInningBatting')">
													<option value="0">Select Player</option>
											</select>		           
                                  <input type="hidden" class="addMemberIDDIV" class="form-control" placeholder="" id="addMemberIDDIV" name="addMemberIDDIVName" >
                                  </td>
                <td><!-- <input type="text" class="wi-sel" id="firInnBowlerName" onkeyup="getBuddiesAutoComplete1(this,'addMemberautoCompleteDIVBow','addMemberIDDIVBow')" >
                <div class="autoComplete" id="addMemberautoCompleteDIVBow" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  -->
			                                 <!--  <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="firInnBowlerName" name="firInnBowlerName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVBow')">
													<option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->
								<select style="width: 100px;" id="firInnBowlerName" name="firInnBowlerName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVBow')">
													<option value="0">Select Player</option>
											</select>		
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBow" name="addMemberIDDIVBowName" >
                </td>
                <td><!-- <input type="text" class="wi-sel" id="firInnFielderName" onkeyup="getBuddiesAutoComplete1(this,'addMemberautoCompleteDIVFiel','addMemberIDDIVFiel')">
                  <div class="autoComplete" id="addMemberautoCompleteDIVFiel" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  -->
			                      <!-- <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="firInnFielderName" name="firInnFielderName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVFiel')">
													<option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->   
								<select style="width: 100px;" id="firInnFielderName" name="firInnFielderName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVFiel')">
													<option value="0">Select Player</option>
											</select>		          
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFiel" name="addMemberIDDIVFiel" >
                </td>
				<td><div class="amdSbox">
								
                           <div class="selectdiv" style="width:121px">
											<select class="selectboxdiv" id="dissmissalType" name="dismissalType" onchange="selectDismissal(this,'firInnDismissal')">
												<option value="0">Select dissmissal type</option>
											 	<c:forEach var="dismissal" items="${dismissalTypeList}">
											 	<option value="${dismissal.dismissalTypeName}">${dismissal.dismissalTypeName}</option> 
												</c:forEach>  
											</select>
											<div  class="out"></div>
										</div>
                            </div>
                            <input type="hidden" class="wid" id="firInnDismissal" name="firInnDismissal" >
                 </td>
                <td><input type="text" class="wid OnlyNumber" id="firInnRuns" onfocus = "numberCheck(this)" name="firInnRuns" onblur="calculateStrikerate('firInnRuns','firInnBalls','firInnStrikeRate')"></td>
                <td><input type="text" class="wid " id="firInnMins" onfocus = "numberCheck(this)" name="firInnMins"></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnBalls" onfocus = "numberCheck(this)" name="firInnBalls" onblur="calculateStrikerate('firInnRuns','firInnBalls','firInnStrikeRate')"></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnFours" onfocus = "numberCheck(this)" name="firInnFours"></td> 
                <td><input type="text" class="wid OnlyNumber" id="firInnSixs"  onfocus = "numberCheck(this)" name="firInnSixs"></td> 
                <td><input type="text" class="wid" id="firInnStrikeRate" onfocus = "numberCheck(this)" name="firInnStrikeRate" readonly="readonly"></td>   
                <td><input type="text" class="wid OnlyNumber" id="firInnBattingOvers" onfocus = "numberCheck(this)" name="firInnBattingOvers"></td>            
                </tr>
                
            </tbody>
  </table>
  <br>
  <div><a href="javascript:void(0)" class="enterScoreAddMore" onclick="addFirstInningsBatting()">Add More</a></div><br><br>
  
  <!-- score table -->
  <div class="pull-left score-details-table-holder">
  	<div class="score-detail-label">EXTRAS :</div>
  	<table class="score-details-table">
  	<tr><th>Wides</th><th>No Balls</th><th>Byes</th><th>Leg Byes</th><th>Penalties</th></tr>
  	<tr><td><input type="text" id="firstInningsWide" value=""></td><td><input type="text" id="firstInningsNoBalls" value=""></td><td><input type="text" id="firstInningsByes" value=""></td><td><input type="text" id="firstInningsLegByes" value=""></td><td><input type="text" id="firstInningsPenalties" value=""></td></tr>
  	</table>
  	<input type="hidden" id="WinTeamdetails">
  	<div class="score-details-in">		
    	<label for="email" class="totscor">TOTAL SCORE</label>
        <input type="text" class="TOT-E OnlyNumber" id="firstInnigsScore" onfocus="numberCheck(this);" onblur="firstInningsTotalScore(this.value)">
        <label for="email" class="totscor">TOTAL WICKET</label>
        <input type="text" class="TOT-E OnlyNumber" id="firstInnigsTotalWicket" onfocus="numberCheck(this);" onblur="firstInningsWickets(this.value)">
  	    <label for="text" class="totscor">TOTAL OVER</label>
        <input type="text" class="TOT-E" id="firstBattingTotalOvers" onfocus="numberCheck(this);" onblur="firstInningsTotalOversChange()">
  	    
  	</div><!-- score details in end -->	
  </div><!-- score-details-table-holder end -->
  
  <div class="score-table-holder">
  <div class="score-label">FOW :</div>
  
  <table class="score-table">
  	<tr>
  	<td>1</td><td><input type="text" id="firstInningsFirstWicket" value=""></td>
  	<td>2</td><td><input type="text" id="firstInningsSecondWicket" value=""></td>
  	<td>3</td><td><input type="text" id="firstInningsThirdWicket" value=""></td>
  	<td>4</td><td><input type="text" id="firstInningsFourthWicket" value=""></td>
  	<td>5</td><td><input type="text" id="firstInningsFithWicket" value=""></td>
  	<td>6</td><td><input type="text" id="firstInningsSixthWicket" value=""></td>
  	<td>7</td><td><input type="text" id="firstInningsSevenWicket" value=""></td>
  	<td>8</td><td><input type="text" id="firstInningsEightWicket" value=""></td>
  	<td>9</td><td><input type="text" id="firstInningsNineWicket" value=""></td>
  	<td>10</td><td><input type="text" id="firstInningsTendWicket" value=""></td>
  </tr>
  
  </table>
  
  </div><!-- score-table-holder end -->
  <div class="col-md-12 col-lg-12" >
  <label for="text" class="totscor sel-label">DNB Players</label>   
  <div class="sel-holder" id="donotbatDivFirstInnings">     
    <!-- <select name="dntPlayerList" id="dntPlayerList" multiple="multiple" class="form-control" >
 <option value="">Afghanistanfghfhgjjhj</option>
<option value="AF">Afghanistanfghfhgjjhj</option>
<option value="AL">Afghanistanfghfhgjjhj</option>
<option value="DZ">Afghanistan</option>
<option value="AS">American Samoa</option>
<option value="AF">Afghanistan</option>
<option value="AL">Albania</option>
</select>  -->
</div>

  </div>
  <!-- score table end -->
  
  
  
  <table id="firInnBowlingTable">
  		<thead>
        	<tr>
            	<th><sup>*</sup>Bowler Names</th>
                <th><sup>*</sup>O</th>
                <th><sup>*</sup>R</th>
                <th>M</th>
                <th><sup>*</sup>W</th>
                <th><sup>*</sup>Eco</th>
                <th>0's</th>
                <th>4's</th>
                <th>6's</th>
                <th>B</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            	<td><!-- <input type="text" class="wi-sel" id="firInnBowlingName" onkeyup="getBuddiesAutoCompleteFirstBowling(this,'addMemberautoCompleteDIVBowling','addMemberIDDIVBowling')">
            	
            	<div class="autoComplete" id="addMemberautoCompleteDIVBowling" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div> -->
			                    <!-- <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="firInnBowlingName" name="firInnBowlingName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIVBowling','FirstInningBowling')">
													<option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->
								<select  id="firInnBowlingName" name="firInnBowlingName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIVBowling','FirstInningBowling')">
													<option value="0">Select Player</option>
											</select>		                  
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBowling" name="addMemberIDDIVBowling">
            	</td>
                <td><input type="text" class="wid" id="firInnOvers" onfocus = "numberCheck(this)" onblur="oversVal(this);calculateBowlingEconamic('firInnBowRuns','firInnOvers','firInnEco','firInnBowBalls')" name="firInnOvers" ></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnBowRuns" onfocus = "numberCheck(this)" name="firInnBowRuns" onblur="calculateBowlingEconamic('firInnBowRuns','firInnOvers','firInnEco','firInnBowBalls')"></td>
				<td><input type="text" class="wid OnlyNumber" id="firInnMaiden" onfocus = "numberCheck(this)" name="firInnMaiden"></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnWickets" onfocus = "numberCheck(this)" name="firInnWickets"></td>
                <td><input type="text" class="wid" id="firInnEco" onfocus = "numberCheck(this)" name="firInnEco" readonly="readonly"></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnZeros" onfocus = "numberCheck(this)" name="firInnZeros"></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnBowFours" onfocus = "numberCheck(this)" name="firInnBowFours"></td>
                <td><input type="text" class="wid OnlyNumber" id="firInnBowSixs" onfocus = "numberCheck(this)" name="firInnBowSixs"></td>    
                 <td><input type="text" class="wid OnlyNumber" id="firInnBowBalls" onfocus = "numberCheck(this)" name="firInnBowBalls" readonly="readonly"></td>           
                </tr>
                
            </tbody>
  </table><br>
   <div><a class="enterScoreAddMore" href="javascript:void(0)" onclick="addFirstInningBowling()">Add More</a>
   
   <input type="text"  id="secslideshowdiv" readonly="readonly" style="height: 0; width: 0; opacity : 0;">
   <input type="text"  id="" readonly="readonly" style="height: 0; width: 0; opacity : 0;">
   
   </div>
  
                </div>
                <div class="cslide-slide">
                    
                    <p> 2nd Innings <span id="secondInningsId" style="width: 80%;"></span><div id="inningsDropdown1" style="display:none"><!-- <select id="awayTeamName"  onchange="checkInnings(this.value,this)"></select> --></div></p>

 		 <table id="secInnBattingTable">
  			<thead>
        	<tr>
                <th><sup>*</sup>Player Names</th>
                <th>Bowler</th>
                <th>Fielder</th>
                <th><sup>*</sup>Dismissal Type</th>
                <th><sup>*</sup>R</th>
                <th>M</th>
                <th><sup>*</sup>B</th>
                <th>4s</th>
                <th>6s</th>
                <th><sup>*</sup>SR</th>
                <th>O</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            	<td><!-- <input type="text" class="wi-sel" id="secInnPlayerName" onkeyup="getBuddiesAutoCompleteSecondInning(this,'addMemberautoCompleteDIVPlayer','addMemberIDDIVPlayer')">
            	
            	<div class="autoComplete" id="addMemberautoCompleteDIVPlayer" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  -->
			                      <!-- <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="secInnPlayerName" name="secInnPlayerName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIVPlayer','SecondInningBatting')">
								                 <option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->          
								<select style="width: 100px;" id="secInnPlayerName" name="secInnPlayerName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIVPlayer','SecondInningBatting')">
								                 <option value="0">Select Player</option>
											</select>		    
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVPlayer" name="addMemberIDDIVPlayer">
            	
            	</td>
                <td><!-- <input type="text" class="wi-sel" id="secInnBowlerName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIVBowlerSec','addMemberIDDIVBowlerSec')" name="secInnBowlerName">
                <div class="autoComplete" id="addMemberautoCompleteDIVBowlerSec" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div> --> 
			             <!--  <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="secInnBowlerName" name="secInnBowlerName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVBowlerSec')">
													<option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->
								<select style="width: 100px;" id="secInnBowlerName" name="secInnBowlerName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVBowlerSec')">
													<option value="0">Select Player</option>
											</select>		                     
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBowlerSec" name="addMemberIDDIVBowlerSec">
                
                </td>
                <td><!-- <input type="text" class="wi-sel" id="secInnFielderName" onkeyup="getBuddiesAutoCompleteSecondInning(this,'addMemberautoCompleteDIVFielderSec','addMemberIDDIVFielderSec')">
                <div class="autoComplete" id="addMemberautoCompleteDIVFielderSec" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  -->
			               <!-- <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="secInnFielderName" name="secInnFielderName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVFielderSec')">
												<option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->
							<select style="width: 100px;" id="secInnFielderName" name="secInnFielderName" onchange="firstIningsbattingPlayerOnchange1(this,'addMemberIDDIVFielderSec')">
												<option value="0">Select Player</option>
											</select>			                            
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFielderSec" name="addMemberIDDIVFielderSec">
                
                </td>
				<td><div class="amdSbox">
								
                           <div class="selectdiv" style="width:121px">
											<select class="selectboxdiv" id="dissmissalTypeSec" name="dismissalType" onchange="selectDismissal(this,'secInnDismissal')">
												<option value="0">Select dismissal type</option>
											 	<c:forEach var="dismissal" items="${dismissalTypeList}">
											 	
											 	<option value="${dismissal.dismissalTypeName}">${dismissal.dismissalTypeName}</option>
												 
												</c:forEach>  
											</select>
											<div  class="out"></div>
										</div>
                            </div>
                           <input type="hidden" class="wid" id="secInnDismissal"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnRuns" onfocus = "numberCheck(this)" name="secInnRuns" onblur="calculateStrikerate('secInnRuns','secInnBalls','secInnStrikeRate')"></td>
                <td><input type="text" class="wid" id="secInnMins" onfocus = "numberCheck(this)" name="secInnMins"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnBalls" onfocus = "numberCheck(this)" name="secInnBalls" onblur="calculateStrikerate('secInnRuns','secInnBalls','secInnStrikeRate')"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnFours" onfocus = "numberCheck(this)" name="secInnFours"></td>        
                <td><input type="text" class="wid OnlyNumber" id="secInnSixs" onfocus = "numberCheck(this)" name="secInnSixs"></td>           
                <td><input type="text" class="wid" id="secInnStrikeRate" onfocus = "numberCheck(this)" name="secInnStrikeRate" readonly="readonly"></td>    
                 <td><input type="text" class="wid OnlyNumber" id="secInnBattingOvers" onfocus = "numberCheck(this)" name="secInnBattingOvers"></td>                 
                </tr>
                
            </tbody>
  </table><br>
   <div><a class="enterScoreAddMore" href="javascript:void(0)" onclick="addSecondInningsBatting()">Add More</a></div><br><br>
  
   <!-- score table -->
  <div class="pull-left score-details-table-holder">
  	<div class="score-detail-label">EXTRAS :</div>
  	<table class="score-details-table">
  	<tr><th>Wides</th><th>No Balls</th><th>Byes</th><th>Leg Byes</th><th>Penalties</th></tr>
  	<tr><td><input type="text" id="secondInningsWide" value=""></td><td><input type="text" id="secondInningsNoBalls" value=""></td><td><input type="text" id="secondInningsByes" value=""></td><td><input type="text" id="secondInningsLegByes" value=""></td><td><input type="text" id="secondInningsPenalties" value=""></td></tr>
  	</table>
  	<div class="score-details-in">		
    	<label for="email" class="totscor">TOTAL SCORE</label>
        <input type="text" class="TOT-E OnlyNumber" id="secondInnigsScore"  onfocus="numberCheck(this);" onblur="secondInningsTotalScore(this.value)">
        <label for="email" class="totscor">TOTAL WICKET</label>
        <input type="text" class="TOT-E OnlyNumber" id="secondInnigsTotalWicket" onfocus="numberCheck(this);" onblur="secondInningsWickets(this.value)">
  	     <label for="text" class="totscor">TOTAL OVER</label>
        <input type="text" class="TOT-E" id="secondBattingTotalOvers" onfocus="numberCheck(this);" onblur="secondInningsTotalOversChange()">  	    
  	</div><!-- score details in end -->	
  </div><!-- score-details-table-holder end -->
  
  <div class="score-table-holder">
  <div class="score-label">FOW :</div>
  
  <table class="score-table">
  	<tr>
  	<td>1</td><td><input type="text" id="scondInningsFirstWicket" value=""></td>
  	<td>2</td><td><input type="text" id="scondInningsSecondWicket" value=""></td>
  	<td>3</td><td><input type="text" id="scondInningsThirdWicket" value=""></td>
  	<td>4</td><td><input type="text" id="scondInningsFourthWicket" value=""></td>
  	<td>5</td><td><input type="text" id="scondInningsFithWicket" value=""></td>
  	<td>6</td><td><input type="text" id="scondInningsSixthWicket" value=""></td>
  	<td>7</td><td><input type="text" id="scondInningsSevenWicket" value=""></td>
  	<td>8</td><td><input type="text" id="scondInningsEightWicket" value=""></td>
  	<td>9</td><td><input type="text" id="scondInningsNineWicket" value=""></td>
  	<td>10</td><td><input type="text" id="scondInningsTendWicket" value=""></td>
  </tr>
  
  </table>
  
  </div><!-- score-table-holder end -->
  <div class="col-md-12 col-lg-12" >
  <label for="text" class="totscor sel-label">DNB Players</label>   
  <div class="sel-holder" id="donotbatDivSeconInnings">     
    <!-- <select name="dntPlayerList" id="dntPlayerList" multiple="multiple" class="form-control" >
 <option value="">Afghanistanfghfhgjjhj</option>
<option value="AF">Afghanistanfghfhgjjhj</option>
<option value="AL">Afghanistanfghfhgjjhj</option>
<option value="DZ">Afghanistan</option>
<option value="AS">American Samoa</option>
<option value="AF">Afghanistan</option>
<option value="AL">Albania</option>
</select>  -->
</div>

  </div>
  
  
  
  <!-- score table end -->
  
  
  
  
  <table id="secInnBowlingTable">
  		<thead>
        	<tr>
            	<th><sup>*</sup>Bowler Names</th>
                <th><sup>*</sup>O</th>
                <th><sup>*</sup>R</th>
                <th>M</th>
                <th><sup>*</sup>W</th>
                <th><sup>*</sup>Eco</th>
                <th>0s</th>
                <th>4s</th>
                <th>6s</th>
                <th>B</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            	<td><!-- <input type="text" class="wi-sel" id="secInnBowlingName" onkeyup="getBuddiesAutoCompleteSecondBowling(this,'addMemberautoCompleteDIVBowlingSec','addMemberIDDIVBowlingSec')">
            	<div class="autoComplete" id="addMemberautoCompleteDIVBowlingSec" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  -->
			                      <!--  <div class="selectdiv" style="width:120px">
											<select class="selectboxdiv" id="secInnBowlingName" name="secInnBowlingName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIVBowlingSec','SecondInningBowling')">
								               <option value="0">Select Player</option>
											</select>
											<div  class="out"></div>
										</div> -->
								<select  id="secInnBowlingName" name="secInnBowlingName" onchange="firstIningsbattingPlayerOnchange(this,'addMemberIDDIVBowlingSec','SecondInningBowling')">
								               <option value="0">Select Player</option>
											</select>		                
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBowlingSec" name="addMemberIDDIVBowlingSec">
            	
            	</td>
                <td><input type="text" class="wid" id="secInnOvers" onfocus = "numberCheck(this)" name="secInnOvers" onblur="calculateBowlingEconamic('secInnBowRuns','secInnOvers','secInnEco','secInnBowBalls')"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnBowRuns" onfocus = "numberCheck(this)" name="secInnBowRuns" onblur="calculateBowlingEconamic('secInnBowRuns','secInnOvers','secInnEco','secInnBowBalls')"></td>
				<td><input type="text" class="wid OnlyNumber" id="secInnMaiden" onfocus = "numberCheck(this)" name="secInnMaiden"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnWickets" onfocus = "numberCheck(this)" name="secInnWickets"></td>
                <td><input type="text" class="wid" id="secInnEco" onfocus = "numberCheck(this)" name="secInnEco" readonly="readonly"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnZeros" onfocus = "numberCheck(this)" name="secInnZeros"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnBowFours" onfocus = "numberCheck(this)" name="secInnBowFours"></td>
                <td><input type="text" class="wid OnlyNumber" id="secInnBowSixs" onfocus = "numberCheck(this)" name="secInnBowSixs"></td> 
                <td><input type="text" class="wid OnlyNumber" id="secInnBowBalls" onfocus = "numberCheck(this)" name="secInnBowBalls" readonly="readonly"></td>                  
                </tr>
                
            </tbody>
  </table><br>
                  <div><a class="enterScoreAddMore" href="javascript:void(0)" onclick="addSecondInningBowling()">Add More</a>
                  
                  <input type="text"  id="secslideshowdiv1" readonly="readonly" style="height: 0; width: 0; opacity : 0;">
                  
                  </div>   
                </div>
                <div class="cslide-slide">
                    
                    
                    
              
                
                
                <div class="col-md-10 scoreForm">
                    
                    
                    

                    
                    <form role="form" id="enterScoreform" name="enterScoreform">
                    	
                    	<div class="form-group">
                            <div class="sfLeft">
				            <label for="email" class="fomlabel">Match Date</label>
				            </div>
				            
				             <div class="sfRight">
                            <input type="text" class="form-control" placeholder="" id="gameDate" name="gameDate" onfocus = "blurFunction()" onblur="checkDateField()"> 
                          <span style="color:red" id="dateError"></span>
                          </div>
                          </div>
                    	
				         	<div class="form-group">
									
									<div class="sfLeft">
									<label for="email" class="fomlabel">Game Type</label> 
                           			</div>
                           				
                           			<div class="sfRight">
                           			<div class="enterSSbox fomtexbox ">
	                           			<div class="selectdiv">
												<select class="selectboxdiv" id="gameType" name="gameId">
													
												 	<c:forEach var="gameType" items="${gameTypeList}">
													<c:choose>
													<c:when test="${gameType.gameId == '33cb27f1-4b02-4db6-84fd-0b979f81792a' }">
													<option value="${gameType.gameId}" selected>${gameType.gameName}</option>
													</c:when>
													<c:otherwise>
													<option value="${gameType.gameId}">${gameType.gameName}</option>
													</c:otherwise>
													
													</c:choose>
													</c:forEach>  
												</select>
												<div  class="out"></div>
											</div>
										</div>
										</div>
                            </div>
                     
                             
                    
                          <div class="form-group">
                          <div class="sfLeft">
				            <label class="fomlabel" for="r1">Player of the Match</label>
                            </div>
                            
                            <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="PlayerOfTheMatch" onkeyup="normalUserSearch(this,'addMemberautoCompleteDIVPlayerOfMatch','addMemberIDDIVPlayerOfMatch')" >
                            <div class="autoComplete" id="addMemberautoCompleteDIVPlayerOfMatch" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div> 
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVPlayerOfMatch" name="addMemberIDDIVPlayerOfMatch">
                          <label for="addMemberIDDIVPlayerOfMatch" generated="true" class="error" style="display: inline-block;" id="addMemberIDDIVPlayerOfMatchError"></label>
                          </div>
                          </div>
                          
                              
                          
                          <div class="form-group">
                          <div class="sfLeft">
				            <label class="fomlabel" for="r1">Umpires</label>
                            </div>
                            
                            <div class="sfRight">
                            
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="umpireId" name="umpireId">
                            <input type="hidden" id="hiddenUmpireId" name="hiddenUmpireId">
                            <label for="hiddenUmpireId" generated="true" class="error" id="hiddenUmpireIdError"></label>
                          </div>
                          </div>
                          
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1">Home team coach</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control fomtexbox" id="homeTeamcoach" onkeyup="normalUserSearch(this,'addMemberautoCompleteDIVHomeCoach','addMemberIDDIVHomeCoach')">
                            <div class="autoComplete" id="addMemberautoCompleteDIVHomeCoach" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div> 
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVHomeCoach" name="">
                          </div></div>
                          
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1">Away team coach</label>
				            </div>
				            
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control fomtexbox" id="awayTeamCoach" onkeyup="normalUserSearch(this,'addMemberautoCompleteDIVAwayCoach','addMemberIDDIVAwayCoach')">
                            <div class="autoComplete" id="addMemberautoCompleteDIVAwayCoach" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div> 
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVAwayCoach" name="">
                          </div></div>
                          
                          
                          
                          
                          <div id="showHideDiv" style="display:none">
                          
                          
                          
                           <div class="form-group">
                            <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="homeTeamOvers">Win Team Overs</label>
				            </div>
				            
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="winTeamOvers" name="winTeamOvers" onfocus = "numberCheck(this)" readonly="readonly" />
                          
                          </div>
                          </div>
                          
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="homeTeamPoints">Win Team Points</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox OnlyNumber" id="winTeamPoints" onfocus = "numberCheck(this)" name="winTeamPoints" />
                          </div></div>
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="homeTeamRuns">Win Team Runs</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox OnlyNumber" id="winTeamRuns" onfocus = "numberCheck(this)" name="winTeamRuns"  readonly />
                          </div></div>
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="homeTeamWickets">Win Team Wickets</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox OnlyNumber" id="winTeamWickets" onfocus = "numberCheck(this)" name="winTeamWickets" readonly="readonly" />
                          </div></div>
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="awayTeamOvers">lose Team Overs</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="loseTeamOvers" onfocus = "numberCheck(this)" name="loseTeamOvers" readonly="readonly" />
                          </div></div>
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="awayTeamRuns">lose Team Runs</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox OnlyNumber" id="loseTeamRuns" onfocus = "numberCheck(this)" name="loseTeamRuns" readonly />
                          </div></div>
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="awayTeamPoints">lose Team Points</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox OnlyNumber" id="loseTeamPoints" onfocus = "numberCheck(this)" name="loseTeamPoints"  />
                          </div></div>
                          <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="awayTeamWickets">lose Team Wickets</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder="" class="form-control tbox fomtexbox OnlyNumber" id="loseTeamWickets" onfocus = "numberCheck(this)" name="loseTeamWickets" readonly="readonly"/>
                          </div></div>
                          
                           <div class="form-group">
                           <div class="sfLeft">
				            <label class="fomlabel" for="r1" id="awayTeamWickets">Overs Per Side</label>
				            </div>
				             <div class="sfRight">
                            <input type="text" placeholder=""  class="form-control tbox fomtexbox OnlyNumber" id="totalOver" onfocus = "numberCheck(this)" name="totalOver"  />
                          </div></div>
                          
                          <div class="form-group">
                           <div class="sfLeft">
									<label for="email" class="fomlabel">Result</label> 
									</div>
                            <div class="sfRight">
                           			<div class="enterSSbox fomtexbox ">
	                           			<!-- <div class="selectdiv">
												<select class="selectboxdiv" id="result" name="result">
													<option value="tie" selected>Tie</option>
													<option value="">Tie</option>
													<option value="">Tie</option>
												</select>
												<div  class="out"></div>
											</div> -->
											<select  id="result" style="width: 100%;" name="result" onchange="winpointAutoPopulate();">
											<option value="00" selected>Select Win Team</option>
													<option value="">Tie</option>
													<option value="">Tie</option>
											</select>
										</div></div>
                            </div>
                          
                          </div>


				<div class="col-md-12 alignCenter margintop">
                    <input type="button" class="btn btn-default dBtn btn" value="Save" onclick="teamValidation()">
                    <button class="btn btn-default dBtn btn" onclick = "cancelFunction()">CANCEL</button>
                  </div>
                          
                          
                   </form>
                 </div>
                
                
                
                
            </div>
            </div>
            
            <div class="cslide-prev-next clearfix" style="margin-top:10px;">
                <span class="cslide-prev">Prev</span>
                <span class="cslide-next">Next</span>
            </div>
            
            
        </section>
                    
        <input type="hidden" id="schedulerId">  
        <input type="hidden" id="hiddenHomeId">
        <input type="hidden" id="hiddenAwayId">
        <input type="hidden" id="GroundId" name="GroundId" value="${GroundId}">
                          
      
    
    
  </div>  
            
            
</div>
</div>
 </div>
                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
   
  <!--/Content Block-->

</section>
   <%@ include file="Footer.jsp" %>
 <script src="${pageContext.request.contextPath }/js/jquery.colorbox.js"></script>



<!--Silde-->
   
   <script src="${pageContext.request.contextPath}/js/jquery.cslide.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
    $("#cslide-slides").cslide();
    $('.datepicker').on('changeDate', function(ev){
		$(this).datepicker('hide');
	});
	
	
	   //alert("alert div12");
     	var selectedTournamentId = "${selectedTournamentId}";
     	//alert("selectedId"+selectedTournamentId);
     	if(selectedTournamentId != null){
     	$("#tournament").val(selectedTournamentId);
     	}
     	//$('#tournamentTextVal').html(selectedTournamentId);
     	
     var tournamentName = $("#tournament :selected").text();
    // alert(tournamentName);
	$("#tournamentTextVal").text(tournamentName);
	//if(selectedTournamentId != 0 ){

		console.log("aaaaaaaaaaaaaaaaaaaaaaa :"+selectedTournamentId)
	loadScheduler(selectedTournamentId);
});
</script>
   
   <script>
   
  
    function loadScheduler(val){
 //alert("hi");
	   var id =  null;
	   var boardId = "${boardId}";
	   if(val != 0){
		   id = val;
		   
		  /*  var schedulerid=$("#schedulerId").val(); */
		  var schedulerid="${tournamentSchedulerid}";
		  console.log("schedulerid :"+schedulerid);
		   
		   var tournamentBean = {
				   tournamentId : id,
				   createdBy : boardId,
				   tournamentSchedulerId : schedulerid,
		   } 
		   
		  $.ajax({
			type :"Post",
			url:"${pageContext.request.contextPath}/getScheduleHomeAwayName",
			headers : {'Name' : HeaderName},
			data:JSON.stringify(tournamentBean),
			contentType:"application/json",
			success:function(response){
				
				 var htmlContent=""; 

					
				 if(response.length > 0){
					 //htmlContent += "<option value='0'>SchedulerList</option>";
					  var selectedMatch = '${selectedTeam}';
				 for(var i=0;i<response.length;i++){
					 var homeId = response[i].homeTeamId+","+response[i].awayTeamId+","+response[i].tournamentSchedulerId+","+response[i].dateString;
					
					 if(selectedMatch == homeId){
				      htmlContent+="<option value="+homeId+">"+response[i].homeTeamName+","+response[i].awayTeamName+"</option>";
				    }
						 
				 }
				
				 $('#scheduler').html(htmlContent).trigger('create');
				// alert("asds"+tournamentSelectedDefault);
			
				  if(tournamentSelectedDefault){
				 tournamentSelectedDefault = false;
				  
				   if(selectedMatch != null ){
				   $("#scheduler").val(selectedMatch);
				   var schedulerName = $("#scheduler :selected").text();
				   $("#schedulerTextVal").text(schedulerName);
				   teamName(selectedMatch);
				  }
                       //alert("scheduler"+tournamentName);
	                  // $("#tournamentTextVal").text(tournamentName);
				  // $('#scheduler option[value='+selectedMatch+']').prop('selected', true);
				 } 
				 
				 }
				 else{
					 htmlContent += "<option></option>";
					 $('#scheduler').html(htmlContent).trigger('create');
					 //$(".out").text("");
					   document.getElementById("awayTeamName").innerHTML = "";
					   document.getElementById("homeTeamName").innerHTML = "";
					   document.getElementById("schedulerId").value = "";
					 
					 
					 showNotification("You are not a valid user to enter the score", 2000);
					 hide_notificationpoup(2000);
					 
					  $("#inningsDropdown").hide();
					   $("#inningsDropdown1").hide();
				 }
				
				
			},
			error:function(err){
				console.log(err);
			}
			  
		  });
		  
		   
		   
	   }else{
		   var htmlContent=""; 
		   htmlContent += "<option></option>";
			 $('#scheduler').html(htmlContent).trigger('create');
			// $(".out").text("");
			   document.getElementById("awayTeamName").innerHTML = "";
			   document.getElementById("homeTeamName").innerHTML = "";
			   document.getElementById("schedulerId").value = "";
			   $("#inningsDropdown").hide();
			   $("#inningsDropdown1").hide();
	   }  
   }
   
   function teamName(val){
	   
	  // var teamName = $("#scheduler :selected").text();
	   var teamName = $("#scheduler :selected").text();
	   var teamid = $("#scheduler").val();
	   console.log(val);
	  
	   var teamSplit = teamName.split(",");
	   
	   console.log(teamName);
	  // if(teamName != 'Scheduler list'){
	  if(teamid != '0'){
	    
	   var homeTeam = teamSplit[0];
	   var awayTeam = teamSplit[1];
	   
	   console.log(homeTeam+"  away ---"+awayTeam);
	   
	   var idSplit = val.split(",");
	   
	   var homeTeamId = idSplit[0];
	   var awayTeamId = idSplit[1];
	   var schedulerId = idSplit[2];
	   var matchDate = idSplit[3];
	   
	  console.log(matchDate);
	  
	   var formatDate = function(date) {
      		  var hours = date.getHours();
      		  console.log(hours)
      		  var minutes = date.getMinutes();
      		  var ampm = hours >= 12 ? 'PM' : 'AM';
      		  hours = hours % 12;
      		  hours = hours ? hours : 12; // the hour '0' should be '12'
      		  minutes = minutes < 10 ? '0'+minutes : minutes;
      		  hours = hours < 10 ? '0'+hours : hours ;
      		  var strTime = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear();
      		  return strTime;
      		};
        	
        	
        			var date = matchDate;
        		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
        		var gettingFromServer= new Date(date);
        		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
        		
        		var dateToSend = formatDate(gettingFromServer);
	  
	  var fromStart = matchDate.split("-");
		 var fromDateToDatePicker = fromStart[1]+"/"+fromStart[2]+"/"+fromStart[0]; 
	  
	   document.getElementById("gameDate").value = fromDateToDatePicker;
	   document.getElementById("matchDate").value = dateToSend;
	   
	   document.getElementById("schedulerId").value = schedulerId;
	  // document.getElementById("hiddenHomeId").value = homeTeamId;
	  // document.getElementById("hiddenAwayId").value = awayTeamId;
	   
	
	   //document.getElementById("awayTeamName").innerHTML = awayTeam+ " (2nd Innings)";
	  // document.getElementById("homeTeamName").innerHTML = homeTeam+ " (1st Innings)";
	   
	   document.getElementById("homeTeamOvers").innerHTML = homeTeam+ " Overs";
	   document.getElementById("homeTeamPoints").innerHTML = homeTeam+ " Points";
	   document.getElementById("homeTeamRuns").innerHTML = homeTeam+ " Runs";
	   document.getElementById("homeTeamWickets").innerHTML = homeTeam+ " Wickets";
	   document.getElementById("awayTeamOvers").innerHTML = awayTeam+ " Overs";
	   document.getElementById("awayTeamPoints").innerHTML = awayTeam+ " Points";
	   document.getElementById("awayTeamRuns").innerHTML = awayTeam+ " Runs";
	   document.getElementById("awayTeamWickets").innerHTML = awayTeam+ " Wickets";
	
	var html ='';
	/* html += '<select class="selectboxdiv" id="result" name="result">';
	html += '<option value="tie" selected>Tie</option>';
	html += '<option value="'+homeTeamId+'">'+homeTeam+'</option>';
	html += '<option value="'+awayTeamId+'">'+awayTeam+'</option>';
	html += '</select>';
	html += '<div  class="out"></div>'; */
	html += '<select  id="result" style="width: 100%;" name="result" onchange="winpointAutoPopulate();">';
	html += '<option value="00" selected>Select Win Team</option>';
	html += '<option value="'+homeTeamId+'">'+homeTeam+'</option>';
	html += '<option value="'+awayTeamId+'">'+awayTeam+'</option>';
	html += '<option value="tie" >Match Tie</option>';
	html += '<option value="Abandoned" >Abandoned/NoResult</option>';
	
	html += '</select>';

	$("#result").html(html).trigger('create');
	
	   $("#showHideDiv").show();
	   
	   var html1 ='';
		html1 += '<select class="selectboxdiv" id="homeTeamName">';
		html1 += '<option value="0" selected >Choose Team Name</option>';
		html1 += '<option value="'+homeTeamId+'">'+homeTeam+'</option>';
		html1 += '<option value="'+awayTeamId+'">'+awayTeam+'</option>';
		html1 += '</select>';
		html1 += '<div  class="out"></div>';
		
		$('#homeTeamNameOUT').html("Select first inning");
		 var html2 ='';
			html2 += '<select class="selectboxdiv" id="awayTeamName">';
			html2 += '<option value= "0" selected >Choose Team Name</option>';
			html2 += '<option value="'+homeTeamId+'">'+homeTeam+'</option>';
			html2 += '<option value="'+awayTeamId+'">'+awayTeam+'</option>';
			html2 += '</select>';
			html2 += '<div  class="out"></div>';
			$('#awayTeamNameOUT').html("Select second inning");
		$("#homeTeamName").html(html1).trigger('create');
		$("#awayTeamName").html(html2).trigger('create');
		   $("#inningsDropdown").show();
		   $("#inningsDropdown1").show();
		///   document.getElementById('awayTeamName').options[0].selected=true; 
		//	document.getElementById('homeTeamName').options[0].selected=true; 
	   
	   }else{
		   
		   var html = "" ;
		   $("#homeTeamName").html(html).trigger('create');
			$("#awayTeamName").html(html).trigger('create');
		   
		  // document.getElementById("awayTeamName").innerHTML = "";
		  // document.getElementById("homeTeamName").innerHTML = "";
		   $("#inningsDropdown").hide();
		   $("#inningsDropdown1").hide();
	   }
	   console.log("home team id -----"+$("#hiddenHomeId").val());
	   console.log("away team id -----"+$("#hiddenAwayId").val());
	   console.log("scheduler id -----"+$("#schedulerId").val());
	
   }
   
   var count = 1;
   function addFirstInningsBatting(){
	  var newArray = [];
	   $('#firInnBattingTable tbody tr:last  td input').each(function(){
		 
		   var name=$(this).attr("name");
		   var id=$(this).attr("id");
		  //  console.log('field name----> '+name);
		    //console.log('field id----> '+id);
		   if($(this).val() == ''){
			  
			   if(name=='addMemberIDDIVName'){
				   console.log('- addMemberIDDIVName -');
			   }else if(name=='firInnRuns'){
				  
			   }
			   
			   false;
			   
		   }else{
			   
			 if(name=='addMemberIDDIVName'){
				 console.log('- addMemberIDDIVName - -- '+$(this).val());
				 
				 newArray.push($(this).val());
			   }else if(name=='dismissalType'){
				   newArray.push($(this).val());
			   }else if(name=='firInnRuns'){
				   newArray.push($(this).val());
			   }else if(name=='firInnBalls'){
				   newArray.push($(this).val());
			   }else if(name=='firInnStrikeRate'){
				   newArray.push($(this).val());
			   }
			  
			  
		   }
	   });
	   
	   $('#firInnBattingTable tbody tr:last  td select').each(function(){
			 
		   var name=$(this).attr("name");
		   var id=$(this).attr("id");
		    console.log('field name----> '+name);
		    console.log('field id----> '+id);
		   if($(this).val() == '0'){
			  
			   if(name=='addMemberIDDIVName'){
				   console.log('- addMemberIDDIVName -');
			   }else if(name=='firInnRuns'){
				  
			   }
			   
			   false;
			   
		   }else{
			   
			 if(name=='addMemberIDDIVName'){
				 console.log('- addMemberIDDIVName - -- '+$(this).val());
				 newArray.push($(this).val());
			   }else if(name=='dismissalType'){
				   newArray.push($(this).val());
			   }else if(name=='firInnRuns'){
				   newArray.push($(this).val());
			   }else if(name=='firInnBalls'){
				   newArray.push($(this).val());
			   }else if(name=='firInnStrikeRate'){
				   newArray.push($(this).val());
			   }
			  
			  
		   }
	   });
		   console.log('--------newArray.length ------------- '+newArray.length);
		   if(newArray.length != 0 && newArray.length >4 	){
		   //alert("length"+newArray.length);
		  // if(newArray.length != 0 	){
				var table = document.getElementById("firInnBattingTable");
			  
	   		   
	   		   var rowCount = table.rows.length;
		   	console.log('rowcount---> '+rowCount);
		       var row = table.insertRow(rowCount);
		       var cell1 = row.insertCell(0);
		       var cell2 = row.insertCell(1);
		       var cell3 = row.insertCell(2);
		       var cell4 = row.insertCell(3);
		       var cell5 = row.insertCell(4);
		       var cell6 = row.insertCell(5);
		       var cell7 = row.insertCell(6);
		       var cell8 = row.insertCell(7);
		       var cell9 = row.insertCell(8);
		       var cell10 = row.insertCell(9);
		       var cell11 = row.insertCell(10);
		      											
										
		       	var htmlContent='';
			    var htmlContent1='';
			    
		       if(	$("#homeTeamName").val() == homeTeamId){
		
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent1 += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}else{
			var htmlContent='';
			var htmlContent1='';
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent1 += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}
		   var htmlContentBattingPlayer ='<select style="width:100px;" id="firInnPlayerName_'+count+'" name="firInnPlayerName_'+count+'" onchange=firstIningsbattingPlayerOnchange(this,"addMemberIDDIV'+count+'","FistInningBatting")>';
		       htmlContentBattingPlayer += htmlContent;
		       htmlContentBattingPlayer +='</select> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV'+count+'" name="addMemberIDDIVName">';		       
		       cell1.innerHTML = htmlContentBattingPlayer;
		   var htmlContentFirstInningsBowlers = '<select style="width:100px;" id="firInnBowlerName_'+count+'" name="firInnBowlerName_'+count+'" onchange=firstIningsbattingPlayerOnchange1(this,"addMemberIDDIVBow'+count+'")>';
		       htmlContentFirstInningsBowlers += htmlContent1;
		       htmlContentFirstInningsBowlers +='</select> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBow'+count+'" name="">';
		       cell2.innerHTML = htmlContentFirstInningsBowlers;
		   var htmlContentFirstInningsFeilders =  '<select  style="width:100px;" id="firInnFielderName_'+count+'" name="firInnFielderName_'+count+'" onchange=firstIningsbattingPlayerOnchange1(this,"addMemberIDDIVFiel'+count+'")>';   
               htmlContentFirstInningsFeilders += htmlContent1;
               htmlContentFirstInningsFeilders += '</select> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFiel'+count+'" name="">';	     
		       cell3.innerHTML = htmlContentFirstInningsFeilders;
		     
		      //cell1.innerHTML = '<input type="text" class="wi-sel" id="firInnPlayerName_'+count+'" onkeyup=getBuddiesAutoCompleteFirstInning(this,"addMemberautoCompleteDIV'+count+'","addMemberIDDIV'+count+'") class="dummy"/><div class="autoComplete" id="addMemberautoCompleteDIV'+count+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV'+count+'" name="addMemberIDDIVName">';  
		      //cell2.innerHTML = '<input type="text" class="wi-sel" id="firInnBowlerName_'+count+'" onkeyup=getBuddiesAutoComplete1(this,"addMemberautoCompleteDIVBow'+count+'","addMemberIDDIVBow'+count+'") /><div class="autoComplete" id="addMemberautoCompleteDIVBow'+count+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBow'+count+'" name="">';
		      //cell3.innerHTML = '<input type="text" class="wi-sel" id="firInnFielderName_'+count+'" onkeyup=getBuddiesAutoComplete1(this,"addMemberautoCompleteDIVFiel'+count+'","addMemberIDDIVFiel'+count+'") /><div class="autoComplete" id="addMemberautoCompleteDIVFiel'+count+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFiel'+count+'" name="">';
		      // cell4.innerHTML = '<div class="amdSbox"><div class="selectdiv" style="width:147px"><select class="selectboxdiv"  id="dissmissalType'+count+'" name="dismissalType" onchange=selectDismissal(this,"firInnDismissal_'+count+'")><option value="0">Select dissmissal type</option><c:forEach var="dismissal" items="${dismissalTypeList}"><option value="${dismissal.dismissalTypeId}">${dismissal.dismissalTypeName}</option></c:forEach>  </select><div  class="out">Select dissmissal type</div></div></div><input type="hidden" class="wid" id="firInnDismissal_'+count+'">';
		       cell4.innerHTML = '<div class="amdSbox"><div class="selectdiv" style="width:121px"><select class="selectboxdiv" id="dissmissalType'+count+'" name="dismissalType" onchange=selectDismissal(this,"firInnDismissal_'+count+'")><option value="0"></option><c:forEach var="dismissal" items="${dismissalTypeList}"><option value="${dismissal.dismissalTypeName}">${dismissal.dismissalTypeName}</option></c:forEach>  </select><div  class="out"></div></div></div><input type="hidden" class="wid" id="firInnDismissal_'+count+'">'; 
		       cell5.innerHTML = '<input type="text" class="wid OnlyNumber" id="firInnRuns_'+count+'" onfocus = "numberCheck(this)" name="firInnRuns" onblur=calculateStrikerate("firInnRuns_'+count+'","firInnBalls_'+count+'","firInnStrikeRate_'+count+'")>';
		       cell6.innerHTML = '<input type="text" class="wid" id="firInnMins_'+count+'" onfocus = "numberCheck(this)" name="firInnMins">';
		       cell7.innerHTML = '<input type="text" class="wid OnlyNumber" id="firInnBalls_'+count+'" onfocus = "numberCheck(this)" name="firInnBalls" onblur=calculateStrikerate("firInnRuns_'+count+'","firInnBalls_'+count+'","firInnStrikeRate_'+count+'")>';
		       cell8.innerHTML = '<input type="text" class="wid OnlyNumber" id="firInnFours_'+count+'" onfocus = "numberCheck(this)" name="firInnFours">';
		       cell9.innerHTML = '<input type="text" class="wid OnlyNumber" id="firInnSixs_'+count+'" onfocus = "numberCheck(this)" name="firInnSixs">';
		       cell10.innerHTML = '<input type="text" class="wid" id="firInnStrikeRate_'+count+'" onfocus = "numberCheck(this)" name="firInnStrikeRate" readonly="readonly">';
		       cell11.innerHTML = '<input type="text" class="wid OnlyNumber" id="firInnBattingOver_'+count+'" onfocus = "numberCheck(this)" name="firInnBattingOvers">';
		       count = parseInt(count) + 1;
		       
		       newArray.splice(0,newArray.length);
		       
		      
		       
		       
		     /*  $("select").change(function () {
		    	  console.log("inside change function");
	                var str = "";
	                str = $(this).find(":selected").text();
	                $(this).next(".out").text(str);
	            }).trigger('change');   */
	            
		    }else{
			   
			   displaynotification("Please fill in current row before adding a new one.",2000);
		   }; 
			
   

   }
   var count1 = 1;
   
   function addSecondInningsBatting(){
	   
	   var newArray = [];
	   $('#secInnBattingTable tbody tr:last  td input').each(function(){
		   var name=$(this).attr("name");
		   var id=$(this).attr("id");
		   if($(this).val() == ''){
			  false;
		   }else{
			   
			   if(name=='addMemberIDDIVPlayer'){
					 console.log('- addMemberIDDIVPlayer - -- '+$(this).val());
					 newArray.push($(this).val());
				   }else if(name=='secInnRuns'){
					   newArray.push($(this).val());
				   }else if(name=='secInnBalls'){
					   newArray.push($(this).val());
				   }else if(name=='secInnStrikeRate'){
					   newArray.push($(this).val());
				   }
			   
			  // newArray.push($(this).val());
		   }
	   });
	   $('#secInnBattingTable tbody tr:last  td select').each(function(){
		   var name=$(this).attr("name");
		   var id=$(this).attr("id");
		   if($(this).val() == '0'){
			  false;
		   }else{
			   if(name=='dismissalType'){
				   newArray.push($(this).val());
			   }
			  
		   }
	   });
	   console.log('------ seconding inning batting --newArray.length ------------- '+newArray.length);
	   
		   if(newArray.length != 0 && newArray.length >4){
			   var table = document.getElementById("secInnBattingTable");
			   	 var rowCount = table.rows.length;
			   	
			       var row = table.insertRow(rowCount);
			       var cell1 = row.insertCell(0);
			       var cell2 = row.insertCell(1);
			       var cell3 = row.insertCell(2);
			       var cell4 = row.insertCell(3);
			       var cell5 = row.insertCell(4);
			       var cell6 = row.insertCell(5);
			       var cell7 = row.insertCell(6);
			       var cell8 = row.insertCell(7);
			       var cell9 = row.insertCell(8);
			       var cell10 = row.insertCell(9);
			       var cell11 = row.insertCell(10);
			       
			       
			       
			       var htmlContent='';
			    var htmlContent1='';
			    
		       if(	$("#homeTeamName").val() == homeTeamId){
		
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent1 += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}else{
			var htmlContent='';
			var htmlContent1='';
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent1 += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}
		   var htmlContentBattingPlayer ='<select style="width:100px;" id="secInnPlayerName_'+count1+'"  name="secInnPlayerName_'+count1+'" onchange=firstIningsbattingPlayerOnchange(this,"addMemberIDDIVPlayer'+count1+'","SecondInningBatting")>';
		       htmlContentBattingPlayer += htmlContent1;
		       htmlContentBattingPlayer +='</select> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVPlayer'+count1+'" name="addMemberIDDIVPlayer">';		       
		       cell1.innerHTML = htmlContentBattingPlayer;
		   var htmlContentFirstInningsBowlers = '<select style="width:100px;" id="secInnBowlerName_'+count1+'" name="secInnBowlerName_'+count1+'" onchange=firstIningsbattingPlayerOnchange1(this,"addMemberIDDIVBowlerSec'+count1+'")>';
		       htmlContentFirstInningsBowlers += htmlContent;
		       htmlContentFirstInningsBowlers +='</select> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBowlerSec'+count1+'" name="addMemberIDDIVBowlerSec">';
		       cell2.innerHTML = htmlContentFirstInningsBowlers;
		   var htmlContentFirstInningsFeilders =  '<select style="width:100px;" id="secInnFielderName_'+count1+'"  name="secInnFielderName_'+count1+'" onchange=firstIningsbattingPlayerOnchange1(this,"addMemberIDDIVFielderSec'+count1+'")>';   
               htmlContentFirstInningsFeilders += htmlContent;
               htmlContentFirstInningsFeilders += '</select><input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFielderSec'+count1+'" name="addMemberIDDIVFielderSec">';	     
		       cell3.innerHTML = htmlContentFirstInningsFeilders;
			       
			       		       
			       //cell1.innerHTML = '<input type="text" class="wi-sel" id="secInnPlayerName_'+count1+'" onkeyup=getBuddiesAutoCompleteSecondInning(this,"addMemberautoCompleteDIVPlayer'+count1+'","addMemberIDDIVPlayer'+count1+'") /> <div class="autoComplete" id="addMemberautoCompleteDIVPlayer'+count1+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVPlayer'+count1+'" name="addMemberIDDIVPlayer">';
			       //cell2.innerHTML = '<input type="text" class="wi-sel" id="secInnBowlerName_'+count1+'" onkeyup=getBuddiesAutoComplete(this,"addMemberautoCompleteDIVBowlerSec'+count1+'","addMemberIDDIVBowlerSec'+count1+'") /><div class="autoComplete" id="addMemberautoCompleteDIVBowlerSec'+count1+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVBowlerSec'+count1+'" name="addMemberIDDIVBowlerSec">';
			       //cell3.innerHTML = '<input type="text" class="wi-sel" id="secInnFielderName_'+count1+'" onkeyup=getBuddiesAutoComplete(this,"addMemberautoCompleteDIVFielderSec'+count1+'","addMemberIDDIVFielderSec'+count1+'") /><div class="autoComplete" id="addMemberautoCompleteDIVFielderSec'+count1+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFielderSec'+count1+'" name="addMemberIDDIVFielderSec">';
			       
			       cell4.innerHTML = '<div class="amdSbox"><div class="selectdiv" style="width:121px"><select class="selectboxdiv" id="dissmissalTypeSec'+count1+'" name="dismissalType" onchange=selectDismissal(this,"secInnDismissal_'+count1+'")><option value="0"></option><c:forEach var="dismissal" items="${dismissalTypeList}"></option><option value="${dismissal.dismissalTypeName}">${dismissal.dismissalTypeName}</option></c:forEach>  </select><div  class="out"></div></div></div><input type="hidden" class="wid" id="secInnDismissal_'+count1+'">';
			       cell5.innerHTML = '<input type="text" class="wid OnlyNumber" id="secInnRuns_'+count1+'" onfocus = "numberCheck(this)" name="secInnRuns" onblur=calculateStrikerate("secInnRuns_'+count1+'","secInnBalls_'+count1+'","secInnStrikeRate_'+count1+'")>';
			       cell6.innerHTML = '<input type="text" class="wid" id="secInnMins_'+count1+'" onfocus = "numberCheck(this)" name="secInnMins">';
			       cell7.innerHTML = '<input type="text" class="wid OnlyNumber" id="secInnBalls_'+count1+'" onfocus = "numberCheck(this)" name="secInnBalls" onblur=calculateStrikerate("secInnRuns_'+count1+'","secInnBalls_'+count1+'","secInnStrikeRate_'+count1+'")>';
			       cell8.innerHTML = '<input type="text" class="wid OnlyNumber" id="secInnFours_'+count1+'" onfocus = "numberCheck(this)" name="secInnFours">';
			       cell9.innerHTML = '<input type="text" class="wid OnlyNumber" id="secInnSixs_'+count1+'" onfocus = "numberCheck(this)" name="secInnSixs">';
			       cell10.innerHTML = '<input type="text" class="wid" id="secInnStrikeRate_'+count1+'" onfocus = "numberCheck(this)" name="secInnStrikeRate" readonly="readonly">';
			       cell11.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnBattingOver_'+count1+'" onfocus = "numberCheck(this)" name="secInnBattingOvers">';
			       count1 = parseInt(count1) + 1;
		       
		       newArray.splice(0,newArray.length);
		    /*     $("select").change(function () {
	                var str = "";
	                str = $(this).find(":selected").text();
	                $(this).next(".out").text(str);
	            }).trigger('change'); */
		      
		    }else{
			   
			   displaynotification("Please fill in current row before adding a new one.",2000);
		   }
			 
	   
	   
	   	

  }
   
  var firstBowling = 1;   
 function addFirstInningBowling(){
	   
	  var newArray = [];
	  console.log('name ----> '+newArray);
	   $('#firInnBowlingTable tbody tr:last  td input').each(function(){
		   var name=$(this).attr("name");
		   var id=$(this).attr("id");
		 console.log('name ----> '+id);
		   if($(this).val() == ''){
			  false;
		   }else{
			   
			  
			   if(name=='addMemberIDDIVBowling'){
				   newArray.push($(this).val());
			   }else if(name=='firInnOvers'){
				   newArray.push($(this).val());
			   }else if(name=='firInnBowRuns'){
				   newArray.push($(this).val());
			   }else if(name=='firInnEco'){
				   newArray.push($(this).val());
			   }else if(name=='firInnWickets'){
				   newArray.push($(this).val());
			   }
			   
		   }
	   });
	   
	   console.log('------ first inning bowling  --newArray.length ------------- '+newArray.length);
		   
		   if(newArray.length != 0 && newArray.length >4){
			   var table = document.getElementById("firInnBowlingTable");
			   	 var rowCount = table.rows.length;
			   	
			       var row = table.insertRow(rowCount);
			       var cell1 = row.insertCell(0);
			       var cell2 = row.insertCell(1);
			       var cell3 = row.insertCell(2);
			       var cell4 = row.insertCell(3);
			       var cell5 = row.insertCell(4);
			       var cell6 = row.insertCell(5);
			       var cell7 = row.insertCell(6);
			       var cell8 = row.insertCell(7);
			       var cell9 = row.insertCell(8);
			       var cell10 = row.insertCell(9);
			       
			       
			       
			       var htmlContent='';
			    var htmlContent1='';
			    
		       if(	$("#homeTeamName").val() == homeTeamId){
		
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent1 += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}else{
			var htmlContent='';
			var htmlContent1='';
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent1 += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}
			      
		   var htmlContentBowlerPlayer ='<select  id="FirInnOvers_'+firstBowling+'" name="FirInnOvers_'+firstBowling+'" onchange=firstIningsbattingPlayerOnchange(this,"addMemberIDDIVFirInnBowlingName'+firstBowling+'","FirstInningBowling")>';
		       htmlContentBowlerPlayer += htmlContent1;
		       htmlContentBowlerPlayer +='</select><input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFirInnBowlingName'+firstBowling+'" name="addMemberIDDIVBowling">';		       
		       cell1.innerHTML = htmlContentBowlerPlayer;  
			      
			      // cell1.innerHTML = '<input type="text" class="wi-sel" id="FirInnBowlingName_'+firstBowling+'" onkeyup=getBuddiesAutoCompleteFirstBowling(this,"addMemberautoCompleteDIVFirInnBowlingName'+firstBowling+'","addMemberIDDIVFirInnBowlingName'+firstBowling+'") /> <div class="autoComplete" id="addMemberautoCompleteDIVFirInnBowlingName'+firstBowling+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVFirInnBowlingName'+firstBowling+'" name="addMemberIDDIVBowling">';
			       cell2.innerHTML = '<input type="text" class="wid" id="FirInnOvers12_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnOvers" onblur=calculateBowlingEconamic("FirInnBowRuns_'+firstBowling+'","FirInnOvers12_'+firstBowling+'","FirInnEco_'+firstBowling+'","FirInnBowBalls_'+firstBowling+'") />';
			       cell3.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnBowRuns_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnBowRuns" onblur=calculateBowlingEconamic("FirInnBowRuns_'+firstBowling+'","FirInnOvers12_'+firstBowling+'","FirInnEco_'+firstBowling+'","FirInnBowBalls_'+firstBowling+'") />';
			       cell4.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnMaiden_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnMaiden">';
			       cell5.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnWickets_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnWickets">';
			       cell6.innerHTML = '<input type="text" class="wid" id="FirInnEco_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnEco" readonly="readonly">';
			       cell7.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnZeros_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnZeros">';
			       cell8.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnBowFours_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnBowFours">';
			       cell9.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnBowSixs_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnBowSixs">';
			       cell10.innerHTML = '<input type="text" class="wid OnlyNumber" id="FirInnBowBalls_'+firstBowling+'" onfocus = "numberCheck(this)" name="firInnBowBalls" readonly="readonly">';
			     
			       firstBowling = parseInt(firstBowling) + 1;
		       
		       newArray.splice(0,newArray.length);
		     
		    }else{
			   
			   displaynotification("Please fill in current row before adding a new one.",2000);
		   } 
	  

   }
   
   var secondBowling = 1;
  function addSecondInningBowling(){
	   
	   var newArray = [];
	   $('#secInnBowlingTable tbody tr:last  td input').each(function(){
		 
		   var name=$(this).attr("name");
		   var id=$(this).attr("id");
		   
		   if($(this).val() == ''){
			  false;
		   }else{
			   
			   if(name=='addMemberIDDIVBowlingSec'){
				   newArray.push($(this).val());
			   }else if(name=='secInnOvers'){
				   newArray.push($(this).val());
			   }else if(name=='secInnBowRuns'){
				   newArray.push($(this).val());
			   }else if(name=='secInnWickets'){
				   newArray.push($(this).val());
			   }else if(name=='secInnEco'){
				   newArray.push($(this).val());
			   }
			   
		   }
	   });
	   console.log('------ first inning bowling  --newArray.length ------------- '+newArray.length);
		   if(newArray.length != 0 && newArray.length >4){
			   var table = document.getElementById("secInnBowlingTable");
			   	 var rowCount = table.rows.length;
			   	
			       var row = table.insertRow(rowCount);
			       var cell1 = row.insertCell(0);
			       var cell2 = row.insertCell(1);
			       var cell3 = row.insertCell(2);
			       var cell4 = row.insertCell(3);
			       var cell5 = row.insertCell(4);
			       var cell6 = row.insertCell(5);
			       var cell7 = row.insertCell(6);
			       var cell8 = row.insertCell(7);
			       var cell9 = row.insertCell(8);
			       var cell10 = row.insertCell(9);
			       
			       
			              var htmlContent='';
			    var htmlContent1='';
			    
		       if(	$("#homeTeamName").val() == homeTeamId){
		
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent1 += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}else{
			var htmlContent='';
			var htmlContent1='';
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent1 += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
		}
		   var htmlContentBattingPlayer ='<select  id="SecInnBowlingName_'+secondBowling+'"  name="SecInnBowlingName_'+secondBowling+'" onchange=firstIningsbattingPlayerOnchange(this,"addMemberIDDIVSecInnBowlingName'+secondBowling+'","SecondInningBowling")>';
		       htmlContentBattingPlayer += htmlContent;
		       htmlContentBattingPlayer +='</select> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVSecInnBowlingName'+secondBowling+'" name="addMemberIDDIVBowlingSec">';		       
		       cell1.innerHTML = htmlContentBattingPlayer;
			      
			     //cell1.innerHTML = '<input type="text" class="wi-sel" id="SecInnBowlingName_'+secondBowling+'" onkeyup=getBuddiesAutoCompleteSecondBowling(this,"addMemberautoCompleteDIVSecInnBowlingName'+secondBowling+'","addMemberIDDIVSecInnBowlingName'+secondBowling+'") /> <div class="autoComplete" id="addMemberautoCompleteDIVSecInnBowlingName'+secondBowling+'" style="display:none;"><ul><li></li></ul></div> <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIVSecInnBowlingName'+secondBowling+'" name="addMemberIDDIVBowlingSec">';
			       cell2.innerHTML = '<input type="text" class="wid" id="SecInnOvers_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnOvers" onblur=calculateBowlingEconamic("SecInnBowRuns_'+secondBowling+'","SecInnOvers_'+secondBowling+'","SecInnEco_'+secondBowling+'","SecInnBowBalls_'+secondBowling+'") />';
			       cell3.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnBowRuns_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnBowRuns" onblur=calculateBowlingEconamic("SecInnBowRuns_'+secondBowling+'","SecInnOvers_'+secondBowling+'","SecInnEco_'+secondBowling+'","SecInnBowBalls_'+secondBowling+'") />';
			       cell4.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnMaiden_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnMaiden">';
			       cell5.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnWickets_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnWickets">';
			       cell6.innerHTML = '<input type="text" class="wid" id="SecInnEco_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnEco" readonly="readonly">';
			       cell7.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnZeros_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnZeros">';
			       cell8.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnBowFours_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnBowFours">';
			       cell9.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnBowSixs_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnBowSixs">';
			       cell10.innerHTML = '<input type="text" class="wid OnlyNumber" id="SecInnBowBalls_'+secondBowling+'" onfocus = "numberCheck(this)" name="secInnBowBalls" readonly="readonly">';
			     
			       secondBowling = parseInt(secondBowling) + 1;
	
		       newArray.splice(0,newArray.length);
		     
		    }else{
			   
			   displaynotification("Please fill in current row before adding a new one.",2000);
		   } 

   }
 
   
   function getBuddiesAutoComplete(elem,divId,hiddenId){
		
	 	var key=$(elem).val();
		var homeId = $("#hiddenHomeId").val();
	 	var textBoxId=$(elem).attr('id');
	 	console.log('value : '+key);
	 	console.log('textBoxId : '+textBoxId);
	 	var searchBean = {
	 			homeTeam : homeId,
	 			awayTeam : key,
	 	}
	 	if(key.length>2) {
	 			    $.ajax({
	 						type : "POST",
	 						url : "${pageContext.request.contextPath}/playerSearchOfBoard",
	 						headers : {'Name' : HeaderName},
	 						dataType: "json",
	 			        contentType: "application/json; charset=utf-8",
	 			        data : JSON.stringify(searchBean),					            
	 						success : function(res) {
	 							console.log(res);	
	 							var html="";
	 							
	 							if(res != null){
	 								var users=res.userList;
	 								console.log(JSON.stringify(users));
	 								html+="<ul>";
	 								
	 								if(users!= null && users.length >0){
	 									for(var i in users){
	 										var name=users[i].firstName;
	 								
	 								
	 								html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
			                            
			                          
			                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	}
			                      	html += " ";
			                      	html+=""+name+"";
			                          html+='</div>'
			                       	 +'</div>'
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
   
  

   function getBuddiesAutoComplete1(elem,divId,hiddenId){
		
	 	var key=$(elem).val();
	 	var homeId = $("#hiddenAwayId").val();
	 	var textBoxId=$(elem).attr('id');
	 	console.log('value : '+key);
	 	console.log('textBoxId : '+textBoxId);
	 	var searchBean = {
	 			homeTeam : homeId,
	 			awayTeam : key,
	 	}
	 	
	 	if(key.length>2) {
			    $.ajax({
						type : "POST",
						url : "${pageContext.request.contextPath}/playerSearchOfBoard",
						headers : {'Name' : HeaderName},
						dataType: "json",
			        contentType: "application/json; charset=utf-8",
			        data : JSON.stringify(searchBean),					            
						success : function(res) {
							console.log(res);	
							var html="";
							
							if(res != null){
								var users=res.userList;
								console.log(JSON.stringify(users));
								html+="<ul>";
								
								if(users!= null && users.length >0){
									for(var i in users){
										var name=users[i].firstName;
								
								
								html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
	                            
	                          
	                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

                          	}else{
                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
                          	}
	                      	html += " ";
	                      	html+=""+name+"";
	                          html+='</div>'
	                       	 +'</div>'
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

   
  
   function normalUserSearch(elem,divId,hiddenId){
		
	 	var key=$(elem).val();
	 	var textBoxId=$(elem).attr('id');
	 	console.log('value : '+key);
	 	console.log('textBoxId : '+textBoxId);
	 	if(key.length>2) {
	 			    $.ajax({
	 						type : "POST",
	 						url : "${pageContext.request.contextPath}/UmpireCreationNameSearch",
	 						headers : {'Name' : HeaderName},
	 						dataType: "json",
	 			        contentType: "application/json; charset=utf-8",
	 			        data : key,					            
	 						success : function(res) {
	 							console.log(res);	
	 							var html="";
	 							var name = null;
	 							if(res != null){
	 								var users=res.userSearchBean;
	 								console.log(JSON.stringify(users));
	 								html+="<ul>";
	 								
	 								if(users!= null && users.length >0){
	 									for(var i in users){
	 										if(users[i].fullName != null){
	 											 name=users[i].fullName;
	 										}
	 								
	 								
	 								html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
			                            
			                          
			                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	}
			                      	html += " ";
			                      	html+=""+name+"";
			                          html+='</div>'
			                       	 +'</div>'
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
	 		   $('#'+hiddenId).val('');
	 	   }
	   
	 } 
   
function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
		$('#'+textBox).val($(elem).text());
		$('#'+divId).hide();	
		$('#'+hiddenId).val(userId);	
		
}



function selectDismissal(elem,hiddenId){
	
	   var dismissId=$(elem).val();
	   if(dismissId != 0){
	   $("#"+hiddenId).val(dismissId);
	  // alert("sd");
	   var str = "";
       str = $(elem).find(":selected").text();
       $(elem).next(".out").text(str);
	   }else{
		   $("#"+hiddenId).val("");
	   }
	   }




$(document).ready(function(){   
var umpireArray=[];
var prePopulateUmpire = ${umpireNameList};
   if(prePopulateUmpire.length != 0){
	for(var i=0; i< prePopulateUmpire.length; i++){
		umpireArray.push(prePopulateUmpire[i].id);
	};
	$('#hiddenUmpireId').val(umpireArray);
	}
$("#umpireId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + "</div></div></li>" },
prePopulate:prePopulateUmpire,
preventDuplicates: true,
propertyToSearch: "fullName",
theme: "facebook",   
onAdd: function (item) {
	umpireArray.push(item.id);
	$('#hiddenUmpireId').val(umpireArray);
	$('#hiddenUmpireIdError').Text('');
},
onDelete: function (item) {
	var index = umpireArray.indexOf(item.id);
	if (index >= 0) {
		umpireArray.splice( index, 1 );
	}
	$('#hiddenUmpireId').val(umpireArray);
},onResult: function (item) {
if($.isEmptyObject(item)){
    return [{id:'0',name: "No Results Found"}];
}else{
    return item;
}
}
});
});

function saveFunction(){
	
	var tournament = $("#tournament").val();
	var scheduler = $("#scheduler").val();
	var homeTeamId = $("#homeTeamName").val();
	var awayTeamId = $("#awayTeamName").val();
	var noOfOver = $("#totalOver").val();
	var groundid=$("#GroundId").val();
	
	if(tournament == 0){
		document.getElementById("firInnPlayerName").innerHTML = "";
		$("#firInnPlayerName").blur();
		showNotification("Please choose tournament", 2000);
		hide_notificationpoup(2000);
	}else if(scheduler == 0){
		document.getElementById("firInnPlayerName").innerHTML = "";
		$("#firInnPlayerName").blur();
		showNotification("Please choose schedule", 2000);
		hide_notificationpoup(2000);
	}else if(homeTeamId == "" || homeTeamId == 0 && awayTeamId == "" || awayTeamId == 0){
		$("#firInnPlayerName").blur();
		displaynotification("Please choose innings",2000);
	
	}else{
		checkDateField();
		
		if(checkDateField() == true){

	
	
	$("#loading").show();
	
	
	var matchId = $("#schedulerId").val();
	 //var matchId = "9e255874-9efb-4694-810d-7e7f05ad3b93";
	var playerOfMatch = $("#addMemberIDDIVPlayerOfMatch").val();
	var umpireId = $("#hiddenUmpireId").val();
	var homeTeamCoach = $("#addMemberIDDIVHomeCoach").val();
	var awayTeamCoach = $("#addMemberIDDIVAwayCoach").val();
	/* var winTeamOvers = $("#winTeamOvers").val();
	var winTeamPoints = $("#winTeamPoints").val();
	var winTeamRuns = $("#winTeamRuns").val();	
	
	var winTeamWickets = $("#winTeamWickets").val();
	var loseTeamOvers = $("#loseTeamOvers").val();
	var loseTeamPoints = $("#loseTeamPoints").val();
	var loseTeamRuns = $("#loseTeamRuns").val();
	var loseTeamWickets = $("#loseTeamWickets").val(); */
	
	
	var winTeamPoints = $("#winTeamPoints").val();
	var loseTeamPoints = $("#loseTeamPoints").val();
	
	
	
	// vignesh changes
	if($("#winTeamPoints").val() == '0')
	{
	winTeamPoints=$("#loseTeamPoints").val();
	loseTeamPoints=$("#winTeamPoints").val();
	}
	
	
	var WinTeamdetailsinfo=$("#WinTeamdetails").val();
	if( WinTeamdetailsinfo == 'first')
		{
		
		var winTeamOvers = $("#firstBattingTotalOvers").val();
		var winTeamRuns = $("#firstInnigsScore").val();	
		
		var winTeamWickets = $("#firstInnigsTotalWicket").val();
		var loseTeamOvers = $("#secondBattingTotalOvers").val();
		var loseTeamRuns = $("#secondInnigsScore").val();
		var loseTeamWickets = $("#secondInnigsTotalWicket").val();
		}else
			{
			
			var winTeamOvers = $("#secondBattingTotalOvers").val();
			var winTeamRuns = $("#secondInnigsScore").val();	
			
			var winTeamWickets = $("#secondInnigsTotalWicket").val();
			var loseTeamOvers = $("#firstBattingTotalOvers").val();
			var loseTeamRuns = $("#firstInnigsScore").val();
			var loseTeamWickets = $("#firstInnigsTotalWicket").val();
			
			}
	
	
	
	
	var gameType = $("#gameType").val();
	
	var gameDate = $("#gameDate").val();
	
	  /* var homeId = document.getElementById("hiddenHomeId").value;
	   var awayId = document.getElementById("hiddenAwayId").value; */
	   
	   var homeId = "${homeTeamId}";
	   var awayId = "${awayTeamId}";
	   
	   var result = $("#result").val();
   
	
	var firstInningsBatting=[];
    var firstInningsBattingObj;
    $('#firInnBattingTable tbody tr').each(function (i, row) {
    	firstInningsBattingObj={};
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
         
            if(i==0){
            	
            	firstInningsBattingObj.playerId=this.value;
            }
            if(i==1){
            	firstInningsBattingObj.battingWicketTakenBy = this.value;
            }
            if(i==2){
            	firstInningsBattingObj.fielderId=this.value;
            }
            /* if(i==3){
            	firstInningsBattingObj.dismissalType=this.value;
            } */
            if(i==3){
                if(this.value == 'Run Out' || this.value == 'Timed Out' || this.value == 'Double Hit'){
                	var dismissalType = this.value;
                	firstInningsBattingObj.dismissalType=dismissalType.replace(/ /g, "");
                }else{
            	 firstInningsBattingObj.dismissalType=this.value;
                };            
            }
            if(i==4){
            	firstInningsBattingObj.battingRuns = this.value;
            }
            if(i==5){
            	firstInningsBattingObj.minutes = this.value;
            }
            if(i==6){
            	firstInningsBattingObj.battingBallnumber = this.value;
            }
            if(i==7){
            	firstInningsBattingObj.battingFours = this.value;
            }
            if(i==8){
            	firstInningsBattingObj.battingSix = this.value;
            }
            if(i==9){
            	firstInningsBattingObj.battingStrikeRating = this.value;
            }
            if(i==10){
            	firstInningsBattingObj.battingOvers = this.value;
            }
            firstInningsBattingObj.innings = "1";
            firstInningsBattingObj.matchId = matchId;
            firstInningsBattingObj.teamId=	 homeTeamId;
           // firstInningsBattingObj.battingOvers = "0.00";
            
        });
        firstInningsBatting.push(firstInningsBattingObj);
    });
    
    var secondInningsBatting=[];
    var secondInningsBattingObj;
    $('#secInnBattingTable tbody tr').each(function (i, row) {
    	secondInningsBattingObj={};
    	
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
            
            if(i==0){
            	secondInningsBattingObj.playerId=this.value;
            }
            if(i==1){
            	secondInningsBattingObj.battingWicketTakenBy = this.value;
            }
            if(i==2){
            	secondInningsBattingObj.fielderId=this.value;
            }
           /*  if(i==3){
            	secondInningsBattingObj.dismissalType=this.value;
            } */
            if(i==3){
            	 if(this.value == 'Run Out' || this.value == 'Timed Out' || this.value == 'Double Hit'){
                	var dismissalType = this.value;
                	secondInningsBattingObj.dismissalType=dismissalType.replace(/ /g, "");
                }else{
            	secondInningsBattingObj.dismissalType=this.value;
            	};
            }
            if(i==4){
            	secondInningsBattingObj.battingRuns = this.value;
            }
            if(i==5){
            	secondInningsBattingObj.minutes = this.value;
            }
            if(i==6){
            	secondInningsBattingObj.battingBallnumber = this.value;
            }
            if(i==7){
            	secondInningsBattingObj.battingFours = this.value;
            }
            if(i==8){
            	secondInningsBattingObj.battingSix = this.value;
            }
            if(i==9){
            	secondInningsBattingObj.battingStrikeRating = this.value;
            }
            if(i==10){
            	secondInningsBattingObj.battingOvers = this.value;
            }
            secondInningsBattingObj.innings = "2";
            secondInningsBattingObj.matchId = matchId;
            secondInningsBattingObj.teamId = awayTeamId;
            
           // secondInningsBattingObj.battingOvers = "0.00";
            
        });
        secondInningsBatting.push(secondInningsBattingObj);
    });
    
    
    var firstInningsBowling=[];
    var firstInningsBowlingObj;
    $('#firInnBowlingTable tbody tr').each(function (i, row) {
    	firstInningsBowlingObj={};
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
            
            if(i==0){
            	firstInningsBowlingObj.bowlerId=this.value;
            }
            if(i==1){
            	firstInningsBowlingObj.bowlingOvers = this.value;
            }
            if(i==2){
            	firstInningsBowlingObj.bowlingRuns=this.value;
            }
            if(i==3){
            	firstInningsBowlingObj.maidenOvers=this.value;
            }
            if(i==4){
            	firstInningsBowlingObj.wickets = this.value;
            }
            if(i==5){
            	firstInningsBowlingObj.bowlingEconomyRate = this.value;
            }
            if(i==6){
            	firstInningsBowlingObj.bowlingZeros = this.value;
            }
            if(i==7){
            	firstInningsBowlingObj.bowlingFours = this.value;
            }
            if(i==8){
            	firstInningsBowlingObj.bowlingSix = this.value;
            }
            if(i==9){
            	firstInningsBowlingObj.bowlingBallNumber = this.value;
            }
           
            firstInningsBowlingObj.innings = "1";
            firstInningsBowlingObj.matchId = matchId;
            firstInningsBowlingObj.teamId = awayTeamId;
            //firstInningsBowlingObj.playerId = "";
           // firstInningsBowlingObj.bowlingBallNumber = "0";
        });
        firstInningsBowling.push(firstInningsBowlingObj);
    });
    
    
    var secondInningsBowling=[];
    var secondInningsBowlingObj;
    $('#secInnBowlingTable tbody tr').each(function (i, row) {
    	secondInningsBowlingObj={};
    	
    	secondInningsBowlingObj={};
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
            
            if(i==0){
            	secondInningsBowlingObj.bowlerId=this.value;
            }
            if(i==1){
            	secondInningsBowlingObj.bowlingOvers = this.value;
            }
            if(i==2){
            	secondInningsBowlingObj.bowlingRuns=this.value;
            }
            if(i==3){
            	secondInningsBowlingObj.maidenOvers=this.value;
            }
            if(i==4){
            	secondInningsBowlingObj.wickets = this.value;
            }
            if(i==5){
            	secondInningsBowlingObj.bowlingEconomyRate = this.value;
            }
            if(i==6){
            	secondInningsBowlingObj.bowlingZeros = this.value;
            }
            if(i==7){
            	secondInningsBowlingObj.bowlingFours = this.value;
            }
            if(i==8){
            	secondInningsBowlingObj.bowlingSix = this.value;
            }
            if(i==9){
            	secondInningsBowlingObj.bowlingBallNumber = this.value;
            }
            secondInningsBowlingObj.innings = "2";
            secondInningsBowlingObj.matchId = matchId;
            secondInningsBowlingObj.teamId=	 homeTeamId;
            //secondInningsBowlingObj.playerId = "";
           // secondInningsBowlingObj.bowlingBallNumber = "0";
            
        });
        secondInningsBowling.push(secondInningsBowlingObj);
    });
	

var firstInningsExtra = [];
    
    if($("#firstInningsWide").val() != ""){
        var extra={};
        extra.extraType="Wide";
        extra.extraRuns = $("#firstInningsWide").val();
        firstInningsExtra.push(extra);
        }
        if($("#firstInningsNoBalls").val() != ""){
         var extra={};
        extra.extraType="Noball";
        extra.extraRuns = $("#firstInningsNoBalls").val();
        firstInningsExtra.push(extra);
        }
        if($("#firstInningsByes").val() != ""){
         var extra={};
         extra.extraType="Byes";
         extra.extraRuns = $("#firstInningsByes").val();
         firstInningsExtra.push(extra);
        }
        if($("#firstInningsLegByes").val() != ""){
         var extra={};
         extra.extraType="LegByes";
         extra.extraRuns = $("#firstInningsLegByes").val();
         firstInningsExtra.push(extra);
        }
        if($("#firstInningsPenalties").val() != ""){
         var extra={};
         extra.extraType="Penalties";
         extra.extraRuns = $("#firstInningsPenalties").val();
         firstInningsExtra.push(extra);
        }
    
var firstInningsExtraVal = firstInningsExtra;
   
	
    var secondInningsExtra = [];
    
    if($("#secondInningsWide").val() != ""){
        var extra={};
        extra.extraType="Wide";
        extra.extraRuns = $("#secondInningsWide").val();
        secondInningsExtra.push(extra);
        }
        if($("#secondInningsNoBalls").val() != ""){
         var extra={};
        extra.extraType="Noball";
        extra.extraRuns = $("#secondInningsNoBalls").val();
        secondInningsExtra.push(extra);
        }
        if($("#secondInningsByes").val() != ""){
         var extra={};
         extra.extraType="Byes";
         extra.extraRuns = $("#secondInningsByes").val();
         secondInningsExtra.push(extra);
        }
        if($("#secondInningsLegByes").val() != ""){
         var extra={};
         extra.extraType="LegByes";
         extra.extraRuns = $("#secondInningsLegByes").val();
         secondInningsExtra.push(extra);
        }
        if($("#secondInningsPenalties").val() != ""){
         var extra={};
         extra.extraType="Penalties";
         extra.extraRuns = $("#secondInningsPenalties").val();
         secondInningsExtra.push(extra);
        }
    

     var secondInningsExtraVal = secondInningsExtra
  
	
	var fallOfWickets =[];
	
	if($("#firstInningsFirstWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=1;
        fallWic.runs = $("#firstInningsFirstWicket").val();
        fallOfWickets.push(fallWic);
       }
	
	if($("#firstInningsSecondWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=2;
        fallWic.runs = $("#firstInningsSecondWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsThirdWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=3;
        fallWic.runs = $("#firstInningsThirdWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsFourthWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=4;
        fallWic.runs = $("#firstInningsFourthWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsFithWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=5;
        fallWic.runs = $("#firstInningsFithWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsSixthWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=6;
        fallWic.runs = $("#firstInningsSixthWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsSevenWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=7;
        fallWic.runs = $("#firstInningsSevenWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsEightWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=8;
        fallWic.runs = $("#firstInningsEightWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsNineWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=9;
        fallWic.runs = $("#firstInningsNineWicket").val();
        fallOfWickets.push(fallWic);
       }
	if($("#firstInningsTendWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=10;
        fallWic.runs = $("#firstInningsTendWicket").val();
        fallOfWickets.push(fallWic);
       }
	
  
 var firstInningsFallOfWickets = fallOfWickets;
	
	var fallOfWicketsSecondInnings =[];
	
	if($("#scondInningsFirstWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=1;
        fallWic.runs = $("#scondInningsFirstWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	
	if($("#scondInningsSecondWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=2;
        fallWic.runs = $("#scondInningsSecondWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsThirdWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=3;
        fallWic.runs = $("#scondInningsThirdWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsFourthWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=4;
        fallWic.runs = $("#scondInningsFourthWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsFithWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=5;
        fallWic.runs = $("#scondInningsFithWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsSixthWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=6;
        fallWic.runs = $("#scondInningsSixthWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsSevenWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=7;
        fallWic.runs = $("#scondInningsSevenWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsEightWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=8;
        fallWic.runs = $("#scondInningsEightWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsNineWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=9;
        fallWic.runs = $("#scondInningsNineWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	if($("#scondInningsTendWicket").val() != ""){
        var fallWic={};
        fallWic.wicketNumber=10;
        fallWic.runs = $("#scondInningsTendWicket").val();
        fallOfWicketsSecondInnings.push(fallWic);
       }
	var secondInningsFallOfWickets = fallOfWicketsSecondInnings; 

     var firstbattingDntPlayers1 = $("#dntPlayerListFirstInnings").val();
     
     var secondbattingDntPlayers1 = $("#dntPlayerListSecondInnings").val();


	var firstInnings = {};
	firstInnings.battingBeanList = firstInningsBatting;
	firstInnings.bowlingBeanList = firstInningsBowling;
	firstInnings.extrasList = firstInningsExtraVal;
	firstInnings.fallowOfWickets = firstInningsFallOfWickets;
	firstInnings.firstInningsDNBList = firstbattingDntPlayers1;
	
	var secondInnings = {};
	secondInnings.battingBeanList = secondInningsBatting;
	secondInnings.bowlingBeanList = secondInningsBowling;
	secondInnings.extrasList = secondInningsExtraVal;
	secondInnings.fallowOfWickets = secondInningsFallOfWickets;
	secondInnings.secondInningsDNBList = secondbattingDntPlayers1;
	
console.log('--------------------------------  winTeamRuns ------------------------------------------------------- '+winTeamRuns);
console.log('--------------------------------  loseTeamRuns ------------------------------------------------------- '+loseTeamRuns);
	
	
var FirstInningsScore = $("#firstInnigsScore").val();	
var SecondInningsScore = $("#secondInnigsScore").val();
	
	var scorerBean = {
		    awayTeamCoach : awayTeamCoach,
		    homeTeamCoach : homeTeamCoach,
		    matchId : matchId,
		    playerOfTheMatch : playerOfMatch,
		    winTeamOvers : winTeamOvers,
		    winTeamPoints : winTeamPoints,
		    winTeamRuns : winTeamRuns,
		    winTeamWickets : winTeamWickets,
			loseTeamOvers : loseTeamOvers,
			loseTeamRuns : loseTeamRuns,
			loseTeamPoints : loseTeamPoints,
			loseTeamWickets : loseTeamWickets,
			umpireId : umpireId,
			noOfOvers : noOfOver,
			status : "Completed",
		    firstInnings : firstInnings,
		    secondInnings : secondInnings, 
		    gameType :gameType,
		    homeTeamId : homeId,
		    awayTeamId : awayId,
		    gameDate : gameDate,
		    result : result,
		    firstInningsTeamId : homeTeamId,
		    secondInningsTeamId : awayTeamId,
		    /* firstInningsTotalRuns  : winTeamRuns,
		    secondInningsTotalRuns : loseTeamRuns, */
		    
        //changes made by vignesh
		    
		    firstInningsTotalRuns  : FirstInningsScore,
		    secondInningsTotalRuns : SecondInningsScore,
		    
		    groundId : groundid
		    
		}
	console.log(JSON.stringify(scorerBean));	
	//console.log(JSON.strngify(scorerBean));	

	
	$.ajax({
	
		type:"post",
		url:"${pageContext.request.contextPath}/enterScoreInsert",
		data:JSON.stringify(scorerBean),
		contentType :"application/json",
		success : function(res){
			$("#loading").hide();
			if(res != "failure"){
				var boardId  = "${boardId}";
				
				
				if(res == 'Sorry, Scorecard Locked!')
				{    
					showNotification("Sorry scorecoard has been locked, Please contact your admin.", 2000);
					hide_notificationpoup(2000);
				}else{
				showNotification("Inserted Successfully", 2000);
				hide_notificationpoup(2000);}
				
				 window.location.href = "${pageContext.request.contextPath}/GameSchedulePublicProfile/boardId/"+boardId;
				
			}else{
				showNotification("Error Occured. Try after sometimes", 2000);
				hide_notificationpoup(2000);
			}
			
		},
		error:function(err){
			console.log(err);
		}
		
		
	})
		}else{
			
		}
	}
	
}

function checkFunction(){
	
	var tournament = $("#tournament").val();
	var scheduler = $("#scheduler").val();
	var homeTeamId = $("#homeTeamName").val();
	var awayTeamId = $("#awayTeamName").val();
	
	if(tournament == 0){
		document.getElementById("firInnPlayerName").innerHTML = "";
		$("#firInnPlayerName").blur();
		showNotification("Please choose tournament", 2000);
		hide_notificationpoup(2000);
	}else if(scheduler == 0){
		document.getElementById("firInnPlayerName").innerHTML = "";
		$("#firInnPlayerName").blur();
		showNotification("Please choose schedule", 2000);
		hide_notificationpoup(2000);
	}else if(homeTeamId == "" || homeTeamId == 0 && awayTeamId == "" || awayTeamId == 0){
		$("#firInnPlayerName").blur();
		displaynotification("Please choose innings",2000);
	}else{
		
	}

	
}
function cancelFunction(){
	var boardId  = "${boardId}";
	/*  window.location.href = "${pageContext.request.contextPath}/GameSchedule/boardId/"+boardId; */
	  window.location.href = "${pageContext.request.contextPath}/GameSchedulePublicProfile/boardId/"+boardId; 
}

function cancelValues(){
	//window.location.reload();
	window.location.href="${pageContext.request.contextPath}/GameSchedulePublicProfile/boardId/${boardId}";
}

function numberCheck(elem){
 	var textBoxId=$(elem).attr('id');
	$("#"+textBoxId).keypress(function (e) {
	     //if the letter is not digit then display error and don't type anything
	    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 46) {
	        //display error message
	      $('#'+textBoxId).blur();
	        displaynotification("Please enter numeric numbers only",1000);
	               return false;
	    }else{
	    	
	    }
	   });
}

function checkDateField(){
	var date = $("#gameDate").val();
	if(date == null || date == "" || typeof date == 'undefined'){
			displaynotification("Please give match Date",2000);
		//document.getElementById("dateError").innerHTML = "Please give Match Date";
		return false;
	}else{
		//document.getElementById("dateError").innerHTML = "";
		return true;
	}
	
}

function checkInnings(val,elem){
	if(val != 0 || val != ""){
		var textBoxId=$(elem).attr('id');
		if(textBoxId == 'homeTeamName'){
			   document.getElementById("hiddenHomeId").value = val;
			  
		}else{
			 document.getElementById("hiddenAwayId").value = val;
		}
		var homeTeamId = $("#homeTeamName").val();
		var awayTeamId = $("#awayTeamName").val();
		if(awayTeamId == homeTeamId){
			displaynotification("This team name is already choosen.",1500);
		  //   $("#"+textBoxId).val("");
		     document.getElementById(textBoxId).selectedIndex = "0";
		}else{
			
		}
		
	}else{
		
	}
	
}
function blurFunction()
{
	$("#gameDate").blur();
	}

   </script>
   <script type="text/javascript">
   $(function(){
		getNotification();
		
		//$('#userNotificationShowDIV').show();
		$("body").click(function(){
				$("#addMemberautoCompleteDIVPlayerOfMatch").fadeOut();	
				$("#addMemberautoCompleteDIVHomeCoach").fadeOut();	
				$("#addMemberautoCompleteDIVAwayCoach").fadeOut();	
			});
		
			$("#PlayerOfTheMatch").click(function(e){
			 e.stopPropagation();
				$("#addMemberautoCompleteDIVPlayerOfMatch").show();
				$("#addMemberautoCompleteDIVHomeCoach").fadeOut();	
				$("#addMemberautoCompleteDIVAwayCoach").fadeOut();
			});
		
			
			$("#homeTeamcoach").click(function(e){
				 e.stopPropagation();
					$("#addMemberautoCompleteDIVHomeCoach").show();
					$("#addMemberautoCompleteDIVPlayerOfMatch").fadeOut();
					$("#addMemberautoCompleteDIVAwayCoach").fadeOut();
				});
			$("#awayTeamCoach").click(function(e){
				 e.stopPropagation();
					$("#addMemberautoCompleteDIVAwayCoach").show();
					$("#addMemberautoCompleteDIVPlayerOfMatch").fadeOut();
					$("#addMemberautoCompleteDIVHomeCoach").fadeOut();
				});
			//document.getElementById("tournament").selectedIndex = 0;
			 /* document.getElementById('tournament').value= 0;
			var htm="test";
			$('#tournamentTextVal').html(htm); */
	});
   
   function tet(){
	   var htm="test2";
		$('#tournamentTextVal').html(htm);
   }
   </script>
  <script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script> 
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.multiselect.js"></script>
 <script>

function setDonotBatPlayersFirstInnings(){

	var firstInningsBatting=[];
    $('#firInnBattingTable tbody tr').each(function (i, row) {
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
         
            if(i==0){
            	
            	//firstInningsBattingObj.playerId=this.value;
            	firstInningsBatting.push(this.value);
            }
            
        });
        //firstInningsBatting.push(firstInningsBattingObj);
    });
	
	
	
	console.log(JSON.stringify(firstInningsBatting));
	
	var htmlContent ='<select name="dntPlayerList" id="dntPlayerListFirstInnings" multiple="multiple" class="form-control" >';
	
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){
		for(var i =0;i<sceondTeamPlayersId.length;i++ ){
		   
		   if(firstInningsBatting.indexOf(sceondTeamPlayersId[i].userId) == -1){
		   console.log("--"+sceondTeamPlayersId[i].userId);
		   htmlContent += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
		   }
			
		}
		
	}else{
		for(var i =0;i<firstTeamPlayersId.length;i++ ){
			//console.log("asa"+firstTeamPlayersId[i]);
			if(firstInningsBatting.indexOf(firstTeamPlayersId[i].userId) == -1){
			htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
            }		  
		}
		
	}
	htmlContent += '</select>';
	//alert("set"+htmlContent);
 $("#donotbatDivFirstInnings").html(htmlContent).trigger('create');
	$('select[multiple]').multiselect({
    columns: 2,
    selectAll: true,
    placeholder: 'Select Players'
}); 
//$('#dntPlayerList option').prop('selected', true);
}
function setDonotBatPlayersSecondInnings(){

	var firstInningsBatting=[];
    $('#secInnBattingTable tbody tr').each(function (i, row) {
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
         
            if(i==0){
            	
            	//firstInningsBattingObj.playerId=this.value;
            	firstInningsBatting.push(this.value);
            }
            
        });
        //firstInningsBatting.push(firstInningsBattingObj);
    });
	
	
	
	console.log(JSON.stringify(firstInningsBatting));
	
	var htmlContent ='<select name="dntPlayerList" id="dntPlayerListSecondInnings" multiple="multiple" class="form-control" >';
	
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){
		for(var i =0;i<firstTeamPlayersId.length;i++ ){
			//console.log("asa"+firstTeamPlayersId[i]);
			if(firstInningsBatting.indexOf(firstTeamPlayersId[i].userId) == -1){
			htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
            }		  
		}	
		
	}else{
	
	for(var i =0;i<sceondTeamPlayersId.length;i++ ){	   
		   if(firstInningsBatting.indexOf(sceondTeamPlayersId[i].userId) == -1){
		   console.log("--"+sceondTeamPlayersId[i].userId);
		   htmlContent += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
		   }	
		}
			
	}
	htmlContent += '</select>';
	//alert("set"+htmlContent);
 $("#donotbatDivSeconInnings").html(htmlContent).trigger('create');
	$('select[multiple]').multiselect({
    columns: 2,
    selectAll: true,
    placeholder: 'Select Players'
}); 
//$('#dntPlayerList option').prop('selected', true);
}



$( "#secslideshowdiv" ).focusin(function() {
	console.log("Changes1");
	
	var contains=$('#SecondSlide').hasClass('cslide-active');
	console.log(contains);
	
	if(contains ==  false){
		$("#Nextslidecaller").click();
	}
	return
	}); 
	
$( "#secslideshowdiv1" ).focusin(function() {
	console.log("Changes1");
	
	var contains=$('#ThirdSlide').hasClass('cslide-active');
	console.log(contains);
	
	if(contains ==  false){
		$("#Nextslidecaller").click();
	}
	return
	});


</script>
</body>
</html>
