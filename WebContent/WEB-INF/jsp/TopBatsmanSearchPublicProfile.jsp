
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

<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="publicLeaugeManagementSideMenu.jsp" %>


      <form action="${pageContext.request.contextPath}/leagueTopBatsmanListPublicProfile" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="pageHead noBorder">Top Batsman
                  
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
                     	
                     	<input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value=""> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">
                        	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" id="tournmentInField" onkeyup="tournmentSearch(this)"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" id="teamBoardInField" onkeyup="teamSearch(this)" > 
                     		<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4" style="display: none;">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)">
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
      		<div class="col-md-12 whiteBox">
                  
                  <%-- <c:choose>
                  <c:when test="${empty topplayer.matchsheduledtolist}">
                  
                  <table>
                        <thead>
                        <tr>
                          <th>Tournament</th>
                          <th>Player Name</th>
                          <th>Team</th>
                          <th>Matches</th>
                          <th>Inning</th>
                          <th>NO</th>
                          <th>Runs</th>
                          <th>Avg</th>
                        </tr>
                       </thead>
                       </table>
                       
                       <span style="color:red">No Details Available</span>
                  
                  </c:when>
                  <c:otherwise> --%>
                  
                  <table>
                        <thead>
                        <tr>
                          <th>Tournament</th>
                          <th>Player Name</th>
                          <th>Team</th>
                          <th>Matches</th>
                          <th>Innings</th>
                          <th>NO</th>
                          <th>Runs</th>
                          <th>Avg</th>
                        </tr>
                       </thead>

                       <tbody id="topbatsmanTableBody">
                        <tr>
                        <c:forEach items="${TopBatsmanResponse}" var="topplayer">
	                       		<c:forEach items="${topplayer.matchsheduledtolist}" var="match">  
	                       		<c:choose>
	                       		<c:when test="${empty topplayer.matchsheduledtolist}">
	                       			<!-- <span style="color:red">No Details Available</span> -->
	                       		
	                       		</c:when>
	                       		
	                       		<c:otherwise>
	                       		
	                       		        
	                       		<c:forEach items="${match.playerlist}" var="player" varStatus="index">  
	                       		
	                       		<c:choose>
	                       		<c:when test="${!empty match.playerlist}">
	                       		<tr>                        				 	
	                        				 	  		<c:choose>
					                        				<c:when test="${index.count eq 1}">
					                        					<td rowspan="${fn:length(match.playerlist)}" >${topplayer.tournamentName}</td>
					                        				</c:when>
					                        				<c:otherwise>
					                        				
					                        				</c:otherwise>
				                        				</c:choose>
	                        				  	  <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><span class="text-danger"><img alt="" src="${player.userImageUrl}" width="50px" height="50px" style="margin-right: 10px;">${player.userName} </span></a></td>	    
	                        				  	  
	                        				  	  <td><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}">${player.teamBoardInfo.boardName}</a></td>
	                        				  	                    					  
						                          <%-- <td><a href="${pageContext.request.contextPath}/${match.homeTeam}/board/${match.hometeamId}">${match.homeTeam}</a></td> --%>
						                          <td>${player.games}</td>
						                          <td>${player.innings}</td>
						                          <td>${player.notOuts}</td>
						                          <td>${player.sumOfRuns}</td>	
						                          <td><fmt:formatNumber type="number"  pattern="##########.##"  value="${player.average}" /></td>						                          
						                     </tr>
	                       		
	                       		
	                       		
	                       		
	                       		</c:when>
	                       		
	                       		<c:otherwise>
	                       	<!-- 	<span style="color:red">No Details Available</span> -->
	                       		
	                       		</c:otherwise>
	                       		
	                       		</c:choose>
	                       		           			
	                       						 
						                     </c:forEach> 
						                     
						                     </c:otherwise>
						                     
						                     </c:choose>                     			
	                       		</c:forEach>                      
	                       </c:forEach>
                        </tr>
                        
                       
                     </tbody>
                 </table>
                  
                 <%--  </c:otherwise>
                  
                  
                  </c:choose> --%>
                  
                  
                 
          
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/topBatsman.js"></script>
   <%@ include file="Footer.jsp" %>
   
</body>
</html>
