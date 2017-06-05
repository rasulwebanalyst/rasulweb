<!DOCTYPE html>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <jsp:useBean id="MatchesArroundYou" scope="request" class="java.util.ArrayList" />
  <%@ page import="com.cricketsocial.bean.response.MatchesAroundYouResponse" %>
   <%@ page import="com.cricketsocial.bean.ground.Ground" %>
 <%@ page import="com.cricketsocial.bean.board.BoardProfile" %>
 <%@ page import="java.util.List" %>
 
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
      <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<script>var ctx="${pageContext.request.contextPath}";</script>
  <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
          <script type="text/javascript">
     
          /* tIME related functions start  */
          
        		function gameDateTime(dateComing){
        			var date = new Date(dateComing);	
        		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
        		var gettingFromServer= new Date(date);
        		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
        		return formatTime(gettingFromServer); 
        		
        		}
        		
        		var formatDate = function(date) {
            		
            		var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
            		                  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
            		                ];

            		  var hours = date.getHours();
            		  console.log(hours)
            		  var minutes = date.getMinutes();
            		  var ampm = hours >= 12 ? 'PM' : 'AM';
            		  hours = hours % 12;
            		  hours = hours ? hours : 12; // the hour '0' should be '12'
            		  minutes = minutes < 10 ? '0'+minutes : minutes;
            		  hours = hours < 10 ? '0'+hours : hours ;
            		  var strTime =date.getDate()+" "+monthNames[date.getMonth()]+" "+date.getFullYear();
            		  return strTime;
            		};
            		
                   var formatTime = function(date) {
                		
                		var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
                		                  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
                		                ];

                		  var hours = date.getHours();
                		  console.log(hours)
                		  var minutes = date.getMinutes();
                		  var ampm = hours >= 12 ? 'PM' : 'AM';
                		  hours = hours % 12;
                		  hours = hours ? hours : 12; // the hour '0' should be '12'
                		  minutes = minutes < 10 ? '0'+minutes : minutes;
                		  hours = hours < 10 ? '0'+hours : hours ;
                		  var strTime = hours + ':' + minutes + ' ' + ampm;
                		  return strTime;
                		};
            		
            		var formatDateTime = function(date) {
                		
                		var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
                		                  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
                		                ];

                		  var hours = date.getHours();
                		  console.log(hours)
                		  var minutes = date.getMinutes();
                		  var ampm = hours >= 12 ? 'PM' : 'AM';
                		  hours = hours % 12;
                		  hours = hours ? hours : 12; // the hour '0' should be '12'
                		  minutes = minutes < 10 ? '0'+minutes : minutes;
                		  hours = hours < 10 ? '0'+hours : hours ;
                		  var strTime =date.getDate()+" "+monthNames[date.getMonth()]+" "+date.getFullYear()+" "+ hours + ':' + minutes + ' ' + ampm;
                		  return strTime;
                		};
            		
            		function gameDate(dateComing){
            			var date = new Date(dateComing);	
            		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
            		var gettingFromServer= new Date(date);
            		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
            		return formatDate(gettingFromServer); 
            		
            		}
            		
            		
            		function timeDifference(dateNew){
            		
            			//var date = new Date("3/21/2016 13:47:00");	
            			var date = new Date(dateNew);
            		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
            		    var date1= new Date(date);
            		    date1 = new Date(date1.valueOf() - offset);
            			 
            			  console.log("date1 )))))))))))))))))))))))))"+date1);
            			  
            			/* var dateFromServer = "${serverTime}"; 
            			var dateToLocal = new Date(dateFromServer);
              		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
              		    var date2= new Date(dateToLocal);
              		    date2 = new Date(date2.valueOf() - offset); */
            			  
            			  var date2 = new Date();
            		
            			  console.log("date2 )))))))))))))))))))))))))"+date2);
            			  
            			  var diff = date2.valueOf() - date1.valueOf();
            			 
            			  var returnValue = timeConversionMatches(diff);
            		      
            			  console.log("returnValue inside if :"+returnValue);
            				
            			 return timeConversionMatches(diff);
            			  
            			}
            			 
            		//});

            			  
            		function timeConversionMatches(millisec) {

            		    var seconds1 = (millisec / 1000);
            		    var seconds = Math.round(seconds1);

            		    var minutes1 = (millisec / (1000 * 60));
            		    var minutes = Math.round(minutes1);

            		    var hours1 = (millisec / (1000 * 60 * 60));
            			var hours = Math.round(hours1);
            		    
            		    var days1 = (millisec / (1000 * 60 * 60 * 24));
            			var days = Math.round(days1);

            			//alert("seconds :"+seconds+" minutes :"+minutes);
            			
            		    if (seconds < 60) {
            		    	if (seconds > 0) {
            		    		console.log(seconds);
            		    	    // Do Something
            		    		return seconds + " Secs";
            		    	}else{
            		    		console.log("few seconds ago");
            		    		 return "few secs";
            		    	}
            		    	
            		    } else if (minutes < 60) {
            		        return minutes + " Mins";
            		    } else if (hours < 24) {
            		        return hours + " Hrs";
            		    } else {
            		        return days + " Days";
            		    }
            		}
            		
            		/* tIME related functions end  */
            		
        		
 
    	var globlaShoppingCartModel=null;
    	 function initialize()
    		{
    	  
    	   icons=new Array();
    	   var infowindowstatusid=1;
    		 <%String centrelat = null;
   				String centrelang = null;
   				int type;
    			if(MatchesArroundYou.size() > 0){
    				
    				MatchesAroundYouResponse matchesArroundYou = (MatchesAroundYouResponse) MatchesArroundYou.get(0);
    				Ground ground=matchesArroundYou.getGroundDetails();
    				String latlang=ground.getLatLang();
    				if(!latlang.isEmpty()){
    					String[] latlangArray=latlang.split(",");
    					centrelat=latlangArray[0];
    					centrelang=latlangArray[1];
    				}
    				%>
    				
    				var CurrentCenterPoint = new google.maps.LatLng(<%=centrelat%>,<%=centrelang%>); 
		    		var mapProp = {
		    		  center:CurrentCenterPoint, 
		    		  zoom:10, 
		    		  mapTypeId:google.maps.MapTypeId.ROADMAP
		    		  }; 
		    		var map=new google.maps.Map(document.getElementById("googleMap")
		    		  ,mapProp);
		    		popUps = new Array();
		    		 infoWindows = new Array();
		    		 positions = new Array();
		    		 var matchLatLang="";
		    		 var count=0;
	    		<% 
		    				int i;
	    		
		    				for (i = 0; i < MatchesArroundYou.size(); ++i) {
		    					
		    					MatchesAroundYouResponse matchesArroundYou1 = (MatchesAroundYouResponse) MatchesArroundYou.get(i);
		    					Ground ground1 = matchesArroundYou1.getGroundDetails();
		    					
		    				//	System.out.println("ground1 "+ground1.getLatLang());
		    					
		    					
		    					BoardProfile board = matchesArroundYou1.getHomeTeamInfo();
		    					BoardProfile board1 = matchesArroundYou1.getAwayTeamInfo();
		        				String latlang1 = ground1.getLatLang();
		        				if(!latlang1.isEmpty()){
		        				String[] latlangArray1 = latlang1.split(",");
		        					
		    					%>
		    					count++;
		    		matchLatLang = matchLatLang +  count;
		    		matchLatLang = new google.maps.LatLng(<%= latlangArray1[0] %>, <%= latlangArray1[1] %>);
		    		<% }%>
		    		icon1='images/googleMapIcon.png'; 


		    		 
		    		positions[count] = new google.maps.Marker({
		    					position : matchLatLang,
		    					map : map,
		    					icon : icon1
		    				});
		    		
		    		 popUps[count] ='<div class="mapPopupDiv"><%=board.getBoardName() %> VS <%=board1.getBoardName() %></div>';
		    																																																																																															                                																																																																																									
		    		infoWindows[count] = new google.maps.InfoWindow({
	    				content : popUps[count]
	    			});	    			
   			
		    			var addListener = function(count) {
		    				
		    				google.maps.event.addListener(positions[count], 'click', function() {
		    					infoWindows[infowindowstatusid].close();
		    					infoWindows[count].open(map, positions[count]);
		    					//infoWindows[infowindowstatusid].close();
		    					infowindowstatusid=count;
		    				});
		
		    			};
		    			addListener(count);  
		    			
    			<%} 
		    } %>
    			
    	}
