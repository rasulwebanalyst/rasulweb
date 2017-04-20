<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">
    
<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/wickedpicker.css">
 <!-- jQuery -->
<!--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">

  <script src="${pageContext.request.contextPath}/js/cricketSocial/createSchedule.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>


</head>






<body>

<%@ include file="CSCommon.jsp" %>
 <%@ include file="BoardHeader.jsp" %>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/wickedpicker.js"></script>
  
  
  
  
  
<style>
.media.tool-list {
	overflow: visible;
}
.tool-list .media-body {
	overflow: visible;
}
.tool-list .media-body .tooltiptext1 {
	height: auto;
	
} 
.tooltip2 {
position: unset;
display: inline-block;
border-bottom: 1px dotted black;
color: #4c9fe1;
opacity: 1;
}

.tooltip2 .tooltiptext2 {
display: none;
visibility: hidden;
width: auto;
background-color: #fff;
color: #555;
text-align: center;
border-radius: 0px;
padding: 0;
position: absolute;
z-index: 1;
margin-top: 4px;
font-size: 11px;
opacity: 0;
transition: opacity 1s;
white-space: nowrap;
right: 0;
box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
border: 1px solid rgba(0,0,0,0.3)
}

.tooltip2 .tooltiptext2::after {
    content: "";
position: absolute;
top: -10px;
right: 35%;
margin: 0 auto;
border-width: 5px;
border-style: solid;
border-color: transparent transparent #555 transparent;
}

.tooltip2:hover .tooltiptext2 {
    visibility: visible;
    opacity: 1;
    display: block;
}



.tooltip1 {
   
    float: right;
   
}

.tooltip1 .tooltiptext1 {
display: none;
   visibility: hidden;
width: 200px;
background-color: #fff;
color: #555;
text-align: center;
border-radius: 0px;
padding: 0;
position: absolute;
z-index: 1;
right: -177px;
margin-top: -10px;
opacity: 0;
transition: opacity 1s;
box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
}
.tooltiptext1 .test ul li:hover span {
color: #fff !important;
}

.tooltiptext2 ul li {
color: #555 !important;
}

