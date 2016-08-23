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
var pageNum=110;
</script>

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

       <form action="${pageContext.request.contextPath}/leaguehalfcenturieslist" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
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
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${HalfCentrrySearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${HalfCentrrySearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">         
                      <input type="hidden" id="paginationType" name="paginationType" value="private">
                      
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder=""  id="tournmentInField" onkeyup="tournmentSearch(this)" onfocus="tournmentSearch(this)" name="tournmentName" value="${HalfCentrrySearch.tournmentName}"> 
                        <div class="autoComplete" style="display: none;" id="tournmentSearchDIV" >
		                		<ul id="tournmentSearchResultDIV" style="width: 95%;">                    	
		                   		 </ul>
                			</div>
                			<label for=""  id="tournmentInFieldError" generated="true"  class="error"></label>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" id="teamBoardInField" onkeyup="teamSearch(this)" name="homeTeamName" value="${HalfCentrrySearch.homeTeamName}"> 
                     	<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList" style="width: 90%;">
                    		

                   		 </ul>
                		</div>
                			<label for=""  id="teamBoardInFieldError" generated="true"  class="error"></label>                		
                     	</div>
                        
                        <div class="col-md-4">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" id="againestteamBoardInField" name="againTeamName" onkeyup="againestTeamSearch(this)" value="${HalfCentrrySearch.againTeamName}">
                     	<div class="autoComplete" style="display: none;" id="searchAgainestTeamBoardDIV">
                		<ul id="searchAgainestTeamBoardList" style="width: 93%;">
                    		
                   		 </ul>
                		</div>
                			<label for=""  id="againestteamBoardInFieldError" generated="true"  class="error"></label>
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
                  
                  <table>
                        <thead>
                        <tr>
                          <th>Tournament</th>
                          <th>Player Name</th>
                          <th>Score</th>
                          <th>Team Name</th>
                          <th>Team Against</th>
                          <th>Ground</th>
                          <th>Match Date</th>
                          <th>Score Card</th>
                        </tr>
                       </thead>

                       <%-- <tbody id="halfCenturyListBodyTable">
                       <c:forEach items="${halfcentueryList}" var="century">
                       		<c:forEach items="${century.matchsheduledtolist}" var="matches">
                       			<c:forEach items="${matches.playerlist}" var="player" varStatus="index">
                       					<tr>                        				 	
                        				 	  		<c:choose>
				                        				<c:when test="${index.count eq 1}">
				                        					<td rowspan="${fn:length(matches.playerlist)}" ><span class="text-danger">${century.tournamentName}</span></td>
				                        				</c:when>
				                        				<c:otherwise>
				                        				
				                        				</c:otherwise>
			                        				</c:choose>
                        				  	  <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span class="text-danger">${player.userName}</span></a> </td>
                      					      <td>${player.totalruns}</td>
					                       
					                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/ ${player.homeTeamId}"><img src="${player.homeTeamImgUrl}" style="width:30px;"> ${player.homeTeamName}</a></td>
					                          
					                         
					                          
					                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/ ${player.awayTeamId}"><img src="${player.awayTeamImgUrl}" style="width:30px;"> ${player.awayTeamName}</a> </td>
					                        				                          
					                          
					                          <td class="tdAlignLeft">${matches.groundName}</td>
					                          <td><fmt:formatDate pattern="yyyy-MM-dd"  value="${matches.gameDate}" /></td>
					                          <td align="center"><a href="${pageContext.request.contextPath}/showScoreCard/boardId/${BoradInfo.boardId}/matchId/${matches.sheduledId}"><i class="fa fa-newspaper-o"></i></a></td>
					                     </tr>
                       			</c:forEach>
                       		</c:forEach>                      
                       </c:forEach>
                        
                     </tbody> --%>
                     <tbody id="halfCenturyListBodyTable">
                       <c:forEach items="${halfcentueryList}" var="century" varStatus="trcount">
                       		<c:if test="${century.size ne 0}">
                       			<tr>
                       			<td rowspan="${century.size}" ><span class="text-danger">${century.tournamentName}</span></td>
                       			
                       		<c:forEach items="${century.matchsheduledtolist}" var="matches">
                       		
                       			<c:forEach items="${matches.playerlist}" var="player" varStatus="index">
                       				                     				 	
                        				 	  		<c:choose>
				                        				<c:when test="${index.count eq 1}">
				                        					<%-- <td rowspan="${fn:length(matches.playerlist)}" ><span class="text-danger">${century.tournamentName}</span></td> --%>
				                        				</c:when>
				                        				<c:otherwise>
				                        				</c:otherwise>
			                        				</c:choose>
                        				  	  <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span class="text-danger">${player.userName}</span> </a></td>
                      					      <td>${player.totalruns}</td>					                       
					                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.homeTeamName}/board/ ${player.homeTeamId}"><img src="${player.homeTeamImgUrl}?" onError="imgError()"  style="width:30px;"> ${player.homeTeamName}</a></td>
					                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.awayTeamName}/board/ ${player.awayTeamId}"><img src="${player.awayTeamImgUrl}?" onError="imgError()"  style="width:30px;"> ${player.awayTeamName}</a> </td>
					                          <td class="tdAlignLeft">${matches.groundName}</td>
					                          <td><fmt:formatDate pattern="MM/dd/YYYY"  value="${matches.gameDate}" /></td>
					                          <td align="center"><a href="${pageContext.request.contextPath}/showScoreCardPublicProfile/boardId/${BoradInfo.boardId}/matchId/${matches.sheduledId}"><i class="fa fa-newspaper-o"></i></a></td>
					                     </tr>
                       			</c:forEach>
                       		</c:forEach>                        		
                       		</c:if>                    
                       </c:forEach>
                        
                     </tbody>
                 </table>
                 	
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
  </div>
  <!--/Content Block-->

</section>
<%@ include file="Footer.jsp" %>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/centuries.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/halfCenturePage.js"></script>

 <script>
 /* $(document).ready(function(){
	  $("#tournmentInField").val("");
	  $("#teamBoardInField").val("");
	  $('#selectTeamBoardId').val("");
	   $('#SelectTournMent').val("");
  $("#selectAgainestTeamBoardId").val("");
  $('#againestteamBoardInField').val("");
  
 });
	 */
  
	 $(window).bind("pageshow", function() {
		  $("#tournmentInField").val("");
		  $("#teamBoardInField").val("");
		  $('#selectTeamBoardId').val("");
		   $('#SelectTournMent').val("");
	  $("#selectAgainestTeamBoardId").val("");
	  $('#againestteamBoardInField').val("");
	  
 });
	
	 
  </script> 

</body>
</html>
