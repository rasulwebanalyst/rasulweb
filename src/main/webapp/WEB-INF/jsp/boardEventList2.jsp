<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>

<!--Gallery-->
<link rel="stylesheet" href="css/colorbox.css" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<style type="text/css">
.eventoption{

max-height: 207px !important;
overflow-y: auto !important;
}

</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript">
/* var formatAMPM = function(date) {
	  var hours = date.getHours();
	  console.log(hours)
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  hours = hours < 10 ? '0'+hours : hours ;
	  var strTime =date.getDate()+"/"+(date.getMonth()+1)+"/"+date.getFullYear()+" "+ hours + ':' + minutes + ' ' + ampm;
	  return strTime;
	} */
	function test(id){
		var date = $("#formatDate_"+id).html();	
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPM(gettingFromServer); 
	
	}
	
	function dayName(id)
	{
		var date = $("#formatDay_"+id).html();	
		
		  var offset = new Date().getTimezoneOffset() * 60 * 1000;
		  var gettingFromServer= new Date(date);
			gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		
			
			var hours = gettingFromServer.getHours();
			  console.log(hours)
			  var minutes = gettingFromServer.getMinutes();
			  var ampm = hours >= 12 ? 'PM' : 'AM';
			  hours = hours % 12;
			  hours = hours ? hours : 12; // the hour '0' should be '12'
			  minutes = minutes < 10 ? '0'+minutes : minutes;
			  hours = hours < 10 ? '0'+hours : hours ;
			
			  var day = gettingFromServer.getDate();
			  
			  var dayNames = ['Sun','Mon','Tue','Wed','Thur','Fri','Sat'];
				
				var dayName = dayNames[gettingFromServer.getDay()];
			  
			var dateObj={
					
					day : day,
					dateName:dayName
			};
		
			return dayName;
	}

	 function dateFunction(id)
	 {
		 var date = $("#format_"+id).html();	
	
		  var offset = new Date().getTimezoneOffset() * 60 * 1000;
		  var gettingFromServer= new Date(date);
			gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		
			
			var hours = gettingFromServer.getHours();
			  console.log(hours)
			  var minutes = gettingFromServer.getMinutes();
			  var ampm = hours >= 12 ? 'PM' : 'AM';
			  hours = hours % 12;
			  hours = hours ? hours : 12; // the hour '0' should be '12'
			  minutes = minutes < 10 ? '0'+minutes : minutes;
			  hours = hours < 10 ? '0'+hours : hours ;
			
			  var day = gettingFromServer.getDate();
			  
			  var dayNames = ['Sun','Mon','Tue','Wed','Thur','Fri','Sat'];
				
				var dayName = dayNames[gettingFromServer.getDay()];
			  
			var dateObj={
					
					day : day,
					dateName:dayName
			};
		
			return day;
	 }



</script>
    