.tooltiptext1 .test ul li span {  
outline: 0;
}
.tooltip1 .tooltiptext1::after {
 content: "";
position: absolute;
top: 11px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip1:hover .tooltiptext1 {
    visibility: visible;
    opacity: 1;
    display: block;
}


.tooltiptext1 div li:last-child {
border: none !important;
}





.tooltiptext div li,.tooltiptext1 div li  {
text-align: left;
}



.sponser-Flow{
text-overflow: ellipsis;
    overflow: hidden;
    width: 67%;
    display: inline-block;
    white-space: nowrap;
}
.tooltiptext1 .test {
min-height: 10px;
max-height: 200px;
overflow: auto;
}
.tooltiptext1 .test ul li {  
padding: 5px 3px;
border-bottom: 1px solid rgba(0,0,0,0.2) !important;
}

.token-input-dropdown-facebook {
overflow: inherit !important;
}

.token-input-dropdown-facebook ul {   
overflow: auto;
max-height: 230px;
}
.tooltip1 .tooltiptext1 {
right: -186px;
}
.tooltiptext2 ul li:hover {
background-color: #3B5995 ;
  color: #fff !important;
}
.tooltiptext1 .test ul li:hover {
background-color: #3B5995 ;
  color: #fff !important;
}   


</style>
   
   
  
  
  
 <script>
        $(document).ready(function () {
		

        		 $('.datepicker').datepicker({
        			//dateFormat: "yyyy-MM-dd", 
        			startDate: new Date(),
        			 autoclose: true,
        		
        	});
        		 $('.datepicker').on('changeDate', function(ev){
        				$(this).datepicker('hide');
        			});
		  /* 	$('.timepicker').wickedpicker({now: '00:00',format:'hh:mm', twentyFour: false, title:
                    'Pick game time'}); */
		/* var nowDate = new Date();
        var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
		
	
	$('.datepicker').datepicker({ 
	startDate: today
	});
		
		 */
	
		});
        
        
        $(document).ready(function(){
        	var formatAMPMTime = function(date) {
        		  var hours = date.getHours();
        		  console.log(hours)
        		  var minutes = date.getMinutes();
        		  var ampm = hours >= 12 ? 'PM' : 'AM';
        		  hours = hours % 12;
        		  hours = hours ? hours : 12; // the hour '0' should be '12'
        		  minutes = minutes < 10 ? '0'+minutes : minutes;
        		  hours = hours < 10 ? '0'+hours : hours ;
        		  var strTime = hours + ':' + minutes + ampm;
        		  return strTime;
        		}
        	
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
        	
        	
        			var date = "${eventTime}";
        		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
        		var gettingFromServer= new Date(date);
        		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
        		var timeToSend = formatAMPMTime(gettingFromServer);
        		var dateToSend = formatDate(gettingFromServer);
        		//$("#time").val(timeToSend);
        		$("#date").val(dateToSend);    
        		
        		
        		/* function validateHourInput(){
		
		var hour = parseInt($("#hourValue").val());
		var max = 12;
		//alert("Invalid"+hour);
		var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
		if(hour > max){
		//alert("Invalid");
		$("#timeError").text("Please enter valid game time");
		}else if(numberRegex.test($("#hourValue").val()) != true){
		$("#timeError").text("Please enter valid game time");
		}else{
		//alert("valid");
		$("#timeError").text("");
		}
		
		
		}
       function validateMinuteInput(){
       var minute = parseInt($("#minuteValue").val());
       var max = 60;
       var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
       //alert("Invalid"+min);
		if(minute > max){
		//alert("Invalid Minute");
		$("#timeError").text("Please enter valid game time");
		}else if(numberRegex.test($("#minuteValue").val()) != true){
		$("#timeError").text("Please enter valid game time");
		}else{
		//alert("valid Minute");
		$("#timeError").text("");
		}
		
		if(numberRegex.test($("#hourValue").val()) != true){
		$("#timeError").text("Please enter valid game time");
		}
       } */   		       		
        		
        });
       
   </script>
 

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
 <%@ include file="LeaugeManagementSideMenu.jsp" %>

      <script>
        $(document).ready(function () {
         var ampm;
        var formatTime = function(date) {
                  
        		  var hours = date.getHours();
        		  console.log(hours)
        		  var minutes = date.getMinutes();
        		  ampm = hours >= 12 ? 'PM' : 'AM';
        		  hours = hours % 12;
        		  hours = hours ? hours : 12; // the hour '0' should be '12'
        		  minutes = minutes < 10 ? '0'+minutes : minutes;
        		  hours = hours < 10 ? '0'+hours : hours ;
        		  var strTime = hours + ':' + minutes;
        		  
        		  $("#hourValue").val(hours);
        		  $("#minuteValue").val(minutes);
        		  $('#timeMode option[value='+ampm+']').prop('selected', true);
        		 
        		  return strTime;
        		};
        var date1 = "${eventTime}";
       
        		    var offset1 = new Date().getTimezoneOffset() * 60 * 1000;
        		var gettingFromServer1= new Date(date1);
        		gettingFromServer1 = new Date(gettingFromServer1.valueOf() - offset1);	
        var timeToSend = formatTime(gettingFromServer1);
       
        
            		/*  $('.timepicker').wickedpicker({now: ''+timeToSend+'',format:'hh:mm', twentyFour: false, title:
                    'Pick game time'}); */
                    $("#time").val(timeToSend+" "+ampm);
                    
                    
                    
        });
       
   </script>
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Amend Schedule</h1>
                  <%-- <table>
                            	<thead>
                                <tr>
                                <th>S.No</th>
                                	<th>Trophy</th>
                                    <th>Game Date</th>
                                    <th>Home Team</th>
                                    <th>Away Team</th>
                                    <th>Game Type</th>
                                    <th>Ground</th>
                                    <th>Umpire</th>
                                    <th>Scorer</th>
                                    <th style="width:60px;">Action</th>
                                    </tr>
                                    </thead>
                                    
                                    
                                    <tbody>
                                    <c:forEach var="tourDetails" items="${tournamentList}" varStatus="loop">
                                    <tr>
                                    	<td>${loop.count}</td>
                                       <td>${tourDetails.tournamentName}</td>
                                        <td><fmt:formatDate value="${tourDetails.gameDate}" pattern="MM/dd/yyyy"  /></td>
                                        <td><a href="${pageContext.request.contextPath}/${tourDetails.homeTeamName}/board/${tourDetails.homeTeamId}">${tourDetails.homeTeamName}</a></td>
												<td><a href="${pageContext.request.contextPath}/${tourDetails.awayTeamName}/board/${tourDetails.awayTeamId}">${tourDetails.awayTeamName}</a></td>
                                        <td>${tourDetails.gameName}</td>
                                        <td>${tourDetails.groundName}</td>
                                        <td>
                                        <div>
                                        <c:forEach var ="umpire" items="${tourDetails.umpireNamesList}" varStatus="loop">   
                                         <span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}">${umpire.umpireName}</a><c:if test="${!loop.last}">,</c:if></span>
                                         
                                       <span style="background-color: grey; border-radius: 3px;">${umpire.umpireName}<br></span>
                                        </c:forEach>
                                       </div>
                                        
                                       <!--  <a href="#" class="pull-right" title="">Assign</a></td> -->
                                        
                                        <td>
                                        <div>
                                        <c:forEach var ="scorer" items="${tourDetails.scorerNamesList}" varStatus="loop">
                                         <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        ${scorer.scorerName}</a> <c:if test="${!loop.last}">,</c:if></span>
                                         
                                 
                                        </c:forEach>
                                        </div>
                                        
                                        <c:choose>
												<c:when test="${tourDetails.status == 'Completed'}">
												<td align="center" ><a href="javascript:void(0)" onclick="showScoreCard('${tourDetails.tournamentSchedulerId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
												</c:when>
												<c:otherwise>
												
												<td class="alignCenter"><a href="javascript:void(0)"
													onclick="editSchedule('${tourDetails.tournamentSchedulerId}','${tourDetails.tournamentId}')"
													title="Edit"><i class="fa fa-pencil editIcon"></i></a> <a
													href="javascript:void(0)"
													onclick="deleteSchedule('${tourDetails.tournamentSchedulerId}')"
													title="Delete"><i class="fa fa-trash-o deleteIcon"></i></a>
												</td>
												
												</c:otherwise>
												</c:choose>
                                  
                                   </tr>
                                   </c:forEach>
                              </tbody>
                            </table> --%>
                            
                            
                            <div class="col-md-12 alignCenter Drobox noPadding">
                            	
                               <div class="tBox"> 
                               <label for="email">Date & Time</label>
									<input type="text" class="form-control fomtexbox datepicker calIconImg" placeholder="Date" id="date"  value="" onfocus="makeReadonly()" style="width: 20%;" />
									<!-- <i class="fa fa-calendar calIcon"></i> -->
                              <div class="dateandtime-holder">
                             
                              <input type="text" id="hourValue" name="hourValue" placeholder="Hour"  onblur="validateHourInput()"  />
                              <input type="text" id="minuteValue" name="minuteValue" placeholder="Minutes"  onblur="validateMinuteInput()"  />
                               <select id="timeMode">
                              <option value="AM">AM</option>
                              <option value="PM">PM</option>
                              </select>
                              <input type="hidden" id="time" name ="gameTime" />
                               <input type="hidden" id="BoardLatLong" value="${BoradInfo.latlang}">
                               <input type="hidden" id="scheduleCreatedDate" name="scheduleCreatedDate">
                              </div>
                                <div id="timeError" class="createschedulError"></div>
                                <input type="hidden" id="timeZone" name="timeZone" value="">
                            <!--   <i class="fa fa-calendar calIcon"></i> -->
                                </div>
                                
                                
                                
                                
                                <div class="amdSbox">
									<label for="email">Select Game Type</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="gameType" name="gameId">
												<option value="0">Select Game Type</option>
													<c:forEach var="gameType" items="${gameTypeList}">
												<c:choose>
												<c:when test="${schedulerDetails.gameId == gameType.gameId }">
												<option value="${gameType.gameId}" selected>${gameType.gameName}</option>
												</c:when>
												<c:otherwise>
												<option value="${gameType.gameId}">${gameType.gameName}</option>
												</c:otherwise>
												
												</c:choose>
												</c:forEach>
												
											</select>
											<div class="out"></div>
										</div>
										<span id=gameTypeError class="createschedulError"></span>
									</div> 
                                
                                
						<div class="tBox"> 
                               <label for="email">Tournament Name</label>
									<input type="text" class="form-control " placeholder="" id="tournament"  value="${tournamentName}" readonly />

                                </div>
                                <div class="amdSbox"> 
                                <label for="email">Select Home Team</label> 
                                <div class="selectdiv">
                                    <select class="selectboxdiv" id="teamSelectBoxDIv" onchange="teamValidation();">
                                    <option value="0">Select Team Board</option>	
                                   <c:forEach var="team" items="${teamList}">
                                   <c:choose>
                                         <c:when test="${schedulerDetails.homeTeamId == team.boardId}">
                                        <option value="${team.boardId}" selected>${team.boardName} </option>  
                                       </c:when>
                                       <c:otherwise>
                                        <option value="${team.boardId}" >${team.boardName} </option> 
                                       </c:otherwise>
                                       </c:choose>
                                   
                                  <%--  <option value="${team.boardId}">${team.boardName}</option> --%>
                                   </c:forEach>	
                                    </select>
                                    <div class="out"></div>    
                                </div>
                                <span id="homeTeamError" class="createschedulError"></span>
                                </div>
                                
                                <div class="amdSbox"> 
                                 <label for="email">Select Away Team</label> 
                                    <div class="selectdiv">
                                       <select class="selectboxdiv" id="teamSelectBoxDIv1" onchange="awayteamValidation();">
                                    <option value="0">Select Team Board</option>	
                                  <c:forEach var="teams" items="${teamList}">
                                   <c:choose>
                                         <c:when test="${schedulerDetails.awayTeamId == teams.boardId}">
                                        <option value="${teams.boardId}" selected>${teams.boardName} </option>  
                                       </c:when>
                                       <c:otherwise>
                                        <option value="${teams.boardId}" >${teams.boardName} </option> 
                                       </c:otherwise>
                                       </c:choose>
                                   
                                  <%--  <option value="${team.boardId}">${team.boardName}</option> --%>
                                   </c:forEach>	
                                    </select>
                                        <div class="out"></div>    
                                    </div>
                                    <span id="awayTeamError" class="createschedulError"></span>
                                </div>
                                
                                <div class="amdSbox"> 
                                 <label for="email">Select Ground</label> 
                                    <div class="selectdiv">
                                         <select class="selectboxdiv" id="groundSelectBoxDiv1">
                                    <option value="0">Select Ground</option>	
                                   <c:forEach var="ground" items="${groundList}">
                                   
                                   <c:choose>
                                         <c:when test="${schedulerDetails.groundId == ground.groundId}">
                                        <option value="${ground.groundId}" selected>${ground.groundName} </option>  
                                       </c:when>
                                       <c:otherwise>
                                        <option value="${ground.groundId}" >${ground.groundName}</option> 
                                       </c:otherwise>
                                       </c:choose>
                                  <%--  <option value="${ground.groundId}">${ground.groundName}</option> --%>
                                   </c:forEach>	
                                    </select>
                                        <div class="out"></div>    
                                    </div>
                                    	<span id="groundError" class="createschedulError"></span>
                                </div>
                                
                             
                                <div class="tBox"> 
                                 <label for="email">Select Umpire</label> 
                                <input type="text" class="form-control" placeholder="" id="umpireId">
                                <input type="hidden" id="hiddenUmpireId">
                                <span id="error" class="createschedulError"></span>
                                </div>
                                
                              	<div class="tBox">
                              	<label for="email">App Scorer</label> 

										<input type="text" class="form-control" placeholder="Scorer" id="scorerId">
										<input type="hidden" id="hiddenScorerId">
										<span id="error1" class="createschedulError"></span>

									</div>
									
									<div class="tBox">
 													<label for="email">Portal Scorer</label> 
										<input type="text" class="form-control" placeholder="Scorer" id="portalscorerId">
										<input type="hidden" id="portalhiddenScorerId" >
										<div id="error1" class="createschedulError"></div>
	
									</div>
                             
 						<div class="Addbtn"> 
                               <input type="hidden" id="gameDateforMail" name="gameDateforMail">
									
									<input type="button" value="cancel" class="btn btn-default blueBtn pull-right" onclick="Gobackfunction()">
									<button style="margin-right: 10px;" type="submit" class="btn btn-default blueBtn pull-right" onclick="addFunction()">Save</button>
								<!-- 	<button type="submit" class="btn btn-default blueBtn pull-right" onclick="cancelFunction()">Cancel</button>  -->
                               
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
</div>
</section>
<%@ include file ="Footer.jsp" %>
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

   <!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
    <script src="https://momentjs.com/downloads/moment.js"></script>
	 <script src="https://momentjs.com/downloads/moment-timezone-with-data.js"></script>
   <!--Gallery-->
  
   
