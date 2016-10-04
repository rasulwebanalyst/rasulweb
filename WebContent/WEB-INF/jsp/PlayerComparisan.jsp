<!DOCTYPE html>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>

</head>
<body>

 <%@ include file="CSCommon.jsp" %>
 <%@ include file="BuddyHeader.jsp" %>


 <section class="middleContentBlock ">
<!-- <div class="profileBanner"> <img src="images/innerBanner.png"> </div> -->
<%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        <!-- <div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><img src="images/teamLogo4.png">
                        	 Kent Cricket Board
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyScore.png"></i>Score</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/IAmFanOf.png"></i>Fan Of</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBuddyList.png"></i>Roster</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBoard.png"></i>My Board</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/CricketBook.png"></i>League Management</a>
								
                                <div class="leftMenu2">
                                    	<ul>
                                            <li class="head"><a href="#">Umpire Co-ordinator</a></li>
                                            <li><a href="#" class="active"><i class="fa fa-angle-right"></i> Create Umpire</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Umpire List</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Ground coordinator</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Create Ground</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Ground List</a></li>
                                                                
                                            <li class="head"><a href="#">Schedule Co-ordinator</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Create Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Amend Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Assign Umpire to Schedule </a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Assign Scorer to Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Schedule List</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Cancel Game by date</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Cancel Tournment</a></li>
                                                                                    
                                            <li class="head"><a href="#">Team Details</a></li>
                                            
                                            <li><a href="#">Point Table</a></li>
                                            <li><a href="#">Centuries</a></li>
                                            <li><a href="#">Half Centuries</a></li>
                                            <li><a href="#">5 Wickets</a></li>
                                            <li><a href="#">Top Batsmen</a></li>
                                            <li><a href="#">Top Bowlers</a></li>
                                            <li><a href="#">Top Umpires</a></li>
            
                                            <li class="head"><a href="#">Dispute Managements</a></li>
                                                                
                                        </ul>
                                                </div>
            
                                </li>
                            </ul>
                        
                        
                    </div> -->

      <%@ include file="BuddySideMenu.jsp" %>
                  
            
            
            
            
            <div class="col-md-10 pull-right playerCompareBlock">
             	<div class="col-md-12 whiteBox">
                <h1>SELECT PLAYERS TO COMPARE</h1>
                
                
                <table class="playerComp">
                        <thead>
                        <tr>
                          <th class="alignCenter">Player 1</th>
                          <th class="alignCenter">Player 2</th>
                          <th class="alignCenter">Player 3</th>
                          <th class="alignCenter">Player 4</th>
                        </tr>
                       </thead>

                       <tbody>
                        <tr>
                          <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV" onkeyup="playersearch(this,'addMemberautoCompleteDIV','uid')">
                          	<div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
								<ul style="width: 190px;">
						           
						         </ul>                                  	
						   </div>						 
                          </td>
                             
                             
                           <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV1" onkeyup="playersearch(this,'addMemberautoCompleteDIV1','uid1')">
                          <div class="autoComplete" id="addMemberautoCompleteDIV1" style="display:none;">
								<ul style="width: 190px;">
						           
						         </ul>                                  	
						   </div>
                          </td>

                          
                           <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV2" onkeyup="playersearch(this,'addMemberautoCompleteDIV2','uid2')">
                          <div class="autoComplete" id="addMemberautoCompleteDIV2" style="display:none;">
								<ul style="width: 190px;">
						           
						         </ul>                                  	
						   </div>
                          </td>

                          
                          
                           <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV3" onkeyup="playersearch(this,'addMemberautoCompleteDIV3','uid3')">
                          <div class="autoComplete" id="addMemberautoCompleteDIV3" style="display:none;">
								<ul style="width: 190px;">
						           
						         </ul>                                  	
						   </div>
                          </td>
                          
                          </tr>
                          
                          <tr>
                          
                          <td>
                            <div class="media-left playerimg">
                            <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player1.userName}/${SelectedPlayersInfo.player1.userID}">
                                 <img src="${SelectedPlayersInfo.player1.imgURL}" onerror="hideImgTag(this);" style="width: 100px;height: 100px;">
                            </a>
                            </div>
                    		<div style="margin-left: 10px;">
                                <h4 class="media-heading">   <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player1.userName}/${SelectedPlayersInfo.player1.userID}">${SelectedPlayersInfo.player1.userName}</a></h4>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player1.battingInfo}">
                                Batting Style: ${SelectedPlayersInfo.player1.battingInfo}
                                </c:if></h6>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player1.bowlingInfo}">
                               Bowling Style: ${SelectedPlayersInfo.player1.bowlingInfo}
                                </c:if><%-- ${empty SelectedPlayersInfo.player1.bowlingInfo ? '' : 'Bowling Style : ' SelectedPlayersInfo.player1.bowlingInfo} --%></h6>
                            </div>
                          </td>
                          
                          <td>
                            <div class="media-left playerimg">
                               <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player2.userName}/${SelectedPlayersInfo.player2.userID}">
                                <img src="${SelectedPlayersInfo.player2.imgURL}" onerror="hideImgTag(this);" style="width: 100px;height: 100px;">
                                </a>
                            </div>
                    		<div style="margin-left: 10px;">
                                <h4 class="media-heading">   <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player2.userName}/${SelectedPlayersInfo.player2.userID}"> ${SelectedPlayersInfo.player2.userName}</a></h4>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player2.battingInfo}">
                                Batting Style: ${SelectedPlayersInfo.player2.battingInfo}
                                </c:if></h6>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player2.bowlingInfo}">
                               Bowling Style: ${SelectedPlayersInfo.player2.bowlingInfo}
                                </c:if><%-- ${!empty SelectedPlayersInfo.player2.battingInfo} ? 'Batting Style  : ' ${SelectedPlayersInfo.player2.battingInfo} --%></h6>
                               
                            </div>
                          </td>
                          
                          
                          <td>
                            <div class="media-left playerimg">
                                  <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player3.userName}/${SelectedPlayersInfo.player3.userID}">
                               <img src="${SelectedPlayersInfo.player3.imgURL}" onerror="hideImgTag(this);" style="width: 100px;height: 100px;">
                               </a>
                            </div>
                    		<div style="margin-left: 10px;">
                                <h4 class="media-heading">   <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player3.userName}/${SelectedPlayersInfo.player3.userID}">${SelectedPlayersInfo.player3.userName}</a></h4>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player3.battingInfo}">
                                Batting Style: ${SelectedPlayersInfo.player3.battingInfo}
                                </c:if>  </h6>
                                <h6>
                                <c:if test="${!empty SelectedPlayersInfo.player3.bowlingInfo}">
                               Bowling Style: ${SelectedPlayersInfo.player3.bowlingInfo}
                                </c:if> </h6>
                            </div>
                          </td>
                          
                          
                          <td>
                            <div class="media-left playerimg">
                               <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player4.userName}/${SelectedPlayersInfo.player4.userID}">
                                <img src="${SelectedPlayersInfo.player4.imgURL}" onerror="hideImgTag(this);"style="width: 100px;height: 100px;">
                                </a>
                            </div>
                    		<div style="margin-left: 10px;">
                                <h4 class="media-heading">   <a href="${pageContext.request.contextPath}/buddy/${SelectedPlayersInfo.player4.userName}/${SelectedPlayersInfo.player4.userID}">${SelectedPlayersInfo.player4.userName}</a></h4>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player4.battingInfo}">
                                Batting Style: ${SelectedPlayersInfo.player4.battingInfo}
                                </c:if> </h6>
                                <h6><c:if test="${!empty SelectedPlayersInfo.player4.bowlingInfo}">
                               Bowling Style: ${SelectedPlayersInfo.player4.bowlingInfo}
                                </c:if>  </h6>
                            </div>
                          </td>
                            
                          </tr>
                     </tbody>
                 </table>
                
                <div ></div>
                <form action="playerComparing" method="post" id="playerCompareForm" name="playerCompareForm" onsubmit="return playerValidation()">
                
                	<input type="hidden" id="uid" name="uid" value="${CompareUserInfo.uid}">
                	<input type="hidden" id="uid1" name="uid1" value="${CompareUserInfo.uid1}">
                	<input type="hidden" id="uid2" name="uid2" value="${CompareUserInfo.uid2}">
                	<input type="hidden" id="uid3" name="uid3" value="${CompareUserInfo.uid3}">
                	<input type="hidden" id="filterByYear" name="filterByYear" value="${CompareUserInfo.filterByYear}">
                 <div class="comperbtn pull-right">
                	<button type="submit" class="btn btn-default dBtn"  >Compare</button>
                 </div>
                 
                 </form>
                 <div style="color: red; text-align: center;" id="compareerror"></div>
                 <div class="col-md-12">
                     	<h1 class="pageHead noBorder GSpagehed">Compared Status</h1>
                         <div class="col-md-12">
                    <table>
                       <thead> 
                        <tr>
                          <th>Status</th>
                          <th class="alignCenter">Player 1</th>
                          <th class="alignCenter">Player 2</th>
                          <th class="alignCenter">Player 3</th>
                          <th class="alignCenter">Player 4</th>
                         </tr>
                       </thead>

                       <tbody>
                        <tr>
                          <td>No. of League Played</td>
                         <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.leaguesPlayed}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.leaguesPlayed}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.leaguesPlayed}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.leaguesPlayed}</td>
                       </tr>
                       
                       
                       <tr>
                          <td>No. of League Team</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.noofteamBoardsPlayed}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.noofteamBoardsPlayed}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.noofteamBoardsPlayed}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.noofteamBoardsPlayed}</td>
                       </tr>
                       
                       
                    </tbody>
                 </table>
                 </div>
                 </div>

                 
                 <div class="col-md-12" style="margin-top:20px;">
                     	
            <div class="col-md-8">
                <h1 class="pageHead noBorder">Batting Status</h1>
            </div>
            
               <div class="col-md-4">
                    <div class="selectdiv pull-right selectdivbtn">
                        <select class="selectboxdiv" onchange="showPlayerYearInfo(this)">
                            <option value="">See All Seasons</option>
                           <c:forEach begin="2000" end="2016" var="i"  varStatus="loop">
			                          	<c:choose>
				                        	<c:when test="${CompareUserInfo.filterByYear eq loop.end - i + loop.begin}">
				                        				<option value="${loop.end - i + loop.begin}" selected="selected">${loop.end - i + loop.begin}</option>
				                        	</c:when>
				                        	<c:otherwise>
				                        			<option value="${loop.end - i + loop.begin}">${loop.end - i + loop.begin}</option>
				                        	</c:otherwise>
			                        	</c:choose>
                           		<%-- <option value="${i}">${loop.end - i + loop.begin}</option> --%>
                           </c:forEach>
                        </select>
                        <div class="out">
                        <c:choose>
                        	<c:when test="${!empty CompareUserInfo.filterByYear}">
                        				${CompareUserInfo.filterByYear}
                        	</c:when>
                        	<c:otherwise>
                        			 See All Seasons
                        	</c:otherwise>
                        </c:choose>
                       
                       
                        </div>    
                    </div>
                  </div>
                  
                  <div class="col-md-12">
                     	
                    <table>
                       <thead> 
                        <tr>
                          <th>Status</th>
                          <th class="alignCenter">Player 1</th>
                          <th class="alignCenter">Player 2</th>
                          <th class="alignCenter">Player 3</th>
                          <th class="alignCenter">Player 4</th>
                         </tr>
                       </thead>

                       <tbody>
                        <tr>
                          <td>Innings</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.battingInnings}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.battingInnings}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.battingInnings}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.battingInnings}</td>
                       </tr>
                       
                       
                       <tr>
                          <td>Runs</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.battingruns}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.battingruns}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.battingruns}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.battingruns}</td>
                       </tr>
                       <tr>
                          <td>No. of balls played</td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="####" value="${PlayerComparisionList.playerbattingbowlingstatus.playedballs}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="####" value="${PlayerComparisionList.playerbattingbowlingstatus1.playedballs}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="####" value="${PlayerComparisionList.playerbattingbowlingstatus2.playedballs}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="####" value="${PlayerComparisionList.playerbattingbowlingstatus3.playedballs}" /></td>
                       </tr>
                       <tr>
                          <td>Average</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.battingavarage}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.battingavarage}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.battingavarage}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.battingavarage}</td>
                       </tr>
                       
                       <tr>
                          <td>Strike Rate</td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus.battingStrikeRate}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus1.battingStrikeRate}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus2.battingStrikeRate}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus3.battingStrikeRate}" /></td>
                       </tr>
                       
                       <tr>
                          <td>6's</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.battingsixs}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.battingsixs}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.battingsixs}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.battingsixs}</td>
                       </tr>
                       
                       <tr>
                          <td>4's</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.battingfours}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.battingfours}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.battingfours}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.battingfours}</td>
                       </tr>
                       
                       <tr>
                          <td>Not out</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.notOuts}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.notOuts}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.notOuts}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.notOuts}</td>
                       </tr>
                       
                       <tr>
                          <td>No. of Awards</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.noofawards}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.noofawards}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.noofawards}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.noofawards}</td>
                       </tr>
                       
                       <tr>
                          <td>50's</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.nooffiftys}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.nooffiftys}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.nooffiftys}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.nooffiftys}</td>
                       </tr>
                       
                       <tr>
                          <td>100's</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.noofhundreds}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.noofhundreds}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.noofhundreds}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.noofhundreds}</td>
                       </tr>
                       
                       
                       
                    </tbody>
                 </table>
                 </div>
                  
            </div>
            
             <div class="col-md-12" style="margin-top:20px;">
                     	
            <div class="col-md-8">
                <h1 class="pageHead noBorder">Bowling Status</h1>
            </div>
            
               <!-- <div class="col-md-4">
                    <div class="selectdiv pull-right selectdivbtn">
                        <select class="selectboxdiv">
                            <option>See All Seasons</option>
                            <option>Seasons 1</option>
                            <option>Seasons 2</option>
                            <option>Seasons 3</option>
                        </select>
                        <div class="out"></div>    
                    </div>
                  </div> -->
                  
                  <div class="col-md-12">
                     	
                    <table>
                       <thead> 
                        <tr>
                          <th>Status</th>
                          <th class="alignCenter">Player 1</th>
                          <th class="alignCenter">Player 2</th>
                          <th class="alignCenter">Player 3</th>
                          <th class="alignCenter">Player 4</th>
                         </tr>
                       </thead>

                       <tbody>
                        <tr>
                          <td>Innings</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.bowlingInnings}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.bowlingInnings}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.bowlingInnings}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.bowlingInnings}</td>
                       
                       </tr>
                        <tr>
                          <td>No. of balls bowled</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.bowlingballnumbers}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.bowlingballnumbers}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.bowlingballnumbers}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.bowlingballnumbers}</td>
                       
                       </tr>
                        <tr>
                          <td>Wickets</td>
                           <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.bowlingwickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.bowlingwickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.bowlingwickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.bowlingwickets}</td>
                        </tr>
                       
                       
                       <tr>
                          <td>Economy</td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus.bowlereconomy}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus1.bowlereconomy}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus2.bowlereconomy}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus3.bowlereconomy}" /></td>
                       
                       </tr>
                       
                       <tr>
                          <td>Average</td>
                           <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus.bowlingavg}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus1.bowlingavg}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus2.bowlingavg}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus3.bowlingavg}" /></td>
                       
                       </tr>
                       
                       <tr>
                          <td>Strike Rate</td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus.bowlerstrikerate}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus1.bowlerstrikerate}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus2.bowlerstrikerate}" /></td>
                          <td class="alignCenter"><fmt:formatNumber type="number"  pattern="###.##" value="${PlayerComparisionList.playerbattingbowlingstatus3.bowlerstrikerate}" /></td>
                       
                       </tr>
                       
                       <tr>
                          <td>Runs Conceded</td>
                           <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.bowlerrunsconceded}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.bowlerrunsconceded}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.bowlerrunsconceded}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.bowlerrunsconceded}</td>
                       
                       </tr>
                       
                       
                       
                       <tr>
                          <td>5wk</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.fiveWickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.fiveWickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.fiveWickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.fiveWickets}</td>
                       
                       </tr>
                       
                       <tr>
                          <td>10wk</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.tenWickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.tenWickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.tenWickets}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.tenWickets}</td>
                       
                       </tr>
                       
                       <tr>
                          <td>No.of Awards</td>
                         <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus.noofawards}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus1.noofawards}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus2.noofawards}</td>
                          <td class="alignCenter">${PlayerComparisionList.playerbattingbowlingstatus3.noofawards}</td>
                       
                       </tr>
                    </tbody>
                 </table>
                 </div>
                  
            </div>
                 
                 																
                	
                    
                 
                     
                     
                     
                      
       	</div>
            
 </div>
                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>

</section>
 <%@ include file="Footer.jsp" %>

   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/playerCompare.js"></script>
   
</body>
</html>
