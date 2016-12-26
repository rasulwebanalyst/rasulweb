<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/jquery.realperson.css"
	rel="stylesheet">
	
	<!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">

<!--Font-Awesome Icons-->
<link
	href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css"
	rel="stylesheet">

<!--Google Fonts-->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/token-input.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/token-input-facebook.css"
	type="text/css" />


 <link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.min.css" rel="stylesheet">


<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>

<script>
        $(document).ready(function () {
		
		//	$('.datepicker').datepicker();
		/* $('.datepicker').datepicker({
			autoclose:true
		}); */
		
		 $('.datepicker').datepicker({
 			//dateFormat: "yyyy-MM-dd", 
 			//startDate: new Date(),
 			 autoclose: true,
 			
 	});
		
		$(".datepicker").each(function() {    
		
		    $(this).datepicker('setDate', $(this).val());
		});
		
		
		$('.datepicker').on('changeDate', function(ev){
			$(this).datepicker('hide');
		});
		//$( ".datepicker" ).datepicker({ dateFormat: 'yyyy-MM-dd' });
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

</head>
<body>

<%@ include file="CSCommon.jsp" %>
	<%@ include file="BoardHeader.jsp"%>
	



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
		          <h1 class="">Schedule List</h1>
                  <form id="filterForm" method="POST" action="${pageContext.request.contextPath}/filterForScheduleList.htm">
                  <div class="col-md-12 noPadding">
                     	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">From Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate" value="${startDateSet}" onfocus="readOnlyFunction()"> 
                          <span id="dateError" style="color:red"></span>
                       <!--    <i class="fa fa-calendar calIcon"></i> -->
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">To Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate" value="${endDateSet}" onfocus="readOnlyFunction()"> 
                          <span id="dateError1" style="color:red"></span>
                        <!--   <i class="fa fa-calendar calIcon"></i> -->
                        
                     	</div>
                        
                        <input type="hidden" value="${boardId}" name="boardId">
                       
                        
                        <div class="col-md-2">
                        <input type="button" onclick="filterFunction()" class="btn btn-default dBtn GSfbtn pull-right" value="Filter">
                     	</div>
                        
                     </div>
                 </form>
                 </div>
                 </div> 


						<div class="col-md-10 " >
							<div class="col-md-12 whiteBox">
								
								<%-- <h1 class="">Schedule List
								 (From : <span id="showFrom">${startDateSet}</span> - To : <span id="showTo">${endDateSet}</span> ) --%>
								
								
								
								
								
								
							 <div class="pull-right" style="margin-bottom: 10px;">
							 
							 
								 <div class="col-md-12  margintop">
                    <button  class="btn btn-default dBtn btn" id="previous" onclick="loadPrev('previous')">Prev</button>
                    <button class="btn btn-default blueBtn" id="next" onclick = "loadPrev('next')">Next</button>
                  </div> 
								</div>  
								
								<!--  </h1> -->
								 <div class="form-group">
								 <c:choose>
								 <c:when test="${empty tournamentList}">
								 <table  id="scheduleTable" style="font-size: 12px;">
									<thead>
										<tr>
											<th>S.No</th>
											<th>Trophy</th>
											<th>Match Date(MM/DD/YYYY)</th>
											<th>Home Team</th>
											<th>Away Team</th>
											<th>Game Type</th>
											<th>Ground</th>
											<th>Umpire</th>
											<th>Scorer</th>
											<th style="width: 60px;">Action</th>
										</tr>
									</thead>
									</table>
									<span id="errorSpan" class="noContentDivRed">No schedules available for this week</span>
									
								 </c:when>
								 
								 <c:otherwise>
								 
								 <table id="scheduleTable" style="font-size: 12px;">
									<thead>
										<tr>
											<th>S.No</th>
											<th>Trophy</th>
											<th>Match Date(MM/DD/YYYY)</th>
											<th>Home Team</th>
											<th>Away Team</th>
											<th>Game Type</th>
											<th>Ground</th>
											<th>Umpire</th>
											<th>Scorer</th>
											<th style="width: 60px;">Action</th>
										</tr>
									</thead>


									<tbody>
										<c:forEach var="tourDetails" items="${tournamentList}" varStatus ="loop"> 
											<tr>
											
												<td>${loop.count}</td>
												<td>${tourDetails.tournamentName}</td>								
												<td><p id="formatDate_${tourDetails.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${tourDetails.gameDate}" /></p><script>document.writeln(test("${tourDetails.tournamentSchedulerId}","${tourDetails.gameDate}"));</script></td>
											    <td><a href="${pageContext.request.contextPath}/${tourDetails.homeTeamName}/board/${tourDetails.homeTeamId}">${tourDetails.homeTeamName}</a></td>
												<td><a href="${pageContext.request.contextPath}/${tourDetails.awayTeamName}/board/${tourDetails.awayTeamId}">${tourDetails.awayTeamName}</a></td>
												 <td>${tourDetails.gameName}</td>
												<%-- <td>${tourDetails.groundName}</td> --%>
												
												<c:choose>
                                            <c:when test="${tourDetails.groundName eq null || tourDetails.groundName eq ''}">
                                            <td>-</td>
                                            </c:when>
                                            <c:otherwise>
                                           <td>${tourDetails.groundName}</td>
                                            </c:otherwise>
                                            </c:choose>
												
												
												
												<td>
													<div >
														<%-- <c:forEach var="umpire"
															items="${tourDetails.umpireNamesList }" varStatus="loop">
																<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}">${umpire.umpireName}</a><c:if test="${!loop.last}">,</c:if></span>
																
														</c:forEach> --%>
														
														
														<c:choose>
                                            <c:when test="${tourDetails.umpireNamesList eq null || tourDetails.umpireNamesList eq ''}">
                                           <!--  <td>-</td> -->
                                           -
                                            </c:when>
                                            <c:otherwise>
                                          <%--  <td>${tourDetails.groundName}</td> --%>
                                          
                                          <c:forEach var="umpire"
															items="${tourDetails.umpireNamesList }" varStatus="loop">
																<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}">${umpire.umpireName}</a><c:if test="${!loop.last}">,</c:if></span>
																
														</c:forEach>
                                          
                                            </c:otherwise>
                                            </c:choose>
														
														
														
														
														
														
														</div>
												<!-- 	 <a href="#" class="pull-right" title="">Assign</a> -->
												</td>
												
												<td> 
												<div>
                                       <%--  <c:forEach var ="scorer" items="${tourDetails.scorerNamesList}" varStatus="loop">
                                        <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        ${scorer.scorerName}</a><c:if test="${!loop.last}">,</c:if></span>
                                        </c:forEach> --%>
                                        
                                        
                                        <c:choose>
                                            <c:when test="${tourDetails.scorerNamesList eq null || tourDetails.scorerNamesList eq ''}">
                                           -
                                            </c:when>
                                            <c:otherwise>
                                            
                                             <c:forEach var ="scorer" items="${tourDetails.scorerNamesList}" varStatus="loop">
                                        <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        ${scorer.scorerName}</a><c:if test="${!loop.last}">,</c:if></span>
                                        </c:forEach>
                                          
                                            </c:otherwise>
                                            </c:choose>
                                        
                                        
                                        
                                        
                                        
                                        </div></td>
												<!-- <a href="#"class="pull-right" title="">Assign</a></td> -->
												
												<c:choose>
												<c:when test="${tourDetails.status == 'Completed'}">
												  <td align="center" ><a href="javascript:void(0)" onclick="showScoreCard('${tourDetails.tournamentSchedulerId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
												</c:when>
												<c:otherwise>
												
												<c:choose>
												<c:when test="${tourDetails.status == 'InProgress'}">
												
												 <td align="center" ><a href="${pageContext.request.contextPath}/showScoreCardForInProgress/boardId/${boardId}/matchId/${tourDetails.tournamentSchedulerId}">In progress</a></td>
												
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
												
												
												
												</c:otherwise>
												</c:choose>
												
												

											</tr>
										</c:forEach>
									</tbody>
								
								</table>
								 	<span id="errorSpan" style="color:red"></span>
								 </c:otherwise>
								 </c:choose>
								 
								 
								


		 	<input type="hidden" id="hiddenDate" value="${dateString}"> 
		 	<input type="hidden" id="hiddenDateStart" value="${startDate}"> 

							</div> </div>
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
	<!--Date picker-->
	<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<!--Gallery-->
	
	<script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
	<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>
	<script>