<script>
var umpireArray=[];
var scorerArray=[];
var portalscorerArray=[];
$(document).ready(function(){

	

		var umpireId = ${previousUmpireIds};
	
	
	
	if(umpireId.length !=0 ){
	for(var i=0; i< umpireId.length; i++){
		umpireArray.push(umpireId[i]);
	}
	}

	$('#hiddenUmpireId').val(umpireArray);
	
	
	 var scorerId = ${previousScorerId};
	 
	 if(scorerId.length != 0){
		 for(var j=0; j< scorerId.length; j++){
			 scorerArray.push(scorerId[j]); 
		 } 
	 }
	
	
	
	$("#hiddenScorerId").val(scorerArray);
	
	console.log("scorer array ++++++++++"+scorerArray);
	
	var hiddenID = $("#hiddenScorerId").val();
	console.log("hidden scorer id :"+hiddenID);
	
	
	
	var portalscorerid=${portalscorerIdlist};
	if(portalscorerid.length != 0){
		for(var j=0;j<portalscorerid.length;j++)
			{
			portalscorerArray.push(portalscorerid[j]);
			}
	}
	
	$("#portalhiddenScorerId").val(portalscorerArray);
	
	
	
	var exArr = [];
    var umpireNameList = ${umpireNameList};
    console.log("umpireNameList -------------------"+umpireNameList);
    for (var key in umpireNameList) {
    	  var item = umpireNameList[key];
    	  console.log(item);
    	  exArr.push(item.name);
    	  console.log("exArr: "+exArr);
    	 /*  for (var key2 in item) {
    	    alert(item[key2]);
    	  } */
    	}
    
    var scorerNameList  = ${scorerNameList};
    console.log("scorer prepopulat ---------"+scorerNameList);
    
	var umpireCheck =" ${umpireCheck}";
	
	
	var i=0;
	var m=0;
	if(umpireCheck ==  0){
	

$("#umpireId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
	resultsFormatter: function(item){ 
		
		var citystate="";
		if(item.city=="UNKNOWN"&& item.state=="UNKNOWN"||item.city==""&&item.state==""||item.city=="null"&&item.state=="null"||item.city==null&&item.state==null){
			citystate= item.city;
    	}else{
    		citystate= item.city+','+item.state; 
    	}
		
		
		
		
		
var htm="";
		
		
		console.log(item.teamboardlist.length);
		i++;
		if(item.teamboardlist.length > 0)
        {
      	  
      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
  		  

    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
           
            for(var j in item.teamboardlist){
          	  
            var teamlist=item.teamboardlist[j];

            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
            
            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
            
            
            if(leagueboardlist!=null && leagueboardlist.length > 0){
          	 
          		/*   htm +=" afflicated to "; */
          		  
          		  
          		  htm +=" <div class='tooltip2' onmouseover=getpositiontext("+m+") id=leagues"+m+">Leagues";
          		  htm +="<span id=showtooltext"+m+" class='tooltiptext2'><ul>";
          		  for(var k in leagueboardlist){
          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
          		  
          		  }
          		  m++;
          			  htm +="</ul></span>";
          		  htm +="</div>";
            }
            
            htm +="</li></ul>";
            
            }
            htm +="</div>";
            
            htm +="</div>";
  		  htm +="</div>";
            
        }else{
      	  
        // no record
      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
  		  

    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
           

            htm +="<ul><li style='text-align: center;'>No Details</li></ul>";
           
            htm +="</div>";
            
            htm +="</div>";
  		  htm +="</div>";
        
        }
		
		
		
		
		return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + " "+citystate+"</div></div>"+htm+"</li>" },
	prePopulate:umpireNameList,
	//prePopulate: $('#umpireId').data('name'),
	preventDuplicates : true,
	propertyToSearch: "fullName",
	theme: "facebook",   
	onAdd: function (item) {
	
		umpireArray.push(item.id);
		$('#hiddenUmpireId').val(umpireArray);
		umpireFunction();
	},
	onDelete: function (item) {
		console.log("inside");
    	var index = umpireArray.indexOf(item.id);
		if (index >= 0) {
			umpireArray.splice( index, 1 );
		}
		$('#hiddenUmpireId').val(umpireArray);
		umpireFunction();
},
onResult: function (item) {
    if($.isEmptyObject(item)){
        return [{id:'0',name: "No Results Found"}];
  }else{
        return item;
  }
}
});
	}
	else{
		//var list =${umpireListForPrePopulate};

		 var bid = "${boardId}";
		
		$("#umpireId").tokenInput(ctx+"/umpireCheckList/"+bid,{
			resultsFormatter: function(item){ 
				
				
				var htm="";
				
				
				console.log(item.teamboardlist.length);
				i++;
				var m=0;
				if(item.teamboardlist.length > 0)
		        {
		      	  
		      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
		  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
		  		  

		    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
		           
		            for(var j in item.teamboardlist){
		          	  
		            var teamlist=item.teamboardlist[j];

		            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
		            
		            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
		            
		            
		            if(leagueboardlist!=null && leagueboardlist.length > 0){
		          	 
		          		/*   htm +=" afflicated to "; */
		          		  
		          		  
		          		  htm +=" <div class='tooltip2' onmouseover=getpositiontext("+m+") id=leagues"+m+">Leagues";
		          		  htm +="<span id=showtooltext"+m+" class='tooltiptext2'><ul>";
		          		  for(var k in leagueboardlist){
		          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
		          		  
		          		  }
		          		  m++;
		          			  htm +="</ul></span>";
		          		  htm +="</div>";
		            }
		            
		            htm +="</li></ul>";
		            
		            }
		            htm +="</div>";
		            
		            htm +="</div>";
		  		  htm +="</div>";
		            
		        }else{
		      	  
		        // no record
		      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
		  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
		  		  

		    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
		           

		            htm +="<ul><li style='text-align: center;'>No Details</li></ul>";
		           
		            htm +="</div>";
		            
		            htm +="</div>";
		  		  htm +="</div>";
		        
		        }
				
				
				return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + "</div></div>"+htm+"</li>" },
			prePopulate:umpireNameList,
			//prePopulate: $('#umpireId').data('name'),
			preventDuplicates : true,
		    propertyToSearch: "fullName",
			theme: "facebook",   
			onAdd: function (item) {
		
				umpireArray.push(item.id);
				$('#hiddenUmpireId').val(umpireArray);
				umpireFunction();
			},
			onDelete: function (item) {
				
				var index = umpireArray.indexOf(item.id);
				if (index >= 0 ) {
				
					umpireArray.splice( index, 1 );
					
				}
				$('#hiddenUmpireId').val(umpireArray);
				umpireFunction();
		},
		onResult: function (item) {
		    if($.isEmptyObject(item)){
		        return [{id:'0',name: "No Results Found"}];
		  }else{
		        return item;
		  }
		}
		});
		
	}
	
	
	$("#scorerId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
		resultsFormatter: function(item){ 
			
			var citystate="";
			if(item.city=="UNKNOWN"&& item.state=="UNKNOWN"||item.city==""&&item.state==""||item.city=="null"&&item.state=="null"||item.city==null&&item.state==null){
				citystate= item.city;
	    	}else{
	    		citystate= item.city+','+item.state; 
	    	}
			
			
			var htm="";
			
			
			console.log(item.teamboardlist.length);
			i++;
			var m=0;
			if(item.teamboardlist.length > 0)
	        {
	      	  
	      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
	  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
	  		  

	    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
	           
	            for(var j in item.teamboardlist){
	          	  
	            var teamlist=item.teamboardlist[j];

	            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
	            
	            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
	            
	            
	            if(leagueboardlist!=null && leagueboardlist.length > 0){
	          	 
	          		/*   htm +=" afflicated to "; */
	          		  
	          		  
	          		  htm +=" <div class='tooltip2' onmouseover=getpositiontext("+m+") id=leagues"+m+">Leagues";
	          		  htm +="<span id=showtooltext"+m+" class='tooltiptext2'><ul>";
	          		  for(var k in leagueboardlist){
	          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
	          		  
	          		  }
	          		  m++;
	          			  htm +="</ul></span>";
	          		  htm +="</div>";
	            }
	            
	            htm +="</li></ul>";
	            
	            }
	            htm +="</div>";
	            
	            htm +="</div>";
	  		  htm +="</div>";
	            
	        }else{
	      	  
	        // no record
	      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
	  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
	  		  

	    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
	           

	            htm +="<ul><li style='text-align: center;'>No Details</li></ul>";
	           
	            htm +="</div>";
	            
	            htm +="</div>";
	  		  htm +="</div>";
	        
	        }
			
			
			
			
			return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + " "+citystate+"</div></div>"+htm+"</li>" },
		prePopulate:scorerNameList,
		preventDuplicates: true,
		propertyToSearch: "fullName",
		theme: "facebook",   
		onAdd: function (item) {
			scorerArray.push(item.id);
			$('#hiddenScorerId').val(scorerArray);
			scorerFunction();
		},
		onDelete: function (item) {
	    	var index = scorerArray.indexOf(item.id);
	    	
	    	if (index >= 0) {
				scorerArray.splice( index, 1 );
			}
			$('#hiddenScorerId').val(scorerArray);
			scorerFunction();
	},onResult: function (item) {
	    if($.isEmptyObject(item)){
	        return [{id:'0',name: "No Results Found"}];
	  }else{
	        return item;
	  }
	}
	});
	
	
	
	
