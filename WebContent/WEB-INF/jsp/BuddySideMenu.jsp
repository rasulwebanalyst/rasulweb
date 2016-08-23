<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-2 profileLogo pLUpdated sideMenu">
                    	<span class="pLUpdatedImg"><img src="${USRIMG}?" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
                        	<a href="${pageContext.request.contextPath}/viewProfile"><i class="fa fa-pencil" title="Edit Profile"></i></a>
                        	 ${USRLastName}
                        </span>
                        <input type="hidden" value="${USRIMG}" id="userImageId">
                        
                     		<ul class="leftMenu" id="mainMenu">
                            	<li><a href="${pageContext.request.contextPath}/MyScore"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyScore.png"></i>My Score</a></li>
                            	<li><a href="${pageContext.request.contextPath}/userEvent"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyEvents.png"></i>My Events</a></li>
                            	<li><a href="${pageContext.request.contextPath}/myfans"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyFans.png"></i>My Fans</a></li>
                            	<li><a href="${pageContext.request.contextPath}/fanOf"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>I Am Fan Of</a></li>                            	
                            	<li><a href="${pageContext.request.contextPath}/My Boards"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/IAmFanOf.png"></i>My Board</a></li>
                            	<li><a href="${pageContext.request.contextPath}/buddies"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/MyBuddyList.png"></i>My Buddy List</a></li>
                            	<li><a href="${pageContext.request.contextPath}/playerCompare#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/PlayerCompare.png"></i>Player Compare</a></li>
                            	<li><a href="${pageContext.request.contextPath}/MyCricketBook"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>Cricket Book</a></li>
                        </ul>
                        
                        
                    </div>
</body>


</html>