</head>
<body>
	<%@ include file="CSCommon.jsp" %>
	<script>
	var eventIDS=[];
	</script>
	<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	<%@ include file="BoardSideMenu.jsp" %>
      
                  
            <div class="col-md-7">
      			<div class="col-md-12 whiteBox leag-Acc ">
                	<h1 class="">EVENT LISTING <a href="${pageContext.request.contextPath}/create-event/${BoradInfo.boardId}"><button type="submit" class="btn dBtn pull-right btnalian1">ADD EVENT</button></a></h1>
                      
                      
                      <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#Myevent" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true">Organizing Events</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="boardMatchEvent()">Match Schedule</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="boardCancelEvent()">Cancelled Events</a></li>
                         <!-- <li role="presentation" class=""><a href="#Buddyinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false">Buddy Invitation</a></li> -->
                        
                      </ul>
                    <input type="hidden" id="eventLogUserId" name="eventLogUserId" value="${USRID}">
                    <input type="hidden" id="eventLogUserImg" name="eventLogUserImg" value="${USRIMG}">
                    <input type="hidden" id="eventLogUserName" name="eventLogUserName" value="${USRLastName}">
                      <input type="hidden" id="eventboardId" name="eventboardId" value="${BoradInfo.boardId}">
                      <!-- Tab panes -->
                      <div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active" id="Myevent">
                        
					                       
					                       
					                       <c:choose>
						                       	<c:when test="${!empty MyEvents}">
						                       			<div class="col-md-12 whiteBox">
					            
					            							<h1 class="noBorder">Organize Events</h1>
					            							
					            									<c:choose>
					            										<c:when test="${empty MyEvents.upcomingCreatedEventList}">
					            											<div style="color: red;">No Event</div>	
					            										</c:when>
					            										<c:otherwise>
					            										<div id="MyEventListDIV">
					            											<c:forEach items="${MyEvents.upcomingCreatedEventList}" var="event" varStatus="index">
															                     <div class="col-md-12 noPadding leag-Acc" id="hide_${event.eventId}">
												                           		<!-- <div class="col-md-1 eveDate"> -->
										                          						<div class="col-md-1 col-sm-12 col-xs-12 noPadding N-btn">
										                         						<%-- <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span> --%>
										                         						<p><span id="format_${event.eventId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${event.eventDate}" /></span><script>document.write(dateFunction('${event.eventId}'));</script><br><span id="formatDay_${event.eventId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${event.eventDate}" /></span><script>document.write(dayName('${event.eventId}'));</script></p>
										                                                     
															 						</div>
												                    
															                    	 	<div class="col-md-11 col-sm-12 col-xs-12 borderleft">
															                         
																	                         <div class="col-md-12 noPadding eventUserDetails">
																	                         			<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
																	                         			<img src="${USRIMG}" class="nav-avatar" onerror="userErrorDefaultImg(this)">  ${USRLastName}
																	                            
																	                            
																	                            		<!-- <div class="teamLogos">
																	                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
																	                                	</div> -->
																	                            		<a href="${pageContext.request.contextPath}/editboardEvent/board/${BoradInfo.boardId}/${event.eventId}"><i style="margin-left: 5px;" class="fa fa-pencil" title="Edit Event"></i></a>
																	                            		<a onclick="CancelEvent('${event.eventId}')"><i style="margin-left: 5px;" class="fa fa-trash" title="Cancel Event"></i></a>
																	                            		<a onclick="updatePost('${event.eventId}')"><i style="margin-left: 5px;" class="fa fa-trash" title="Cancel Event"></i></a>
																	                            		
																	                         </div>
																	                          <script>
																	                         eventIDS.push("${event.eventName}");
																	                         </script>
																	                        	<div class="col-md-6 col-sm-12 col-xs-12 Leag-Img">
																	                         			 <h4>${event.eventName}</h4>
																	                         			  <p id="formatDate_${event.eventId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${event.eventDate}" /></p><script>document.writeln(test("${event.eventId}"));</script>
																	                         			<%--  <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p> --%>
																	                         			 <p>${event.venue}</p>
																	                        	</div>
																	                        <div class="col-md-6 col-sm-12 col-xs-12 threebtn">
																	                            
																	                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount}</a></p>
																	                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
																	                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}  </a></p>
																	                             	<%-- <p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Edit event" onclick="editEvent('${event.eventId}');" ></p> --%>
																	                            
																	                         </div>
															                         </div>
															                         
															                         <div id="reject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
															                     
																		                     <h1 class="noBorder">Accepted Guys</h1>
																		                     
																		                     <div class=" col-md-12 accptguybg">
																		                    	<p>1 Govind</p>
																		                        <img class="pull-right" src="images/userImg3.jpg">
																		                     </div>
																		                     
																		                     
															                     
															                     	</div>
												                         
															                          
															                     </div>
															                     
													                     </c:forEach>
													                     </div>
																				                       
					            										</c:otherwise>
					            									
					            									</c:choose>    							
					            								<div class="clear"></div>
					            								<div id="myEventPageBtn">
					            								<c:choose>
					            										<c:when test="${empty MyEvents.upcomingCreatedEventList}">
					            										
					            										</c:when>
					            										<c:otherwise>
					            										<c:if test="${fn:length(MyEvents.upcomingCreatedEventList) > 8}">
					            											      <button class="btn dBtn pull-right btnalian1" type="button" onclick="my_Event_Page(10,'MyEventListDIV','myEventPageBtn','${USRID}')">Load More</button>
					            										</c:if>
					            										                
					            										</c:otherwise>
					            										</c:choose>
																				   
																				                         </div> 
					    									</div>
								 
                          						 				
                           
                           
                           
                           
					                           						<div class="col-md-12 whiteBox">
						            
						            									<h1 class="noBorder">Past Events</h1>
						            										
						            										<c:choose>
					            										<c:when test="${empty MyEvents.completedCreatedEventList}">
					            											<div style="color: red;">No Event</div>	
					            										</c:when>
					            										<c:otherwise>
					            										<div id="MyEventListDIV2">
					            											<c:forEach items="${MyEvents.completedCreatedEventList}" var="event" varStatus="index">
																						                     <div class="col-md-12 noPadding leag-Acc">
																						                           		<!-- <div class="col-md-1 eveDate"> -->
																				                          						<div class="col-md-1 col-sm-12 col-xs-12 noPadding N-btn">
																				                         						<%-- <span><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></span> --%>
																				                         						<p><span id="format_${event.eventId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${event.eventDate}" /></span><script>document.write(dateFunction('${event.eventId}'));</script><br><span id="formatDay_${event.eventId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${event.eventDate}" /></span><script>document.write(dayName('${event.eventId}'));</script></p>
																				                                                     
																									 						</div>
																						                    					
																									                    	 	<div class="col-md-11 col-sm-12 col-xs-12 borderleft ">
																									                         
																											                         <div class="col-md-12 noPadding eventUserDetails">
																											                         			<!-- <img src="images/userImg4.jpg" class="nav-avatar"> Lakshith -->
																											                         			<img src="${USRIMG}" class="nav-avatar" onerror="userErrorDefaultImg(this)">  ${USRLastName}
																											                            
																											                            
																											                            		<!-- <div class="teamLogos">
																											                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
																											                                	</div> -->
																											                            		<%-- <a href="${pageContext.request.contextPath}/editEvent/${event.eventId}"><i class="fa fa-pencil" title="Edit Event"></i></a> --%>
																											                         </div>
																											                         
																											                        	<div class="col-md-6 col-sm-12 col-xs-12 Leag-Img">
																											                         			 <h4>${event.eventName}</h4>
																											                         			  <p id="formatDate_${event.eventId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${event.eventDate}" /></p><script>document.writeln(test("${event.eventId}"));</script>
																											                         			<%--  <p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p> --%>
																											                         			 <p>${event.venue}</p>
																											                        	</div>
																											                        <div class="col-md-6 col-sm-12 col-xs-12 threebtn">
																											                            
																											                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',143)">Rejected : ${event.rejectedCount}</a></p>
																											                                <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',152)">May Be : ${event.maybeCount}</a></p>
																											                             	<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br><a href="javascript:gettingEventAcceptedPeopleList('${event.eventId}','reject${event.eventId}',151)">Accepted : ${event.acceptedCount}  </a></p>
																											                             	<%-- <p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Edit event" onclick="editEvent('${event.eventId}');" ></p> --%>
																											                            
																											                         </div>
																									                         </div>
																									                         
																									                         <div id="reject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">
																									                     
																												                     <h1 class="noBorder">Accepted Guys</h1>
																												                     
																												                     <div class=" col-md-12 accptguybg">
																												                    	<p>1 Govind</p>
																												                        <img class="pull-right" src="images/userImg3.jpg">
																												                     </div>
																												                     
																												                     
																									                     
																									                     	</div>
																						                         
																						                          
																						                     </div>
																						                     
																				                     </c:forEach>
																				                     </div>
																				                     <%-- <div id="myEventPageBtn">
																				                         <button class="btn dBtn pull-right btnalian1" type="button" onclick="my_Event_Page(10,'MyEventListDIV','myEventPageBtn','${USRID}')">Load More</button>
																				                         </div>   --%> 
					            										</c:otherwise>
					            									
					            									</c:choose> 
						            										
								    								</div>
						                       	</c:when>
						                       	<c:otherwise>
						                       					<div style="color: red;">No Events</div>
						                       	</c:otherwise>
					                       </c:choose>
					                         <script>
					                         //alert(eventIDS);
					                      /*  var formatAMPM=function(date) {
					                    	   var hours = date.getHours();
					                    	   var minutes = date.getMinutes();
					                    	   var ampm = hours >= 12 ? 'PM' : 'AM';
					                    	   hours = hours % 12;
					                    	   hours = hours ? hours : 12; // the hour '0' should be '12'
					                    	   minutes = minutes < 10 ? '0'+minutes : minutes;
					                    	   var strTime = hours + ':' + minutes + ' ' + ampm;
					                    	   return strTime;
					                    	 } */

					                       var htmlContent="";
					                       var userName="${USRLastName}";
					                       var userIMG="${USRIMG}";
					                       if(localStorage.createdEvents4){
					                       var createdEventArray=JSON.parse(localStorage.createdEvents4);
					                       for(var j=0;j<createdEventArray.length;j++){
					                    	   if(eventIDS.indexOf(createdEventArray[j].EventName) !=-1)
					                    		   createdEventArray.splice(j,1);
					                       }  
					                       for(var i=0;i<createdEventArray.length;i++){
					                       if(createdEventArray[i].CokkieTimeStamp <= new Date().getTime())
					                    	   continue;
					                       var dateAndTime = new Date(createdEventArray[i].DateAndTime.replace("AM"," AM").replace("PM"," PM"));
					                       var formattedDate = dateAndTime.getDate()+"/"+(dateAndTime.getMonth()+1)+"/"+dateAndTime.getFullYear()+" "+formatAMPM(dateAndTime);
					                       htmlContent+="<div class='col-md-12 col-sm-12 col-xs-12 noPadding leag-Acc'> <div class='col-md-1 col-sm-12 col-xs-12 noPadding N-btn'>";
					                       htmlContent+="<p>"+createdEventArray[i].EventDay+"<br>"+createdEventArray[i].EventDate+"</p></div>";
					                       htmlContent+="<div class='col-md-11 col-sm-12 col-xs-12 borderleft'> <div class='col-md-12 col-sm-12 col-xs-12 noPadding eventUserDetails'> <img src='"+userIMG+"' class='nav-avatar' onerror='userErrorDefaultImg(this)'>";
					                       htmlContent+=userName+"<a href='/cricketsocial-web/editEvent/7e00ac08-6feb-4881-bf27-fda54504bf53'><i style='margin-left: 5px;' class='fa fa-pencil' title='Edit Event'></i></a> </div>";
					                       htmlContent+="<div class='col-md-6 col-sm-12 col-xs-12 Leag-Img'> <h4>"+createdEventArray[i].EventName+"</h4> <p>"+formattedDate+"</p> <p>"+createdEventArray[i].EventDescription+"</p> </div>";
					                       htmlContent+="<div class='col-md-6 col-sm-12 col-xs-12 threebtn'> <p><input src='' type='button' class='btn dBtn btn-sm pull-right btnalian1' value='Reject' disabled='disabled'><br>";
					                       htmlContent+="<a href='javascript:gettingEventAcceptedPeopleList('7e00ac08-6feb-4881-bf27-fda54504bf53','reject7e00ac08-6feb-4881-bf27-fda54504bf53',143)'>Rejected : 0</a> </p>";
					                       htmlContent+="<p><input src='' type='button' class='btn dBtn btn-sm pull-right btnalian1' value='May Be' disabled='disabled'> <br> ";
					                       htmlContent+="<a href='javascript:gettingEventAcceptedPeopleList('"+reatedEventArray[i].EventID+"','reject7e00ac08-6feb-4881-bf27-fda54504bf53',152)'>May Be : 0</a> </p>";
					                       htmlContent+="<p> <input src='' type='button' class='btn dBtn btn-sm pull-right btnalian1' value='Accept' disabled='disabled'><br>";
					                       htmlContent+="<a href='javascript:gettingEventAcceptedPeopleList('7e00ac08-6feb-4881-bf27-fda54504bf53','reject7e00ac08-6feb-4881-bf27-fda54504bf53',151)'>Accepted : 0 </a> </p> </div> </div>";
					                       htmlContent+="<div id='reject7e00ac08-6feb-4881-bf27-fda54504bf53' class='col-md-12 accbox eventoption' style='display: none;'> <h1 class='noBorder'>Accepted Guys</h1>";
					                       htmlContent+="<div class=' col-md-12 accptguybg'> <p>1 Govind</p> <img class='pull-right' src='images/userImg3.jpg'> </div> </div> </div>";
					                       }
					                       }
					                       //alert("htmlContent "+htmlContent);
					                       $("#MyEventListDIV").prepend(htmlContent);
					                       </script>
					                        
                           
                       	</div>
                        
                         <div class="clear"></div>
                        
                            <div role="tabpanel" class="tab-pane" id="Matchinvitation">
                              
                              
                              	<div class="col-md-12 whiteBox">
            
            						<h1 class="noBorder">Match Schedule</h1>
            						<div id="matchUpcommingMatches">
						         	</div>
						         	<div id="matchUpcommingPagebtn">
						         	</div>      
    							</div>
    							
    							<div class="col-md-12 whiteBox">
						            
						         	<h1 class="noBorder">Past Events</h1>
							         	<div id="matchpastEventList">
							         	</div>
    							</div>
                              
                           <div class="clear"></div> 
                        </div>
                        
                        
                        <div role="tabpanel" class="tab-pane" id="Cancelevent">
                            <div class="col-md-12 whiteBox">
            
            					<h1 class="noBorder">CANCEL EVENT</h1>
            						<div id="boardCancelledEventDIV">
            						
            						</div>          
                     					<div id="cancelledPageBtn">
										</div>  
                     
    							</div>  
                       
                            </div>
                           <div class="clear"></div>
                           
                            <!-- <div role="tabpanel" class="tab-pane" id="Buddyinvitation">
                            <div class="col-md-12 whiteBox">
            
            					<h1 class="noBorder">BUDDY INVITATION</h1>
            
                  
                     
                     
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <p>23<br>THU<p>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith
                            
                            
                            		<div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>Raj Bhavasar</h4>
                          <p>23 Sep 2015 / 14.00PM</p>
                          <p>Chennai.</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p> <button class="btn btn-default blockBtn pull-right  btn-sm btnalian1" type="submit">COMPLETE</button></p>
                                
                            
                         </div>
                         </div>
                         
                         
                         
                          
                     </div>
                     
                     <div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <p>23<br>THU<p>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith
                            
                            
                            		<div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>Raj Bhavasar</h4>
                          <p>23 Sep 2015 / 14.00PM</p>
                          <p>Chennai.</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p> <button class="btn btn-default blockBtn pull-right  btn-sm btnalian1" type="submit">COMPLETE</button></p>
                                
                            
                         </div>
                         </div>
                         
                         
                         
                          
                     </div><div class="col-md-12 noPadding leag-Acc">
                          <div class="col-md-1 noPadding N-btn">
                            <p>23<br>THU<p>
					 	</div>
                    
                    	 <div class="col-md-11">
                         
                         <div class="col-md-12 noPadding eventUserDetails">
                         	<img src="images/userImg4.jpg" class="nav-avatar"> Lakshith
                            
                            
                            		<div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                            
                         </div>
                         
                        <div class="col-md-6 Leag-Img">
                          <h4>Raj Bhavasar</h4>
                          <p>23 Sep 2015 / 14.00PM</p>
                          <p>Chennai.</p>
                        </div>
                        <div class="col-md-6 threebtn">
                            
                                <p> <button class="btn btn-default blockBtn pull-right  btn-sm btnalian1" type="submit">COMPLETE</button></p>
                                
                            
                         </div>
                         </div>
                         
                         
                         
                          
                     </div>
                     
                     
                     
                     
                     
                     
                     
    		</div>  
                            
                            
                            
                              
                            
                                
                            </div> -->
                           
                           
                           
                        </div>
                        
  
            
        </div>
        
        
        
        
                     
                     
    		</div>
            
          
            
            
            
 </div>
                    
                 <!-- <div class="col-md-3 pull-right ">
      			<div class="col-md-12 whiteBox noPadding">
      			<div class="col-md-12 noPadding">
                	
                    <input type="text" class="form-control datepicker" placeholder="" id=""> <i style="top:20px;" class="fa fa-calendar calIcon"></i>
                    <div id="demo" class="yui3-skin-sam yui3-g"> 
	                     <div id="mycalendar"></div>
                    </div>
                </div>
             </div>   -->  
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/newEvent.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/event.js"></script>
<script type="text/javascript">