// portal
	var portalscorerNameList  = ${portalscorerNameList};
		$("#portalscorerId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
		resultsFormatter: function(item){ 
			
			var citystate="";
			if(item.city=="UNKNOWN"&& item.state=="UNKNOWN"||item.city==""&&item.state==""||item.city=="null"&&item.state=="null"||item.city==null&&item.state==null){
				citystate= item.city;
	    	}else{
	    		citystate= item.city+','+item.state; 
	    	}
			
			
			var htm="";
			
			
			console.log(item.teamboardlist.length);
			i++;
			var m=0;
			if(item.teamboardlist.length > 0)
	        {
	      	  
	      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
	  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
	  		  

	    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
	           
	            for(var j in item.teamboardlist){
	          	  
	            var teamlist=item.teamboardlist[j];

	            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
	            
	            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
	            
	            
	            if(leagueboardlist!=null && leagueboardlist.length > 0){
	          	 
	          		/*   htm +=" afflicated to "; */
	          		  
	          		  
	          		  htm +=" <div class='tooltip2' onmouseover=getpositiontext("+m+") id=leagues"+m+">Leagues";
	          		  htm +="<span id=showtooltext"+m+" class='tooltiptext2'><ul>";
	          		  for(var k in leagueboardlist){
	          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
	          		  
	          		  }
	          		  m++;
	          			  htm +="</ul></span>";
	          		  htm +="</div>";
	            }
	            
	            htm +="</li></ul>";
	            
	            }
	            htm +="</div>";
	            
	            htm +="</div>";
	  		  htm +="</div>";
	            
	        }else{
	      	  
	        // no record
	      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
	  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
	  		  

	    		htm +="<div id='dropdown"+item.userId+"' class='test' >";
	           

	            htm +="<ul><li style='text-align: center;'>No Details</li></ul>";
	           
	            htm +="</div>";
	            
	            htm +="</div>";
	  		  htm +="</div>";
	        
	        }
			
			
			
			return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + " "+citystate+"</div></div>"+htm+"</li>" },
			prePopulate:portalscorerNameList,
			preventDuplicates: true,
		propertyToSearch: "fullName",
		theme: "facebook",   
		onAdd: function (item) {
			portalscorerArray.push(item.id);
			$('#portalhiddenScorerId').val(portalscorerArray);
			scorerFunction();
		},
		onDelete: function (item) {
	    	var index = portalscorerArray.indexOf(item.id);
			if (index >= 0) {
				portalscorerArray.splice( index, 1 );
			}
			$('#portalhiddenScorerId').val(portalscorerArray);
			scorerFunction();
	},onResult: function (item) {
	    if($.isEmptyObject(item)){
	        return [{id:'0',name: "No Results Found"}];
	  }else{
	        return item;
	  }
	}
	});
	
	
	
	
	
	

});


