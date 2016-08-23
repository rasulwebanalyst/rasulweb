<!DOCTYPE html>
<html lang="en">
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>

 <script>var ctx="${pageContext.request.contextPath}";</script>

<style type="text/css">

.mybuddyBlock .date{
	float: left;
	width: 100%;
	font-family: "Roboto_Regular" !important;
	padding: 0;
	margin: 0;
}
</style>
</head>

<body>

    <%@ include file="BoardHeader.jsp" %>
	
   
    
    <section class="middleContentBlock">
    
    <div class="profileBanner">
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
                    
							<%@ include file="BoardPublicProfileSideMenu.jsp" %>
							<%@ include file="BoardFanMenu.jsp" %> 
							
						<div class="col-md-7 pageMiddleBlock">
      		<div class="col-md-12 whiteBox mybuddyBlock fansPage">
          
          
          			<%-- <input type="hidden" value="${BoradInfo.boardId}" id="boardId" name="boardId"> --%>
		          <h1 class="">Fan Of</h1>
          	
                        
                    <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#BoardAllFansList" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="getFanOfList('All')">All</a></li>
                        <li role="presentation" class=""><a href="#BoardFansListDIV" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="getFanOfList('Board')">Boards</a></li>
                        <li role="presentation" class=""><a href="#BoardUserFanListDIv" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="getFanOfList('Buddy')">Buddy</a></li>
                        
                      </ul>
                    
                      <!-- Tab panes -->
                      <div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active" id="BoardAllFansList">
                            <div class="col-md-12 noPadding" id="AllBoardAllFansList2">
								<c:choose>
										<c:when test="${empty UserProfileList} and ${empty BoardProfileList}">
											<div>
												No fans are there
											</div>
										</c:when>
										<c:otherwise>
											<c:forEach var="user" items="${UserProfileList}">
											<div class="media  col-md-6" id="boardfanuser${user.userId}">
				                               <a href="${pageContext.request.contextPath}/buddy/${user.firstName}/${user.userId}">
				                                <div class="media-left buddyImg">
				                                    <img src="${user.userImageUrl}">
				                                </div>
				                                </a>
				                    				  <div class="media-body">
				                                       <a> <h4 class="media-heading">${user.firstName}</h4></a>
				                                        <span class="date">${user.city}</span>
				                                       <%--   <a class="btn   btn-default btn-sm  btn-sm  blockBtn "  id="becomeFan${user.userId}" onclick="FanAction('${BoradInfo.boardId}','${user.userId}','boardUnFanToBuddy','boardfanuser')">Un Fan</a>
				                                         <a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan${user.userId}" >Un Fan success</a>    --%>                             
				                                      </div>
                            					</div>
											
											</c:forEach>
											<c:forEach var="user" items="${BoardProfileList}">
											<div class="media  col-md-6" id="boardfanboard${user.boardId}">
				                                <div class="media-left buddyImg">
				                                    <a href="${pageContext.request.contextPath}/${user.boardName}/board/${user.boardId}"><img src="${user.boardImageURL}"></a>
				                                </div>
				                    				  <div class="media-body">
				                                        <h4 class="media-heading"><a href="${pageContext.request.contextPath}/${user.boardName}/board/${user.boardId}">${user.boardName}</a></h4>
				                                        <span class="date">${user.city}</span>
				                                         <%-- <a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan${user.boardId}" onclick="FanAction('${BoradInfo.boardId}','${user.boardId}','boardUnFanBoard','boardfanboard')">Un Fan</a>
				                                         <a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="fan${user.boardId}" >Un Fan success</a>   --%>                              
				                                      </div>
                            					</div>
											
											</c:forEach>
										</c:otherwise>
								
								</c:choose>
                             
                                
                            </div>
                           <div class="clear"></div>
                           
                           
                        </div>
                        
                         <div class="clear"></div>
                        
                            <div role="tabpanel" class="tab-pane" id="BoardFansListDIV">
                              
                              
                              <div class="col-md-12 noPadding" id="BoardFansListDIV2">
								
                            </div>
                              
                           <div class="clear"></div> 
                        </div>
                        
                        
                        <div role="tabpanel" class="tab-pane" id="BoardUserFanListDIv">
                            <div class="col-md-12 noPadding" id="BoardUserFanListDIv2">

                                
                              
                            </div>  
                            
                            </div>
                           <div class="clear"></div>
                           
                           <div role="tabpanel" class="tab-pane" id="SearchBuddy">
                            <div class="col-md-12">
                            
                            <h2 style="padding-left:0px; " class="noBorder">Find Buddy from different parts of your life</h2>
							
                            <div class="SearchBuddyBlock">
                              <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Name" id=""></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="Placed Lived" id=""></div> 
                    		  </div>
                              
                              
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Email ID" id=""></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="City" id=""></div> 
                    		  </div>
                              
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Cricket Team" id=""></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="Cricket League" id=""></div> 
                    		  </div>
                                
                                
                                <div class="Searchbtn centerbtns">
                                	<button type="submit" class="btn  btn-default dBtn ">Search</button>
                                 </div>
                                
                                </div>
                                
                                <h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">3 Result</strong>..Found</h2>
                                 
                                
                                
                                <div class="media">
                                <div class="media-left buddyImg">
                                    <img src="images/userImg1.jpg">
                                </div>
                    				  <div class="media-body">
                                        <h4 class="media-heading">Radhakrishna Kondapalli</h4>
                                        <span class="date">Chennai</span>
                                        <button type="submit" class="btn  btn-default btn-sm  dBtn ">Send Invite</button>                                 
                                      </div>
                            	</div>
                                
                                <div class="media">
                                <div class="media-left buddyImg">
                                    <img src="images/userImg2.jpg">
                                </div>
                    				  <div class="media-body">
                                        <h4 class="media-heading">Radhakrishna Kondapalli</h4>
                                        <span class="date">Chennai</span>
                                        <button type="submit" class="btn  btn-default btn-sm  dBtn ">Send Invite</button>                                 
                                      </div>
                            	</div>
                                
                                <div class="media">
                                <div class="media-left buddyImg">
                                    <img src="images/userImg3.jpg">
                                </div>
                    				  <div class="media-body">
                                        <h4 class="media-heading">Radhakrishna Kondapalli</h4>
                                        <span class="date">Chennai</span>
                                        <button type="submit" class="btn  btn-default btn-sm  dBtn ">Send Invite</button>                                 
                                      </div>
                            	</div>
                              
                            </div>
                           <div class="clear"></div>
                           
                           
                        </div> 
                           
                           
                           
                        </div>
                        
  
            
        </div>

                        
            
          	
          </div>    
      </div>
					
                     

                     <!--Right Block-->
                     	<!-- <div class="col-md-3 pull-right noPadding">
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Matches Around You</div>
                              
                              <div class="sidebar-list">
                              		Piston vs Chicago Bulls<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                              </div>
                              
                              <div class="sidebar-list">Piston vs Chicago Bulls hicago Bulls<br> <strong>Aug 28, 2015</strong>
                                    <span class="teamLogos">
                                	<img src="images/teamLogo3.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo4.png" class="teamLogo">
                                	</span>
                              </div>
                              
                              <div class="sidebar-list">Piston vs Chicago Bulls<br> <strong>Aug 28, 2015</strong>
                                    <span class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo3.png" class="teamLogo">
                                	</span>
                              </div>
                              
                              
                             
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Leagues Around You</div>
                              
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo4.png" class="teamLogo">
                                	</div>
                              </div>
                              
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo">
                                	</div>
                              </div>
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                              </div>
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo3.png" class="teamLogo">
                                	</div>
                              </div>
                              
                             
                            </div>
                          </div>
                          
                          <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header">Buddys Around You <span class="sidebar-header-light">(135)</span></div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg3.jpg" class="teamLogo">
                                	</div>
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg4.jpg" class="teamLogo">
                                	</div>
                                    
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg2.jpg" class="teamLogo">
                                	</div>
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg1.jpg" class="teamLogo">
                                	</div>
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Teams Around You</div>
                              
                              <div class="sidebar-list">
                                    <img src="images/teamLogo1.png" class="teamLogo">
                                    <img src="images/teamLogo2.png" class="teamLogo">
                                    <img src="images/teamLogo3.png" class="teamLogo">

                              </div>
                              
                            </div>
                          </div>
                          
                          
                          
                        </div> -->
                          <%@ include file="AroundYouMenu2.jsp" %>
                     
                     <!--/Right Block End-->

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    
    
     <%--  <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/board-fan.js"></script> --%>
     <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardFanOf.js"></script>
  <%@ include file="Footer.jsp" %>
<script type="text/javascript">
$(function(){
	$('#loading').hide();
});
</script>
</body>

</html>
