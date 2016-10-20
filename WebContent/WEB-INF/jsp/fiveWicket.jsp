
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

      <form action="${pageContext.request.contextPath}/leagueTopFiveWicketsList" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="pageHead noBorder">5fer
                  
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
                  
                  </h1>
                  
                  </div></div>
                  
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
                  
            <div class="col-md-10 pull-right">
    <!-- <div class="col-md-12 whiteBox"> -->

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
                <span style="color:red">No Details Available</span>


            </c:when>
            <c:otherwise>


                <c:choose>
                    <c:when test="${fiveWicket.size eq 0}">
                    </c:when>
                    <c:otherwise>


                        <div class="col-md-12 whiteBox">
                            <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">${fiveWicket.tournamentName}</span>

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
                                <c:forEach items="${fiveWicket.matchsheduledtolist}" var="matches">
                                    <c:forEach items="${matches.playerlist}" var="player" varStatus="index">
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
                                                        <td class="tdAlignLeft">${player.userName} </td>
                                                        <td><span class="text-danger">${player.wickets}</span></td>
                                                       <%--  <td><a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/${player.homeTeamId}">${player.homeTeamName}</a></td>
                                                        <td><a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/${player.awayTeamId}">${player.awayTeamName}</a> </td>
                                                         --%>
                                                         <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/${player.homeTeamId}"><img 	src="${player.homeTeamImgUrl}" style="width: 30px;margin-right: 10px; ">${player.homeTeamName}</a></td>

														<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/${player.awayTeamId}"><img src="${player.awayTeamImgUrl}" style="width: 30px;margin-right: 10px; ">${player.awayTeamName}</a> </td>
                                                         
                                                         <td>${matches.groundName}</td>
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
                    </c:otherwise>
                </c:choose>
            </c:otherwise>
        </c:choose>
    </c:forEach>
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
 
    
    </script>
   
   
</body>
</html>
