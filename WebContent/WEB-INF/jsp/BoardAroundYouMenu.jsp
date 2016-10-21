<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<!--Right Block-->
                     	<div class="col-md-3 pull-right noPadding pageRightBlock">
                          
                          <div class="box-inner">
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/matchesAroundYou">Matches Around You</a></div>
                              
	                               <c:choose>
	                             	<c:when test="${empty MatchesArroundYou}">
	                             		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
	                             			No Matches around you.
	                             		</div>
	                             	</c:when>
	                             	<c:otherwise>
		                              <c:forEach items="${MatchesArroundYou}" var="match" begin="0" end="5">
		                              <c:set var="board" value="${match.homeTeamInfo}"></c:set>
		                               <c:set var="board1" value="${match.awayTeamInfo}"></c:set>
		                               
		                               <div class="sidebar-list">
	                              			<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}">${board.boardName}</a> vs <a href="${pageContext.request.contextPath}/${board1.boardName }/board/${board1.boardId}">${board1.boardName}</a><br> <strong>${match.gameDate}</strong>
	                                   		
	                                   		<c:choose>
	                              			<c:when  test="${match.status eq 'InProgress'}">
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','${match.createdBy}')">Live Score</a>
	                              			</c:when>
	                              			<c:otherwise>
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','no')">View Score</a>
	                              			</c:otherwise>
	                              			</c:choose>
	                                   		 <span class="teamLogos">
	                                			<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}"><img src="${board.boardImageURL }" class="teamLogo" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" ></a> <b>VS</b> <a href="${pageContext.request.contextPath}/${board1.boardName }/board/${board1.boardId}"><img src="${board1.boardImageURL }" class="teamLogo"></a>
	                                		</span>
	                             		 </div>
		                              		
		                              </c:forEach>
	                             	</c:otherwise>
	                             </c:choose> 
                             
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"> <a href="${pageContext.request.contextPath}/LeaguesAroundYou">Leagues Around You</a></div>
                              
                              
                               <c:choose>
                             	<c:when test="${empty BRDAroundYou}">
                             		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No leagues around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
	                              <c:forEach items="${BRDAroundYou}" var="brd">
	                              		<div class="sidebar-list">
			                              		<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}">${brd.boardName}</a>  <br> <strong><fmt:formatDate value="${brd.createdDate}" pattern="MMM dd, YYYY"/></strong>
			                                    <div class="teamLogos">
			                                		<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}"><img src="${brd.boardImageURL}" class="teamLogo" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';"  ></a>
			                                	</div>
	                             			 </div>
	                              </c:forEach>
                             	</c:otherwise>
                             </c:choose> 
                            </div>
                          </div>
                          
                         
                          <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/BuddyAroundYou">Buddies Around You </a><span class="sidebar-header-light"></span></div>
                               <c:choose>
                             	<c:when test="${empty BuddyAroundYou}">
                 		<div style="margin-left:45px; margin-bottom: 15px;" class="sidebar-list">
                             			No buddies around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${BuddyAroundYou}" var="buddy">
			                               <c:if test="${not empty buddy.firstName}">
			                              <a href="${pageContext.request.contextPath}/buddy/${buddy.firstName}/${buddy.userId}">
			                              <div class="sidebar-list" >
			                                    <div class="teamLogos">
			                                	<img src="${buddy.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="teamLogo" >
                          	</div>
			                                     ${buddy.firstName} <br>
												 ${buddy.city}
			                              </div>
			                              </a>
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              
                            
                        
                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/TeamAroundYou">Teams Around You</a></div>
                              
                              
                              
                              <c:choose>
                              	<c:when test="${empty TEAMAroundYou}">
                              		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No teams around you.
                             		</div>
                              	</c:when>
                              	<c:otherwise>
                              		 <c:forEach items="${TEAMAroundYou}" var="brd">
                              		 <a href="${pageContext.request.contextPath}/${brd.boardName}/board/${brd.boardId}">
                              		<div class="sidebar-list"> 
                                   	 <img src="${brd.boardImageURL}" class="teamLogo" title="${brd.boardName}" alt="${brd.boardName}">
                                     
                                     <span>${brd.boardName}</span>
                                     
                                      </div>
                                    </a>
                                    </c:forEach>
                                   
                              	</c:otherwise>
                              </c:choose>
                             	
                            
                              
                            </div>
                          </div>
                          
                            <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/merchantsAroundYou">Merchants Around You </a><span class="sidebar-header-light"></span></div>
                               <c:choose>
                             	<c:when test="${empty Merchants}">
                 		<div style="margin-left:45px; margin-bottom: 15px;" class="sidebar-list">
                             			No Merchants around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${Merchants}" var="merchant">
			                               <c:if test="${not empty merchant.boardName}">
			                              <a href="${pageContext.request.contextPath}/${merchant.boardName}/board/${merchant.boardId}">
			                              <div class="sidebar-list" >
			                                    <div class="teamLogos">
			                                	<img src="${merchant.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="teamLogo" >
                          	</div>
			                                     ${merchant.boardName}<br>
			                                     ${merchant.city}
			                              </div>
			                              </a>
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              
                            
                        
                              
                            </div>
                          </div>
                          
                          
                          </div>
                        </div>
                     
                     <!--/Right Block End-->
                     
                     <script type="text/javascript">
                     
                     function showScoreCardInProgress(id,bid){
                    		//alert("hello");
                    		if(bid == 'no')
                    			{
                    			displaynotification('Match not yet started',2000);
                    			}else{
                    		 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgressPublicProfile/boardId/"+bid+"/matchId/"+id;
                    			}
                    		}
                     
                     </script>
</body>
</html>