</script>

</head>
<body onload="initialize()">

<%@ include file="BuddyHeader.jsp" %>




<div class="profileBanner"> <img src="https://cdn.cricketsocial.com/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
       
        
          <%@ include file="BuddySideMenu.jsp" %>
      
      
      <div class="col-md-10">
      	<div class="col-md-12 whiteBox mapSize" id="googleMap"   style="border:0" frameborder="0" allowfullscreen>
           <h1 class=""> Matches Around You</h1>  	
          	
          	 <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248756.04369439092!2d80.20901174999996!3d13.047560400000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5265ea4f7d3361%3A0x6e61a70b6863d433!2sChennai%2C+Tamil+Nadu!5e0!3m2!1sen!2sin!4v1441202275229" class="mapSize" frameborder="0" style="border:0" allowfullscreen></iframe> -->
		</div>
      		 
      		 
      				   <c:choose>
                           	<c:when test="${empty MatchesArroundYou}">
                           		<div style="margin-left: 50%; margin-bottom: 15px;" class="sidebar-list">
                           			No Match around you.
                           		</div>
                           	</c:when>
                           	<c:otherwise>
                             <c:forEach items="${MatchesArroundYou}" var="match">
                             <c:set var="board" value="${match.homeTeamInfo}"></c:set>
		                               <c:set var="board1" value="${match.awayTeamInfo}"></c:set>
		                               
                              	<div class="col-md-12 whiteBox">

                        			<div class="matchBlock">
                           				 <h2>${match.tournamentName} <span class="date" style="float: none;"> - <script>document.writeln(gameDate("${match.gameDateWithTime}"));</script></span>   
                           				 
                           				 <!-- <span class="lastUpdate">Last update 2 min ago</span> --> 
                           				 <c:if test="${match.status == 'InProgress' }">
                           				 
                           				   <c:if test="${match.scoreDetailCreatedDate != null }">
                           				   
                           				   <c:choose>
                           				 <c:when test="${match.scoreDetailCreatedDate == '' }">
                           				 <span class="lastUpdate"></span>
                           				 </c:when>
                           				 <c:otherwise>
                           				 <span class="lastUpdate">Last update <script>document.writeln(timeDifference("${match.scoreDetailCreatedDate}"));</script> ago</span>
                           				 </c:otherwise>
                           				 
                           				 </c:choose>
                           				   
                           				    </c:if> 
                           				  
                           				 
                           				 </c:if>
                           				 
                           				
                           				
                           				 
                           				
                           				 
                           				 </h2>

		                				<div class="media col-md-5">
		                                  <div class="media-left">
		                                     <%--  <img src="${board.boardImageURL }" class="teamLogo"> --%>
		                                      <img src="${match.homeTeamInfo.boardImageURL }" class="teamLogo">
		                                  </div>
		
		                                  <div class="media-body">
		                                    <h4 class="media-heading"><a href="${pageContext.request.contextPath}/${board.boardName}/board/${board.boardId}"> ${board.boardName}</a> </h4>
		                                    <!-- <div class="score">185 <span><b> 7 Wicket</b> (42.4 Overs) </span></div> -->
		                                  </div>
		                                </div>
                                
		                				<div class="media col-md-5">
		                                  <div class="media-left">
		                                       <img src="${match.awayTeamInfo.boardImageURL }" class="teamLogo">
		                                  </div>
		
		                                  <div class="media-body">
		                                    <h4 class="media-heading"> <a href="${pageContext.request.contextPath}/${board1.boardName}/board/${board1.boardId}"> ${board1.boardName}</a></h4>
		                                    <!-- <div class="score">250 <span> <b>All out </b>(42.4 Overs) </span></div> -->
		                                 	 </div>
		                                </div>
		                                
		                                <div class="media col-md-2">
		                                 <div class="ScoreBtns">
		                                 
		                                 <c:choose>
		                                 <c:when test="${match.status == 'InProgress' }">
		                                 <a href="#" class="btn btn-default btn-sm dBtn" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','${match.createdBy}')">Live Score</a>
		                                   <!--  <a href="#"  class="btn btn-default btn-sm blueBtn">View Details</a> -->
		                                 </c:when>
		                                 <c:otherwise>
		                                <!--   <a href="#"  class="btn btn-default btn-sm blueBtn">View Details</a> -->
		                                <a href="#" class="btn btn-default btn-sm dBtn" onclick="showScoreCardInProgresserror()">View Score</a>
		                                 </c:otherwise>
		                                 
		                                 </c:choose>
		                               	 </div>
		                                </div>
                                
		                                <div class="media col-md-12 venueDetails">
		                                	<strong>Address :</strong> ${match.groundDetails.groundName}, ${match.groundDetails.address1} <br>
											<strong>Time :</strong> <script>document.writeln(gameDateTime("${match.gameDateWithTime}"));</script>
		                                </div>
			            		</div>
                        
                       		 </div>
                             </c:forEach>
                           	</c:otherwise>
                          </c:choose> 
                          
      		 
      		 
      		 
      			<!-- <div class="col-md-12 whiteBox">

                        <div class="matchBlock">
                            <h2>Fantasy League <span class="date"> - 05 Augest 2015</span>  <span class="lastUpdate">Last update 2 min ago</span></h2>

                				<div class="media col-md-5">
                                  <div class="media-left">
                                      <img src="images/teamLogo1.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Chennai Rockers</h4>
                                    <div class="score">185 <span><b> 7 Wicket</b> (42.4 Overs) </span></div>
                                  </div>
                                </div>
                                
                				<div class="media col-md-5">
                                  <div class="media-left">
                                      <img src="images/teamLogo4.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Kaay Stars</h4>
                                    <div class="score">250 <span> <b>All out </b>(42.4 Overs) </span></div>
                                  </div>
                                </div>
                                
                                <div class="media col-md-2">
                                 <div class="ScoreBtns">
                                	<a href="#" class="btn btn-default btn-sm dBtn">Live Score</a>
                                    <a href="#"  class="btn btn-default btn-sm blueBtn">View Details</a>
                                </div>
                                </div>
                                
                                <div class="media col-md-12 venueDetails">
                                	<strong>Address :</strong> India A Team Triangular series, 2015 - Match 1MA Chidambaram Stadium, Chennai<br>
									<strong>Time :</strong> 11 .00 AM to 05.00 PM
                                </div>
			            </div>
                        
                        </div>
                        
                        <div class="col-md-12 whiteBox">
                        

                        <div class="matchBlock">
                            <h2>Fantasy League <span class="date"> - 05 Augest 2015</span>  <span class="lastUpdate">Last update 2 min ago</span></h2>

                				<div class="media col-md-5">
                                  <div class="media-left">
                                      <img src="images/teamLogo1.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Chennai Rockers</h4>
                                    <div class="score">185 <span><b> 7 Wicket</b> (42.4 Overs) </span></div>
                                  </div>
                                </div>
                                
                				<div class="media col-md-5">
                                  <div class="media-left">
                                      <img src="images/teamLogo4.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Kaay Stars</h4>
                                    <div class="score">250 <span> <b>All out </b>(42.4 Overs) </span></div>
                                  </div>
                                </div>
                                
                                <div class="media col-md-2">
                                 <div class="ScoreBtns">
                                	<a href="#" class="btn btn-default btn-sm dBtn">Live Score</a>
                                    <a href="#"  class="btn btn-default btn-sm blueBtn">View Details</a>
                                </div>
                                </div>
                                
                                <div class="media col-md-12 venueDetails">
                                	<strong>Address :</strong> India A Team Triangular series, 2015 - Match 1MA Chidambaram Stadium, Chennai<br>
									<strong>Time :</strong> 11 .00 AM to 05.00 PM
                                </div>
			            </div>
                        </div>
                        
                        <div class="col-md-12 whiteBox">

                        <div class="matchBlock">
                            <h2>Fantasy League <span class="date"> - 05 Augest 2015</span>  <span class="lastUpdate">Last update 2 min ago</span></h2>

                				<div class="media col-md-5">
                                  <div class="media-left">
                                      <img src="images/teamLogo1.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Chennai Rockers</h4>
                                    <div class="score">185 <span><b> 7 Wicket</b> (42.4 Overs) </span></div>
                                  </div>
                                </div>
                                
                				<div class="media col-md-5">
                                  <div class="media-left">
                                      <img src="images/teamLogo4.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Kaay Stars</h4>
                                    <div class="score">250 <span> <b>All out </b>(42.4 Overs) </span></div>
                                  </div>
                                </div>
                                
                                <div class="media col-md-2">
                                 <div class="ScoreBtns">
                                	<a href="#" class="btn btn-default btn-sm dBtn">Live Score</a>
                                    <a href="#"  class="btn btn-default  btn-sm blueBtn">View Details</a>
                                </div>
                                </div>
                                
                                <div class="media col-md-12 venueDetails">
                                	<strong>Address :</strong> India A Team Triangular series, 2015 - Match 1MA Chidambaram Stadium, Chennai<br>
									<strong>Time :</strong> 11 .00 AM to 05.00 PM
                                </div>
			            </div>
            		</div>  -->
      		 
      		 
      		 
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<script type="text/javascript">
function showScoreCardInProgress(id,leagueBoardId){
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgress/boardId/"+leagueBoardId+"/matchId/"+id;
}
function showScoreCardInProgresserror()
{
	displaynotification('Match not yet started',2000);
	}
//$(document).ready(function(){
	
	
	
	  
</script>
</body>
</html>
