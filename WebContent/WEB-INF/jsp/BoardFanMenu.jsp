<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="userName col-md-10" id="likesDiv">  
         
          <div class="hitBoard">
            
            
            <c:choose>
                   		<c:when test="${BoardFanReq}">
                   			<a href="javascript:" class=""> <span>Fan</span> <span>(${BoradInfo.boardfancount})</span></a>
                   		</c:when>
                   		<c:otherwise>
                   			<%-- <a href="javascript:becomeFanCountFunction('${BoradInfo.boardId}')" id="boardFanReq${BoradInfo.boardId}" class=""> <span id="boardFanResp${BoradInfo.boardId}">Became a Fan</span> <span>(${BoradInfo.boardfancount})</span></a> --%>
                   			<a href="javascript:FanAction('${USRID}','${BoradInfo.boardId}','buddyFanToBoard','buddyFanToBoard')" class="" id="boardfanuser${BoradInfo.boardId}"> <span>Become a Fan</span><span>(${BoradInfo.boardfancount})</span> </a>
                   			<a href="javascript:" class="" id="boardFan${BoradInfo.boardId}" style="display: none"> <span>Fan</span> <span>(${BoradInfo.boardfancount+1})</span> </a>	
                   		
                   		</c:otherwise>
                   </c:choose>
            
            </div>
          
             <span class="owner"><strong>${BoradInfo.user.firstName}</strong> (Owner)
             
                 <c:choose>
                   		<c:when test="${not empty BoradInfo.boardCoOwnerList[0].user.firstName}">, ${BoradInfo.boardCoOwnerList[0].user.firstName} (Co-Owner)
                   		</c:when>
                   		<c:otherwise>
                   				
                   		</c:otherwise>
                   </c:choose></span>
           
        </div>
</body>
</html>