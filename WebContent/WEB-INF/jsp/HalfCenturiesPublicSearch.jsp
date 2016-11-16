<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
       <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
<script type="text/javascript">
var pageNum=510;
</script>
<style type="text/css">
.css-serial {
  counter-reset: serial-number;  /* Set the serial number counter to 0 */
}

.css-serial td:first-child:before {
  counter-increment: serial-number;  /* Increment the serial number counter */
  content: counter(serial-number);  /* Display the counter */
}
</style>
</head>
<body>
<%@ include file="CSCommon.jsp" %>
<%-- <%@ include file="BoardHeader.jsp" %>
 --%>
 <%@ include file="BoardHeaderpublic.jsp" %>
 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	 <%@ include file="publicLeaugeManagementSideMenu.jsp" %>
	<%@ include file="BoardFanMenu.jsp" %>	
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		        <div class="col-md-10">  <h1 class="pageHead noBorder">Half Centuries
                  
                  <!-- <div class="h1Sbox">
                                <div class="selectdiv pull-right">
                                    <select class="selectboxdiv">
                                        <option>No of Records</option>
                                        <option>100</option>
                                        <option>200</option>
                                    </select>
                                    <div class="out"></div>    
                                </div>
                      </div> -->
                  
                  </h1></div>
                  				<div class="col-md-2" style="display: inline-block;">
								    <label style="text-align: center;">Filter</label>
								    <div class="selectdiv" style="height: 25px !important;">
								        <c:choose>
								            <c:when test="${yearListSize eq 0 }">
								                <select class="selectboxdiv" id="centuryYears" style="color: black; font-size: 12px !important; height: 25px !important;">
									            	<option style="color: black; font-size: 12px !important; height: 25px !important;"></option>
									            </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div>
								            </c:when>
								            <c:otherwise>
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWiseHalfCenturies(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
			                                        <!-- <option>Years</option> -->
			                                        <c:choose>
			                                        		<c:when test="${defaultload == 'yes'}">
			                                        			 <c:forEach var = "yearsCentury" items="${yearsList}">
			                                        			<option value="${yearsCentury}" style="font-size: 12px; height: 25px !important;">${yearsCentury}</option>	
			                                        			 </c:forEach>
			                                        		</c:when>
			                                        		<c:otherwise>
			                                        			<option value="Years" style="font-size: 12px; height: 25px !important;">Years</option>
			                                        			 <c:forEach var = "yearsCentury" items="${yearsList}">
			                                        				<option value="${yearsCentury}" style="font-size: 12px; height: 25px !important;">${yearsCentury}</option>
			                                        			</c:forEach>
			                                        		</c:otherwise>
			                                        	</c:choose>
								                                       
								                </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div> 
								            </c:otherwise>
								        </c:choose>
								    </div>
								</div>
								<div id="centuryYearId" style="display: none;"></div>
                  
                  </div></div>
                   <form action="${pageContext.request.contextPath}/profile/leaguehalfcenturieslist" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                        <input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${HalfCentrrySearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${HalfCentrrySearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${HalfCentrrySearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">         
                      <input type="hidden" id="paginationType" name="paginationType" value="public">
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder=""  id="tournmentInField" name="tournmentName" onkeyup="tournmentSearch(this)" value="${HalfCentrrySearch.tournmentName}"> 
                        <div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" name="homeTeamName" placeholder="" id="teamBoardInField" onkeyup="teamSearch(this)" value="${HalfCentrrySearch.homeTeamName}"> 
                     	<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" name="againTeamName" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)" value="${HalfCentrrySearch.againTeamName}">
                     	<div class="autoComplete" style="display: none;" id="searchAgainestTeamBoardDIV">
                		<ul id="searchAgainestTeamBoardList">
                    		
                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-2">
                        <button type="submit" class="btn btn-default dBtn GSfbtn pull-right">Submit</button>
                     	</div>
                        
                     </div>
                 
                 </div>
                 </div> 
             </form> 
           <div class="col-md-10 pull-right">
    <div class="col-md-12 whiteBox font13px">
    <div id="centTable" >
    <c:forEach items="${halfcentueryList}" var="century" varStatus="trcount">
        <c:choose>
            <c:when test="${century.size eq 0}">
            </c:when>
            <c:otherwise>
                <div class="col-md-12 whiteBox font13px" id="centTable1">
                    <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament
											Name : ${century.tournamentName}</span>
                    <table class="css-serial">
                        <thead>
                            <tr>
                                <!-- <th>Tournament</th> -->
                                <th>S.No</th>
                                <th>Player Name</th>
                                <th>Score</th>
                                <th>Team Name</th>
                                <th>Team Against</th>
                                <th>Ground</th>
                                <th>Match Date</th>
                                <th>Score Card</th>
                            </tr>
                        </thead>

                        <c:forEach items="${century.matchsheduledtolist}" var="matches">
                            <c:forEach items="${matches.playerlist}" var="player" varStatus="index">
                                <tbody id="halfCenturyListBodyTable">



                                    <tr>


                                   <td></td>
                                        <%-- <c:choose>
				                        				<c:when test="${index.count eq 1}">
				                        					<td rowspan="${fn:length(matches.playerlist)}" ><span class="text-danger">${century.tournamentName}</span></td>
				                        				</c:when>
				                        				<c:otherwise>
				                        				</c:otherwise>
			                        				</c:choose> --%>
                                            <td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}">
																	<img alt="" src="${player.userImageUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" ><b>${player.userName}</b><div class="clearfix"></div> </a></td>
                                            <td>${player.totalruns}</td>
                                            <td class="tdAlignLeft TB_table">
                                                <a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/ ${player.homeTeamId}"><img src="${player.homeTeamImgUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" ><b> ${player.homeTeamName}</b><div class="clearfix"></div></a>
                                            </td>
                                            <td class="tdAlignLeft TB_table">
                                                <a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/ ${player.awayTeamId}"><img src="${player.awayTeamImgUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" ><b> ${player.awayTeamName}</b><div class="clearfix"></div></a>
                                            </td>
                                             <c:choose>
                                            <c:when test="${matches.groundName ne null}">
                                            <td class="tdAlignLeft">${matches.groundName}</td>
                                            </c:when>
                                            <c:otherwise>
                                            <td class="tdAlignLeft">-</td>
                                            </c:otherwise>
                                            </c:choose>
                                            <td>
                                                <fmt:formatDate pattern="MM/dd/YYYY" value="${matches.gameDate}" />
                                            </td>
                                            <td align="center"><a href="${pageContext.request.contextPath}/showScoreCardPublicProfile/boardId/${BoradInfo.boardId}/matchId/${matches.sheduledId}"><i
																	class="fa fa-newspaper-o"></i></a></td>
                                    </tr>

                                </tbody>
                            </c:forEach>
                        </c:forEach>
                    </table>
                </div>
            </c:otherwise>
        </c:choose>
        <%-- </c:if>             --%>
    </c:forEach>
    </div>
                 	<c:choose>
                 		<c:when test="${empty halfcentueryList}">
                 			<div style="color: red; margin-top: 16px;">No Tournament available</div>
                 		</c:when>                 		
                 	</c:choose>
          
               </div>
                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->

</section>
<%@ include file="Footer.jsp" %>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/centuries.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/halfCenturePage.js"></script>
<script>

var url = window.location.href;

if(url.indexOf('leaguehalfcenturieslist') != -1){
	//alert("inside contains");
}else{
	$(window).bind("pageshow", function() {
		  $("#tournmentInField").val("");
		  $("#teamBoardInField").val("");
		  $('#selectTeamBoardId').val("");
		   $('#SelectTournMent').val("");
	  $("#selectAgainestTeamBoardId").val("");
	  $('#againestteamBoardInField').val("");
	  
  });
}
	 var i=0;
	 function yearWiseHalfCenturies(val) {
		 if(i==0)
			 {
			 i=1;
			 return false;
			 }
		 if(val != "Years"){
			 document.getElementById("centuryYearId").innerHTML = val;
				var year = {
						boardId : "${publicBoardId}",
						filterByYear : val,
					
				}
				$('#loading').show();
				$.ajax({
					
					type : "Post",
					url : "${pageContext.request.contextPath}/yearWiseHalfCenturies",
					data : JSON.stringify(year),
					contentType : "application/json",
					success : function(res) {
						$('#centTable').hide();
						
						
						if (res.length != 0) {
							var html = '';
							for (var i = 0; i < res.length; i++) {
								if(res[i].size != 0){
									
									html += '<div class="whiteBox">';
									html += '<span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : '+res[i].tournamentName+'</span>'
									html += '<table class="css-serial" id="centTable"><thead><tr>';
									html += '<th>S.No</th>';
									html += '<th>Player Name</th>';
									html += '<th>Score</th>';
									html += '<th>Team Name</th>';
									html += '<th>Team Against</th>';
									html += '<th>Ground</th>';
									html += '<th>Match Date</th>';
									html += '<th>SCORE CARD</th>';
									html += '</tr></thead><tbody align="center">';
								
									html += '<tr>';
									var mat = res[i].matchsheduledtolist;
									
									for (var j=0;j<mat.length;j++){
										var date  = new Date(mat[j].gameDate);
										var dateChange = date.toLocaleDateString();
										console.log(dateChange);
										var dateNewObject = getDateInObject(mat[j].gameDate);
										console.log(dateNewObject);
										var plist = mat[j].playerlist;
										if(plist != null){
											for(var k=0;k<plist.length;k++){
												 html +='<td></td>';
												html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><img alt="" src="'+plist[k].userImageUrl+'" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;" ><b>' +plist[k].userName+ '</b><div class="clearfix"></div> </a></td>';
												html += '<td class="tdAlignLeft">' + plist[k].totalruns + '</td>';
												              
												html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/' + plist[k].homeTeamName + '/board/' + plist[k].homeTeamId + '"><img src="'+plist[k].homeTeamImgUrl+ '""><b>' + plist[k].homeTeamName + '</b><div class="clearfix"></div></a></td>';
											    html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/' + plist[k].awayTeamName + '/board/' + plist[k].awayTeamId + '"><img src="'+plist[k].awayTeamImgUrl+ '"><b>' + plist[k].awayTeamName + '</b><div class="clearfix"></div></a></td>';
											    if(mat[j].groundName != null){
											    html += '<td class="tdAlignLeft">' +mat[j].groundName+ '</td>';
											    }else
										    	{
										    	html += '<td class="tdAlignLeft">-</td>';
										    	}
												html += '<td class="tdAlignLeft">'+dateNewObject+'</td>';
										        html += '<td align="center"><a href="${pageContext.request.contextPath}/showScoreCard/boardId/' +boardId+ '/matchId/'+mat[j].sheduledId+'"><i class="fa fa-newspaper-o"></i></a></td>';
										        html += '</tr>'; 
											}
										}
										
									}
								
									html += '</tbody>';
									html += '</table>';
									html += '</div>';
									
									
								}
							}
							$("#centTable").html(html).trigger('create');
							$('#centTable').show();
							$('#centTable1').hide();
							$('#tournmentInField').val("");
							$('#teamBoardInField').val("");
							$('#againestteamBoardInField').val("");
							$('#selectTeamBoardId').val("");
							$('#selectAgainestTeamBoardId').val("");
							$('#SelectTournMent').val("");
							$('#loading').hide();
						} else {
					}
				},
				error : function(err) {
					console.log(err);
				}
				})
			console.log(" Matches years :" + val);
		 }
			
		}
	
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
	function getDateInObject(timestamp)
	{
		
		var date = new Date(timestamp);
		var dateNew = new Date(date.getTime() + date.getTimezoneOffset()*60000);
		var offset = new Date().getTimezoneOffset() * 60 * 1000;
		var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		return formatAMPMTime(gettingFromServer); 
	}


/*  $(document).ready(function(){
	  $("#tournmentInField").val("");
	  $("#teamBoardInField").val("");
	  $('#selectTeamBoardId').val("");
	   $('#SelectTournMent').val("");
  $("#selectAgainestTeamBoardId").val("");
  $('#againestteamBoardInField').val("");
  
 }); */
	
  
  </script> 

</body>
</html>
