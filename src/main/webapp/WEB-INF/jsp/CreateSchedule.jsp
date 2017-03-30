<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="author" content="">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/token-input.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/token-input-facebook.css"
	type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/wickedpicker.css">
 
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
 <title>Cricket Social</title>
 
	<%@ include file="CSCommon.jsp" %>
	<%@ include file="BoardHeader.jsp"%>
  <script src="${pageContext.request.contextPath}/js/cricketSocial/createSchedule.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>
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
padding: 5px 0;
position: absolute;
z-index: 1;
margin-top: 10px;
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
		  $('.timepicker').wickedpicker({now: '00:00',format:'hh:mm', twentyFour: false, title:
                    'Pick game time'});
		/* var nowDate = new Date();
        var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
		
	
	$('.datepicker').datepicker({ 
	startDate: today
	});		
		 */
	
		});
		
		

   </script>

	<section class="middleContentBlock">
		<div class="profileBanner">
			<img src="${pageContext.request.contextPath}/images/innerBanner.png">
		</div>
		<div class="container">
			<div class="row">
				<!--Content Block-->
				<div class="col-md-12 middleContBlock noPadding">
					<div class="col-md-12 noPadding">

						
						<%@ include file="LeaugeManagementSideMenu.jsp"%>



						<div class="col-md-10">
							<div class="col-md-12 whiteBox">
								<h1 class="">Create Schedule</h1>
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
										
										</tr>
									</thead>


									<tbody>
										<c:forEach var="tourDetails" items="${tournamentList}" varStatus ="loop">
											<tr>
												<td>${loop.count}</td>
												<td>${tourDetails.tournamentName}</td>								
												<td><fmt:formatDate value="${tourDetails.gameDate}"
														pattern="MM/dd/yyyy" /></td>
												<td><a href="${pageContext.request.contextPath}/${tourDetails.homeTeamName}/board/${tourDetails.homeTeamId}">${tourDetails.homeTeamName}</a></td>
												<td><a href="${pageContext.request.contextPath}/${tourDetails.awayTeamName}/board/${tourDetails.awayTeamId}">${tourDetails.awayTeamName}</a></td>
												 <td>${tourDetails.gameName}</td>
												<td>${tourDetails.groundName}</td>
												<td>
													<div >
														<c:forEach var="umpire"
															items="${tourDetails.umpireNamesList }" varStatus="loop">
																<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}">${umpire.umpireName}</a><c:if test="${!loop.last}">,</c:if></span>
																
														</c:forEach>
														</div>
										
												</td>
												
												<td> 
												<div>
                                        <c:forEach var ="scorer" items="${tourDetails.scorerNamesList}" varStatus="loop">
                                        <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        ${scorer.scorerName}</a><c:if test="${!loop.last}">,</c:if></span>
                                        													
                                      
                                        </c:forEach>
                                        </div>
												

											</tr>
										</c:forEach>
									</tbody>
								</table> --%>


								<div class="col-md-12 alignCenter Drobox noPadding">
										<form id="createScheduleForm" method="post" action = "${pageContext.request.contextPath}/insertScheduleDetails.htm">
										
									<div class="tBox">
									<label for="email">Date & Time</label>
								<!-- 	<div class="input-append"> -->
									<input type="text" class="form-control fomtexbox datepicker calIconImg"
											placeholder="Pick game date" id="date" name="gameDateStr" onfocus="makeReadonly()" onchange="dateFunction()" style="width: 20%;">
											<!-- <div id="dateError" class="createschedulError"></div> -->
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
										<!-- <i class="fa fa-calendar calIcon"></i> -->
										<!-- </div> -->
									</div>
									
									<!-- <div class="tBox ">
								
                            
                          
                                 <input type="text" id="time" name ="gameTime" class="input-group form-control fomtexbox clockIconImg clockpicker" value="" placeholder="Pick game time" onchange="timeFunction()" onfocus="makeReadonly()"> -->
                                <!-- <input type="text" id="time" name="gameTime" class="input-group form-control fomtexbox clockIconImg timepicker" placeholder="Pick game time" onfocus="makeReadonly()" /> -->
                                                             
                                  <!--  <span class="add-on datetime">
                                      <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="fa fa-clock-o eve_calIcon" >
                                      </i>
                                    </span> 
                          </div> -->
									
									
									 <div class="amdSbox">
									<label for="email">Select Game Type</label> 
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
										<div id="gameTypeError" class="createschedulError"></div>
									</div> 



										<div class="amdSbox">
									<label for="email">Select Tournaments</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="tournamentSelectBoxDIv" name="tournamentId" onchange="changingTournament();tournamentErrorFunction();">
												<option value="0">Select Tournament</option>
												<c:forEach var="tournaments" items="${tournamentOfTheBoard}">
												<c:choose>
												<c:when test="${tournamentId eq tournaments.tournamentId }">
												
													<option value="${tournaments.tournamentId}" selected>${tournaments.tournamentName}</option>
												
												</c:when>
												<c:otherwise>
													<option value="${tournaments.tournamentId}">${tournaments.tournamentName}</option>
													</c:otherwise>
												</c:choose>
												</c:forEach>
											</select>
											<div class="tournamentSelectBoxOut" class="out"></div>
										</div>
										<div id="tournamentError" class="createschedulError"></div>
									</div>


										<!-- <div id="replaceDiv"> -->
									<div class="amdSbox">
									<label for="email">Select Home Team</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="teamSelectBoxDIv" name="homeTeamId" onchange="checkAffiliation(this.value,'teamSelectBoxDIv');teamValidation();">
												<option value="0">Select Team Board</option>
												<c:forEach var="team" items="${teamList}">
													<option value="${team.boardId}">${team.boardName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<div id="homeTeamError" class="createschedulError"></div>
									</div>

									<div class="amdSbox">
									 <label for="email">Select Away Team</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="teamSelectBoxDIv1" name="awayTeamId" onchange="checkAffiliation(this.value,'teamSelectBoxDIv1');awayteamValidation();">
												<option value="0">Select Team Board</option>
												<c:forEach var="teams" items="${teamList}">
													<option value="${teams.boardId}">${teams.boardName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<div id="awayTeamError" class="createschedulError"></div>
									</div>
									<!-- </div> -->


									<div class="amdSbox">
									 <label for="email">Select Ground</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="groundSelectBoxDiv1" name="groundId" onchange="groundFunction()">
												<option value="0">Select Ground</option>
												<c:forEach var="ground" items="${groundList}">
													<option value="${ground.groundId}">${ground.groundName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<div id="groundError" class="createschedulError"></div>
									</div>

									
									<div class="tBox">
										 <label for="email">Select Umpire</label> 
										 <div id="hiddenUmpireDiv1" style="display:none; ">
										 <input type="text" class="form-control" placeholder="Select Umpires" id="umpireId1" >
										 </div>
										 <div id="hiddenUmpireDiv0" style="display:none; ">
										 	<input type="text" class="form-control" placeholder="Select Umpires" id="umpireId" >
										 </div>
									
											<input type="hidden" id="hiddenUmpireId" name="userId">
											<div id="error" class="createschedulError"></div>
									</div>

									<div class="tBox">
 													<!-- <label for="email">Select Scorer</label>  -->
 													<label for="email">App Scorer</label> 
										<input type="text" class="form-control" placeholder="Scorer" id="scorerId">
										<input type="hidden" id="hiddenScorerId" name="scorerId" onchange="scorerFunction">
										<div id="error1" class="createschedulError"></div>
	
									</div>
									
									<div class="tBox">
 													<label for="email">Portal Scorer</label> 
										<input type="text" class="form-control" placeholder="Scorer" id="portalscorerId">
										<input type="hidden" id="portalhiddenScorerId" name="portalscorerId" onchange="scorerFunction">
										<div id="error1" class="createschedulError"></div>
	
									</div>
									
										<input type="hidden" id="gameDateforMail" name="gameDateforMail">
										<input type="hidden" name="createdBy" value="${boardId}">
										<%-- <input type="hidden"  name="tournamentId" value="${tournamentId}"> --%>

									<div class="Addbtn">
                                       <!-- <input type="button"
											class="btn btn-default blueBtn pull-right"  value="Cancel" onclick="reset1()">&nbsp;&nbsp;&nbsp;
										<input type="button"
											class="btn btn-default blueBtn pull-right" value="Add"
											onclick="addFunction()"> -->
											<input type="button" value="cancel" class="btn btn-default blueBtn pull-right" onclick="reset1()">
                                            <input type="button" style="margin-right: 10px;" class="btn btn-default blueBtn pull-right" onclick="addFunction()" value="Add">
											
											

									</div>

										</form>

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
	 <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	 <script src="https://momentjs.com/downloads/moment.js"></script>
	 <script src="https://momentjs.com/downloads/moment-timezone-with-data.js"></script>
	
	<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>
	
	<script>
	
	function reset1(){
			window.location.reload();
	}
	
	</script>
	
	<!--Gallery-->
	

	<script>

	
	
$(document).ready(function(){
	document.getElementById("tournamentError").innerHTML = "";
	document.getElementById("groundError").innerHTML = "";
	
	var umpireCheck =" ${umpireCheck}";
	//alert(umpireCheck);
//	if(umpireCheck ==  0){
		// $("#hiddenUmpireDiv0").replaceWith('<input type="text" class="form-control" placeholder="Select Umpires" id="umpireId">');
		//$("#hiddenUmpireDiv1").replaceWith('<input type="text" class="form-control" placeholder="Select Umpires" id="umpireId1">');
    var umpireArray=[];
    var i=0
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
        
		
		
		
		
		return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + " "+citystate+"</div></div>"+htm+""
		
		
		+"</li>"
		
	},
	preventDuplicates: true,
	propertyToSearch: "fullName",
	theme: "facebook",   
	onAdd: function (item) {
		umpireArray.push(item.id);
		$('#hiddenUmpireId').val(umpireArray);
		umpireFunction();
	},
	onDelete: function (item) {
    	var index = umpireArray.indexOf(item.id);
		if (index >= 0) {
			umpireArray.splice( index, 1 );
		}
		$('#hiddenUmpireId').val(umpireArray);
		umpireFunction();
},onResult: function (item) {
    if($.isEmptyObject(item)){
        return [{id:'0',name: "No Results Found"}];
  }else{
        return item;
  }
}
});
    var bid = "${boardId}";
    $("#umpireId1").tokenInput(ctx+"/umpireCheckList/"+bid,{
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
			
			
			
			
			
			return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + "</div></div>"+htm+""
		
		+"</li>" },
		preventDuplicates: true,
		propertyToSearch: "fullName",
		theme: "facebook",   
		onAdd: function (item) {
			umpireArray.push(item.id);
			$('#hiddenUmpireId').val(umpireArray);
			umpireFunction();
		},
		onDelete: function (item) {
	    	var index = umpireArray.indexOf(item.id);
			if (index >= 0) {
				umpireArray.splice( index, 1 );
			}
			$('#hiddenUmpireId').val(umpireArray);
			umpireFunction();
	},onResult: function (item) {
	    if($.isEmptyObject(item)){
	        return [{id:'0',name: "No Results Found"}];
	  }else{
	        return item;
	  }
	}
	});
    
    
   
    
	/* }
	else{ 
		$("#hiddenUmpireDiv1").replaceWith('<input type="text" class="form-control" placeholder="Select Umpires" id="umpireId">');
	

		var umpireArray=[];
		$("#umpireId1").tokenInput(ctx+"/umpireCheckList/",{
			resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>" },
			preventDuplicates: true,
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
		},onResult: function (item) {
		    if($.isEmptyObject(item)){
		        return [{id:'0',name: "No Results Found"}];
		  }else{
		        return item;
		  }
		}
		});
		
	}*/

	var scorerArray=[];
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

			
			
			
			
			return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + " "+citystate+"</div></div>"+htm+""
			
			
			
			
			+"</li>" },
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
	
	var portalscorerArray=[];
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

			
			
			
			return "<li>" + "<img onError='userErrorDefaultImg(this)' src='" + item.userImageUrl + "' title='" + item.fullName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.fullName + " "+citystate+"</div></div>"+htm+""
			
			
			+"</li>" },
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
	
	
	
	
	var tournamentName = $("#tournamentSelectBoxDIv :selected").text();
	$(".tournamentSelectBoxOut").text(tournamentName);
	
	if(umpireCheck == 1){
		
		$("#hiddenUmpireDiv1").show();
	}else{
		
		$("#hiddenUmpireDiv0").show();
	}
	
});
</script>
<script>
//var flag;
function addFunction(){
  // flag=1;
   
  /*validateDateFunction(); */
	dateFunction();
	timeFunction();
	gameTypeErrorFunction();
	tournamentErrorFunction();
	homeTeam();
	awayTeam();
	groundFunction();
	umpireFunction();
	scorerFunction();
	/* if(!from=='btn')
		return; */
	if(dateFunction() == true && timeFunction() == true && gameTypeErrorFunction() == true && tournamentErrorFunction() == true && homeTeam() == true && awayTeam() == true && groundFunction() == true && umpireFunction() == true && scorerFunction() == true){
		console.log("inside if");
		 var hour = $("#hourValue").val();
         var min = $("#minuteValue").val();
         var timeMode = $("#timeMode").val();
         $("#time").val(hour+":"+min+" "+timeMode);
        
    
		awayteamValidation();
		teamValidation();
		if(awayteamValidation()==true && teamValidation()==true){
		
		addFunction1();
		//afterValidation();
			return true;
		}else{
			return false;
		}
		return true;
	
	
	}else{
		console.log("err");
		return false;
	}
	
}

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
	$("#loading").show();
	$("#createScheduleForm").submit();
	
	/* var date  = $("#date").val();
	var teamId1 = $("#teamSelectBoxDIv").val();
	var teamId2 = $("#teamSelectBoxDIv1").val();
	var groundId = $("#groundSelectBoxDiv1").val();
	var userId = $("#hiddenUmpireId").val();
    var boardId = "${boardId}";
    var tournamentId = "${tournamentId}";
    var scorerId = $("#hiddenScorerId").val();
    
	var bean = {
			gameDateStr :date,
		    homeTeamId : teamId1,
			awayTeamId : teamId2,
			groundId : groundId,
			userId : userId,
			createdBy : boardId,
			modifiedBy : boardId,
			tournamentId : tournamentId,
			scorerId : scorerId,
	}
	
	//alert(JSON.stringify(bean));
	$.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/insertScheduleDetails",
	data:JSON.stringify(bean),
	contentType:"application/json; charset=utf-8",
	success: function(res){
		if(res == 'success'){
			window.location.href = "${pageContext.request.contextPath}/SchedulerList/boardId/"+boardId;
		}
	}, 
	error:function(err){
		alert(err);
	}
		
	}) */
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


