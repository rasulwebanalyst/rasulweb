

   <%@taglib uri="http://example.com/functions" prefix="f" %>


<style>
ul.side_menu_main li a {
	display: table;
}
ul.side_menu_main li a i {
	display: table-cell;
}
ul.side_menu_main li span {
	display: table-cell;
	padding-left: 5px;
}
</style>      
      
      
      
   
<div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg">
                    		<%-- <a href="${pageContext.request.contextPath}/BoardInfoPublic/${BoradInfo.boardId}"> --%>
                    		<a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/board/${BoradInfo.boardId}">
                    		<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                        	</a>
                        	
                        	 <a href="${pageContext.request.contextPath}/${BoradInfo.boardName}/board/${BoradInfo.boardId}">
                        	 ${BoradInfo.boardName}
                        	 </a>
                        </span>
                        
                        	
                     		<ul class="leftMenu">
                            	
                            	<li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a>
								
                                <div class="leftMenu2">
                                    	
                                    	<ul>
                                    	     
                                    	      <c:if test="${!empty LeaugeMenuList}">
                                    	      			<c:if test="${!empty LeaugeMenuList.umpireList}">
                                    	      		   			<li class="head"><a href="#">Umpire Co-ordinator</a></li>                                    	      		   			
                                    	      		   			<%-- 	<li>${LeaugeMenuList.umpireList}</li>  --%>
                                    	      		   			<c:forEach var="ground" items="${LeaugeMenuList.umpireList}" varStatus="i">                                   	      		   			
                                    	      		   						<li>${ground.URL}</li>                                    	      		   
                                    	      		   				</c:forEach>                                   	      		   			
                                    	      		   </c:if>
                                    	      		   <c:if test="${!empty LeaugeMenuList.groundList}">
                                    	      		   			<li class="head"><a href="#">Ground Co-ordinator</a></li>
                                    	      		   				  <c:forEach var="ground" items="${LeaugeMenuList.groundList}" varStatus="i">                                   	      		   			
                                    	      		   						<li>${ground.URL}</li>                                    	      		   
                                    	      		   				</c:forEach>			
                                    	      		   </c:if>
                                    	      		   <c:if test="${!empty LeaugeMenuList.scheduleList}">
                                    	      		   			<li class="head"><a href="#">Schedule Co-ordinator</a></li>                                    	      		   			
                                    	      		   				<%-- <li>${LeaugeMenuList.scheduleList}</li> --%>
                                    	      		   				<c:forEach var="ground" items="${LeaugeMenuList.scheduleList}" varStatus="i">                                   	      		   			
                                    	      		   						<li>${ground.URL}</li>                                    	      		   
                                    	      		   				</c:forEach>                                             	      		   			
                                    	      		   </c:if>
                                    	      </c:if>                                                                       
                                           <li><a href="${pageContext.request.contextPath}/teamdetailsPublicProfile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Teams</a></li>   
                                           
                                           
                                           <c:if test="${!empty LeaugeMenuList}">
                                    	      			<c:if test="${!empty LeaugeMenuList.contactDetails}">
                                    	      		   			<c:forEach var="contact" items="${LeaugeMenuList.contactDetails}" varStatus="i">                                   	      		   			
                                    	      		   						<li>${contact.URL}</li>                                    	      		   
                                    	      		   				</c:forEach>                                   	      		   			
                                    	      		   </c:if>
                                    	      </c:if>    
                                           
                                           
                                                                                  
                                            <li><a href="${pageContext.request.contextPath}/LeaguePointsProfile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Points Table</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/leaguecenturiesprofile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Centuries</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/leaguehalfcenturiesprofile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Half Centuries</span></a></li>
                                           <%--  <li><a href="${pageContext.request.contextPath}/BoardAchievementsPublicProfile/boardId/${BoradInfo.boardId}">Board Achievements</a></li> --%>
											<li><a href="${pageContext.request.contextPath}/fivewicketsPublicProfile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> 5fer</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/topbatsmanPublicProfile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Top Batsmen</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/topbowlerPublicProfile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Top Bowlers</span></a></li>
                                            <li><a href="${pageContext.request.contextPath}/topUmpirePublicProfile/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i><span> Top Umpires</span></a></li>  
                                            <%--  <li><a href="${pageContext.request.contextPath}/EnterScorePublicProfile/boardId/${BoradInfo.boardId}"><i class="fa fa-angle-right"></i> Enter Score</a></li> --%>
                                             
                                             <c:if test="${!empty LeaugeMenuList}">
                                             <c:if test="${!empty LeaugeMenuList.disputeManagment}">
                                            	 <li>${LeaugeMenuList.disputeManagment}</li>        
                                             </c:if>
                                             
                                             </c:if>
                                        </ul>
                                                </div>
            
                                </li>
                            </ul>
                        
                        
                    </div>