function addFunction(){
	var date = dateFunction();
	console.log(date);
	
	timeFunction();
	
	 var home = homeTeam();
	 console.log(home);
	var away  = awayTeam();
	console.log(away);
	
    var ground = groundFunction();
    console.log(ground);
    
	var umpire = umpireFunction();
	console.log(umpire);
	
	var scorer  = scorerFunction();
	console.log(scorer);
	
	gameTypeErrorFunction();
	
	if(dateFunction() == true && timeFunction() == true && gameTypeErrorFunction() == true && homeTeam() == true && awayTeam() == true && groundFunction() == true && umpireFunction() == true && scorerFunction() == true ){
		console.log("inside if");
	     var hour = $("#hourValue").val();
         var min = $("#minuteValue").val();
         var timeMode = $("#timeMode").val();
         $("#time").val(hour+":"+min+" "+timeMode);
		//afterValidation();
		addFunction1();
	return true;
	
	}else{
		console.log("err");
		//afterValidation();
		return false;
	}
}


/* function addFunction1(){
	var latlong=$("#BoardLatLong").val();
	  var timestamp=Math.round(+new Date()/1000);
	
	var SystemDate = new Date(timestamp * 1000);
	console.log(SystemDate );
	
	 var url = "https://maps.googleapis.com/maps/api/timezone/json?location="+latlong+"&timestamp=" + timestamp + "&sensor=false";
	    $.ajax({
	      url: url,
	      async: false,
	    }).done(function(response) {
	      console.log(JSON.stringify(response));
	      
	      
	      var splitedDate=SystemDate.toString().split("GMT")[0];
	      
	      
	      
	       var newYork    = moment.tz(SystemDate, response.timeZoneId).format('z');
	       
	       var date1=$("#date").val();
	       var time1=$("#time").val();
	      var selecteddate=date1+" "+time1;
	      console.log(selecteddate+" "+newYork); 
	      console.log(new Date(selecteddate+" "+newYork));
           var returndate=new Date(selecteddate+" "+newYork);
           var dateString=returndate.getFullYear()+"-"+formattime(returndate.getMonth()+1)+"-"+formattime(returndate.getDate())+" "+formattime(returndate.getHours())+":"+formattime(returndate.getMinutes())+":"+formattime(returndate.getSeconds());
           $("#scheduleCreatedDate").val(dateString);
           console.log(dateString);
           
           afterValidation();
	    });
	    
}
 */

 function addFunction1(){
 	var latlong=$("#BoardLatLong").val();
 	  var timestamp=Math.round(+new Date()/1000);
 	
 	var SystemDate = new Date(timestamp * 1000);
 	console.log(SystemDate );
 	
 	 var url = "https://maps.googleapis.com/maps/api/timezone/json?location="+latlong+"&timestamp=" + timestamp + "&sensor=false";
 	    $.ajax({
 	      url: url,
 	      async: false,
 	    }).done(function(response) {
 	      console.log(JSON.stringify(response));
 	      
 	      
 	      var splitedDate=SystemDate.toString().split("GMT")[0];
 	      
 	      
 	      
 	       var newYork    = moment.tz(SystemDate, response.timeZoneId).format('z');
 	       
 	       var date1=$("#date").val();
 	       var time1=$("#time").val();
 	      var selecteddate=date1+" "+time1;
 	      console.log(selecteddate+" "+newYork); 
 	    
            var currenttimezone=$("#timeZone").val();      

            var dateprev=moment(selecteddate,'MM/DD/YYYY h:mm A')
            console.log(moment(dateprev).format('YYYY-MM-DD HH:mm'));
            
         var currenttimeformat= moment.tz(moment(dateprev).format('YYYY-MM-DD HH:mm'), response.timeZoneId);
         
         console.log("Input :"+currenttimeformat.format());
         
         
         
         console.log(currenttimeformat.tz(currenttimezone));
            var currentdatezonechangeddate=currenttimeformat.clone().tz(currenttimezone);
            console.log(currentdatezonechangeddate.format());
            
            var returndate=new Date(currentdatezonechangeddate.format());
            
            var dateString=returndate.getFullYear()+"-"+formattime(returndate.getMonth()+1)+"-"+formattime(returndate.getDate())+" "+formattime(returndate.getHours())+":"+formattime(returndate.getMinutes())+":"+formattime(returndate.getSeconds());
            $("#scheduleCreatedDate").val(dateString);
            console.log(dateString);
            
            /* To set time With Zone */
            
            var selectedtime=$("#time").val();
            $("#time").val(selectedtime+" ("+newYork+")");
            var dateformail=new Date(selecteddate);
            var dateString1=dateformail.getFullYear()+"-"+formattime(dateformail.getMonth()+1)+"-"+formattime(dateformail.getDate())+" "+formattime(dateformail.getHours())+":"+formattime(dateformail.getMinutes())+":"+formattime(dateformail.getSeconds());
            console.log("Jithin doubt :"+dateformail);
            $("#gameDateforMail").val(dateString1);
            
            afterValidation();
            
 	    });
 	    
 }
 
 function formattime(n)
{
	return n < 10 ? '0'+n : n;
	}



