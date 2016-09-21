
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
</head>
<body>
<%@ include file="CSCommon.jsp" %>

<%-- <%@ include file="BoardHeader.jsp" %> --%>
 <%@ include file="BoardHeaderpublic.jsp" %>
<script type="text/javascript">
$(function(){
	$('#loading').hide();
});

</script>
 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="publicLeaugeManagementSideMenu.jsp" %>
<%@ include file="BoardFanMenu.jsp" %>	

    <form action="${pageContext.request.contextPath}/leagueTopBowlerListPublicProfile" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">  
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="pageHead noBorder">Top Bowler
                  
                  <div class="h1Sbox">
                                <div class="selectdiv pull-right">
                                    <select class="selectboxdiv">
                                        <option>No of Records</option>
                                        <option>100</option>
                                        <option>200</option>
                                    </select>
                                    <div class="out"></div>    
                                </div>
                              </div>
                  
                  </h1>
                  
                  </div></div>
                  
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                        
                        <input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${TopBowlerSearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${TopBowlerSearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${TopBowlerSearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">
                        	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" name="tournmentName" id="tournmentInField" value="${TopBowlerSearch.tournmentName}"  onkeyup="tournmentSearch(this)"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" id="teamBoardInField" name="homeTeamName"  onkeyup="teamSearch(this)"  value="${TopBowlerSearch.homeTeamName}"> 
                     		<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4" style="display: none;"> 
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)" >
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
                  
                  <%-- <c:choose>
                  <c:when test="${empty topplayer.matchsheduledtolist}">
                  
                   <table>
                        <thead>
                        <tr>
                          <th>Tournament</th>
                          <th>Player Name</th>
                          <th>Team</th>
                          <th>Matches</th>
                          <th>Wickets</th>
                        </tr>
                       </thead>
                       </table>
                       
                       <span style="color:red">No Details Available</span>
                  
                  
                  </c:when>
                 <c:otherwise> --%>
                 
                <!--  <table>
                        <thead>
                        <tr>
                          <th>Tournament</th>
                          <th>Player Name</th>
                          <th>Team</th>
                          <th>Matches</th>
                          <th>Wickets</th>
                        </tr>
                       </thead>

                       <tbody>
                        <tr> -->
                        <c:forEach items="${TopBowlerResponse}" var="topplayer">
	                       		<c:forEach items="${topplayer.matchsheduledtolist}" var="matches" >  
	                       		
	                       		<c:choose>
	                       		<c:when test="${empty topplayer.matchsheduledtolist}">
	                       		
	                       		
	                       		</c:when>
	                       		
	                       		<c:otherwise>
	                       		<c:choose>
	                       		<c:when test="${empty matches.bowlerlist}">
	                       		</c:when>
	                       		
	                       		<c:otherwise>
	                       		<br>
	                       		<div class="col-md-12 whiteBox">
	                       		<span class="text-danger" style="font-weight: bold; color: #3253a8 !important; ">Tournament Name : ${topplayer.tournamentName}</span>
	                       		<br>
	                       		<table>
                        <thead>
                        <tr>
                          <th>S.No</th>
                          <th>Player Name</th>
                          <th>Team</th>
                          <th>Matches</th>
                          <th>Wickets</th>
                        </tr>
                       </thead>

                       <tbody>
                        <tr> 
	                       		<c:forEach items="${matches.bowlerlist}" var="player" varStatus="index" begin="0" end="9">                       			
	                       					<tr>                        				 	
	                        				 	  		<%-- <c:choose>
					                        				<c:when test="${index.count eq 1}">
					                        					<td rowspan="${fn:length(matches.bowlerlist)}" >${topplayer.tournamentName}</td>
					                        				</c:when>
					                        				<c:otherwise>
					                        				
					                        				</c:otherwise>
				                        				</c:choose> --%>
				                        				<td>${index.count}</td>
	                        				  	  <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span class="text-danger"><img alt="" src="${player.userImageUrl}" width="50px" height="50px" style="margin-right: 10px;">${player.userName} </span></a></td>	                      					  
						                         <%--  <td><a href="${pageContext.request.contextPath}/${matches.homeTeam}/board/${matches.hometeamId}">${matches.homeTeam}</a></td> --%>
						                         
						                        <%--  <td><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}">${player.teamBoardInfo.boardName}</a></td> --%>
						                        <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}"><img src="${player.teamBoardInfo.boardImageURL}" style="width: 30px;margin-right: 10px; ">  ${player.teamBoardInfo.boardName}</a></td>
						                        
						                          <td>${player.games}</td>                  
						                          <td>${player.wickets}</td>						                          
						                     </tr>	            
						                     </c:forEach>  
						                     </tr>
                        
                       
                     </tbody>
                 </table>
                 </div>
	                       	</c:otherwise>	
	                       	</c:choose>
	                       		
	                       		</c:otherwise>
	                       		
	                       		</c:choose>
	                       		
	                      
	                       		         			
	                       		</c:forEach>                      
	                       </c:forEach>
                        <!-- </tr>
                        
                       
                     </tbody>
                 </table> -->
                 
             <%--     </c:otherwise>
                  
                  
                  
                  </c:choose>
                   --%>
                  
                 
          
               </div>
            <!-- </div> -->
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
 <%@ include file="Footer.jsp" %>
   
   
</body>
</html>
