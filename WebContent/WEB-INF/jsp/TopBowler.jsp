
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
       <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
       <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<style type="text/css">
.css-serial {
  counter-reset: serial-number;  /* Set the serial number counter to 0 */
}

.css-serial td:first-child:before {
  counter-increment: serial-number;  /* Increment the serial number counter */
  content: counter(serial-number);  /* Display the counter */
}
</style>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<<<<<<< HEAD
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/topList.js"></script>
<script type="text/javascript">
var pageNum=500;
</script>
</head>
<body>
<%@ include file="CSCommon.jsp" %>

<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
<<<<<<< HEAD
    <!--Content Block--> 
=======
    <!--Content Block-->
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="LeaugeManagementSideMenu.jsp" %>


      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		        <div class="col-md-10">    <h1 class="pageHead noBorder">Top Bowler
                  
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
                  
                  </h1></div>
                  <div class="col-md-2" style="display: inline-block;">
								    <label style="text-align: center;">Filter</label>
								    <div class="selectdiv" style="height: 25px !important;">
								        <c:choose>
								            <c:when test="${yearListSize eq 0 }">
								                <select class="selectboxdiv" id="centuryYears" style="color: black; font-size: 12px !important; height: 25px !important;">
									            	<option style="color: black; font-size: 12px !important; height: 25px !important;"></option>
									            </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div>
								            </c:when>
								            <c:otherwise>
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWiseTopBowler(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
			                                        <!-- <option>Years</option> -->
			                                       
			                                        	<c:choose>
			                                        		<c:when test="${defaultload == 'yes'}">
			                                        			 <c:forEach var = "yearsCentury" items="${yearsList}">
			                                        			<option value="${yearsCentury}" style="font-size: 12px; height: 25px !important;">${yearsCentury}</option>	
			                                        			 </c:forEach>
			                                        		</c:when>
			                                        		<c:otherwise>
			                                        			<option value="Years" style="font-size: 12px; height: 25px !important;">Years</option>
			                                        			 <c:forEach var = "yearsCentury" items="${yearsList}">
			                                        				<option value="${yearsCentury}" style="font-size: 12px; height: 25px !important;">${yearsCentury}</option>
			                                        			</c:forEach>
			                                        		</c:otherwise>
			                                        	</c:choose>
			                                            
			                                       
								                                       
								                </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div> 
								            </c:otherwise>
								        </c:choose>
								    </div>
								</div>
								<div id="centuryYearId" style="display: none;"></div>
                  
                  </div></div>
                  <form action="${pageContext.request.contextPath}/leagueTopBowlerList" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                        
                        <input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${TopBowlerSearch.tournamentId}"> 
                        	<input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${TopBowlerSearch.homeTeamId}" > 
                        	<input type="hidden" id="selectAgainestTeamBoardId" value="${TopBowlerSearch.againstTeamId}" name="againstTeamId">  
                        	<input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">
                        	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" name="tournmentName" id="tournmentInField" onkeyup="tournmentSearch(this)" value="${TopBowlerSearch.tournmentName}"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" name="homeTeamName" id="teamBoardInField" onkeyup="teamSearch(this)" value="${TopBowlerSearch.homeTeamName}"> 
                     		<div class="autoComplete" style="display: none;" id="searchTeamBoardDIV">
                		<ul id="searchTeamBoardList">
                    		

                   		 </ul>
                </div>
                     	</div>
                        
                        <div class="col-md-4" style="display: none;">
                       <label for="">Team Against</label> <input type="hidden" placeholder="" class="form-control tbox" id="againestteamBoardInField" onkeyup="againestTeamSearch(this)">
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
      		
              <div class="col-md-12 whiteBox font13px"> 
     <div id="centTable" >    
                
                        <c:forEach items="${TopBowlerResponse}" var="topplayer">
	                       	<c:choose>
            					<c:when test="${topplayer.size eq 0}">
            					</c:when>
           						<c:otherwise>	
	                       		<br>
	                       		<div class="col-md-12 whiteBox font13px" id="centTable1">
	                       			<span class="text-danger" style="font-weight: bold; color: #3253a8 !important; ">Tournament Name : ${topplayer.tournamentName}</span>
	                       			<br>
<<<<<<< HEAD
	                       			<div class="form-group">
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
	                       			<table class="css-serial">
				                        <thead>
				                        <tr>
				                          <th>S.No</th>
				                          <th>Player Name</th>
				                          <th>Team</th>
				                          <th>Matches</th>
				                          <th>Innings</th>
				                          <th>Overs</th>
				                          <th>Maidens</th>
				                          <th>Runs</th>
				                          <th>Wkts</th>
				                          <th>BBI</th>
				                          <th>Avg</th>
				                          <th>Economy</th>
				                          <th>SR</th>
				                          <th>4fer</th>
				                          <th>5fer</th>
				                        </tr>
				                       </thead>
	                       		<c:forEach items="${topplayer.matchsheduledtolist}" var="matches" >  
	                       			<c:forEach items="${matches.bowlerlist}" var="player" varStatus="index" begin="0" end="9">	
				                       <tbody id="topBowlerTableBody">
				                        <tr>
			                        		  <td></td>
<<<<<<< HEAD
	                       				  	  <td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}">
	                       				  	 <img alt="" src="${player.userImageUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" ><b>${player.userName}</b><div class="clearfix"></div></a></td>	                      					  
					                          <%-- <td><a href="${pageContext.request.contextPath}/${matches.homeTeam}/board/${matches.hometeamId}">${matches.homeTeam}</a></td> --%>
					                          
					                          <%-- <td><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}">${player.teamBoardInfo.boardName}</a></td> --%>
					                          <td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}"><img src="${player.teamBoardInfo.boardImageURL}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" >  <b>${player.teamBoardInfo.boardName}</b><div class="clearfix"></div></a></td>