function afterValidation(){
	var date  = $("#date").val();
	var teamId1 = $("#teamSelectBoxDIv").val();
	var teamId2 = $("#teamSelectBoxDIv1").val();
	var groundId = $("#groundSelectBoxDiv1").val();
	var userId = $("#hiddenUmpireId").val();
    var boardId = "${boardId}";
    var tournamentId = "${tournamentId}";
    var tournamentSchedulerId = "${tournamentSchedulerId}";
    var scorerId = $("#hiddenScorerId").val();
    var gameId = $("#gameType").val();
    var gameTime = $("#time").val();
    var timeZone = $("#timeZone").val();
    var Converteddate  = $("#scheduleCreatedDate").val();
    var gameDateforMail1=$("#gameDateforMail").val();
    var portalscorerid = $("#portalhiddenScorerId").val();
    console.log(gameId);
    
	var bean = {
			gameDateStr :date,
		    homeTeamId : teamId1,
			awayTeamId : teamId2,
			groundId : groundId,
			userId : userId,
			createdBy : boardId,
			modifiedBy : boardId,
			tournamentId : tournamentId,
			tournamentSchedulerId : tournamentSchedulerId,
			scorerId : scorerId,
			gameId : gameId,
			gameTime : gameTime,
			timeZone : timeZone,
			scheduleCreatedDate :Converteddate,
			gameDateforMail :gameDateforMail1,
			portalscorerId : portalscorerid,
	}
	//alert(JSON.stringify(bean));
	//alert(JSON.stringfy(bean));
	
	$("#loading").show();
	
	$.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/updateSchedulerDetails",
	data:JSON.stringify(bean),
	contentType:"application/json; charset=utf-8",
	success: function(res){
		if(res == 'success'){
			
			if("${FromLanding}" == "Yes")
				{
				window.location.href = "${pageContext.request.contextPath}/CreateScheduleLanding/boardId/"+boardId;
				}else{
			window.location.href = "${pageContext.request.contextPath}/SchedulerList/boardId/"+boardId;
		}}
	}, 
	error:function(err){
		alert(err);
	}
		
	});
}