function editSchedule(id,tourId){
	console.log(tourId);
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
	
	});
	
}


 var dateString = null;

function loadPrev(text){
	

	 var mavValue = null;
	console.log(text);
	var boardId = "${boardId}";
	if(text == "previous"){
		
		 mavValue = $("#hiddenDateStart").val();
		 //alert("text ++++++++++++++++"+text+"value -----------------"+mavValue);
   
	}else{
		 mavValue = $("#hiddenDate").val();
		 
		 //alert("text next ++++++++++++++++"+text+"value next-----------------"+mavValue);
	}
	 dateString  = mavValue;
	console.log("before response  :::"+dateString);
	
	var schedulerBean = {
			createdBy : boardId,
			dateString : dateString,
			previousNextFlag : text,
	
	}
	
	$.ajax({
	
		type:"post",
		url:"${pageContext.request.contextPath}/schedulerListPreviousNext",
		data :JSON.stringify(schedulerBean),
		contentType : "application/json",
		success: function(response){
			//alert("text ==================="+text);
			console.log(JSON.stringify(response));
			
			$("#"+text).blur();
			
			 var startGameDate  = new Date(response.startDateStr);
			 var endGameDate  = new Date(response.endDateStr);
			 
			 
			 var fromStart = response.startDateStr.split("-");
		
			 var fromDateToDatePicker = fromStart[1]+"/"+fromStart[2]+"/"+fromStart[0];
			
			 var toEnd = response.endDateStr.split("-");
			 var toDateToDatePicker = toEnd[1]+"/"+toEnd[2]+"/"+toEnd[0];
			 
				
			 console.log("start game date ==================="+fromDateToDatePicker+ "end game date ======================"+toDateToDatePicker);
			
			 if(text =='previous'){
					document.getElementById("fromDate").value = startGameDate.toLocaleDateString();
					document.getElementById("toDate").value = endGameDate.toLocaleDateString();
					
					//document.getElementById("showFrom").innerHTML = endGameDate.toLocaleDateString();
					//document.getElementById("showTo").innerHTML = startGameDate.toLocaleDateString();
					
					
					$('#toDate').datepicker('update',toDateToDatePicker);
					$("#fromDate").datepicker("update", fromDateToDatePicker);
				
				}
				else{
					
					
					
					//document.getElementById("showFrom").innerHTML = startGameDate.toLocaleDateString();
					//document.getElementById("showTo").innerHTML = endGameDate.toLocaleDateString();
					
					document.getElementById("toDate").value = endGameDate.toLocaleDateString();
					document.getElementById("fromDate").value = startGameDate.toLocaleDateString();
					
					
					$('#fromDate').datepicker('update',fromDateToDatePicker);
					$("#toDate").datepicker("update", toDateToDatePicker);
				
				}
			
			
			 
			document.getElementById("hiddenDateStart").value = response.startDateStr;
			document.getElementById("hiddenDate").value = response.endDateStr;
			
			/* if(text =='previous'){
				mavValue = response.startDateStr;
				document.getElementById("hiddenDateStart").value =  mavValue;
			}else{
				mavValue = response.endDateStr;
				document.getElementById("hiddenDate").value =  mavValue;
			} */
		
			
			
			
			var res = null;
			
			 res = response.tournamentSchedulerList;
			
			 
			if(res.length != 0){
				document.getElementById("errorSpan").innerHTML = "";
				
				 console.log(res);
			
				var html = '';
			
				
				html += ' <table id="scheduleTable"><thead><tr>';
				html += '<th>S.No</th>';
				html += '<th>Trophy</th>';
				html += '<th>Match Date(MM/DD/YYYY)</th>';
				html += '<th>Home Team</th>';
				html += '<th>Away Team</th>';
				html += '<th>Game Type</th>';
				html += '<th>Ground</th>';
				html += '<th>Umpire</th>';
				html += '<th>Scorer</th>';
				html += '<th style="width: 60px;">Action</th>';
				html += '</tr></thead><tbody>';
				
				var count = 1;
			
				for(var i=0; i<res.length; i++){
					
					//var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].gameDate);
					var dateNewObject = formatDateValue(res[i].gameDate);
					 console.log(res[i].gameDate);
				//	var endDate = new Date(res[i].endDateString);
					
					 console.log("after Response :"+mavValue);
					
				//	 $("#hiddenDate").val(mavValue);
					
					 var date  = new Date(res[i].gameDate);
				
					 console.log("date ======="+date);
					 var dateChange = date.toLocaleDateString();
			
					 var dateObj = GetFormattedDate(date);
					 console.log("dateObj ===================="+dateObj);
					
					html += '<tr>';
					html += '<td>'+count+'</td>';
					html += '<td>'+res[i].tournamentName+'</td>';
					html += '<td>'+dateNewObject+'</td>';
					/* html += '<td>'+dateObj;
					if(res[i].gameTime != null){
						 html += ' '+res[i].gameTime+'</td>';
					}else{
						html += '</td>';
					} */
					//html += '<td>'+dateChange+' '+res[i].gameTime+'</td>';
					html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].homeTeamId+'">'+res[i].homeTeamName+'</a></td>';
					html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
					html += '<td>'+res[i].gameName+'</td>';
					if(res[i].groundName !=null && res[i].groundName != "")
						{
						html += '<td>'+res[i].groundName+'</td>';
						}else{html += '<td>-</td>';}
					
					/* html += '<td>'+res[i].groundName+'</td>'; */
					html += '<td>';
					html += '<div >';
					
					var umpireList = res[i].umpireNamesList;
					if(umpireList != null){
					for(var j=0; j<umpireList.length; j++){
						html += '<span>'+'<a href="${pageContext.request.contextPath}/buddy/'+umpireList[j].umpireName+'/'+umpireList[j].umpireId+'">'+umpireList[j].umpireName+'</a>';
						
						 if(j === umpireList.length-1) {  //The last one
							//   html += '</span>';
					        } else {
					            html += ',</span>';
					        } 
	
					}}else{html += '-';}

	        
					html += '</div></td>';
					html += '<td>';
					html += '<div>';
					
					var scorerList = res[i].scorerNamesList;
					if(scorerList != null){
					for(var k=0; k<scorerList.length; k++){
						html += '<span>'+'<a href="${pageContext.request.contextPath}/buddy/'+scorerList[k].scorerName+'/'+scorerList[k].scorerId+'">'+scorerList[k].scorerName+'</a>';
						
						
						 if(k === scorerList.length-1) {  //The last one
								//   html += '</span>';
						        } else {
						            html += ',</span>';
						        } 

						
	
					}}else{html += '-';}
					
					html += '</div></td>';
					if(res[i].status == 'Completed'){
						html += "<td align='center' ><a href='javascript:void(0)' onclick='showScoreCard(\""+res[i].tournamentSchedulerId+"\")'><i class='fa fa-newspaper-o editIcon'></i></a></td>";
					}else if(res[i].status == 'InProgress'){
						html += '<td><a href="${pageContext.request.contextPath}/showScoreCardForInProgress/boardId/'+boardId+'/matchId/'+res[i].tournamentSchedulerId+'">In progress</a></td>';
					}else{
						html += "<td class='alignCenter'><a href='#' onclick='editSchedule(\""+res[i].tournamentSchedulerId+"\",\""+res[i].tournamentId+"\")' title='Edit'><i class='fa fa-pencil editIcon'></i></a> <a href='#' onclick='deleteSchedule(\""+res[i].tournamentSchedulerId+"\")' title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a> </td>";
					}
					
				
					html += '</tr>';
				
					count++;
				}
				
				html += '</tbody></table>';
			
	
				 $("#scheduleTable").html(html).trigger('create');
			
				
			
				
			}else{
		
				//alert("else condition ::::::::::::::::"+mavValue);
				 document.getElementById("hiddenDateStart").value = response.startDateStr;
				
				 document.getElementById("hiddenDate").value = response.endDateStr;
				 
				//document.getElementById("hiddenDate").value = response.startDateStr;
				
				mavValue = response.endDateStr;
				
				
				document.getElementById("errorSpan").innerHTML = "";
				
				//displaynotification("No more schedules available for this week",1000);
				
					 var html = '';
			
				
				html += ' <table id="scheduleTable"><thead><tr>';
				html += '<th>S.No</th>';
				html += '<th>Trophy</th>';
				html += '<th>Match Date (MM/DD/YYYY)</th>';
				html += '<th>Home Team</th>';
				html += '<th>Away Team</th>';
				html += '<th>Game Type</th>';
				html += '<th>Ground</th>';
				html += '<th>Umpire</th>';
				html += '<th>Scorer</th>';
				html += '<th style="width: 60px;">Action</th>';
				html += '</tr></thead>';
				html += '</table>';
				//html += '<span id="errorSpan" class="noContentDivRed">No more '+text+' schedules available for this week</span>';
				//html += '<span id="errorSpan" class="noContentDivRed">No more schedules available for this week</span>';
				html += '<span id="errorSpan" class="noContentDivRed">No more schedules available for this week</span>';
				 $("#scheduleTable").html(html).trigger('create');
				
				// $("#errorSpan").fadeOut(1000); 
				
			
				
			}
			
			
		},
		error : function(err){
			console.log(err);
		}
		
	});
	
	
	
} 