=======
	                       				  	  <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}">
	                       				  	  <span class="text-danger"> <img alt="" src="${player.userImageUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" width="30px" style="margin-right: 10px;"></span><b>${player.userName}</b></a></td>	                      					  
					                          <%-- <td><a href="${pageContext.request.contextPath}/${matches.homeTeam}/board/${matches.hometeamId}">${matches.homeTeam}</a></td> --%>
					                          
					                          <%-- <td><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}">${player.teamBoardInfo.boardName}</a></td> --%>
					                          <td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}"><img src="${player.teamBoardInfo.boardImageURL}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" style="width: 30px;margin-right: 10px; ">  ${player.teamBoardInfo.boardName}</a></td>
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
					                          
					                          <td>${player.games}</td>                  
					                          <td>${player.innings}</td>
					                          <td>${player.bowlingOvers}</td>
					                          <td>${player.maidenOvers}</td>
					                          <td>${player.bowlingRuns}</td>
					                          <td>${player.wickets}</td>
					                          <td>${player.bbi}</td>
					                          <td>${player.average}</td>
					                          <td>${player.economy}</td>
					                          <td>${player.strikeRate}</td>
					                          <td>${player.fourFer}</td>
					                          <td>${player.fiveFer}</td>						                          
						               </tr>
						               </tbody>            
						            </c:forEach>
						        </c:forEach>  
                     
                 		</table>
                  </div>
<<<<<<< HEAD
                  </div><!-- form group end -->
=======
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
	             </c:otherwise>	
	           </c:choose>
	       </c:forEach>                      
	<div class="clearfix"></div>
	</div>
                        <!-- </tr>
                        
                       
                     </tbody>
                 </table> -->
                 
             <%--     </c:otherwise>
                  
                  
                  
                  </c:choose>
                   --%>
                  
                 </div> 
          
              
            </div>
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->