//var array = [];
function changingTournament(){	
	var id = $("#tournamentSelectBoxDIv").val();
	
	console.log("tournamentID :"+id);
	var selectedValue = $('#tournamentSelectBoxDIv').val();

	
	if(selectedValue == 0){
		$(".tournamentSelectBoxOut").text("Select Tournament");
	}else{
		
		$('#teamSelectBoxDIv').val(0).trigger('change');

		$("#teamSelectBoxDIv1").val(0).trigger('change');
		
		var tournamentName = $("#tournamentSelectBoxDIv :selected").text();
		$(".tournamentSelectBoxOut").text(tournamentName);
		
		
			var bean = {
					tournamentId : id,
					//gameId : gameType,
					//gameName : gameTypeName,
			}

				$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/getTournamentDetails",
				data:JSON.stringify(bean),
				contentType:"application/json;charset=utf-8",
				success : function(res){
				    console.log(JSON.stringify(res));    
					
					//if(res[0].gameType == "League"){
						if(res != ""){
							
						
						
						var teamList = res[0].teamboardslist;
					    
						console.log(JSON.stringify(teamList));
						
						var html = '';
						html += '<option value="0">Select Team Board</option>';
						
						if(teamList != null){
					         for(var i=0; i< teamList.length; i++){
					        	 html += '<option value='+teamList[i].teamid+'>'+teamList[i].teamName+'</option>';
					         }
					         $("#teamSelectBoxDIv").html(html).trigger('create');
					         $("#teamSelectBoxDIv1").html(html).trigger('create');
						}else{
							//html += '<option value="0">Select Team</option>';
							$("#teamSelectBoxDIv").html(html).trigger('create');
					         $("#teamSelectBoxDIv1").html(html).trigger('create');
						}
					        
					         
					         var umpireCheckInOnChange = res[0].umpireCheck;
					         if(umpireCheckInOnChange == 0 ){
					        	 $("#hiddenUmpireDiv0").show();
					        	 $("#hiddenUmpireDiv1").hide();
					         }else{
					        	 $("#hiddenUmpireDiv1").show();
					        	 $("#hiddenUmpireDiv0").hide();
					         }
					         
						}
						else{
							
							var html = '';
							html += '<option value="0">Select Team Board</option>';
							$("#teamSelectBoxDIv").html(html).trigger('create');
					         $("#teamSelectBoxDIv1").html(html).trigger('create');
						}
						
					
				
				},
				error : function(err){
					console.log(err);
				}
				
				
			})
			
		
	
  }
	
}

