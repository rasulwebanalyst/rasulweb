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

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>



  
   
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
padding: 5px 0;
position: absolute;
z-index: 1;
margin-top: 10px;
font-size: 11px;
opacity: 0;
transition: opacity 1s;
white-space: nowrap;
right: 0;
}

.tooltip2 .tooltiptext2::after {
    content: "";
position: absolute;
top: 0;
left: 50%;
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
background-color:  #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 5px 0;
position: absolute;
z-index: 1;
right: -177px;
margin-top: -10px;
opacity: 0;
transition: opacity 1s;
box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
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

</style>


</head>
<body>

<%@ include file="CSCommon.jsp" %>
 <%@ include file="BoardHeader.jsp" %>
 
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
      		  var strDate = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear();
      		  return strDate;
      		};
        	
        			var date = "${eventTime}";
        		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
        		var gettingFromServer= new Date(date);
        		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
        		var timeToSend = formatAMPMTime(gettingFromServer);
        		var dateToSend = formatDate(gettingFromServer);
        		$("#time").val(timeToSend);
        		$("#date").val(dateToSend);
        		
        		
        });
   </script>
 

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
		          <h1 class="">Create / Amend Schedule</h1>
                 <%--  <table>
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
                                         
                                     
                                        </c:forEach>
                                       </div>
                                        
                                    
                                        
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
												
												<td class="alignCenter"><a href="#"
													onclick="editSchedule('${tourDetails.tournamentSchedulerId}','${tourDetails.tournamentId}')"
													title="Edit"><i class="fa fa-pencil editIcon"></i></a> <a
													href="#"
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
                               <label for="email">Date</label>
									<input type="text" class="form-control fomtexbox datepicker calIconImg" placeholder="Date" id="date" name="gameDateStr" value="" onfocus="makeReadonly()"/>
									<!-- <i class="fa fa-calendar calIcon"></i> -->
                              <span id="dateError" class="createschedulError"></span>
                             <!--  <i class="fa fa-calendar calIcon"></i> -->
                                </div>
                                
                                <div class="tBox ">
									<label for="email">Time</label>
                            
                           <input type="text" id="time" name="gameTime" class="input-group form-control fomtexbox clockIconImg timepicker" placeholder="Pick game time" onfocus="makeReadonly()" value="" />
                                  <!-- <input type="text" id="time" name ="gameTime" class="input-group form-control fomtexbox clockIconImg clockpicker" value="" onfocus="makeReadonly()"> -->
                                <span id="timeError" class="createschedulError"></span>
                                <!-- <span class="add-on datetime">
                                      <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="fa fa-clock-o eve_calIcon" >
                                      </i>
                                    </span>
                 -->
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
									<input type="text" class="form-control " placeholder="" id="tournament" name="tournamentId"  value="${tournamentName}" readonly />

                                </div>
                                <div class="amdSbox"> 
                                <label for="email">Select Home Team</label> 
                                <div class="selectdiv">
                                    <select class="selectboxdiv" id="teamSelectBoxDIv" name="homeTeamId">
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
                                       <select class="selectboxdiv" id="teamSelectBoxDIv1" name="awayTeamId">
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
                                         <select class="selectboxdiv" id="groundSelectBoxDiv1" name="groundId">
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
                                <input type="hidden" id="hiddenUmpireId" name="userId">
                                <span id="error" class="createschedulError"></span>
                                </div>
                                
                              	<div class="tBox">
                              	<label for="email">Select Scorer</label> 

										<input type="text" class="form-control" placeholder="Scorer" id="scorerId">
										<input type="hidden" id="hiddenScorerId" name="scorerId">
										<span id="error1" class="createschedulError"></span>

									</div>
                             
 						<div class="Addbtn"> 
                               
                               <input type="button" value="cancel" class="btn btn-default blueBtn pull-right" onclick="Gobackfunction()">
									<button style="margin-right: 10px;" type="submit" class="btn btn-default blueBtn pull-right" onclick="addFunction()">Save</button>
								<!-- 	<button type="submit" class="btn btn-default blueBtn pull-right" onclick="cancelFunction()">Cancel</button>  -->
                               
                                </div>
                              
                             

                          
                            </div>
                  
                  
                       </div>
                	</div>
            
          	
          </div>    
      </div>
           <input type="hidden" id="timeZone" name="timeZone" value="">
          
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
<!--File Upload-->

   <!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
   <!--Gallery-->
   
