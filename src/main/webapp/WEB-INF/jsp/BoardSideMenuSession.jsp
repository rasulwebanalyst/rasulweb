<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.css" rel="stylesheet" type="text/css">
</head>

<style>

#slideshow {
 /*  margin: 80px auto; */
  position: relative;
 /*  width: 240px; */
  height: 230px;
  padding: 10px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
}

#slideshow > div {
  position: absolute;
  top: 10px;
  left: 10px;
  right: 10px;
  bottom: 10px;
} 

.eye {
z-index: 9;
right: -106px;
top: 100px;
}
.bx-wrapper img {
height: 200px
}
ul.leftMenu li:last-child {
border: none;
}	

.bx-wrapper .bx-next {

right: -2px;
}

.bx-wrapper .bx-prev {
left: -2px;
}


.bx-viewport {
height: 225px !important;
}
ul.bxslider li img {
margin-bottom: 2px !important;
}
ul.bxslider li {
   text-align: center;
   margin-bottom: 0;
   padding-bottom: 5px;
   background: #e9eaed;
}
.bx-wrapper .bx-controls-direction a {
top: auto;
bottom: 5px;
}


.sponser-Flow{
text-overflow: ellipsis;
    overflow: hidden;
    width: 67%;
    display: inline-block;
    white-space: nowrap;
}


</style>


<body>
<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg">
                    	
                    	
                    	
                    	<c:choose>
                     		
                     		<c:when test="${BoradInfo.boardId ne null}">
                     		<a href="${pageContext.request.contextPath}/boardSite?bid=${BoradInfo.boardId}"><img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';"></a>
                     		</c:when>
                     		<c:otherwise>
                     		<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                     		</c:otherwise>
                     		</c:choose>
                    	
                    	
                    	
                    	<%-- <img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';"> --%>
                        	
                        	<%-- <a href="${pageContext.request.contextPath}/boardProfile?bid=${BoradInfo.boardId}"><i class="fa fa-pencil" title="Edit Profile"></i></a> --%>
                        	 ${BoradInfo.boardName} <br>
                        	
                        	
                        	  <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 <span class="nonOff">Status : Unofficial</span>
                        	  	</c:when>
                        	  	<c:otherwise>
                     		<!--  <span class="nonOff">Status : Official</span> -->
                     			</c:otherwise>
                        	  </c:choose>
                        </span>
                        
                        
                        
                        
                        
                        <c:choose>
                        
                        
                        <c:when test="${MyScore eq 'YES'}">
                        
                        
                        <ul class="leftMenu" id="mainMenu">
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>My Score</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>My Events</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>My Fans</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>I Am Fan Of</a></li>                            	
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>My Board</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>My Buddies</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/PlayerCompare.png"></i>Player Compare</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>Cricket Book</a></li>
                        </ul>
                        
                        
                        </c:when>
                        <c:otherwise>
                        
                        
                        
                        
                        
                        
                        
                     		<ul class="leftMenu">
                     		
                     		<c:choose>
                     		
                     		<c:when test="${BoradInfo.boardId ne null}">
                     		<li><a href="${pageContext.request.contextPath}/Organizationdetailssite/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/board-icon.png"></i>Board Info</a></li>
                     		
                     		</c:when>
                     		<c:otherwise>
                     		
                     		<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/board-icon.png"></i>Board Info</a></li>
                     		</c:otherwise>
                     		
                     		
                     		</c:choose>
                     		
                     		<%-- <li><a href="${pageContext.request.contextPath}/Organizationdetailssite/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/board-icon.png"></i>Board Info</a></li> --%>
                     		<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/pitch-icon.png"></i>Pitch</a></li>
                     		
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Score</a></li>
                            	<%-- <li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Edit Profile</a></li> --%>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>Fan Of</a></li>
                            	
<%--                             	<li><a href="${pageContext.request.contextPath}/createRoaster?bid=${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Roster</a></li>
 --%>
                           <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		 <li><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Squad</a></li>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				 <li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Squad</a></li>
                     			</c:otherwise>
                        	  </c:choose>
   
 <li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/inviteIcon.png"></i>Invite</a></li>     
 <c:if test="${BoradInfo.category eq 'Academy' }">
                               <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<%-- ${BoradInfo.scheduleFlag} --%>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
                             			<%-- <li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:when>
                              <c:otherwise>
                                  <%-- <li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose> 
  </c:if>                                              	
 <%-- <li><a href="${pageContext.request.contextPath}/inviteToMergeAccount/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/inviteIcon.png"></i>Merge Account</a></li> --%>
 <c:if test="${BoradInfo.category eq 'League' }">
 						
                            		<%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                            	 <c:choose>
                        	  	<c:when test="${BoradInfo.statusId==19}">	
                        	  	 	
                        	  		<%-- <li ><a href="javascript:"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                        	  	</c:when>
                        	  	<c:otherwise>
                     				<%-- ${BoradInfo.scheduleFlag} --%>
                     				<c:choose>
                              <c:when test="${BoradInfo.scheduleFlag}">
                             			<%-- <li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:when>
                              <c:otherwise>
                                  <%-- <li><a href="javascript:void(0);" onclick="PleaseLogin()"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a></li> --%>
                              </c:otherwise>
                              </c:choose>
                     			</c:otherwise>
                        	  </c:choose>
                            	
                            	
                            	<%-- <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${BoradInfo.boardId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>Create Umpire</a></li> --%>
                            	</c:if>	
                            	
                            	
                            	<c:if test="${showsponsers eq 'YES' }">
                            	 <c:choose>
                        			<c:when test="${SponserSize eq 0 }">
	                            	</c:when>
	                            	<c:otherwise>
	                            	<li style="border-bottom: 0 !important;">
	                            	<a >Sponsors</a>
		
		<div class="ImageBox" style="margin-top: 5px;">
		<ul class="bxslider">
		
		<c:forEach var="sponser" items="${spoResponse.boardSponsorsList}">
		    <div>
		      <li style="text-align: center;"><img style=" margin-bottom: 9px;"  src="${sponser.imageUrl}"  onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" /><span class="sponser-Flow" title="${sponser.sponsorName}">${sponser.sponsorName}</span></li>
		   </div>
		 
		</c:forEach>
		
		</ul>
	</div>
                            	</li>
	                            	</c:otherwise>
	                            	</c:choose> 
                            	</c:if>
                            	
                            		
                            </ul>
                            
                            
                            
                          </c:otherwise>
                        
                        
                        
                        
                        </c:choose>  
                            
                            
                            
                            
                        
                        
                    </div>
                    
                    
                    
                     <script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.js" type="text/javascript"></script>
		
		  <script type="text/javascript">
		
		$("#slideshow > div:gt(0)").hide();

		setInterval(function() {
		  $('#slideshow > div:first')
		    .fadeOut(1000)
		    .next()
		    .fadeIn(1000)
		    .end()
		    .appendTo('#slideshow');
		}, 4000);
		
		
		</script> 
		 
		 
		 
		 <script>
		$(window).load(function(){
		  $('.bxslider').bxSlider({
		  		/* pager	:	false,
		  		auto	:	true,	 */
			  /* auto: true,
			  speed: 500,
			  pause: 3000,
			  pager: false,
			  controls: true,
			  responsive:true, */
			  
			 
              
			  pager	:	false,
		  		auto	:	true,
		  		stopAutoClickOn	:	true
		  });
		});
	</script>
                    
                    
                    
</body>
</html>