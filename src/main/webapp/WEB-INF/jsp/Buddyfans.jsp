<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cricket Social</title>
<script>var ctx="${pageContext.request.contextPath}";</script>

<SCRIPT>
function feedDuration(feeddate)
{
	
	var date2= new Date(feeddate);
	 var date = new Date(date2.getFullYear()+"-"+(date2.getMonth()+1)+"-"+date2.getDate()+" "+date2.getHours()+":"+(date2.getMinutes()-1)+":"+date2.getSeconds()+" UTC");
	 var d1=new Date();
	 console.log("local dates"+d1);
	 console.log("utc to ist date "+date);
	var  result;
	var hours = Math.abs(d1 - date) / 36e5;
	var min=Math.abs(d1 - date) / (60*1000);
	var sec=Math.abs(d1 - date) /(1000);
	if(sec<60)
	{
		result=Math.round(sec)+' sec';
		
	}else if(min<60){
		result=Math.round(min)+' minutes';
	}else{
		result=Math.round(hours)+' hours';
	}

return result;
}

</SCRIPT>

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
<div>
	<%@ include file="CSCommon.jsp" %>
<%@ include file="BuddyPublicHeader.jsp" %>
 <section class="middleContentBlock">
    
     <%@ include file="BuddyPublicBanner.jsp" %>
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        <%@ include file="BuddyPublicSideMenu.jsp" %>
						<div class="userName col-md-10" id="likesDiv">
	
							<div class="hitBoard">
							            
							            
							         <%--    <c:choose>
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
							                   </c:choose> --%>
							                   
							            </div>

							</div>
				
                    <div class="col-md-7 pageMiddleBlock">
                     <div class="col-md-12 whiteBox mybuddyBlock fansPage">
						<input type="hidden" name="buddyPublicUserId" id="buddyPublicUserId" value="${BuddyPublicUserId}">          					
          
		          <h1 class="">Fans </h1>
          	
          	
                        
                    <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#BoardAllFansList" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="getallFanlist2()">All</a></li>
                        <li role="presentation" class=""><a href="#BoardFansListDIV" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="boardFansList2()">Boards</a></li>
                        <li role="presentation" class=""><a href="#BoardUserFanListDIv" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="userFansList2()">Buddy</a></li>
                        
                      </ul>
                    
                      <!-- Tab panes -->
                      <div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active" id="BoardAllFansList">
                            <div class="col-md-12 noPadding" id="AllBoardAllFansList2">
								<c:choose>
										<c:when test="${empty UserProfileList} && ${empty BoardProfileList}">
											<div>
												No fans are there
											</div>
										</c:when>
										<c:otherwise>
											<c:forEach var="user" items="${UserProfileList}">
											
											<div class="media  col-md-6" id="boardfanuser${user.userId}">
				                                <div class="media-left buddyImg">
				                                  <a href="${pageContext.request.contextPath}/buddy/${user.firstName}/${user.userId}">
				                                    <img src="${user.userImageUrl}">
				                                    </a>
				                                </div>
				                    				  <div class="media-body">
				                                        <h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/${user.firstName}/${user.userId}">${user.firstName}</a></h4>
				                                        <span class="date">${user.city}</span>
				                                        <%--  <a class="btn   btn-default btn-sm  btn-sm  blockBtn "  id="becomeFan${user.userId}" onclick="FanAction('${BoradInfo.boardId}','${user.userId}','boardUnFanToBuddy','boardfanuser')">Un Fan</a> --%>
				                                        <%--  <a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan${user.userId}" >Un Fan success</a> --%>                                
				                                      </div>
                            					</div>
											
											</c:forEach>
											<c:forEach var="user" items="${BoardProfileList}">
											
											<div class="media col-md-6" id="boardfanboard${user.boardId}">
				                                <div class="media-left buddyImg">
				                            <a href="${pageContext.request.contextPath}/${user.boardName}/board/${user.boardId}">
				                                    <img src="${user.boardImageURL}">
				                                    </a>
				                                </div>
				                    				  <div class="media-body">
				                                        <h4 class="media-heading"><a href="${pageContext.request.contextPath}/${user.boardName}/board/${user.boardId}">${user.boardName}</a></h4>
				                                        <span class="date">${user.city}</span>
				                                         <%-- <a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan${user.boardId}" onclick="FanAction('${BoradInfo.boardId}','${user.boardId}','boardUnFanBoard','boardfanboard')">Un Fan</a> --%>
				                                         <%-- <a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="fan${user.boardId}" >Un Fan success</a> --%>                                
				                                      </div>
                            					</div>
												
											</c:forEach>
										</c:otherwise>
								
								</c:choose>
                             
                                
                            </div>
                           <div class="clear"></div>
                           <dir id="AllFanOfListDivPagination">
                          
                           <c:choose>
                           <%-- 	<c:when test="${fn:length(UserProfileList) > 10 || fn:length(BoardProfileList) >10}"> --%>
                           	<c:when test="${BoardFanCount > 10 || UserFanCount > 10}">
                          			  <a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage2('All',10,'AllBoardAllFansList2','AllFanOfListDivPagination')">Load more</a> 	
                           	</c:when>
                           	
                           	<c:otherwise>
                           	
                           	</c:otherwise>
                           
                           </c:choose>
                           </dir>
                           
                        </div>
                        
                         <div class="clear"></div>
                        
                            <div role="tabpanel" class="tab-pane" id="BoardFansListDIV">
                              
                              
                              <div class="col-md-12 noPadding" id="BoardFansListDIV2">
								
                            </div>
                              
                           <div class="clear"></div> 
                           <div id="BoardFanOfListDivPagination"></div>
                        </div>
                        
                        
                        <div role="tabpanel" class="tab-pane" id="BoardUserFanListDIv">
                            <div class="col-md-12 noPadding" id="BoardUserFanListDIv2">

                                
                              
                            </div>  
                              <div id="userFanOfListDivPagination"></div>
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

                     <%@ include file="AroundYouMenu.jsp" %>

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>

</div>
 <!-- jQuery -->
 
      <script src="${pageContext.request.contextPath}/circketsocial/homepagevalidation.js"></script>
    
		<script src="${pageContext.request.contextPath}/js/buddies.js"></script>
		<script src="${pageContext.request.contextPath}/js/cricketSocial/my-fans.js"></script>

 	<!--Select Box-->
	<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>

	<!--File Upload-->
	<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
		});
   </script>      
     <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>
     
<script type="text/javascript">

var geocoder = new google.maps.Geocoder();
var address = "new york";

geocoder.geocode( { 'address': address}, function(results, status) {

  if (status == google.maps.GeocoderStatus.OK) {
    var latitude = results[0].geometry.location.lat();
    var longitude = results[0].geometry.location.lng();
    console.log(results);
  } 
}); 





</script>
</body>
</html>