$(function(){
	$('#loading').hide();
});
</script>

   
   <script src="${pageContext.request.contextPath}/js/yui-min.js"></script>
<script type="text/javascript">
/* YUI().use('calendar', 'datatype-date', 'cssbutton',  function(Y) {

    // Create a new instance of calendar, placing it in
    // #mycalendar container, setting its width to 340px,
    // the flags for showing previous and next month's
    // dates in available empty cells to true, and setting
    // the date to today's date.
    var calendar = new Y.Calendar({
      contentBox: "#mycalendar",
      width:'100%',
      showPrevMonth: true,
      showNextMonth: true,
      date: new Date()}).render();

    // Get a reference to Y.DataType.Date
    var dtdate = Y.DataType.Date;

    // Listen to calendar's selectionChange event.
    calendar.on("selectionChange", function (ev) {

      // Get the date from the list of selected
      // dates returned with the event (since only
      // single selection is enabled by default,
      // we expect there to be only one date)
      var newDate = ev.newSelection[0];

     // alert(dtdate.format(newDate));
      window.location.href='${pageContext.request.contextPath}/boardEvent/${BoradInfo.boardId}/date/'+dtdate.format(newDate);
      // Format the date and output it to a DOM
      // element.
      Y.one("#selecteddate").setHTML(dtdate.format(newDate));
    });


    // When the 'Show Previous Month' link is clicked,
    // modify the showPrevMonth property to show or hide
    // previous month's dates
    Y.one("#togglePrevMonth").on('click', function (ev) {
      ev.preventDefault();
      calendar.set('showPrevMonth', !(calendar.get("showPrevMonth")));
    });

    // When the 'Show Next Month' link is clicked,
    // modify the showNextMonth property to show or hide
    // next month's dates
    Y.one("#toggleNextMonth").on('click', function (ev) {
      ev.preventDefault();
      calendar.set('showNextMonth', !(calendar.get("showNextMonth")));
    });
    
    
    
    
}); */
</script>   
   