</section>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/topBowler.js"></script> --%>
  <%@ include file="Footer.jsp" %>
  <script>
 /*  function loading(){
	  $("#tournmentInField").val("");
	  $("#teamBoardInField").val("");
	  $('#selectTeamBoardId').val("");
	   $('#SelectTournMent').val("");
  } */
  var url = window.location.href;
  
  if(url.indexOf('leagueTopBatsmanList') != -1){
  }else{
  $(window).bind("pageshow", function() {
	   $("#teamBoardInField").val("");
	   $("#tournmentInField").val("");
	   $('#selectTeamBoardId').val("");
	   $('#SelectTournMent').val("");
 });
  }
  
  
  
  
  
  var i=0;
  function yearWiseTopBowler(val) {
  	if(i==0)
  	 {
  	 i=1;
  	 return false;
  	 }
  	if(val != "Years"){
  		document.getElementById("centuryYearId").innerHTML = val;
  	  	var year = {
  	  			boardId : "${boardId}",
  	  			filterByYear : val,
  	  		
  	  	}
  	  $('#loading').show();
  	  	$.ajax({

  	  		type : "Post",
  	  		url : "${pageContext.request.contextPath}/yearWiseTopBowler",
  	  		data : JSON.stringify(year),
  	  		contentType : "application/json",
  	  		success : function(res) {
  	  			$('#centTable').hide();
  	  			
  	  			if (res.length != 0) {
  	  				var html = '';
  	  				for (var i = 0; i < res.length; i++) {
  	  					if(res[i].size != 0){
  	  						
  	  						html += '<div class="whiteBox">';
  								html += '<span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : '+res[i].tournamentName+'</span>'
  		   						html += '<table id="centTable" class="css-serial"><thead><tr>';
  		   					
  		   						html += '<th>S.No</th>';
  		   						html += '<th>Player Name</th>';
  		   						html += '<th>Team</th>';
  		   						html += '<th>Matches</th>';
  		   						html += '<th>Innings</th>';
  		   						html += '<th>Overs</th>';
  		   						html += '<th>Maidens</th>';
  		   						html += '<th>Runs</th>';
  		   						html += '<th>Wkts</th>';
  		   						html += '<th>BBI</th>';
  		   						html += '<th>Avg</th>';
  		   						html += '<th>Economy</th>';
  		   						html += '<th>SR</th>';
  		   						html += '<th>4fer</th>';
  		   						html += '<th>5fer</th>';
  		   						html += '</tr></thead><tbody align="center">';
  		   						var mat = res[i].matchsheduledtolist;
  		  						if(mat != null){
  		  							for (var j=0;j<mat.length;j++){
  		  	   							var plist = mat[j].bowlerlist;
  		  	   							if(plist != null){
  		  	   								for(var k=0;k<plist.length;k++){
  		  										html += '<tr>';
  		  	   									html +='<td></td>';
<<<<<<< HEAD
  		  	   									
  		  	   								if(plist[k].userImageUrl != null && plist[k].userImageUrl != ""){
  		  	   									
  		  	   									html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><img alt="" src="'+plist[k].userImageUrl+'" ><b>' +plist[k].userName+ '</b><div class="clearfix"></div></a></td>';
  		  	   								}else
  		  	   									{html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><img alt="" src=${pageContext.request.contextPath}/images/profileIcon.png; ><b>' +plist[k].userName+ '</b><div class="clearfix"></div></a></td>';}
  		  	   									html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/' + plist[k].teamBoardInfo.boardName + '/board/' + plist[k].teamBoardInfo.boardId + '"><img src="'+plist[k].teamBoardInfo.boardImageURL+ '"><b>' + plist[k].teamBoardInfo.boardName + '</b><div class="clearfix"></div></a></td>';
=======
  		  	   									html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><span class="text-danger"><img alt="" src="'+plist[k].userImageUrl+'" width="30px" style="margin-right: 10px;"></span><b>' +plist[k].userName+ '</b> </a></td>';
  		  	   									html += '<td class="tdAlignLeft"><a href="${pageContext.request.contextPath}/' + plist[k].teamBoardInfo.boardName + '/board/' + plist[k].teamBoardInfo.boardId + '"><img src="'+plist[k].teamBoardInfo.boardImageURL+ '"style="margin-right: 10px; width:30px;">' + plist[k].teamBoardInfo.boardName + '</a></td>';
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].games + '</td>';
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].innings + '</td>';
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].bowlingOvers + '</td>';
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].maidenOvers + '</td>';
  		  	   									html += '<td class="tdAlignLeft">'+ plist[k].bowlingRuns +'</td>';
  		  	   									html += '<td class="tdAlignLeft">'+ plist[k].wickets +'</td>';
  		  	   									html += '<td class="tdAlignLeft">'+ plist[k].bbi +'</td>';
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].average + '</td>';
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].economy + '</td>'; 
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].strikeRate + '</td>'; 
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].fourFer + '</td>'; 
  		  	   									html += '<td class="tdAlignLeft">' + plist[k].fiveFer + '</td>'; 
  		  	   									
  		  	   							        html += '</tr>'; 
  		  	   								}
  		  	   							}
  		  	   						}
  		  						}
  	  						
  	  							html += '</tbody>';
  		    						html += '</table>';
  		    						html += '</div>';
  		    						
  		    						
  	  						}
  	  				}
  	  				$("#centTable").html(html).trigger('create');
  					
  					$('#centTable').show();
  					$('#centTable1').hide();
  					$('#tournmentInField').val("");
  					$('#teamBoardInField').val("");
  					$('#selectTeamBoardId').val("");
  					$('#SelectTournMent').val("");
  					$('#loading').hide();
  	  			} else {
  	  		}
  	  			
  	  			
  	  			
  	  	},
  	  	error : function(err) {
  	  		console.log(err);
  	  	}
  	  	})
  	  console.log(" Matches years :" + val);
  	}
  }
  
  </script> 
</body>
</html>