function showScoreCard(id){
	 var boardId ="${boardId}";
	 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
}

function filterFunction(){
	   $(".dBtn").blur();
	 fromDateValidateFunction();
	 toDateValidateFunction();
	 var startDate = $("#fromDate").val();
	 var endDate = $("#toDate").val();
	 
	  if(fromDateValidateFunction() == true && toDateValidateFunction() == true){
		  //if (startDate < endDate){
			  	  var strDate=new Date(startDate);
			  var eDate=new Date(endDate);
			   if (strDate < eDate){
			  $("#filterForm").submit();
				 return true;
			}else{
				displaynotification("To date must be greater than from date",2000);
			}
		
	 }else{
		 return false;
	 } 
 }
 
 function fromDateValidateFunction(){
	 
	 var date = $("#fromDate").val();
		if(date == null || date == "" || typeof date == 'undefined'){
			displaynotification("Please give From date",2000);
			return false;
		}else{
			//document.getElementById("dateError").innerHTML = "";
			return true;
		}
	 
 }

 function toDateValidateFunction(){
	 var date = $("#toDate").val();
		if(date == null || date == "" || typeof date == 'undefined'){
			displaynotification("Please give To date",2000);
			return false;
		}else{
		//	document.getElementById("dateError1").innerHTML = "";
			return true;
		}
	 
 }

 function readOnlyFunction(){
	 $("#fromDate").blur();
	 $("#toDate").blur();
 }
 
 
 function GetFormattedDate(date) {
	 
	 var curr_year = date.getFullYear();
	 var curr_Month = date.getMonth() + 1;
	 var curr_date = date.getDate();
	 var todayDate =  (curr_Month + "/" + curr_date + "/" + curr_year);
	 return todayDate;
	 }
 function formatDateValue(date1) {
 
 
                var date = date1;
        		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
        		var gettingFromServer= new Date(date);
        		console.log(gettingFromServer);
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
        	
        	
        			
 
</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>    -->


<!--Data Table-->   
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>

<script>
$(document).ready(function() {
    $('#example').DataTable({
		"paging":   false,
        "info":     false,
		"searching": false
				
		});
} );
</script>   
   



</body>
</html>
