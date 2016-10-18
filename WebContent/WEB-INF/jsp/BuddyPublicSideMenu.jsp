<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><img src="${BuddyPublicIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
                        	 ${BuddyPublicFirstName} ${BuddyPublicLastName}
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	<li><a href="${pageContext.request.contextPath}/MyScorePublicProfile/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>Score</a></li>
                            	<li><a href="${pageContext.request.contextPath}/userEvent/buddy/${BuddyPublicFirstName}/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="${pageContext.request.contextPath}/${BuddyPublicFirstName}/fans/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="${pageContext.request.contextPath}/${BuddyPublicFirstName}/fanOf/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>Fan Of</a></li>                            	
                            	<li><a href="${pageContext.request.contextPath}/buddyBoard/${BuddyPublicFirstName}/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>Board</a></li>
                            	<li><a href="${pageContext.request.contextPath}/buddyFriends/${BuddyPublicFirstName}/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>Buddies</a></li>
         <%--                    	<li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/PlayerCompare.png"></i>Player Compare</a></li> --%>
                            	<li><a href="${pageContext.request.contextPath}/BuddyCricketBook/${BuddyPublicUserId}"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>Cricket Book</a></li>
                            </ul>
                        
                        
                    </div>
</body>


</html>