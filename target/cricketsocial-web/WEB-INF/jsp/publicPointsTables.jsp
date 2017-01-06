<!DOCTYPE html>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

</head>
<body>


 <%@ include file="CSCommon.jsp" %>
	<%-- <%@ include file="BoardHeader.jsp" %> --%>
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
      
      <form action="${pageContext.request.contextPath}/public/LeaguePointsPage" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
      <div class="col-md-10">
      		
      		 
      		<div class="col-md-12 whiteBox">
		          <h1 class="pageHead noBorder">Points Table
                  
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
                     	
                        <input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${PointTableSearchInfo.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${PointTableSearchInfo.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" name="againstTeamId" value="${PointTableSearchInfo.againstTeamId}">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">         
                        
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" id="tournmentInField" onkeyup="tournmentSearch(this)" name="tournmentName" value="${PointTableSearchInfo.tournmentName}"> 
                        <div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV" style="width: 95%;">                    	
		                   		 </ul>
                			</div>
                        
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" id="teamBoardInField" onkeyup="teamSearch(this)" name="homeTeamName" value="${PointTableSearchInfo.homeTeamName}"> 
                     	
                     	<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
	                		<ul id="searchTeamBoardList" style="width: 91%;">
	                    		
	
	                   		 </ul>
                		</div>                    	
                     	</div>
                        
                        <!-- <div class="col-md-4">
                       <label for="">Team Against</label> <input type="text" placeholder="" class="form-control tbox" id="">
                     	</div> -->
                        
                        <div class="col-md-2">
                        <button type="submit" class="btn btn-default dBtn GSfbtn pull-right">Submit</button>
                     	</div>
                        
                     </div>
                 
                 </div>
                 </div> 
              </form>
                  
            <div class="col-md-10 pull-right rightnone">
      		<!-- <div class="col-md-12 whiteBox"> -->
                  
                  <c:choose>
	                  <c:when test="${not empty TournamentPointTableList}">

    <c:forEach var="tournament" items="${TournamentPointTableList}">
    <c:if test="${not empty tournament.tournamentId}">
        <div class="col-md-12 whiteBox" style="font-size: 12px;">

            <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament
												Name : ${tournament.tournamentName}</span> <br>
			<div class="form-group">
            <table>
                <thead>
                    <tr>
                        <th>S.No</th>
                        <th>Team Name</th>
                        <th>Match</th>
                        <th>Won</th>
                        <th>Lost</th>
                        <th>Adj</th>
                        <th>Pts</th>
                        <th>Net RR</th>
                        <th class="alignCenter">For</th>
                        <th>Against</th>
                        <!--  <th>Tie Matches</th> -->
                        <th>Win Percent</th>
                        <th>Runs/Wickets</th>
                        <th>ARPW</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${tournament.pointtablelist}" var="team" varStatus="index">
                        <tr>
                            <td>${index.count}</td>
                            <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${team.teamName}/board/${team.teamBoardId}">${team.teamName}</a></td>
                            <td>${team.totalMatches}</td>
                            <td>${team.wonmatches}</td>
                            <td>${team.lostmatches}</td>
                           <%--  <td>${team.adj}</td> --%>
                            
                            
                           <%--  <c:choose>
                            <c:when test="${team.adj eq 0}">
                            <td>${team.adj}</td>
                            </c:when>
                            <c:otherwise> --%>
                            <td><a style="color: red;" href="${pageContext.request.contextPath}/DisputeManagementPublic/boardId/${BoradInfo.boardId}">${team.adj}</a></td>
                            <%-- </c:otherwise>
                            </c:choose> --%>
                            
                            <td>${team.points}</td>
                            <td>
                                <fmt:formatNumber type="number" pattern="##########.##" value="${team.netRunRate}" />
                            </td>
                            <%--  <td>${team.teamfor}</td>
			                          <td>${team.teamgainst}</td> --%>
                                <td>
                                    <fmt:formatNumber type="number" pattern="##########.##" value="${team.retunteamruns}" />/
                                    <fmt:formatNumber type="number" pattern="##########.##" value="${team.returntemovers}" />
                                </td>
                                <td>
                                    <fmt:formatNumber type="number" pattern="##########.##" value="${team.returnaginstteamruns}" />/
                                    <fmt:formatNumber type="number" pattern="##########.##" value="${team.returnagainstteamovers}" />
                                </td>
                                <%--  <td>${team.tie}</td> --%>
                                    <td>
                                        <fmt:formatNumber type="number" pattern="##########.##" value="${team.winpercentage}" />
                                    </td>
                                    <td>${team.retunteamruns}/${team.returnteamwicket}</td>
                                    <c:choose>
                                        <c:when test="${team.averageRunsPerWicket eq 0}">
                                            <td>-</td>
                                        </c:when>
                                        <c:otherwise>
                                            <%-- <td>${team.averageRunsPerWicket}</td> --%>
                                            <td><fmt:formatNumber type="number" pattern="##########.##" value="${team.averageRunsPerWicket}"/></td>
                                        </c:otherwise>
                                    </c:choose>

                        </tr>
                    </c:forEach>

                </tbody>
            </table>
            </div>
        </div>
        </c:if>
    </c:forEach>

</c:when>
	                  <c:otherwise>
	                  		<div style="color: red; margin-top: 10px; margin-left: 15px;"> No tournaments</div> 
	                  </c:otherwise>

                  </c:choose>
                  
                 
          
              <!--  </div> -->
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
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/centuries.js"></script> 
   
   <script type="text/javascript">
   var url = window.location.href;
   
   if(url.indexOf('LeaguePointsPage') != -1){
   	//alert("inside contains");
   }else{
   	//alert('inside not contains');
    
   	$(window).bind("pageshow", function() {
     	  $("#teamBoardInField").val('');
       	$("#tournmentInField").val('');
       	$("#selectTeamBoardId").val('');
      	   $("#SelectTournMent").val(''); 
     });
   	
   } 
    
    </script>
   
</body>
</html>
