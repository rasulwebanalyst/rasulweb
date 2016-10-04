
<div class="profileBanner">
<%-- <div class="container" id="likesDiv">
	<a href="#" class="hitBoard" onclick="becomeFanCountFunction('${BoradInfo.boardId}')"><i class="fa boardHit"></i> <span>Become a fan</span><span id="likesCountId">(0)</span></a>
	<a href="#" class="hitBoard" style="margin-left: 322px;" onclick="buddyRequest2('${BuddyPublicUserId}')"><i class="fa boardHit"></i> <span id='buddyRequest${BuddyPublicUserId}'>Buddy Request</span><span id="likesCountId">(0)</span></a>  
<div class="hitBoard">
            
            
            <c:choose>
                   		<c:when test="${BuddyFanReq}">
                   			<a href="javascript:" class=""> <span>Fan</span> <span>(${BuddyPublicFanCount})</span></a>
                   		</c:when>
                   		<c:otherwise>
                   			<a href="javascript:FanAction('${USRID}','${BuddyPublicUserId}','buddyFanToBuddy')" class="" id="becomeFan${BuddyPublicUserId}"> <span>Became a Fan</span><span>(${BuddyPublicFanCount})</span> </a>
                   			<a href="javascript:" class="" id="fan${BuddyPublicUserId}" style="display: none"> <span>Fan</span> <span>(${BuddyPublicFanCount+1})</span> </a>	
                   		</c:otherwise>
                   </c:choose>
            
            <c:choose>
                   		<c:when test="${BuddyFriend}">
                   			<a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Friend</span> </a>
                   		</c:when>
                   		<c:otherwise>
                   			<a href="javascript:buddyRequest2('${BuddyPublicUserId}','')" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy Request</span></a>
                   		</c:otherwise>
                   </c:choose>
                   
            </div>

</div> --%>


    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
    </div>
    
    
    
    
    
    <script>
    function buddyRequest2(id){
    	var htm='';
    	if(id!=''){
    		 var uid="'"+id+"'";
    		 //htm +='<a href="#" class="btn btn-default dBtn btn-sm" onclick="unBuddyRequest('+uid+')" >UnBuddy</a>';
    		// htm +='<a href="#" class="btn btn-default dBtn btn-sm" >Request sent</a>';
    		 htm +='Request sent';	
    		 console.log(htm);
    			 var user={
    					 inviteeId : id,
    		      };
    			   var buddyreq=JSON.stringify(user);
    				$.ajax({
    					type : "POST",
    					url : ctx+"/buddyRequest",
    					dataType: "json",
    		        contentType: "application/json; charset=utf-8",
    		        data : buddyreq,			            
    					success : function(res) {
    						if(res!= null){
    							var results=res.results;
    							if(results.status != null){
    								alert(results.status);
    							}
    							if(results.itemsFound  != null){
    								$('#buddyRequest'+id).html(htm);
    								//alert(results.itemsFound);
    							}
    						}else{
    							alert("Your request failed due to some service problem");
    						}
    					},
    					error:function(response){
    					console.log("Error message"+JSON.stringify(response));
    					},
    				
    				}); 
    		}
    	}
    	
    
    </script>