function gameTypeChangeFunction(){
	$('#tournamentSelectBoxDIv').val(0).attr("selected", "selected");
	$(".tournamentSelectBoxOut").text("Select Tournament");
	
}

function checkAffiliation(teamId, div){
	if(teamId != 0){
	
	var leagueName = "${BoradInfo.boardName}";
	//alert("div id -------======================="+div);
		
	var checkAffiliationBean = {
			createdBy : "${boardId}",
			homeTeamId : teamId
	}
	$.ajax({
	type:"post",
	url :"${pageContext.request.contextPath}/checkAffiliation",
	data :JSON.stringify(checkAffiliationBean),
	contentType :"application/json",
	success : function(res){
	 if(res == 'notAffliated' ){
			
				if(div == 'teamSelectBoxDIv'){
			
				$('#'+div).val(0).trigger('change');
				
			}else{
			
				$("#"+div).val(0).trigger('change');
			
			} 
	
			displaynotification("This team board is not affliated to "+leagueName+" board ",2000);
		
			
		
		
		}else{

		}
	},
	error : function(err){
		console.log(err);
	}
	
	})
	}
	
}

function makeReadonly(){
	$("#date").blur();
	$("#time").blur();
}

</script>



	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>    -->
<!--Clock JS-->

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
	   // alert("timeZone :::::::::::"+timeZone);
  </script>


</body>
</html>
