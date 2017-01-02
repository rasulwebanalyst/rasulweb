
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
       <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
       <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
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

<c:if test=""></c:if>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="LeaugeManagementSideMenu.jsp" %>


     
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		        <div class="col-md-10">  <h1 class="pageHead noBorder">Top Batsman
                  
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
                  
                  </h1></div>
                  <div class="col-md-12 col-sm-12 col-xs-12" style="display: inline-block;">
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
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWiseTopBatsman(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
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
                   <form action="${pageContext.request.contextPath}/leagueTopBatsmanList" id="centuriesSearchForm" name="centuriesSearchForm" method="post" onsubmit="return searchValiation()">
                  <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                     	<input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${TopBatsManSearch.tournamentId}"> 
                        <input type="hidden" id="selectTeamBoardId" name="homeTeamId" value="${TopBatsManSearch.homeTeamId}" > 
                        <input type="hidden" id="selectAgainestTeamBoardId" value="" name="againstTeamId">  
                        <input type="hidden" name="boardId"  id="searchboardId" value="${BoradInfo.boardId}">
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" name="tournmentName" id="tournmentInField" onkeyup="tournmentSearch(this)" value="${TopBatsManSearch.tournmentName}"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">Team Name</label> <input type="text" class="form-control" placeholder="" name="homeTeamName" id="teamBoardInField" onkeyup="teamSearch(this)" value="${TopBatsManSearch.homeTeamName}" > 
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
                  
            <div class="col-md-10 pull-right rightnone">
      		 <div class="col-md-12 whiteBox font13px"> 
     <div id="centTable" >
                  
                  
                        <c:forEach items="${TopBatsmanResponse}" var="topplayer">
                        	<c:choose>
            					<c:when test="${topplayer.size eq 0}">
            					</c:when>
           						<c:otherwise>
                        			<br>
	                       			<div class="col-md-12 whiteBox font13px" id="centTable1" style="font-size: 12px;">
	                       				<span class="text-danger" style="font-weight: bold; color: #3253a8 !important; ">Tournament Name : ${topplayer.tournamentName}</span>
	                       					<br>
	                       					<div class="form-group">
				                       		<table>
						                        <thead>
						                        <tr>
						                          <th>S.No</th>
						                          <th>Player Name</th>
						                          <th>Team</th>
						                          <th>Matches</th>
						                          <th>Innings</th>
						                          <th>NO</th>
						                          <th>Runs</th>
						                          <th>Avg</th>
						                          <th>HS</th>
						                          <th>SR</th>
						                          <th>100s</th>
						                          <th>50s</th>
						                          <th>6s</th>
						                          <th>4s</th>
						                          
						                        </tr>
						                       </thead>
                        
	                       		<c:forEach items="${topplayer.matchsheduledtolist}" var="match">  
	                       		
	                       			<c:forEach items="${match.playerlist}" var="player" varStatus="index">  
	                       		
	                       		<c:choose>
	                       		<c:when test="${!empty match.playerlist}">
	                       		<tbody id="topbatsmanTableBody">
	                       		<tr>                        				 	
	                        				 	  		<%-- <c:choose>
					                        				<c:when test="${index.count eq 1}">
					                        					<td rowspan="${fn:length(match.playerlist)}" >${topplayer.tournamentName}</td>
					                        				</c:when>
					                        				<c:otherwise>
					                        				
					                        				</c:otherwise>
				                        				</c:choose> --%>
				                        				<td>${index.count}</td>
				                        				
	                        				  	  <td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/${player.userName}/${player.userId}"><img alt="" src="${player.userImageUrl}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" "><b >${player.userName}</b><div class="clearfix"></div></a></td>	 
	                        				  	                       					  
						                          <%-- <td><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}">${player.teamBoardInfo.boardName}</a></td> --%>
						                          <td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/${player.teamBoardInfo.boardName}/board/${player.teamBoardInfo.boardId}"><img src="${player.teamBoardInfo.boardImageURL}"onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" style="width: 30px;margin-right: 10px; "><b>${player.teamBoardInfo.boardName}</b><div class="clearfix"></div></a></td>
						                          <td>${player.games}</td>
						                          <td>${player.innings}</td>
						                          <td>${player.notOuts}</td>
						                          <td>${player.sumOfRuns}</td>
						                          <c:choose>
							                          <c:when test="${player.average eq 0}">
							                          	<td>-</td>
							                          </c:when>
							                          <c:otherwise>
							                          	<td><fmt:formatNumber type="number"  pattern="##########.##"  value="${player.average}" /></td>
							                          </c:otherwise>
						                          </c:choose>
						                          <td>${player.highest}</td>	
						                          <td>${player.strikeRate}</td>	
						                          <td>${player.centuryCount}</td>	
						                          <td>${player.halfCenturyCount}</td>	
						                          <td>${player.sixsCount}</td>
						                          <td>${player.foursCount}</td>					                          
						                     </tr>
	                       		</tbody>
	                       		</c:when>
	                       		<c:otherwise>
	                       		</c:otherwise>
	                       		</c:choose>
	                       		           			
						                     </c:forEach>
                     </c:forEach>  
                 </table> 
                 </div>
                 </div><!-- from group end -->
				</c:otherwise>		                     
					</c:choose>	                     
	                       		                    
	                       </c:forEach>
	                       <div class="clearfix"></div>
	                       </div>
                        <!-- </tr>
                        
                       
                     </tbody>
                 </table> -->
                  
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
   
  <script type="text/javascript">
  // function loading()
  //{
	  var url = window.location.href;
   
   if(url.indexOf('leagueTopBatsmanList') != -1){
   	//alert("inside contains");
   }else{
	   $(window).bind("pageshow", function() {
	   $("#teamBoardInField").val("");
	   $("#tournmentInField").val("");
	   $('#selectTeamBoardId').val("");
	   $('#SelectTournMent').val("");
  });
   }
   
   
   var i=0;
   function yearWiseTopBatsman(val) {
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
   	   		url : "${pageContext.request.contextPath}/yearWiseTopBatsman",
   	   		data : JSON.stringify(year),
   	   		contentType : "application/json",
   	   		success : function(res) {
   	   			$('#centTable').hide();
   	   			var html = '';
   	   			
   	   			if (res.length != 0) {
   	   				for (var i = 0; i < res.length; i++) {
   	   					if(res[i].size != 0){
   	   						
   	   						html += '<div class="whiteBox">';
   							html += '<span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : '+res[i].tournamentName+'</span>'
   	   						html += '<table id="centTable"><thead><tr>';
   	   						html += '<th>S.No</th>';
   	   						html += '<th>Player Name</th>';
   	   						html += '<th>Team</th>';
   	   						html += '<th>Matches</th>';
   	   						html += '<th>Innings</th>';
   	   						html += '<th>NO</th>';
   	   						html += '<th>Runs</th>';
   	   						html += '<th>Avg</th>';
   	   						html += '<th>HS</th>';
   	   						html += '<th>SR</th>';
   	   						html += '<th>100s</th>';
   	   						html += '<th>50s</th>';
   	   						html += '<th>6s</th>';
   	   						html += '<th>4s</th>';
   	   						html += '</tr></thead><tbody align="center">';
   	   						var mat = res[i].matchsheduledtolist;
   	   						if(mat != null){
   	   							for (var j=0;j<mat.length;j++){
   	   	   							var plist = mat[j].playerlist;
   	   	   							if(plist != null){
   	   	   								for(var k=0;k<plist.length;k++){
   	   										var slno = k+1;
   	   										console.log("value"+plist[k].teamBoardInfo.boardName);
   	   										html += '<tr>';
   	   	   									html +='<td>'+ slno +'</td>';
   	   	   							if(plist[k].userImageUrl != null && plist[k].userImageUrl != ""){
   	   	   								html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><img alt="" src="'+plist[k].userImageUrl+'" ></div><b>' +plist[k].userName+ '</b><div class="clearfix"></div></a></td>';
   	   	   							}else
   	   	   								{
   	   	   						html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/buddy/'+ plist[k].userName+ '/' +plist[k].userId+ '"><img alt="" src=${pageContext.request.contextPath}/images/profileIcon.png; ></div><b>' +plist[k].userName+ '</b><div class="clearfix"></div></a></td>';
   	   	   								}
   	   	   								
   	   	   								html += '<td class="tdAlignLeft TB_table"><a href="${pageContext.request.contextPath}/' + plist[k].teamBoardInfo.boardName + '/board/' + plist[k].teamBoardInfo.boardId + '"><img src="'+plist[k].teamBoardInfo.boardImageURL+ '"><b>' + plist[k].teamBoardInfo.boardName + '</b><div class="clearfix"></div></a></td>';
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].games + '</td>';
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].innings + '</td>';
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].notOuts + '</td>';
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].sumOfRuns + '</td>';
   	   	   									if(plist[k].average != 0){
   	   	   										console.log("average val : "+plist[k].average);
   	   	   										html += '<td class="tdAlignLeft">'+ plist[k].average +'</td>';
   	   	   									}else{
   	   	   										html += '<td class="tdAlignLeft">-</td>';
   	   	   									}
   	   	   									
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].highest + '</td>';
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].strikeRate + '</td>'; 
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].centuryCount + '</td>'; 
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].halfCenturyCount + '</td>'; 
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].sixsCount + '</td>'; 
   	   	   									html += '<td class="tdAlignLeft">' + plist[k].foursCount + '</td>';
   	   	   									
   	   	   							        html += '</tr>'; 
   	   	   									
   	   	   									
   	   	   									
   	   	   									 
   	   	   								}
   	   	   							
   	   	   							
   	   	   							}
   	   	   							
   	   	   						}
   	   							html += '</tbody>';
   		    						html += '</table>';
   		    						html += '</div>';
   	   						}
   	   						
   	   					}
   	   				}
   	   			} else {
   	   		}
   	   			
   	   			$("#centTable").html(html).trigger('create');
   						
   						$('#centTable').show();
   						$('#centTable1').hide();
   						$('#tournmentInField').val("");
   						$('#teamBoardInField').val("");
   						$('#selectTeamBoardId').val("");
   						$('#SelectTournMent').val("");
   						$('#loading').hide();
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
