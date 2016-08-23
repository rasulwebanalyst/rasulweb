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
<script>var ctx="${pageContext.request.contextPath}";</script>
  <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
          <script type="text/javascript">
    	       
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
    					String[] latlangArray=latlang.split(",");
    					centrelat=latlangArray[0];
    					centrelang=latlangArray[1];
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
	    		/*  for ( type= 0; type < storeTypes.size(); type++) { */
		    				int i;
	    		
		    				for (i = 0; i < MatchesArroundYou.size(); ++i) {
		    					
		    					MatchesAroundYouResponse matchesArroundYou1 = (MatchesAroundYouResponse) MatchesArroundYou.get(i);
		    					Ground ground1=matchesArroundYou.getGroundDetails();
		    					List<BoardProfile> boards=matchesArroundYou1.getBoardProfList();
		    					BoardProfile board=boards.get(0);
		    					BoardProfile board1=boards.get(1);
		        				String latlang1=ground.getLatLang();
		        				String[] latlangArray1=latlang1.split(",");
		        					
		    					%>
		    					count++;
		    		// var s=count;
		    		//j=count+1;
		    		matchLatLang = matchLatLang +  count;
		    		matchLatLang = new google.maps.LatLng(<%=latlangArray1[0]%>, <%=latlangArray1[1]%>);
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
		    			
    			<%} /* } */ }%>
    			
    		}
</script>

</head>
<body onload="initialize()">

<%@ include file="BuddyHeader.jsp" %>




<div class="profileBanner"> <img src="images/innerBanner.png"> </div>
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
                           			No Matches around you.
                           		</div>
                           	</c:when>
                           	<c:otherwise>
                             <c:forEach items="${MatchesArroundYou}" var="match">
                             <c:set var="board" value="${match.boardProfList.toArray()[0]}"></c:set>
                              <c:set var="board1" value="${match.boardProfList.toArray()[1]}"></c:set>
                              	<div class="col-md-12 whiteBox">

                        			<div class="matchBlock">
                           				 <h2>Fantasy League <span class="date"> - ${match.gameDate}</span>  <span class="lastUpdate">Last update 2 min ago</span></h2>

		                				<div class="media col-md-5">
		                                  <div class="media-left">
		                                      <img src="${board.boardImageURL }" class="teamLogo">
		                                  </div>
		
		                                  <div class="media-body">
		                                    <h4 class="media-heading"> ${board.boardName} </h4>
		                                    <div class="score">185 <span><b> 7 Wicket</b> (42.4 Overs) </span></div>
		                                  </div>
		                                </div>
                                
		                				<div class="media col-md-5">
		                                  <div class="media-left">
		                                      <img src="images/teamLogo4.png" class="teamLogo">
		                                  </div>
		
		                                  <div class="media-body">
		                                    <h4 class="media-heading"> ${board1.boardName}</h4>
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
		                                	<strong>Address :</strong> ${match.groundDetails.groundName}, ${match.groundDetails.address1} ${match.groundDetails.address2} ${match.groundDetails.city} ${match.groundDetails.state} ${match.groundDetails.country}<br>
											<strong>Time :</strong> ${match.gameDate}
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
 
</body>
</html>
