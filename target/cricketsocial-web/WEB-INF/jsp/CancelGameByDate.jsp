<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   

<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    

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
</head>
<body>

 <%@ include file="BoardHeader.jsp" %>
<%@ include file="CSCommon.jsp" %>

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
	}
	function test(id){
		var date = $("#formatDate_"+id).html();	
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	}
	
	
	 
</script>
        
         <%@ include file="LeaugeManagementSideMenu.jsp" %>


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
		          <h1 class="">Game Schedule</h1>
                  <form id="filterForm" method="POST" action="${pageContext.request.contextPath}/filterScheduleFunctionForUpcoming.htm">
                  <div class="col-md-12 noPadding">
                     	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">From Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate"> 
                          <span id="error" style="color:red"></span>
                         <!--  <i class="fa fa-calendar calIcon"></i> -->
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">To Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate"> 
                          <span id="error1" style="color:red"></span>
                        <!--   <i class="fa fa-calendar calIcon"></i> -->
                        
                     	</div>
                        
                        <input type="hidden" value="${boardId}" name="boardId">
                        
                        <div class="col-md-4">
                       <label for="">Tournament</label> <input type="text" placeholder="" class="form-control tbox" id="torunament" name="tournament" onkeyup='getTournamentAutoComplete(this,"addMemberautoCompleteDIV","addMemberIDDIV")'>
                     	<div class='autoComplete' id='addMemberautoCompleteDIV' style='display:none;'>
                                        <ul><li></li></ul>
                                        </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV' name="tournamentHiddenId">
                     	<span id="error2" style="color:red"></span></div>
                        
                        <div class="col-md-2">
                        <input type="button" onclick="filterFunction()" class="btn btn-default dBtn GSfbtn pull-right" value="Filter">
                     	</div>
                        
                     </div>
                 </form>
                 </div>
                 </div>
                  
            <div class="col-md-10 pull-right rightnone">
      		<div class="col-md-12 whiteBox" style="font-size: 12px;">
                  <h2 class="noBorder noLeftPad">Upcoming Matches</h2>
                  <div class="form-group">
                  <c:choose>
                       <c:when test="${upcomingMatchesListSize == 0 }">
                      <table>
                       <thead> 
                        <tr>
                          <th>Date (MM/DD/YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Umpire</th>
                          <th>Trophy</th>
                          <th>Match Status</th>
                          <th style="width:60px;">Action</th>
                        </tr>
                       </thead>
						</table>
                       
                      <div class="noContentDivRed">No Upcoming Matches</div>
                       

                       </c:when>
                       <c:otherwise>
						<table>
                       <thead> 
                        <tr>
                          <th>Date (MM/DD/YYYY)</th>
                          <th>Home Team</th>
                          <th>Away Team</th>
                          <th>Ground</th>
                          <th>Umpire</th>
                          <th>Trophy</th>
                          <th>Match Status</th>
                          <th style="width:60px;"></th>
                        </tr>
                       </thead>

                       <tbody>
                      
                          <c:forEach var="upcoming" items="${upcomingMatchesList}" varStatus = "loop1">
                       <tr>
                       
                       <td><p id="formatDate_${upcoming.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${upcoming.gameDate}" /></p><script>document.writeln(test("${upcoming.tournamentSchedulerId}"));</script></td>
                       
                           <%-- <td><fmt:formatDate value="${upcoming.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                     <td><a href="${pageContext.request.contextPath}/${upcoming.homeTeamName}/board/${upcoming.homeTeamId}">${upcoming.homeTeamName}</a></td>
                          <td><a href="${pageContext.request.contextPath}/${upcoming.awayTeamName}/board/${upcoming.awayTeamId}">${upcoming.awayTeamName}</a></td>
                          <td>${upcoming.groundName}</td>
                          <td> <div >
														<c:forEach var="umpire"
										items="${upcoming.umpireNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}">${umpire.umpireName}</a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach>
														</div>
											
												</td> 
                          <td>${upcoming.tournamentName}</td>
                          <td><span class="text-success">Active</span></td>
                          <td><input type="checkbox"id="r4_${upcoming.tournamentSchedulerId}" name="rr" value="${upcoming.tournamentSchedulerId}"/>
				            <label for="r4_${upcoming.tournamentSchedulerId}"><span></span></label></td>
                        </tr>
                      </c:forEach>
                  
                        
					</tbody>
                 </table>                  
                         </c:otherwise>
                       </c:choose>   
                        
                          <c:choose>
                       <c:when test="${upcomingMatchesListSize == 0 }"> 
                       </c:when>
                       <c:otherwise>
                       </div>
                        <button type="button" class="btn btn-danger pull-right" style="margin-top:20px;" onclick="cancelGame()">Cancel Game</button>
                       </c:otherwise>
                       </c:choose>  
                  
                  
                       <!-- </div> -->
                	</div>
                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</div><!-- form-group end -->
</section>
<%@include file="Footer.jsp" %>
   
      
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
				$('.datepicker').datepicker()
				$('.datepicker').on('changeDate', function(ev){
					$(this).datepicker('hide');
				});
			});
		</script>

  <script>
  function filterFunction(){
		// fromDateValidateFunction();
		// toDateValidateFunction();
		 //tournamentErrorFunction();
		  $("#filterForm").submit();
		/*  if(fromDateValidateFunction() == true && toDateValidateFunction() == true){
			 $("#filterForm").submit();
			 return true;
		 }else{
			 return false;
		 } */
	 }
	 
	 
	 function cancelSchedule(id){
		 console.log(id);
		 var boardId = "${boardId}";
		 var scheduler = {
				 tournamentSchedulerId : id,
		 }
		 $.ajax({
			type:"Post",
			url:"${pageContext.request.contextPath}/cancelSchedule",
			data : JSON.stringify(scheduler),
			contentType :"application/json",
			success : function(res){
				window.location.href = "${pageContext.request.contextPath}/CancelGameByDate/boardId/"+boardId;
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
		 	
		 	if(key.length>1) {
		 			    $.ajax({
		 						type : "POST",
		 						url : "${pageContext.request.contextPath}/TournamentNameSearchForFilter",
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
  
	 function cancelGame(){
		 var check = [];
		   $('input[name=rr]:checked').map(function() {
			   check.push($(this).val());
		   }); 
		 
		   if(check != ""){
			   $("#popupDiv").show();
		   }
		   else{
			   displaynotification("Please choose game to cancel",2000);
		   }
		 
	 }
	 
	 function okFun(){
		 $("#popupDiv").hide();
	 }
	 
	 function cancelFunction(){
		 var reason = $("#reason").val();
		 if(reason != ''){
		 $("#popupDiv").hide();
		 var boardId = "${boardId}";
		 var check = [];
		   $('input[name=rr]:checked').map(function() {
			   check.push($(this).val());
		   }); 
		 
		   var reason = $("#reason").val();
		   
			//var check = $('input[name="rr"]:checked').val();
			console.log(check);
			
			var bean = {
					boardId : boardId,
					shedulerArray : check,
					scheduleCancelReason : reason,
			}
			
			$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/cancelGame",
			data:JSON.stringify(bean),
			contentType :"application/json",
			success : function(res){
				if(res == "Schedule cancelled"){
				displaynotification("Game Cancelled successfully",2000);
				window.location.href = "${pageContext.request.contextPath}/CancelGameByDate/boardId/"+boardId;

				}
				else{
					displaynotification("Something went wrong. Try again later",2000);
					window.location.href = "${pageContext.request.contextPath}/CancelGameByDate/boardId/"+boardId;
				}
			},
			error : function(err){
				console.log("err");
			}
				
			})
		 }else{
			 displaynotification("Please give reason to cancel game",2000);
		 }
			
	 }
	 
  </script> 
   
   
</body>
</html>
