<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<!--Right Block-->

                     	<div class="col-md-3 pull-right noPadding pageRightBlock">
                          
                          <div class="box-inner">
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="javascript:void(0);" onclick="PleaseLogin()">Matches Around You</a></div>
                              
	                               <c:choose>
	                             	<c:when test="${empty MatchesArroundYou}">
	                             		<div class="sidebar-list noContentDiv">
	                             			No Match around you.
	                             		</div>
	                             	</c:when>
	                             	<c:otherwise>
		                              <c:forEach items="${MatchesArroundYou}" var="match" begin="0" end="5">
		                              <c:set var="board" value="${match.homeTeamInfo}"></c:set>
		                               <c:set var="board1" value="${match.awayTeamInfo}"></c:set>
		                               
		                               <div class="sidebar-list">
	                              			<a href="javascript:void(0);" onclick="PleaseLogin()">${board.boardName}</a> vs <a href="javascript:void(0);" onclick="PleaseLogin()">${board1.boardName}</a><br> <strong>${match.gameDateStr}</strong>
	                              			
	                              			<%-- <c:choose>
	                              			<c:when  test="${match.status eq 'InProgress'}">
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','${match.createdBy}')">Live Score</a>
	                              			</c:when>
	                              			<c:otherwise>
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','no')">View Score</a>
	                              			</c:otherwise>
	                              			</c:choose> --%>
	                                   		 <span class="teamLogos">
	                                			<a href="javascript:void(0);" onclick="PleaseLogin()"><img src="${board.boardImageURL}?" class="teamLogo" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" ></a> <b>VS</b> <a href="javascript:void(0);" onclick="PleaseLogin()"><img src="${board1.boardImageURL}?" class="teamLogo"></a>
	                                		</span>
	                             		 </div>
		                              		
		                              </c:forEach>
	                             	</c:otherwise>
	                             </c:choose> 
                             
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"> <a href="javascript:void(0);" onclick="PleaseLogin()">Leagues Around You</a></div>
                              
                              
                               <c:choose>
                             	<c:when test="${empty BRDAroundYou}">
                             		<div class="sidebar-list noContentDiv">
                             			No league around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
	                              <c:forEach items="${BRDAroundYou}" var="brd" begin="0" end="5">
	                              		<div class="sidebar-list">
			                              		<a href="javascript:void(0);" onclick="PleaseLogin()">${brd.boardName}</a>  <br> <strong><fmt:formatDate value="${brd.createdDate}" pattern="MMM dd, YYYY"/></strong>
			                                    <div class="teamLogos">
			                                		<a href="javascript:void(0);" onclick="PleaseLogin()"><img src="${brd.boardImageURL}?" class="teamLogo" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';"  ></a>
			                                	</div>
	                             			 </div>
	                              </c:forEach>
                             	</c:otherwise>
                             </c:choose> 
                            </div>
                          </div>
                          
                         
                          <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="javascript:void(0);" onclick="PleaseLogin()">Buddies Around You </a><span class="sidebar-header-light"></span></div>
                               <c:choose>
                             	<c:when test="${empty BuddyAroundYou}">
                 		<div class="sidebar-list noContentDiv">
                             			No buddy around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${BuddyAroundYou}" var="buddy" begin="0" end="5">
			                               <c:if test="${not empty buddy.firstName}">
			                               <c:if test="${buddy.userId ne USRID}">
				                             
					                              <div class="sidebar-list" >
					                                    <div class="teamLogos">
					                                     <a href="javascript:void(0);" onclick="PleaseLogin()">
					                                		<img src="${buddy.userImageUrl}?" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="teamLogo" >
		                          						</a>
		                          						</div>
					                                     <a href="javascript:void(0);" onclick="PleaseLogin()"> ${buddy.fullName}</a><%-- ${buddy.firstName}  ${buddy.lastName} --%> <br>
														 ${buddy.city}
					                              </div>
				                            
			                              </c:if>
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              
                            
                        
                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="javascript:void(0);" onclick="PleaseLogin()">Teams Around You</a></div>
                              
                              
                              
                              <c:choose>
                              	<c:when test="${empty TEAMAroundYou}">
                              		<div class="sidebar-list noContentDiv">
                             			No team around you.
                             		</div>
                              	</c:when>
                              	<c:otherwise>
                              		 <c:forEach items="${TEAMAroundYou}" var="brd" begin="0" end="5">
                              		 <a href="javascript:void(0);" onclick="PleaseLogin()">
                              		<div class="sidebar-list"> 
                                   	 <img src="${brd.boardImageURL}?" class="teamLogo" title="${brd.boardName}" alt="${brd.boardName}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="teamLogo">
                                     
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
                              <div class="sidebar-header"><a href="javascript:void(0);" onclick="PleaseLogin()">Merchants Around You </a><span class="sidebar-header-light"></span></div>
                               <c:choose>
                             	<c:when test="${empty Merchants}">
                 		<div class="sidebar-list noContentDiv">
                             			No Merchant around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${Merchants}" var="merchant" begin="0" end="5">
			                               <c:if test="${not empty merchant.boardName}">
			                              
			                              <div class="sidebar-list" >
			                                    <div class="teamLogos">
			                                <a href="javascript:void(0);" onclick="PleaseLogin()">
			                                	<img src="${merchant.boardImageURL}?" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="teamLogo" >
			                                	</a>
                          	</div>
			                                     <a href="javascript:void(0);" onclick="PleaseLogin()">
			                                     ${merchant.boardName}
			                                     </a><br>
			                                     ${merchant.city}
			                              </div>
			                             
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