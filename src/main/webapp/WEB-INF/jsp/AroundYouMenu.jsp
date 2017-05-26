<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<!--Right Block-->
                     	<div class="col-md-3 pull-right noPadding pageRightBlock">
                          
                          <div class="box-inner">
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/matchesAroundYou">Matches Around You</a></div>
                              
	                               <c:choose>
	                             	<c:when test="${empty MatchesArroundYou}">
	                             		<div class="sidebar-list noContentDiv">
	                             			No Match around you.
	                             		</div>
	                             	</c:when>
	                             	<c:otherwise>
		                              <c:forEach items="${MatchesArroundYou}" var="match" begin="0" end="5">
		                              <c:set var="board" value="${match.homeTeamInfo}"></c:set>
		                               <c:set var="board1" value="${match.awayTeamInfo}"></c:set>
		                               
		                               <div class="sidebar-list">
	                              			<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}">${board.boardName}</a> vs <a href="${pageContext.request.contextPath}/${board1.boardName }/board/${board1.boardId}">${board1.boardName}</a><br> <strong>${match.gameDateStr}</strong>
	                              			
	                              			<c:choose>
	                              			<c:when  test="${match.status eq 'InProgress'}">
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','${match.createdBy}')">Live Score</a>
	                              			</c:when>
	                              			<c:otherwise>
	                              			<a class="vw-score" href="javascript:void(0);" onclick="showScoreCardInProgress('${match.tournamentSchedulerId}','no')">View Score</a>
	                              			</c:otherwise>
	                              			</c:choose>
	                                   		 <span class="teamLogos">
	                                			<a href="${pageContext.request.contextPath}/${board.boardName }/board/${board.boardId}"><img src="${board.boardImageURL}" class="teamLogo" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/boardIcon.png';" ></a> <b>VS</b> <a href="${pageContext.request.contextPath}/${board1.boardName }/board/${board1.boardId}"><img src="${board1.boardImageURL}" class="teamLogo"></a>
	                                		</span>
	                             		 </div>
		                              		
		                              </c:forEach>
	                             	</c:otherwise>
	                             </c:choose> 
                             
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"> <a href="${pageContext.request.contextPath}/LeaguesAroundYou">Leagues Around You</a></div>
                              
                              
                               <c:choose>
                             	<c:when test="${empty BRDAroundYou}">
                             		<div class="sidebar-list noContentDiv">
                             			No league around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
	                              <c:forEach items="${BRDAroundYou}" var="brd" begin="0" end="5">
	                              		<div class="sidebar-list">
			                              		<a href="${pageContext.request.contextPath}/${brd.boardName }/board/${brd.boardId}">${brd.boardName}</a>  <br> <strong><fmt:formatDate value="${brd.createdDate}" pattern="MMM dd, YYYY"/></strong>
			                                    <div class="teamLogos">
			                                		<a href="${pageContext.request.contextPath}/${brd.boardName }/board/${brd.boardId}"><img src="${brd.boardImageURL}" class="teamLogo" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/boardIcon.png';"  ></a>
			                                	</div>
	                             			 </div>
	                              </c:forEach>
                             	</c:otherwise>
                             </c:choose> 
                            </div>
                          </div>
                          
                         
                          <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/BuddyAroundYou">Buddies Around You </a><span class="sidebar-header-light"></span></div>
                              
                              <div id="Buddyiesnear">
                               <c:choose>
                             	<c:when test="${empty BuddyAroundYou}">
                 		<div class="sidebar-list noContentDiv">
                             			No buddy around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${BuddyAroundYou}" var="buddy" begin="0" end="5">
			                               <c:if test="${not empty buddy.firstName}">
			                               <c:if test="${buddy.userId ne USRID}">
				                             
					                              <div class="sidebar-list" >
					                                    <div class="teamLogos">
					                                     <a href="${pageContext.request.contextPath}/buddy/${buddy.firstName}/${buddy.userId}">
					                                		<img src="${buddy.userImageUrl}" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/profileIcon.png';" class="teamLogo" >
		                          						</a>
		                          						</div>
					                                     <a href="${pageContext.request.contextPath}/buddy/${buddy.firstName}/${buddy.userId}"> ${buddy.fullName}</a><%-- ${buddy.firstName}  ${buddy.lastName} --%> <br>
														 ${buddy.city}
					                              </div>
				                            
			                              </c:if>
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              
                            </div>
                        
                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/TeamAroundYou">Teams Around You</a></div>
                              
                              
                              
                              <c:choose>
                              	<c:when test="${empty TEAMAroundYou}">
                              		<div class="sidebar-list noContentDiv">
                             			No team around you.
                             		</div>
                              	</c:when>
                              	<c:otherwise>
                              		 <c:forEach items="${TEAMAroundYou}" var="brd" begin="0" end="5">
                              		 <a href="${pageContext.request.contextPath}/${brd.boardName}/board/${brd.boardId}">
                              		<div class="sidebar-list"> 
                                   	 <img src="${brd.boardImageURL}" class="teamLogo" title="${brd.boardName}" alt="${brd.boardName}" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/profileIcon.png';" class="teamLogo">
                                     
                                     <span>${brd.boardName}</span>
                                     
                                      </div>
                                    </a>
                                    </c:forEach>
                                   
                              	</c:otherwise>
                              </c:choose>
                             	
                            
                              
                            </div>
                          </div>
                          
                            <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/merchantsAroundYou">Merchants Around You </a><span class="sidebar-header-light"></span></div>
                             
                             <div id="merchantsNear">
                               <c:choose>
                             	<c:when test="${empty Merchants}">
                 		<div class="sidebar-list noContentDiv">
                             			No Merchant around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${Merchants}" var="merchant" begin="0" end="5">
			                               <c:if test="${not empty merchant.boardName}">
			                              
			                              <div class="sidebar-list" >
			                                    <div class="teamLogos">
			                                <a href="${pageContext.request.contextPath}/${merchant.boardName}/board/${merchant.boardId}">
			                                	<img src="${merchant.boardImageURL}" onError="this.onerror=null;this.src='https://cdn.cricketsocial.com/images/boardIcon.png';" class="teamLogo" >
			                                	</a>
                          	</div>
			                                     <a href="${pageContext.request.contextPath}/${merchant.boardName}/board/${merchant.boardId}">
			                                     ${merchant.boardName}
			                                     </a><br>
			                                     ${merchant.city}
			                              </div>
			                             
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              </div>
                            
                        
                              
                            </div>
                          </div>
                          
                          
                          </div>
                        </div>
                     
                     <!--/Right Block End-->
                     <script type="text/javascript">
                     
                     function showScoreCardInProgress(id,bid){
                    		//alert("hello");
                    		if(bid == 'no')
                    			{
                    			displaynotification('Match not yet started',2000);
                    			}else{
                    		 window.location.href = "${pageContext.request.contextPath}/showScoreCardForInProgressPublicProfile/boardId/"+bid+"/matchId/"+id;
                    			}
                    		}
                     
                     
                     
                       $(document).ready(function(){
                    	 $.ajax({
                    		 type : "GET",
                    		 url : "${pageContext.request.contextPath}/MerchantsNear",
                    		 headers : {'Name' : HeaderName},
                    		 success : function(response){
                    			
                    			 var res=response.Merchants;
                    			 var res1=response.BuddyNear;
                    			 
                    			 var html1="";
                    			 if(res !=null){
                    				 
                    				 if(res.length <= 5 )
                    				 {
                    				 
                    				 console.log(res.length);
                    				 for(var i in res){
                    				 html1+=" <div class='sidebar-list'>";
                    				 html1+="<div class='teamLogos'>";
                    				 html1+="<a href='${pageContext.request.contextPath}/"+res[i].boardName+"/board/"+res[i].boardId+"'>";
                    				 if(res[i].boardImageURL == ""){
                    					 html1+="<img src='https://cdn.cricketsocial.com/images/boardIcon.png'  class='teamLogo' ></a></div>";
                    				 }else{
	                                 html1+="<img src="+res[i].boardImageURL+" onerror='merchantimgError(this);'  class='teamLogo' ></a></div>";}
	                                 html1+="<a href='${pageContext.request.contextPath}/"+res[i].boardName+"/board/"+res[i].boardId+"'>"+res[i].boardName+" </a><br>"+res[i].city+"</div>";
                    				 }
                    				 
                    				 }else{
                    					 
                    					 for(var i=0; i<=5 ;i++){
                            				 html1+=" <div class='sidebar-list'>";
                            				 html1+="<div class='teamLogos'>";
                            				 html1+="<a href='${pageContext.request.contextPath}/"+res[i].boardName+"/board/"+res[i].boardId+"'>";
                            				 if(res[i].boardImageURL == ""){
                            					 html1+="<img src='https://cdn.cricketsocial.com/images/boardIcon.png'  class='teamLogo' ></a></div>";
                            				 }else{
        	                                 html1+="<img src="+res[i].boardImageURL+" onerror='merchantimgError(this);'  class='teamLogo' ></a></div>";}
        	                                 html1+="<a href='${pageContext.request.contextPath}/"+res[i].boardName+"/board/"+res[i].boardId+"'>"+res[i].boardName+" </a><br>"+res[i].city+"</div>";
                            				 }	 
                    					 
                    				 }
                    				 
                    				 }
                    			 else{
                    				html1+="<div class='sidebar-list noContentDiv'>No Merchant around you.</div>"; 
                    			 }
                    			 
                    			 $("#merchantsNear").html(html1).trigger('create');
                    			 
                    			 
                    			 var html2="";
                    			 if(res1 !=null){
                    				 console.log(res1.length);
                    				 var LoggedUserid = '${USRID}';
                    				 console.log(LoggedUserid)
                    				 
                    				  if(res1.length <= 6)
                    				 {
                    					 for(var i in res1){
                    						 if(res1[i].firstName != "" && res1[i].firstName != null && res1[i].userId !=LoggedUserid)
                    						 {
                    							 html2+="<div class='sidebar-list'>"; 
                    							 html2+="<div class='teamLogos'>";
                    							 html2+="<a href='${pageContext.request.contextPath}/buddy/"+res1[i].firstName+"/"+res1[i].userId+"'>";
                    							 
                    							 if(res1[i].userImageUrl == ""){
                                					 html2+="<img src='https://cdn.cricketsocial.com/images/profileIcon.png'  class='teamLogo' ></a></div>";
                                				 }else{
            	                                 html2+="<img src="+res1[i].userImageUrl+" onerror='buddyError(this);'  class='teamLogo' ></a></div>";
            	                                 }
                    						 html2+="<a href='${pageContext.request.contextPath}/buddy/"+res1[i].firstName+"/"+res1[i].userId+"'>"+res1[i].fullName+"</a><br>"+res1[i].city+"</div>";
			                              
                    						 }
                    					 }
                  
                    					 
                    				 }else{
                    					 
                    					 
                    					 for(var i=0 ; i<=6 ; i++){
                    						 if(res1[i].firstName != "" && res1[i].firstName != null && res1[i].userId !=LoggedUserid)
                    						 {
                    							 html2+="<div class='sidebar-list'>"; 
                    							 html2+="<div class='teamLogos'>";
                    							 html2+="<a href='${pageContext.request.contextPath}/buddy/"+res1[i].firstName+"/"+res1[i].userId+"'>";
                    							 
                    							 if(res1[i].userImageUrl == ""){
                                					 html2+="<img src='https://cdn.cricketsocial.com/images/profileIcon.png'  class='teamLogo' ></a></div>";
                                				 }else{
            	                                 html2+="<img src="+res1[i].userImageUrl+" onerror='buddyError(this);'  class='teamLogo' ></a></div>";
            	                                 }
                    						 html2+="<a href='${pageContext.request.contextPath}/buddy/"+res1[i].firstName+"/"+res1[i].userId+"'>"+res1[i].fullName+"</a><br>"+res1[i].city+"</div>";
			                              
                    						 }
                    					 } 
                    					 
                    					 
                    					 
                    				 }
                    				 
                    				 }else{
                    				html2+="<div class='sidebar-list noContentDiv'>No buddy around you.</div>"; 
                    			 }
                    			 
                    			 $("#Buddyiesnear").html(html2).trigger('create');
                    			 
                    			 
                    		 }
                    	 })
                    	 
                    	 
                    	// BuddiesNear();
                    	 
                     })
                     
                     
                        /*  function BuddiesNear(){
                    	   
                     $(function() {
  
                    	 $.ajax({
                    		 type : "POST",
                    		 url : "${pageContext.request.contextPath}/BoardNear",
                    		 headers : {'Name' : HeaderName},
                    		 success : function(res){
                    			 console.log("!!!!!!!!!!!!!!!!!!!!!!!!111"+res.length);
                    			 console.log(JSON.stringify(res));
                    			 var html1="";
                    			 if(res !=null){
                    				 console.log(res.length);
                    				 var LoggedUserid = '${USRID}';
                    				 console.log(LoggedUserid)
                    				 
                    				
                    				 
                    				 }else{
                    				html1+="<div class='sidebar-list noContentDiv'>No buddy around you.</div>"; 
                    			 }
                    			 
                    			 $("#Buddyiesnear").html(html1).trigger('create');
                    			 
                    		 }
                    	 })
                     })
                      
                       }   */
                     
                     
                     
                     
                    	 function merchantimgError(image) {
             		    image.onerror = "";
             		    image.src = "https://cdn.cricketsocial.com/images/boardIcon.png";
             		    return true;
             		}
                    	 function buddyError(image) {
                  		    image.onerror = "";
                  		    image.src = "https://cdn.cricketsocial.com/images/profileIcon.png";
                  		    return true;
                  		}
                     
                     </script>
</body>
</html>