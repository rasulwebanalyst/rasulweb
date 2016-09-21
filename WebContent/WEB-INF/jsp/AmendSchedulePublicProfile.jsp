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
</head>
<body>


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

						
						<%@ include file="publicLeaugeManagementSideMenu.jsp"%>



<input type="hidden" value="${BoradInfo.boardId}" id="leaguBoardboardId" name="leaguBoardboardId" >

						<div class="col-md-10">
							<div class="col-md-12 whiteBox">
								<h1 class="">Amend Schedule</h1>
								<table>
									<thead>
										<tr>
										<th>S.No</th>
											<th>Trophy</th>
											<th>Match Date</th>
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
										<c:forEach var="tourDetails" items="${tournamentList}" varStatus="loop">
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
												<!-- 	 <a href="#" class="pull-right" title="">Assign</a> -->
												</td>
												
												<td> 
												<div>
                                        <c:forEach var ="scorer" items="${tourDetails.scorerNamesList}" varStatus="loop">
                                        <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">
                                        ${scorer.scorerName}</a><c:if test="${!loop.last}">,</c:if></span>
                                        													
                                       <%--  <span style="background-color: grey; border-radius: 3px;">${scorer.scorerName}<br></span> --%>
                                        </c:forEach>
                                        </div>
												<!-- <a href="#"class="pull-right" title="">Assign</a></td> -->
												
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
								</table>


								<div class="col-md-12 alignCenter Drobox noPadding">
										
									<div class="tBox">
									<label for="email">Date</label>
									<input type="text" class="form-control datepicker"
											placeholder="Date" id="date" name="date">
											<span id="dateError" style="color:red; float: right;"></span>
									

										
										<i class="fa fa-calendar calIcon"></i>
									</div>
									
									<div class="amdSbox">
									<label for="email">Select Game Type</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="gameType" name="gameId">
												<option value="0">Select Game Type</option>
												<c:forEach var="gameType" items="${gameTypeList}">
													<option value="${gameType.gameId}">${gameType.gameName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<span id="gameTypeError" style="color:red; float: right;"></span>
									</div> 
									
									
									<div class="tBox"> 
                               <label for="email">Tournament Name</label>
									<input type="text" class="form-control " placeholder="" id="tournament"  value=""  />

                                </div>

									<div class="amdSbox">
									<label for="email">Select Home Team</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="teamSelectBoxDIv" name="teamSelectBoxDIv">
												<option value="0">Select Team Board</option>
												<c:forEach var="team" items="${teamList}">
													<option value="${team.boardId}">${team.boardName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<span id="homeTeamError" style="color:red; float: right;"></span>
									</div>

									<div class="amdSbox">
									 <label for="email">Select Away Team</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="teamSelectBoxDIv1" name="teamSelectBoxDIv1">
												<option value="0">Select Team Board</option>
												<c:forEach var="teams" items="${teamList}">
													<option value="${teams.boardId}">${teams.boardName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<span id="awayTeamError" style="color:red;float: right;"></span>
									</div>

									<div class="amdSbox">
									 <label for="email">Select Ground</label> 
										<div class="selectdiv">
											<select class="selectboxdiv" id="groundSelectBoxDiv1" name="groundSelectBoxDiv1">
												<option value="0">Select Ground</option>
												<c:forEach var="ground" items="${groundList}">
													<option value="${ground.groundId}">${ground.groundName}</option>
												</c:forEach>
											</select>
											<div class="out"></div>
										</div>
										<span id="groundError" style="color:red;float: right;"></span>
									</div>

									
									<div class="tBox">
										 <label for="email">Select Umpire</label> 
										<input type="text" class="form-control"
											placeholder="Select Umpires" id="umpireId"> <input
											type="hidden" id="hiddenUmpireId">
											<span id="error" style="color:red;float: right;"></span>
									</div>

									<div class="tBox">
 													<label for="email">Select Scorer</label> 
										<input type="text" class="form-control" placeholder="Scorer" id="scorerId">
										<input type="hidden" id="hiddenScorerId">
										<span id="error1" style="color:red;float: right;"></span>
	
									</div>


									<div class="Addbtn">

										<input type="button"
											class="btn btn-default blueBtn pull-right" value="Add"
											onclick="addFunction()">

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
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<!--Gallery-->
	<script>
        $(document).ready(function () {
		
		//	$('.datepicker').datepicker();
		$('.datepicker').datepicker();
		
		$('.datepicker').on('changeDate', function(ev){
			$(this).datepicker('hide');
		});
		//$( ".datepicker" ).datepicker({ dateFormat: 'yyyy-MM-dd' });
		});
       
   </script>
	<script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
	<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>
	<script>

$(document).ready(function(){
	var umpireCheck =" ${umpireCheck}";
	//alert(umpireCheck);
	if(umpireCheck ==  0){
	
var umpireArray=[];
$("#umpireId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
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
	}
	else{
		
		var umpireArray=[];
		$("#umpireId").tokenInput(ctx+"/umpireCheckList/",{
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
		
	}

	var scorerArray=[];
	$("#scorerId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
		preventDuplicates: true,
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

/* 	validateDateFunction(); */
	dateFunction();
	homeTeam();
	awayTeam();
	groundFunction();
	umpireFunction();
	scorerFunction();
	
	if(dateFunction() == true && homeTeam() == true && awayTeam() == true && groundFunction() == true && umpireFunction() == true && scorerFunction() == true ){
		console.log("inside if");
		afterValidation();
		return true;
	
	
	}else{
		console.log("err");
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
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardPublicProfile/boardId/"+boardId+"/matchId/"+id;
}


</script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>    -->

</body>
</html>
