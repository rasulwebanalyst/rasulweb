<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <i class="fa fa-camera changePhoto" title="Change Photo"></i>
          </div>
          
          <%-- <div class="container" id="likesDiv">  
         
          <div class="hitBoard">
            
            
            <c:choose>
                   		<c:when test="${BoardFanReq}">
                   			<a href="javascript:" class=""> <span>Fan</span> <span>(${BoradInfo.boardfancount})</span></a>
                   		</c:when>
                   		<c:otherwise>
                   			<a href="javascript:becomeFanCountFunction('${BoradInfo.boardId}')" id="boardFanReq${BoradInfo.boardId}" class=""> <span id="boardFanResp${BoradInfo.boardId}">Became a Fan</span> <span>(${BoradInfo.boardfancount})</span></a>
                   			<a href="javascript:FanAction('${USRID}','${BoradInfo.boardId}','buddyFanToBoard','buddyFanToBoard')" class="" id="boardfanuser${BoradInfo.boardId}"> <span>Became a Fan</span><span>(${BoradInfo.boardfancount})</span> </a>
                   			<a href="javascript:" class="" id="boardFan${BoradInfo.boardId}" style="display: none"> <span>Fan</span> <span>(${BoradInfo.boardfancount+1})</span> </a>	
                   		
                   		</c:otherwise>
                   </c:choose>
            
            </div>
          
             <span class="userName"><strong>${BoradInfo.user.firstName}</strong> (Owner)
             
                 <c:choose>
                   		<c:when test="${not empty BoradInfo.boardCoOwnerList[0].user.firstName}">
                   			,     
            					 ${BoradInfo.boardCoOwnerList[0].user.firstName} (Co-Owner)
                   		</c:when>
                   		<c:otherwise>
                   				
                   		</c:otherwise>
                   </c:choose></span>
           
        </div> --%>
        
        
        <!--<div class="container bannerBtnsblock">
        <div class="bannerBtns">
        	<i class="fa fa-camera changePhoto" title="Change Photo"></i>
            
           <div class="boardHitBtn"> <i class="fa boardHit"></i>Hit </div>
         </div>   
        </div>-->
        
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
        
    </div>
    
    <script type="text/javascript">
    
    function becomeFanCountFunction(boardId){
   	 var boardProfile={
   			 boardId:boardId
   	 };
   	 $.ajax({
   			type : "POST",
   			url : ctx+"/becomeAFanCount",
   			headers : {'Name' : HeaderName},
   			dataType: "json",
   			contentType: "application/json; charset=utf-8",
   		    data:JSON.stringify(boardProfile),
   			success : function(res) {
   			
   				console.log("Success message"+JSON.stringify(res));
   				
   				var results=res.results;
   				
   				if(results !=null){
   					var response=results.response;
   					if(response != null){
   						//$('#likesCountId').text("("+response.likesReceived+" )");
   						$('#boardFanResp'+boardId).text('Fan');
   						$("#boardFanReq"+boardId).prop("onclick", null);
   						//$("#boardFanReq"+boardId).prop("onclick", null);
   						/* $(".hitBoard").prop('disabled',true); */
   						//$(".hitBoard").off('click');
   					}
   					
   				}
   			
   				
   				
   				
   				
   			},
   			error:function(response){
   				console.log("Error message"+JSON.stringify(response));
   			},
   			
   		}); 
   	 
   	 
   }


<!--

//-->
</script>
    
</body>
</html>