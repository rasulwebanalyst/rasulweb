<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg">
                    		
                    		<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	
                        	<a href="${pageContext.request.contextPath}/boardProfile?bid=${BoradInfo.boardId}"><i class="fa fa-pencil" title="Edit Profile"></i></a>
                        	 <a href="${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}">
                        	 ${BoradInfo.boardName}
                        	 </a>
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	
                            	<li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a>
								
                                <div class="leftMenu2">
                                    	<ul>
                                            <li class="head"><a href="#">Umpire Co-ordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}" class="active"><i class="fa fa-angle-right"></i> Create Umpire</a></li>
                                            <li><a href="${pageContext.request.contextPath}/UmpireList/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Umpire List</a></li>
                                            <li class="head"><a href="#"><i class="fa fa-angle-right"></i> Ground coordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateGround/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Create Ground</a></li>
                                            <li><a href="${pageContext.request.contextPath}/GroundList/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Ground List</a></li>
                                                                
                                            <li class="head"><a href="#">Schedule Co-ordinator</a></li>
                                             <li><a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Create Trophy</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Create Schedule</a></li>
                                            <%-- <li><a href="${pageContext.request.contextPath}/AmendSchedule/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Amend Schedule</a></li> --%>
                                             <li><a href="${pageContext.request.contextPath}/AssignUmpire/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Assign Umpire to Schedule </a></li>
                                            <li><a href="${pageContext.request.contextPath}/AssignScorer/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Assign Scorer to Schedule</a></li>
                                            <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Schedule List</a></li>
                                            <li><a href="${pageContext.request.contextPath}/GameSchedule/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Schedule & Scores</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CancelGameByDate/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Cancel Game by date</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CancelTournament/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Cancel Tournament</a></li>
                                                                            
                                            <li class=""><a href="${pageContext.request.contextPath}/teamdetails/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Team Details</a></li>
                                            
                                            <li><a href="${pageContext.request.contextPath}/LeaguePoints/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Points Table</a></li>
                                            <li><a href="${pageContext.request.contextPath}/leaguecenturies/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Centuries</a></li>
                                            <li><a href="${pageContext.request.contextPath}/leaguehalfcenturies/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Half Centuries</a></li>
                                            <li><a href="${pageContext.request.contextPath}/fivewickets/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> 5fer</a></li>
                                            <li><a href="${pageContext.request.contextPath}/topbatsman/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Top Batsmen</a></li>
                                            <li><a href="${pageContext.request.contextPath}/topbowler/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Top Bowlers</a></li>
                                            <li><a href="${pageContext.request.contextPath}/topUmpire/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Top Umpires</a></li>
                                         <%--   <li><a href="${pageContext.request.contextPath}/BoardAchievements/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Board Achievements</a></li> --%>
                                           <%-- <li><a href="${pageContext.request.contextPath}/EnterScore/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Enter Score</a></li> --%>
            
            
                                            <li class="head"><a href="${pageContext.request.contextPath}/DisputeManagement/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Dispute Management</a></li>
                                                  
                                        </ul>
                                                </div>
            
                                </li>
                            </ul>
                        
                        
                    </div>