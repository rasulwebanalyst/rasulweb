<div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <!-- <i class="fa fa-camera changePhoto" title="Change Photo"></i> -->
          </div>
          
          <%-- <div class="container" id="likesDiv">  
          
          <c:choose>
          	<c:when test="${BoradInfo.category eq 'League' }">
          		<c:if test="${BoradInfo.likesReceived < 24}">
            		<a href="#" class="hitBoard" onclick="becomeFanCountFunction('${BoradInfo.boardId}')"><i class="fa boardHit"></i> <span>Become a fan</span><span id="likesCountId">(${BoradInfo.likesReceived})</span></a>
           		 </c:if>
          	</c:when>
          	
          	<c:when test="${BoradInfo.category eq 'Team' }">
          		<c:if test="${BoradInfo.likesReceived < 14}">
            		<a href="#" class="hitBoard" onclick="becomeFanCountFunction('${BoradInfo.boardId}')"><i class="fa boardHit"></i> <span>Become a fan</span><span id="likesCountId">(${BoradInfo.likesReceived})</span></a>
           		 </c:if>
          	</c:when>
          
          </c:choose>
          
           
            
        </div> --%>
        
        
        <!--<div class="container bannerBtnsblock">
        <div class="bannerBtns">
        	<i class="fa fa-camera changePhoto" title="Change Photo"></i>
            
           <div class="boardHitBtn"> <i class="fa boardHit"></i>Hit </div>
         </div>   
        </div>-->
        
    	<img src="images/innerBanner.png">
        
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
   						$('#likesCountId').text("("+response.likesReceived+" )");
   						$(".hitBoard").prop("onclick", null);
   						$(".hitBoard").prop("onclick", null);
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
    