<script type="text/javascript">
   
$(document).ready(function() {

	 /* $('body').click(function(){
		   // $('.eventoption').hide();
		   var id=this.className;
		   
		// var id2=  $('#id').attr('class');
		alert(id);
		if(id!='eventoption')
			{
				$('.eventoption').hide();
			}
	  });
	   */
	   
	   
	$("body").click(function(){
		$(".eventoption").fadeOut();
		});

		$(".eventoption").click(function(e){
		 e.stopPropagation();
		});
	   
	
	  
	  
});   

function showScoreCardInProgress(id,bid){
	//alert("hello");
	if(bid == 'no')
		{
		displaynotification('Match not yet started',2000);
		}else{
	 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgress/boardId/"+bid+"/matchId/"+id;
		}
	}
	
function showScoreCardInProgress1(id,bid){
	//alert("hello");
	if(bid == 'no')
		{
		displaynotification('Match not yet started',2000);
		}else{
			 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+bid+"/matchId/"+id;
		}
	}

  
</script>


<script type="text/javascript">

function CancelEvent(id)
{
	
	var request={
			
			eventId : id
	}
	
$.ajax({
		
		type : "post",
		url : "${pageContext.request.contextPath}/cancelEvent",
		data : JSON.stringify(request),
		contentType : "application/json",
		success : function(res){
			/* alert(res); */
			if(res == "success")
				{
				
				$("#hide_"+id).hide();
				
			 displaynotification('Event canceled successfully',2000); 
			
				}
			}
		
	})
}



function updatePost()
{
	
	 var url=window.location.href; 
	/* var url=$("#feedsedited").val(); */
	var request={
			
			content : url,
			
	}
	console.log(request);
	$.ajax({
		type : "POST",
		url : "${pageContext.request.contextPath}/scorecardShare",
		data : JSON.stringify(request),
		contentType : "application/json; charset=utf-8",
		success : function(res)
		{
			displaynotification('ScoreCard link as been shared',2000);
			$("#feededit").hide();
		}
		
	})
	
}


</script>
   
</body>
</html>
