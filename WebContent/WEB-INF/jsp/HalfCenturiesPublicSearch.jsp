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
       <form action="${pageContext.request.contextPath}/profile/leaguehalfcenturieslist" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="pageHead noBorder">Half Centuries
                  
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
                  
                  </h1>
                  
                  </div></div>
                  
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                        <input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${HalfCentrrySearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${HalfCentrrySearch.tournamentId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${HalfCentrrySearch.tournamentId}" name="againstTeamId">  
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
    <!-- <div class="col-md-12 whiteBox font13px"> -->
    <c:forEach items="${halfcentueryList}" var="century" varStatus="trcount">
        <c:choose>
            <c:when test="${century.size eq 0}">
            </c:when>
            <c:otherwise>
                <div class="col-md-12 whiteBox font13px">
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
                                            <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span
																	class="text-danger">${player.userName}</span> </a></td>
                                            <td>${player.totalruns}</td>
                                            <td class="tdAlignLeft">
                                                <a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/ ${player.homeTeamId}"><img src="${player.homeTeamImgUrl}?" onError="imgError()" style="width: 30px;"> ${player.homeTeamName}</a>
                                            </td>
                                            <td class="tdAlignLeft">
                                                <a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/ ${player.awayTeamId}"><img src="${player.awayTeamImgUrl}?" onError="imgError()" style="width: 30px;"> ${player.awayTeamName}</a>
                                            </td>
                                            <td class="tdAlignLeft">${matches.groundName}</td>
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


 
	$(window).bind("pageshow", function() {
		  $("#tournmentInField").val("");
		  $("#teamBoardInField").val("");
		  $('#selectTeamBoardId').val("");
		   $('#SelectTournMent').val("");
	  $("#selectAgainestTeamBoardId").val("");
	  $('#againestteamBoardInField').val("");
	  
  });
	



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
