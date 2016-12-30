<<<<<<< HEAD
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
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png" > </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	 <%@ include file="LeaugeManagementSideMenu.jsp" %>

      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <div class="col-md-10"><h1 class="pageHead noBorder">Centuries
                  
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
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWiseCenturies(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
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
                  <form action="${pageContext.request.contextPath}/leaguecenturieslist" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                                              
                        	<input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${CenturySearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${CenturySearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${CenturySearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">         

                      
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" name="tournmentName" id="tournmentInField" onkeyup="tournmentSearch(this)" value="${CenturySearch.tournmentName}"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV" style="width: 95%;">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" name="homeTeamName" id="teamBoardInField" onkeyup="teamSearch(this)" value="${CenturySearch.homeTeamName}"> 
                     		<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList" style="width: 90%;">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" name="againTeamName" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)" value="${CenturySearch.againTeamName}">
                     		<div class="autoComplete" style="display: none;" id="searchAgainestTeamBoardDIV">
                		<ul id="searchAgainestTeamBoardList" style="width: 93%;">
                    		
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
    <c:forEach items="${centueryList}" var="century">
       <%--  <c:choose>
            <c:when test="${century.size eq 0}">
            	
            </c:when>
            <c:otherwise> --%>

                <div class="col-md-12 whiteBox font13px" id="centTable1">
                	
                    <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : ${century.tournamentName}</span>
                    <div class="form-group">
                    <table class="css-serial" >
                        <thead>
                            <tr>
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
                        <%-- <c:forEach items="${century.matchsheduledtolist}" var="matches"> --%>
                            <c:forEach items="${century.playerlist}" var="player" varStatus="index">

                                <tbody>
                                    <tr>
                                         <td></td>
                                            <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span class="text-danger"><img alt="" src="${player.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" width="30px" style="margin-right: 10px;"></span><b>${player.userName}</b> </a></td>
                                            <td>${player.totalruns}</td>
                                            <td class="tdAlignLeft">
                                                <a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/${player.homeTeamId}"><img src="${player.homeTeamImgUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" style="width:30px;"> ${player.homeTeamName}</a>
                                            </td>
                                            <td class="tdAlignLeft">
                                                <a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/${player.awayTeamId}"><img src="${player.awayTeamImgUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" style="width:30px;"> ${player.awayTeamName}</a>
                                            </td>
                                            <c:choose>
                                            <c:when test="${player.groundName ne null && player.groundName ne '' }">
                                            <td class="tdAlignLeft">${player.groundName}</td>
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
           <%--  </c:otherwise>
        </c:choose> --%>
    </c:forEach>
    </div>
    <c:choose>
        <c:when test="${empty centueryList}">
        	<table class="css-serial" >
                        <thead>
                            <tr>
                                 <th>S.No</th> 
                                <th>Player Name</th>
                                <th>Score</th>
                                <th>Team Name</th>
                                <th>Team Against</th>
                                <th>Ground</th>
                                <th>Match Date</th>
                                <th>Score Card</th>
                            </tr>
                        </thead> </table>
            <div style="color: red; margin-top: 16px; text-align: center;">No Details Available</div>
        </c:when>
    </c:choose>

     </div> 
</div>

                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->

</section>
<%@ include file="Footer.jsp" %>
   
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/centuries.js"></script>
   <script type="text/javascript">
   $(function(){
	  // showfun(1000); 
	  
	  
	  
	  
   });
   </script>
    <script type="text/javascript">
    
    var url = window.location.href;
    
    if(url.indexOf('leaguecenturieslist') != -1){
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
 
    /* function yearWiseCenturies(val) {
		$(
				'<form action="${pageContext.request.contextPath}/leaguecenturieslist" method="POST">'
				+ '<input type="hidden" name="filterByYear" value="' + val + '">'
				+ '<input type="hidden" name="boardId" value="' + "${bid}" + '">'
				+ '</form>').submit();
	
} */
var i=0;
function yearWiseCenturies(val) {
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
			url : "${pageContext.request.contextPath}/yearWiseCenturies",
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
							html += '<th>Score</th>';
							html += '<th>Team Name</th>';
							html += '<th>Team Against</th>';
							html += '<th>Ground</th>';
							html += '<th>Match Date</th>';
							html += '<th>SCORE CARD</th>';
							html += '</tr></thead><tbody align="center">';
						
							html += '<tr>';
							/* var mat = res[i].matchsheduledtolist; */
							
							/* for (var j=0;j<mat.length;j++){ */
								
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
										html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><span class="text-danger"><img alt="" src="'+plist[k].userImageUrl+'" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;" width="30px" style="margin-right: 10px;"></span><b>'+plist[k].userName+'</b> </a></td>';
										 }else{
											 html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><span class="text-danger"><img alt="" src=${pageContext.request.contextPath}/images/profileIcon.png;" width="30px" style="margin-right: 10px;"></span><b>'+plist[k].userName+'</b> </a></td>';
										 }
										
										html += '<td class="tdAlignLeft">' + plist[k].totalruns + '</td>';
										              
										html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/' + plist[k].homeTeamName + '/board/' + plist[k].homeTeamId + '"><img src="'+plist[k].homeTeamImgUrl+ '"style="margin-right: 10px; width:30px;">' + plist[k].homeTeamName + '</a></td>';
									    html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/' + plist[k].awayTeamName + '/board/' + plist[k].awayTeamId + '"><img src="'+plist[k].awayTeamImgUrl+ '"style="margin-right: 10px; width:30px;">' + plist[k].awayTeamName + '</a></td>';
									   
									    if(plist[k].groundName != null && plist[k].groundName != ""){
									    html += '<td class="tdAlignLeft">' +plist[k].groundName+ '</td>';}
									    else
									    	{
									    	html += '<td>-</td>';
									    	}
										html += '<td class="tdAlignLeft">'+dateNewObject+'</td>';
										 
								        html += '<td align="center"><a href="${pageContext.request.contextPath}/showScoreCard/boardId/' +"${boardId}"+ '/matchId/'+plist[k].sheduledId+'"><i class="fa fa-newspaper-o"></i></a></td>';
								        html += '</tr>'; 
									}
								}
								
							/* } */
						
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
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
       <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
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
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png" > </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	 <%@ include file="LeaugeManagementSideMenu.jsp" %>

      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <div class="col-md-10"><h1 class="pageHead noBorder">Centuries
                  
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
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWiseCenturies(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
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
                  <form action="${pageContext.request.contextPath}/leaguecenturieslist" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                                              
                        	<input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${CenturySearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${CenturySearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${CenturySearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">         

                      
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" name="tournmentName" id="tournmentInField" onkeyup="tournmentSearch(this)" value="${CenturySearch.tournmentName}"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV" style="width: 95%;">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" name="homeTeamName" id="teamBoardInField" onkeyup="teamSearch(this)" value="${CenturySearch.homeTeamName}"> 
                     		<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList" style="width: 90%;">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" name="againTeamName" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)" value="${CenturySearch.againTeamName}">
                     		<div class="autoComplete" style="display: none;" id="searchAgainestTeamBoardDIV">
                		<ul id="searchAgainestTeamBoardList" style="width: 93%;">
                    		
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
    <c:forEach items="${centueryList}" var="century">
        <c:choose>
            <c:when test="${century.size eq 0}">
            </c:when>
            <c:otherwise>

                <div class="col-md-12 whiteBox font13px" id="centTable1">
                	
                    <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : ${century.tournamentName}</span>
                    <div class="form-group">
                    <table class="css-serial" >
                        <thead>
                            <tr>
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

                                <tbody>
                                    <tr>
                                         <td></td>
                                            <td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><img alt="" src="${player.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" ><b>${player.userName}</b><div class="clearfix"></div> </a></td>
                                            <td>${player.totalruns}</td>
                                            <td class="tdAlignLeft TB_table">
                                                <a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/${player.homeTeamId}"><img src="${player.homeTeamImgUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';"><b> ${player.homeTeamName}</b><div class="clearfix"></div></a>
                                            </td>
                                            <td class="tdAlignLeft TB_table">
                                                <a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/${player.awayTeamId}"><img src="${player.awayTeamImgUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" ><b> ${player.awayTeamName}</b><div class="clearfix"></div></a>
                                            </td>
                                            <td class="tdAlignLeft">${matches.groundName}</td>
                                            <td>
                                                <fmt:formatDate pattern="MM/dd/YYYY" value="${matches.gameDate}" />
                                            </td>
                                            <td align="center"><a href="${pageContext.request.contextPath}/showScoreCard/boardId/${BoradInfo.boardId}/matchId/${matches.sheduledId}"><i class="fa fa-newspaper-o"></i></a></td>
                                    </tr>
                                </tbody>
                            </c:forEach>
                        </c:forEach>
                    </table>
                </div>
                </div><!-- form group -->
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </div>
    <c:choose>
        <c:when test="${empty centueryList}">
            <div style="color: red; margin-top: 16px;">No Tournament available</div>
        </c:when>
    </c:choose>

     </div> 
</div>

                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->

</section>
<%@ include file="Footer.jsp" %>
   
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/centuries.js"></script>
   <script type="text/javascript">
   $(function(){
	  // showfun(1000); 
	  
	  
	  
	  
   });
   </script>
    <script type="text/javascript">
    
    var url = window.location.href;
    
    if(url.indexOf('leaguecenturieslist') != -1){
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
 
    /* function yearWiseCenturies(val) {
		$(
				'<form action="${pageContext.request.contextPath}/leaguecenturieslist" method="POST">'
				+ '<input type="hidden" name="filterByYear" value="' + val + '">'
				+ '<input type="hidden" name="boardId" value="' + "${bid}" + '">'
				+ '</form>').submit();
	
} */
var i=0;
function yearWiseCenturies(val) {
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
			url : "${pageContext.request.contextPath}/yearWiseCenturies",
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
										html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><img alt="" src="'+plist[k].userImageUrl+'" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;" ><b>'+plist[k].userName+'</b> <div class="clearfix"></div></a></td>';
										html += '<td class="tdAlignLeft">' + plist[k].totalruns + '</td>';
										              
										html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/' + plist[k].homeTeamName + '/board/' + plist[k].homeTeamId + '"><img src="'+plist[k].homeTeamImgUrl+ '"><b>' + plist[k].homeTeamName + '</b><div class="clearfix"></div></a></td>';
									    html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/' + plist[k].awayTeamName + '/board/' + plist[k].awayTeamId + '"><img src="'+plist[k].awayTeamImgUrl+ '"><b>' + plist[k].awayTeamName + '</b><div class="clearfix"></div></a></td>';
									    html += '<td class="tdAlignLeft">' +mat[j].groundName+ '</td>';
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
    </script>
</body>
</html>
>>>>>>> 54bab19c58bde60aeb971a37e418c05bb2f4f3de
