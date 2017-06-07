<style>
ul.side_menu_main li a {
	display: table;
}
ul.side_menu_main li a i {
	display: table-cell;
}
ul.side_menu_main li span {
	display: table-cell;
	padding-left: 5px;
}
</style>

<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg">
                    		<%-- <a href="${pageContext.request.contextPath}/Organizationdetails/boardId/${BoradInfo.boardId}"> --%>
                    		<a href="${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}">
                    		<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	</a>
                        	<a href="${pageContext.request.contextPath}/boardProfile?bid=${BoradInfo.boardId}"><i class="fa fa-pencil" title="Edit Profile"></i></a>
                        	 <a href="${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}">
                        	 ${BoradInfo.boardName}
                        	 </a>
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	
                            	 <li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a> 
								
                                <div class="leftMenu2">
                                    	<ul class="side_menu_main">
                                            <li class="head"><a href="#">Umpire Co-ordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}" class="active"><i class="fa fa-angle-right"></i><span> Create Umpire</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/UmpireList/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Umpire List</span></a></li>
                                            <li class="head"><a href="#"><i class="fa fa-angle-right"></i> Ground coordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateGround/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Create Ground</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/GroundList/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Ground List</span></a></li>
                                                                
                                            <li class="head"><a href="#">Schedule Co-ordinator</a></li>
                                             <li><a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span> Create Trophy</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Create Schedule</span></a></li>
                                            <%-- <li><a href="${pageContext.request.contextPath}/AmendSchedule/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Amend Schedule</a></li> --%>
                                             <li><a href="${pageContext.request.contextPath}/AssignUmpire/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span> Assign Umpire to Schedule</span> </a></li>
                                            <li><a href="${pageContext.request.contextPath}/AssignScorer/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Assign App Scorer to schedule</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/SchedulerList/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Schedule List</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/GameSchedule/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Schedule & Scores</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/CancelGameByDate/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Cancel Game by date</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/CancelTournament/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Edit/Cancel Tournament</span></a></li>
                                                                            
                                            
                                            <li class=""><a href="${pageContext.request.contextPath}/teamdetails/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Teams</span></a></li>
                                            <li class=""><a href="${pageContext.request.contextPath}/teamcontacts/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Team Contacts</span></a></li>
                                            
                                            
                                            <li><a href="${pageContext.request.contextPath}/LeaguePoints/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Points Table</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/leaguecenturies/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Centuries</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/leaguehalfcenturies/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> <span>Half Centuries</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/fivewickets/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> 5fer</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/topbatsman/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Top Batsmen</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/topbowler/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Top Bowlers</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/topUmpire/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Top Umpires</span></a></li>
                                         <%--   <li><a href="${pageContext.request.contextPath}/BoardAchievements/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Board Achievements</a></li> --%>
                                           <%-- <li><a href="${pageContext.request.contextPath}/EnterScore/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Enter Score</a></li> --%>
            
            
                                            <li class="head"><a href="${pageContext.request.contextPath}/DisputeManagement/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Dispute Management</span></a></li>
                                            <%-- <li class="head"><a href="${pageContext.request.contextPath}/lockScorecard/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Lock Scorecard</span></a></li> --%>
                                                  
                                        </ul>
                                                </div>
            
                                </li>
                            </ul>
                        
                        
                    </div>