function editSchedule(id,tourId){
	var boardId = "${boardId}";
	window.location.href = "${pageContext.request.contextPath}/editScheduler/boardId/"+boardId+"/tournamentSchedulerId/"+id+"/tournamentId/"+tourId;
	
}

function deleteSchedule(id){
	var bean = {
			tournamentSchedulerId : id
	}
	var boardId = "${boardId}";
	
	$.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/deleteScheduler",
	data:JSON.stringify(bean),
	contentType:"application/json;charset=utf-8",
	success : function(res){
		if(res == 'success'){
			//alert(res);
			window.location.href = "${pageContext.request.contextPath}/SchedulerList/boardId/"+boardId;
		}
	},
	error:function(err){
		alert(err);
	}
	
	})
	
}

function showScoreCard(id){
	 var boardId ="${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
}
function makeReadonly(){
	$("#date").blur();
	$("#time").blur();
}


function Gobackfunction()
{
	var boardId = "${boardId}";
	if("${FromLanding}" == "Yes")
	{
	window.location.href = "${pageContext.request.contextPath}/CreateScheduleLanding/boardId/"+boardId;
	}else{
	window.history.back();
	}
}
</script>
   
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
<!-- <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>    -->
   
   <script type="text/javascript"  src="${pageContext.request.contextPath}/js/bootstrap-clockpicker.min.js"></script>

<script type="text/javascript">


$('.clockpicker').clockpicker({
	donetext: 'Done',
	twelvehour:true

	
	});
</script>

 <script>
  		var timeZone = jstz.determine().name();
  		$("#timeZone").val(timeZone);
			
  </script>

   
</body>
</html>