<script>
var umpireArray=[];
var scorerArray=[];
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
	
	var hiddenID = $("#hiddenScorerId").val();
	console.log("hidden scorer id :"+hiddenID);
	
	var exArr = [];
    var umpireNameList = ${umpireNameList};
    console.log(umpireNameList);
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
    console.log(scorerNameList);
    
	var umpireCheck =" ${umpireCheck}";
	if(umpireCheck ==  0){
	

$("#umpireId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
	resultsFormatter: function(item){ 
		
		
var htm="";
		
		
		console.log(item.teamboardlist.length);
		i++;
		if(item.teamboardlist.length > 0)
        {
      	  
      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
  		  

    		htm +="<div id='dropdown"+item.userId+"' class='' >";
           
            for(var j in item.teamboardlist){
          	  
            var teamlist=item.teamboardlist[j];

            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
            
            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
            
            
            if(leagueboardlist!=null && leagueboardlist.length > 0){
          	 
          		/*   htm +=" afflicated to "; */
          		  
          		  
          		  htm +=" <div class='tooltip2'>Leagues";
          		  htm +="<span class='tooltiptext2'><ul>";
          		  for(var k in leagueboardlist){
          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
          		  
          		  }
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
  		  

    		htm +="<div id='dropdown"+item.userId+"' class='' >";
           

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
	},
	onDelete: function (item) {
	
    	var index = umpireArray.indexOf(item.id);
		if (index >= 0) {
			
			umpireArray.splice( index, 1 );
			
		}
		$('#hiddenUmpireId').val(umpireArray);
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
				if(item.teamboardlist.length > 0)
		        {
		      	  
		      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
		  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
		  		  

		    		htm +="<div id='dropdown"+item.userId+"' class='' >";
		           
		            for(var j in item.teamboardlist){
		          	  
		            var teamlist=item.teamboardlist[j];

		            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
		            
		            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
		            
		            
		            if(leagueboardlist!=null && leagueboardlist.length > 0){
		          	 
		          		/*   htm +=" afflicated to "; */
		          		  
		          		  
		          		  htm +=" <div class='tooltip2'>Leagues";
		          		  htm +="<span class='tooltiptext2'><ul>";
		          		  for(var k in leagueboardlist){
		          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
		          		  
		          		  }
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
		  		  

		    		htm +="<div id='dropdown"+item.userId+"' class='' >";
		           

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
			},
			onDelete: function (item) {
			
				var index = umpireArray.indexOf(item.id);
				if (index >= 0 ) {
				
					umpireArray.splice( index, 1 );
					
				}
				$('#hiddenUmpireId').val(umpireArray);
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
			
			
			
			var htm="";
			
			
			console.log(item.teamboardlist.length);
			i++;
			if(item.teamboardlist.length > 0)
	        {
	      	  
	      	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
	  		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
	  		  

	    		htm +="<div id='dropdown"+item.userId+"' class='' >";
	           
	            for(var j in item.teamboardlist){
	          	  
	            var teamlist=item.teamboardlist[j];

	            htm +="<ul><li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
	            
	            var leagueboardlist=item.teamboardlist[j].leagueBoardList;
	            
	            
	            if(leagueboardlist!=null && leagueboardlist.length > 0){
	          	 
	          		/*   htm +=" afflicated to "; */
	          		  
	          		  
	          		  htm +=" <div class='tooltip2'>Leagues";
	          		  htm +="<span class='tooltiptext2'><ul>";
	          		  for(var k in leagueboardlist){
	          			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
	          		  
	          		  }
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
	  		  

	    		htm +="<div id='dropdown"+item.userId+"' class='' >";
	           

	            htm +="<ul><li style='text-align: center;'>No Details</li></ul>";
	           
	            htm +="</div>";
	            
	            htm +="</div>";
	  		  htm +="</div>";
	        
	        }
			
			
			
			return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + "</div></div>"+htm+"</li>" },
		prePopulate:scorerNameList,
		preventDuplicates: true,
		propertyToSearch: "fullName",
		theme: "facebook",   
		onAdd: function (item) {
			scorerArray.push(item.id);
			$('#hiddenScorerId').val(scorerArray);
		},
		onDelete: function (item) {
	    	var index = scorerArray.indexOf(item.id);
			if (index >= 0) {
				scorerArray.splice( index, 1 );
			}
			$('#hiddenScorerId').val(scorerArray);
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
	
		afterValidation();
	return true;
	
	}else{
		console.log("err");
		//afterValidation();
		return false;
	}
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
	}
	//alert(JSON.stringify(bean));
	//alert(JSON.stringfy(bean));
	$.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/updateSchedulerDetails",
	data:JSON.stringify(bean),
	contentType:"application/json; charset=utf-8",
	success: function(res){
		if(res == 'success'){
			window.location.href = "${pageContext.request.contextPath}/Scheduler-List/boardId/"+boardId;
		}
	}, 
	error:function(err){
		alert(err);
	}
		
	})
}

function editSchedule(id,tourId){
	var boardId = "${boardId}";
	window.location.href = "${pageContext.request.contextPath}/editSchedulerPublicProfile/boardId/"+boardId+"/tournamentSchedulerId/"+id+"/tournamentId/"+tourId;
	
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
			window.location.href = "${pageContext.request.contextPath}/Scheduler-List/boardId/"+boardId;
		}
	},
	error:function(err){
		alert(err);
	}
	
	})
	
}


function showScoreCard(id){
	 var boardId ="${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardPublicProfile/boardId/"+boardId+"/matchId/"+id;
}
function makeReadonly(){
	$("#date").blur();
	$("#time").blur();
}

function Gobackfunction()
{
	window.history.back();
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
