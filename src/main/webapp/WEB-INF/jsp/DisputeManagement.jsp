 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
 <title>Cricket Social</title>
<%@ include file="BoardHeader.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	
	function getDateInObject(timestamp)
	{
		
		var date = new Date(timestamp);
		var dateNew = new Date(date.getTime() + date.getTimezoneOffset()*60000);
		var offset = new Date().getTimezoneOffset() * 60 * 1000;
		var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		return formatAMPMTime(gettingFromServer); 
	};
	 
</script>
        
        <%@ include file="LeaugeManagementSideMenu.jsp" %>
        
        
        
        <div id="cancelReasonPopup" class="popupDiv" style="display: none;">

           <div class="box">
                <span class="head" style="font-size: 16px;">Reason</span>
                <!-- <span class="close_btn"> <i onclick="cancelFunction()" class="fa fa-close"></i> --> </span>

                <div class="popupContentDiv">
                
                		
                        	<textarea class="form-control" id="reasonId" rows="5" placeholder=""></textarea>
                        	<input type="hidden" id="Schedulertournamentid">
                        	<input type="hidden" id="Winpoint">
                        	<input type="hidden" id="losspoint">
                          
                          <div class="centerbtns">
                          
                           <button type="button" class="btn btn-default blueBtn" onclick="okFunction()">OK</button>
                          <!-- <button type="button" class="btn btn-default blueBtn" onclick="cancelFunction()">Cancel</button> -->
                          
                          
                          </div>
                       
                </div>
            </div>
 
 	</div>
 	
 	
 	        <div id="NochangesPopup" class="popupDiv" style="display: none;">

           <div class="box">
            <span class="head" style="font-size: 16px;">Dispute Management</span>
                <div class="popupContentDiv">
                
                		
                        	<p style="text-align: left;">There is no change in the points</p>
                             <p style="text-align: left;"> Do you want to change?</p>
                          <div class="centerbtns">
                          
                           <button type="button" class="btn btn-default blueBtn" onclick="Nochanges()">Yes</button>
                           <button type="button" class="btn btn-default blueBtn" onclick="cancelNochanges()">No</button> 
                          
                          
                          </div>
                       
                </div>
            </div>
 
 	</div>
 	
 	 <div id="HighValuePopup" class="popupDiv" style="display: none;">

           <div class="box">
 <span class="head" style="font-size: 16px;">Dispute Management</span>
                <div class="popupContentDiv">
                
                		<p id="Trophywinpoint"></p>
                        	
                          <div class="centerbtns">
                          
                           <button type="button" class="btn btn-default blueBtn" onclick="Nochanges()">Ok</button>
                           <button type="button" class="btn btn-default blueBtn" onclick="cancelNochanges()">Cancel</button> 
                          
                          
                          </div>
                       
                </div>
            </div>
 
 	</div>
 	
 	
 	 <div id="ReasonPopup" class="popupDiv" style="display: none;">

           <div class="box">
                <span class="head" style="font-size: 16px;">Reason</span>
                <!-- <span class="close_btn"> <i onclick="cancelFunction()" class="fa fa-close"></i> --> </span>

                <div class="popupContentDiv">
                
                		
                        	<textarea class="form-control" id="reasonGiven" rows="5" placeholder="" readonly="readonly"></textarea>
                          
                          <div class="centerbtns">
                          
                           <button type="button" class="btn btn-default blueBtn" onclick="ReasonCancel()">OK</button>
                          <!-- <button type="button" class="btn btn-default blueBtn" onclick="cancelFunction()">Cancel</button> -->
                          
                          
                          </div>
                       
                </div>
            </div>
 
 	</div>

      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class=""> Dispute Management</h1>
                  
                  <h2 class="noBorder">Completed Matches</h2>
                  
                  
                  <div class="form-group col-md-12 noPadding overflow">
                  <!-- <div class="form-group"> -->
                  <c:choose>
                       <c:when test="${completedMatchesListSize == 0 }">
                      <table style="width: 100% !important; font-size: 13px;">
                        <thead class="">
                         <tr>
                         <th>S.No</th>
                          <th style="width:110px;">Date (MM/DD/YYYY)</th>
                                          <th>Win Team</th>
                                          <th>Loss Team</th>
                                         <!--  <th>Ground</th> -->
                                          <th>Tournament</th>
                                         <!--  <th>Umpire</th>
                                          <th>Scorer</th> -->
                                          <th  style="min-width:200px;">Result</th>
                                          <th>Score card</th>
                                          <th>Win team Points</th>
                                          <th>Loss team Points</th>
                                          <th>Edit Points</th>
                                            
                         </tr>
                        </thead>

                        </table>
                       <!--  </div> --><!-- form group end -->
                     <span class="noContentDivRed"> No completed Matches</span>
                       

                       </c:when>
                       <c:otherwise>
                       <!-- <div class="form-group"> -->
						<table id="disputemanagement" style="width: 100% !important; font-size: 13px;">
                       <thead> 
                        <tr>
                        <th>S.No</th>
                           <th style="width:110px;">Date (MM/DD/YYYY)</th>
                                          <th>Win Team</th>
                                          <th>Loss Team</th>
                                         <!--  <th>Ground</th> -->
                                          <th>Tournament</th>
                                          <!-- <th>Umpire</th>
                                          <th>Scorer</th> -->
                                          <th  style="min-width:200px;">Result</th>
                                          <th>Score Card</th>
                                          <th>Win team Points</th>
                                          <th>Loss team Points</th>
                                          <th>Edit Points</th>
                                            
                        </tr>
                       </thead>

                       <tbody>
                          <c:forEach var="completed" items="${completedMatchesList}" varStatus = "varloop">
                       <tr>
                       <td>${varloop.count}</td>
                       <td><p id="formatDate_${completed.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${completed.gameDate}" /></p><script>document.writeln(test("${completed.tournamentSchedulerId}"));</script></td>
                       
                       <%-- <td><fmt:formatDate value="${completed.gameDate}"
														pattern="MM/dd/yyyy" /></td> --%>
                         <%-- <td>${completed.gameDate}</td> --%>
                          <td><a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.winTeamId}">${completed.winTeamName}</a></td>
                          <td><a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.loseTeamId}">${completed.loseTeamName}</a></td>
                        <%--   <td>${completed.groundName}</td> --%>
                          
                          <td>${completed.tournamentName}</td>
                          
                         <%--  <td> <div >
									<c:forEach var="umpire"
										items="${completed.umpireNamesList }" varStatus="loop">
												<span><a href="${pageContext.request.contextPath}/buddy/${umpire.umpireName}/${umpire.umpireId}">${umpire.umpireName}</a><c:if test="${!loop.last}">,</c:if></span>		
											</c:forEach></div>
												</td> 
						
						
						<td> <div>
                             <c:forEach var ="scorer" items="${completed.scorerNamesList}" varStatus="loop">
                                   <span><a href="${pageContext.request.contextPath}/buddy/${scorer.scorerName}/${scorer.scorerId}">${scorer.scorerName}</a><c:if test="${!loop.last}">,</c:if></span>
                                        </c:forEach>
                                        </div></td>		 --%>	
                        
                        <%-- <td align="center"><span class="text-danger">${completed.winTeamName} won</span><br>
							  ${completed.winTeamName} : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  ${completed.loseTeamName} : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}</td> --%>
						
						<c:choose>
                        <c:when test="${completed.statusOfMatch eq 'tie' }">
                        <td align="center"><span class="text-danger">Match Tied</span>
                        
                        
                         <%-- <c:if test="${completed.loseTeamPoints ne 0 && completed.rsnDispMngmnt ne null}">
                         <a style="margin-left: 10px;" onclick="ShowReason('${completed.rsnDispMngmnt}')">Reason</a>
                         </c:if> --%>
                        
                        <br>
                              <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.winTeamId}">${completed.winTeamName}</a> : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.loseTeamId}">${completed.loseTeamName}</a> : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}</td>
                        
                        </c:when>
                        <c:otherwise>
                        
                        <td align="center"><span class="text-danger">${completed.winTeamName} won</span>
                        
                        <%-- <c:if test="${completed.loseTeamPoints ne 0 && completed.rsnDispMngmnt ne null}">
                         <a style="margin-left: 10px;" onclick="ShowReason('${completed.rsnDispMngmnt}')">Reason</a>
                        </c:if> --%>
                        
                        <br>
							  <a href="${pageContext.request.contextPath}/${completed.winTeamName}/board/${completed.winTeamId}">${completed.winTeamName}</a> : ${completed.winTeamRuns}/${completed.winTeamWickets} in ${completed.winTeamOvers}<br>
							  <a href="${pageContext.request.contextPath}/${completed.loseTeamName}/board/${completed.loseTeamId}">${completed.loseTeamName}</a> : ${completed.loseTeamRuns}/${completed.loseTeamWickets} in ${completed.loseTeamOvers}</td>
                        
                        </c:otherwise>
                        </c:choose>
						
                         <td align="center"><a href="#" onclick="showScoreCard('${completed.tournamentSchedulerId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
                                          <td align="center" id="winTeamId_${varloop.count}">${completed.winTeamPoints  }</td>
                                         <%--  <td align="center" id="loseTeamId_${varloop.count}">${completed.loseTeamPoints}</td> --%>
                                          <%-- <td align="center" id="loseTeamId_${varloop.count}"><p id="loseTeamId1_${varloop.count}" style="margin-top: 10px; margin-bottom: -2px;">${completed.loseTeamPoints}</p> --%>
                                          
                                          <c:choose>
                                          <c:when test="${completed.loseTeamPoints ne 0 && completed.rsnDispMngmnt ne null}">
                                          <td align="center" id="loseTeamId_${varloop.count}"><p id="loseTeamId1_${varloop.count}" style="margin-top: 10px; margin-bottom: -2px;">${completed.loseTeamPoints}</p>
                                          </c:when>
                                          <c:otherwise>
                                          <td align="center" id="loseTeamId_${varloop.count}"><p id="loseTeamId1_${varloop.count}" style="margin-top: 0px; margin-bottom: -2px;">${completed.loseTeamPoints}</p>
                                          </c:otherwise>
                                          
                                          </c:choose>
                                          
                                          
                                          <c:if test="${completed.loseTeamPoints ne 0 && completed.rsnDispMngmnt ne null}">
                         <a  onclick="ShowReason('${completed.rsnDispMngmnt}')" style="color: red; font-size:10px; cursor: hand;">Reason</a>
                        </c:if>
                                          
                                          
                                          
                                          
                                          </td>
                                          <%-- <c:choose>
                                          <c:if test="${completed.loseTeamPoints ne 0 && completed.rsnDispMngmnt ne ''}">
                                          <td align="center" id="loseTeamId_${varloop.count}">${completed.loseTeamPoints}</td>
                                          </c:if>
                                          <c:otherwise>
                                          <td align="center" id="loseTeamId_${varloop.count}">${completed.loseTeamPoints}</td>
                                          </c:otherwise>
                                          </c:choose> --%>
                                          
                                          
                          <td align="center" id="editButton_${varloop.count}"><a href="javascript:void(0)" onclick="editScoreCard('${completed.tournamentSchedulerId}','${varloop.count}')"><i class="fa fa-pencil editIcon"></i></a></td>
                        </tr>
                      </c:forEach>
                
                        
					</tbody>
                 </table>  
                                 
                         </c:otherwise>
                       </c:choose> 
                  
                                       	
                         <!--  </div> --><!-- form group end -->        
                            </div>
                            <c:if test="${completedMatchesListSize >= 10 }">
            <button class="btn btn-default dBtn pull-right lodbtn" onclick="loadMoreDetails()">LOAD MORE</button>
            </c:if>
          	<input type="hidden" value="" id="hiddenId">
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file ="Footer.jsp" %>
 <script src="${pageContext.request.contextPath }/js/jquery.colorbox.js"></script>
 
 <script>
 var EndNode=0;
 var loopNode=10;
 function loadMoreDetails()
 {
	 var boardid="${boardId}";
	 var endnode = EndNode + 10;
	 EndNode = EndNode + 10;
	 
	 var request={
			 boardId : boardid,
			 endNode : endnode
	 }
	 console.log(request);
	  $.ajax({
		 type : "post",
		 url:"${pageContext.request.contextPath}/loadMoreDisputeManagement",
		 data:JSON.stringify(request),
		 contentType:"application/json",
		 success:function(res)
		 {
			if(res.length != 0)
				{
				var htm='';
				for(var i in res)
					{
					
					var count= ++loopNode;
					
					
				htm+="<tr>";
				htm+="<td>"+count+"</td>"
				var dateNewObject = getDateInObject(res[i].gameDate);
				htm+="<td>"+dateNewObject+"</td>";	
				htm+="<td><a href='${pageContext.request.contextPath}/"+res[i].winTeamName+"/board/"+res[i].winTeamId+"'>"+res[i].winTeamName+"</a></td>";
				htm+="<td><a href='${pageContext.request.contextPath}/"+res[i].loseTeamName+"/board/"+res[i].loseTeamId+"'>"+res[i].loseTeamName+"</a></td>";
				/* htm+="<td>"+res[i].groundName+"</td>"; */
				htm+="<td>"+res[i].tournamentName+"</td>";	
				
				
				//    Umpire
				/* 
				htm+="<td> <div>";
				var umpire=res[i].umpireNamesList;
				if(umpire !=null){
					for(var j in umpire)
				{
					htm+="<span><a href='${pageContext.request.contextPath}/buddy/"+umpire[j].umpireName+"/"+umpire[j].umpireId+"'>"+umpire[j].umpireName+"</a>";
					if(j == umpire.length-1){}else{
						htm+=",";
					}
				htm+="</span>";
				}	
				}
				
				htm+="</div></td>";
				
				//    Scorer
				htm+="<td><div>";
				var scorer=res[i].scorerNamesList;
				if(scorer != null){
				for(var k in scorer)
					{
					htm+="<span><a href='${pageContext.request.contextPath}/buddy/"+scorer[k].scorerName+"/"+scorer[k].scorerId+"'>"+scorer[k].scorerName+"</a>";
				if(k == scorer.length-1){}else{htm+=",";}
				htm+="</span>";
					}}
				htm+="</div></td>";
				 */
				// tie win check
				
				
                if(res[i].statusOfMatch == "tie")
                	{
                    htm+="<td align='center'><span class='text-danger'>Match Tied</span>";
                    
                   /*  if(res[i].loseTeamPoints != 0 && res[i].rsnDispMngmnt != null)
            		{
                htm+="<a style='margin-left: 10px;' onclick=ShowReason('"+res[i].rsnDispMngmnt.replace(/ /g,"-")+"')>Reason</a>";
            		} */
                    htm+="<br>";
                    
                	}else{
                	htm+="<td align='center'><span class='text-danger'>"+res[i].winTeamName+" won</span>";	
                	/* if(res[i].loseTeamPoints != 0 && res[i].rsnDispMngmnt != null)
            		{
                htm+="<a style='margin-left: 10px;' onclick=ShowReason('"+res[i].rsnDispMngmnt.replace(/ /g,"-")+"')>Reason</a>";
            		} */
                	htm+="<br>";
                	}
                    htm+="<a href='${pageContext.request.contextPath}/"+res[i].winTeamName+"/board/"+res[i].winTeamId+"'>"+res[i].winTeamName+"</a> : "+res[i].winTeamRuns+"/"+res[i].winTeamWickets+" in "+res[i].winTeamOvers+"<br>";
				    htm+="<a href='${pageContext.request.contextPath}/"+res[i].loseTeamName+"/board/"+res[i].loseTeamId+"'>"+res[i].loseTeamName+"</a> : "+res[i].loseTeamRuns+"/"+res[i].loseTeamWickets+" in "+res[i].loseTeamOvers+"</td>";
					
					
					htm+="<td align='center'><a href='#' onclick=showScoreCard('"+res[i].tournamentSchedulerId+"')><i class='fa fa-newspaper-o editIcon'></i></a></td>";
					htm+="<td align='center' id='winTeamId_"+count+"'>"+res[i].winTeamPoints+"</td>";
					/* htm+="<td align='center' id='loseTeamId_"+count+"'><p id='loseTeamId1_"+count+"' style='margin-top: 10px; margin-bottom: -2px;'>"+res[i].loseTeamPoints+"</p>"; */
					
					if(res[i].loseTeamPoints != 0 && res[i].rsnDispMngmnt != null){
						htm+="<td align='center' id='loseTeamId_"+count+"'><p id='loseTeamId1_"+count+"' style='margin-top: 10px; margin-bottom: -2px;'>"+res[i].loseTeamPoints+"</p>";
					}else
						{
						htm+="<td align='center' id='loseTeamId_"+count+"'><p id='loseTeamId1_"+count+"' style='margin-top: 0px; margin-bottom: -2px;'>"+res[i].loseTeamPoints+"</p>";
						}
					
					
					
					
					if(res[i].loseTeamPoints != 0 && res[i].rsnDispMngmnt != null)
            		{
                htm+="<a onclick=ShowReason('"+res[i].rsnDispMngmnt.replace(/ /g,"-")+"' style='color: red; font-size:10px; cursor: hand;')>Reason</a>";
            		}
					
					
					htm+="</td>";
					htm+="<td align='center' id='editButton_"+count+"'><a href='javascript:void(0)' onclick=editScoreCard('"+res[i].tournamentSchedulerId+"','"+count+"')><i class='fa fa-pencil editIcon'></i></a></td>";
					htm+="</tr>";
					}
				$("#disputemanagement").append(htm);
				
				}else{
					displaynotification("No More Data",1000);
				}
		 }
		 
	 }) 
	 
	 
 }
 
 </script>
 
 
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>

  <script>
  
  function ShowReason(Rea)
  {
	//  alert(Reason);
	var reason=Rea.replace(/-/g," ");
	  $("#reasonGiven").text(reason);
	  $("#ReasonPopup").show()
  }
  function ReasonCancel()
  {
	  $("#ReasonPopup").hide()
  }
  
  function editScoreCard(id,count){
	  document.getElementById("hiddenId").value = id;
	  var winPoints = $("#winTeamId_"+count).html();
	  var losePoints = $("#loseTeamId1_"+count).html();
	  console.log(winPoints+" "+losePoints);
	  
	  /* var htm ="";
	  htm += "<input type='text' id='winTeamPoints_"+count+"' name='winTeamPoints' value = "+winPoints+" onkeyup=validationFunction('winTeamPoints_"+count+"','winTeamError_"+count+"') style='width: 40px;'><div style='height: 15px;'><span id='winTeamError_"+count+"' style='color:red;font-size:13px;float: left;width: 100%;'></div></span>";
	  $("#winTeamId_"+count).html(htm);
	  
	  var htm1 = "";
	  htm1 += "<input type='text' id='loseTeamPoints_"+count+"' name='loseTeamPoints' value="+losePoints+" onkeyup=validationFunction('loseTeamPoints_"+count+"','loseTeamError_"+count+"') style='width: 40px;'><div style='height: 15px;'><span id='loseTeamError_"+count+"' style='color:red;font-size:13px;float: left;width: 100%;'></div></span>";
	  $("#loseTeamId_"+count).html(htm1); */
	  
	  var htm ="";
	  htm += "<input type='text' id='winTeamPoints_"+count+"' name='winTeamPoints' value = "+winPoints+" onkeyup=validationFunction('winTeamPoints_"+count+"','winTeamError_"+count+"') style='width: 40px;'></span>";
	  $("#winTeamId_"+count).html(htm);
	  
	  var htm1 = "";
	  htm1 += "<input type='text' id='loseTeamPoints_"+count+"' name='loseTeamPoints' value="+losePoints+" onkeyup=validationFunction('loseTeamPoints_"+count+"','loseTeamError_"+count+"') style='width: 40px;'></span>";
	  $("#loseTeamId_"+count).html(htm1);
	  
	  var htm2 = "";
	  htm2 += "<input type='button' id='addButton' onclick=updatePoints("+count+",'winTeamPoints_"+count+"','winTeamError_"+count+"','loseTeamPoints_"+count+"','loseTeamError_"+count+"',"+winPoints+","+losePoints+") name ='addButton' value='Add'>";
	  $("#editButton_"+count).html(htm2);
	  
	 // $("#winTeamId_"+count).replaceWith("<td align='center' id='winTeamId_"+count+"'><input type='text' id='winTeamPoints_"+count+"' name='winTeamPoints' value = "+winPoints+"></td>");
	  //$("#loseTeamId_"+count).replaceWith("<td align='center' id='loseTeamId_"+count+"'><input type='text' id='loseTeamPoints_"+count+"' name='loseTeamPoints' value="+losePoints+"></td>");
	 // $("#editButton_"+count).replaceWith("<td align='center' id='editButton_"+count+"'><input type='button' id='addButton' onclick='updatePoints("+count+")' name ='addButton' value='Add'></td>");
  }
  
  function updatePoints(count,winTeamId,winTeamErrorId,loseTeamId,loseTeamErrorId,prewin,preloss){
	  
	
		  var winPoint = $("#"+winTeamId).val();
		  var losePoint = $("#"+loseTeamId).val();
		  var numbers = /^[0-9]+$/;  
		  
		  var previouspoints=prewin+preloss;
		  var newpoints=Number(winPoint)+Number(losePoint);
		  
		  //alert(previouspoints+" "+newpoints);
		  
		  if(winPoint == ''){
			 /*  $("#"+winTeamErrorId).html("Please enter valid points"); */
			 displaynotification('Please enter valid points',2000);
			  return false;
		  }else if(!winPoint.match(numbers)){
				/* $("#"+winTeamErrorId).html("Please enter numbers only"); */
				displaynotification('Please enter numbers only',2000);
				return false;
		  }else if(losePoint == ''){
			  /* $("#"+loseTeamErrorId).html("Please enter valid points"); */
			  displaynotification('Please enter valid points',2000);
			  return false;
		  }else if(!losePoint.match(numbers)){
				/* $("#"+loseTeamErrorId).html("Please enter numbers only"); */
				displaynotification('Please enter numbers only',2000);
				return false;
		  }else if(prewin == winPoint && preloss == losePoint){
		  
			  $("#NochangesPopup").show();
      		  return false;
		  
		  }else if(previouspoints != newpoints) {
			  
			  //displaynotification('Points must be '+(prewin+preloss)+'',2000);
			  var inputText="Win points of this tournament is "+(prewin+preloss);
				  
			  $("#Trophywinpoint").text(inputText);
			  
			  $("#HighValuePopup").show();
			  
		  return false;  
			  
			  
			  
  	  
  }else if(winPoint > 10){
			 /*  $("#"+winTeamErrorId).html("Points should be below 10"); */
			 displaynotification('Points should be below 10',2000);
			  return false;
		  }else if(losePoint > 10){
			 /*  $("#"+loseTeamErrorId).html("Points should be below 10"); */
			 displaynotification('Points should be below 10',2000);
			  return false;
		  }else{
			 /*  $("#"+winTeamErrorId).html(" ");
			  $("#"+loseTeamErrorId).html(" "); */
			  
			  var tournamentSchedulerId = $("#hiddenId").val();
			  var boardId = "${boardId}";
			  
          	$("#Schedulertournamentid").val(tournamentSchedulerId);
          	$("#Winpoint").val(winPoint);
          	$("#losspoint").val(losePoint);
          	$("#cancelReasonPopup").show();
          	
          	
          	
          	
          	
          	
			 /*  
			  var bean = {
					  tournamentSchedulerId: tournamentSchedulerId,
					  winTeamPoints : winPoint,
					  loseTeamPoints : losePoint,
			  }
			  $.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/updateWinPoints",
				data:JSON.stringify(bean),
				contentType :"application/json",
				success:function(res){
					window.location.href = "${pageContext.request.contextPath}/DisputeManagement/boardId/"+boardId;
				},
				error:function(err){
					console.log(err);
				}
				  
			  }); */
			  
		  }
		  
	
  }
  
  function okFunction()
  {
	  var reason=$("#reasonId").val();	  
	  if(reason.length == 0)
		  {
		  displaynotification('Please enter the reason',2000);
		  return false;
		  }
	  $("#cancelReasonPopup").hide();
	  
	  var tournamentSchedulerId=$("#Schedulertournamentid").val();
	  var winPoint=$("#Winpoint").val();
	  var losePoint=$("#losspoint").val();
	 
	  var boardId = "${boardId}";
		  
		  
	   var bean = {
			  tournamentSchedulerId: tournamentSchedulerId,
			  winTeamPoints : winPoint,
			  loseTeamPoints : losePoint,
			  reasonDispMng : reason,
	  }
	  $.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/updateWinPoints",
		data:JSON.stringify(bean),
		contentType :"application/json",
		success:function(res){
			window.location.href = "${pageContext.request.contextPath}/DisputeManagement/boardId/"+boardId;
		},
		error:function(err){
			console.log(err);
		}
		  
	  }); 
  }
 
  function showScoreCard(id){
		 var boardId ="${boardId}";
		 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
	 }

  function validationFunction(id,errorId,count){
	
	  var numbers = /^[0-9]+$/;  
	  
		var winValue = $('#'+id).val();
		if(winValue == ''){
			$("#"+errorId).html("Please enter valid points");
			return false;
		}else if(!winValue.match(numbers)){
			$("#"+errorId).html("Please enter numbers only");
			return false;
		}else if(winValue > 10){
			$("#"+errorId).html("Points should be below 10");
			return false;
		}else{
			  $("#"+errorId).html('');
			  return true;
		}
  }
  
                 
                  
                  function Nochanges()
                  {
                	
                	  $("#NochangesPopup").hide();
                	  $("#HighValuePopup").hide();
                  }
                  function cancelNochanges()
                  {
                	  $("#NochangesPopup").hide();
                	  $("#HighValuePopup").hide();
                	  location.reload();
                  }
  
  </script> 
 
   
   
</body>
</html>
