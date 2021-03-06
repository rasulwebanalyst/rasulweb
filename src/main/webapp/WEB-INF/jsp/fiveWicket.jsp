
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
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">  
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/topList.js"></script>
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
<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="LeaugeManagementSideMenu.jsp" %>

     
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <div class="col-md-10"> <h1 class="pageHead noBorder">5fer
                  
                 <!--  <div class="h1Sbox">
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
                  <div class="col-md-2 col-sm-12 col-xs-12" style="display: inline-block;">
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
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWise5fer(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
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
                 <form action="${pageContext.request.contextPath}/leagueTopFiveWicketsList" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">  
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                        
                        <input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${FiveWicketSearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${FiveWicketSearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${FiveWicketSearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">
                        	
                        
                        <div class="col-md-3 noLeftPad"> 
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" id="tournmentInField" name="tournmentName" onkeyup="tournmentSearch(this)" value="${FiveWicketSearch.tournmentName}"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV" style="width: 95%;">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" id="teamBoardInField" name="homeTeamName" onkeyup="teamSearch(this)" value="${FiveWicketSearch.homeTeamName}"> 
                     		<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList" style="width: 91%;">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" name="againTeamName" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)" value="${FiveWicketSearch.againTeamName}">
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
                  
            <div class="col-md-10 pull-right rightnone">
     <div class="col-md-12 whiteBox font13px"> 
     <div id="centTable" >

    <c:forEach items="${fiveWicketResponse}" var="fiveWicket">
        <c:choose>
            <c:when test="${empty fiveWicketResponse}">

                <table class="css-serial">
                    <thead>
                        <tr>
                            <th>S.No</th> 
                            <th>Player Name</th>
                            <th>Wickets</th>
                            <th>Team Name</th>
                            <th>Team Against</th>
                            <th>Ground</th>
                            <th>Match Date</th>
                            <th>Score Card</th>
                        </tr>
                    </thead>
                </table>
                <div style="color: red; margin-top: 16px; text-align: center;">No Details Available</div>


            </c:when>
            <c:otherwise>


                <%-- <c:choose>
                    <c:when test="${fiveWicket.size eq 0}">
                    </c:when>
                    <c:otherwise> --%>


                       <div class="col-md-12 whiteBox font13px" id="centTable1" style="font-size: 12px;">
                            <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : ${fiveWicket.tournamentName}</span>
                   <div class="form-group">
                            <table class="css-serial">
                                <thead>
                                    <tr>
                                         <th>S.No</th> 
                                        <th>Player Name</th>
                                        <th>Wickets</th>
                                        <th>Team Name</th>
                                        <th>Team Against</th>
                                        <th>Ground</th>
                                        <th>Match Date</th>
                                        <th>Score Card</th>
                                    </tr>
                                </thead>


                                <!--    <tr> -->
                                <%-- <c:forEach items="${fiveWicket.matchsheduledtolist}" var="matches"> --%>
                                    <c:forEach items="${fiveWicket.playerlist}" var="player" varStatus="index">
                                        <tbody>


                                            <%-- <c:if test="${fiveWicket.size ne 0}"> --%>
                                                <tr>



                                                    <!-- <tr>    -->
                                                    <%-- <c:choose>
					                        				<c:when test="${index.count eq 1}">
					                        					<td rowspan="${fn:length(matches.playerlist)}" >${fiveWicket.tournamentName}</td>
					                        				</c:when>
					                        				<c:otherwise>
					                        				
					                        				</c:otherwise>
				                        				</c:choose> --%>
                                                        <td></td>
                                                        <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span class="text-danger"><img alt="" src="${player.userImageUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" width="30px" style="margin-right: 10px;"></span><b>${player.userName}</b> </a></td>
                                                        <td><span class="text-danger">${player.wickets}</span></td>
                                                       <%--  <td><a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/${player.homeTeamId}">${player.homeTeamName}</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/${player.awayTeamId}">${player.awayTeamName}</a> </td>
                                                         --%>
                                                         <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/${player.homeTeamId}"><img 	src="${player.homeTeamImgUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" style="width: 30px;margin-right: 10px; ">${player.homeTeamName}</a></td>

														<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/${player.awayTeamId}"><img src="${player.awayTeamImgUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" style="width: 30px;margin-right: 10px; ">${player.awayTeamName}</a> </td>
                                                         
                                                         <%-- <td>${player.groundName}</td> --%>
                                                         
                                                          <c:choose>
                                            <c:when test="${player.groundName ne null && player.groundName ne '' }">
                                            <td>${player.groundName}</td>
                                            </c:when>
                                            <c:otherwise>
                                            <td style="text-align: center;">-</td>
                                            </c:otherwise>
                                            </c:choose>
                                                         
                                                         
                                                         
                                                        <td>
                                                            <fmt:formatDate pattern="MM/dd/YYYY" value="${player.gameDate}" />
                                                        </td>
                                                        <td align="center"><a href="${pageContext.request.contextPath}/showScoreCard/boardId/${BoradInfo.boardId}/matchId/${player.sheduledId}"><i class="fa fa-newspaper-o"></i></a></td>
                                                </tr>
                                        </tbody>
                                    </c:forEach>
                                <%-- </c:forEach> --%>
                            </table>
                        </div>
</div>
                   <%-- </c:otherwise>
                 </c:choose> --%>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </div>
    <!--   </tr> -->





    <!--   </div> -->
</div>

                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file="Footer.jsp" %>
   <script type="text/javascript">
   
   
   var url = window.location.href;
   
   if(url.indexOf('leagueTopFiveWicketsList') != -1){
   	//alert("inside contains");
   }else{
   	//alert('inside not contains');
    
   	$(window).bind("pageshow", function() {
   	 $("#tournmentInField").val("");
  	  $("#teamBoardInField").val("");
  	  $('#selectTeamBoardId').val("");
  	   $('#SelectTournMent').val("");
    $("#selectAgainestTeamBoardId").val("");
    $('#againestteamBoardInField').val("");
     });
   	
   } 
   
   /*  var url = window.location.href;
    
    if(url.indexOf('leagueTopFiveWicketsList') != -1){
    	//alert("inside contains");
    }else{
    	//alert('inside not contains');
    	 $("#tournmentInField").val("");
   	  $("#teamBoardInField").val("");
   	  $('#selectTeamBoardId').val("");
   	   $('#SelectTournMent').val("");
     $("#selectAgainestTeamBoardId").val("");
     $('#againestteamBoardInField').val("");

    } */
 
    
    var i=0;
    function yearWise5fer(val) {
    	if(i==0)
    	 {
    	 i=1;
    	 return false;
    	 }
    	if(val != "Years"){
    		document.getElementById("centuryYearId").innerHTML = val;
        	var year = {
        			boardId : "${boardId}",
        			filterByYear : val,
        		
        	}
        	$('#loading').show();
        	$.ajax({

        		type : "Post",
        		url : "${pageContext.request.contextPath}/yearWise5fer",
        		data : JSON.stringify(year),
        		contentType : "application/json",
        		success : function(res) {
        			$('#centTable').hide();
        			
        			
        			if (res.length != 0) {
        				var html = '';
        				for (var i = 0; i < res.length; i++) {
        					/* if(res[i].size != 0){ */
        						
        						html += '<div class="whiteBox">';
        						html += '<span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : '+res[i].tournamentName+'</span>'
        						html += '<table class="css-serial" id="centTable"><thead><tr>';
        						
        						html += '<th>S.No</th>';
        						html += '<th>Player Name</th>';
        						html += '<th>Wickets</th>';
        						html += '<th>Team Name</th>';
        						html += '<th>Team Against</th>';
        						html += '<th>Ground</th>';
        						html += '<th>Match Date</th>';
        						html += '<th>SCORE CARD</th>';
        						html += '</tr></thead><tbody align="center">';
        					
        						html += '<tr>';
        						/* var mat = res[i].matchsheduledtolist;
        						
        						for (var j=0;j<mat.length;j++){ */
        							
        							var plist = res[i].playerlist;
        							if(plist != null){
        								for(var k=0;k<plist.length;k++){
        									
        									var date  = new Date(plist[k].gameDate);
                							var dateChange = date.toLocaleDateString();
                							console.log(dateChange);
                							var dateNewObject = getDateInObject(plist[k].gameDate);
                							console.log(dateNewObject);
        									 html +='<td></td>';
        									 
        									 if(plist[k].userImageUrl != null && plist[k].userImageUrl != ""){
        									 
        									html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><span class="text-danger"><img alt="" src="'+plist[k].userImageUrl+'" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;" width="30px" style="margin-right: 10px;"></span><b>' +plist[k].userName+ '</b> </a></td>';
        									 }else
        										 {
        										 html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><span class="text-danger"><img alt="" src=${pageContext.request.contextPath}/images/profileIcon.png;" width="30px" style="margin-right: 10px;"></span><b>' +plist[k].userName+ '</b> </a></td>';
        										 }
        									
        									html += '<td class="tdAlignLeft">' + plist[k].wickets + '</td>';
        									              
        									html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/' + plist[k].homeTeamName + '/board/' + plist[k].homeTeamId + '"><img src="'+plist[k].homeTeamImgUrl+ '"style="margin-right: 10px; width:30px;">' + plist[k].homeTeamName + '</a></td>';
        								    html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/' + plist[k].awayTeamName + '/board/' + plist[k].awayTeamId + '"><img src="'+plist[k].awayTeamImgUrl+ '"style="margin-right: 10px; width:30px;">' + plist[k].awayTeamName + '</a></td>';
        								    if(plist[k].groundName != null)
        								    {
        								    html += '<td class="tdAlignLeft">' +plist[k].groundName+ '</td>';}
        								    else{html += '<td>-</td>';}
        									html += '<td class="tdAlignLeft">'+dateNewObject+'</td>';
        									 
        							        html += '<td align="center"><a href="${pageContext.request.contextPath}/showScoreCard/boardId/' +"${boardId}"+ '/matchId/'+plist[k].sheduledId+'"><i class="fa fa-newspaper-o"></i></a></td>';
        							        html += '</tr>'; 
        								}
        							}
        							
        					/* 	} */
        					
        						html += '</tbody>';
        						html += '</table>';
        						html += '</div>';
        						
        						
        					/* } */
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
        				$('#loading').hide();
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
    
    
    
    
    
    
    </script>
   
   
</body>
</html>