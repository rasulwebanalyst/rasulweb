<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<%@ include file="CSCommon.jsp" %>
<div>
<%@ include file="BuddyHeader.jsp" %>
 <section class="middleContentBlock">
    
    <%-- <div class="profileBanner">
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
    </div> --%>
     <%@ include file="UserBanner.jsp" %>
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        <%@ include file="BuddySideMenu.jsp" %>

                    <div class="col-md-7 pageMiddleBlock">
                     <div class="col-md-12 whiteBox mybuddyBlock fansPage">
          
          
          			<%-- <input type="hidden" value="${BoradInfo.boardId}" id="boardId" name="boardId"> --%>
		          <h1 class="">I Am Fan Of</h1>
          	
                        
                    <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#BoardAllFansList" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="getallFanlist()">All</a></li>
                        <li role="presentation" class=""><a href="#BoardFansListDIV" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="boardFansList()">Boards</a></li>
                        <li role="presentation" class=""><a href="#BoardUserFanListDIv" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="userFansList()">Buddy</a></li>
                        
                      </ul>
                    
                      <!-- Tab panes -->
                      <div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active" id="BoardAllFansList">
                            <div class="col-md-12 noPadding" id="AllBoardAllFansList2">
								<c:choose>
										<c:when test="${empty UserProfileList} && ${empty BoardProfileList}">
											<div>
												No fans
											</div>
										</c:when>
										<c:otherwise>
											<c:forEach var="user" items="${UserProfileList}">
											<div class="media  col-md-6" id="boardfanuser${user.userId}">
				                                <a href="${pageContext.request.contextPath}/buddy/${user.firstName}/${user.userId}">
				                                <div class="media-left buddyImg">
				                                    <img src="${user.userImageUrl}">
				                                </div></a>
				                    				  <div class="media-body">
				                                        <a href="${pageContext.request.contextPath}/buddy/${user.firstName}/${user.userId}">
				                                        <h4 class="media-heading">${user.firstName}</h4>
				                                        </a>
				                                        <span class="date">${user.city}</span>
				                                      
				                                        	 <a class="btn   btn-default btn-sm  btn-sm  blockBtn "  id="becomeFan${user.userId}" onclick="FanAction('${USRID}','${user.userId}','buddyUnFanToBuddy','buddyUnFanToBuddy2')">Un Fan</a>
				                                         <a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan${user.userId}" >Un Fan success</a>    
				                                        
				                                                                    
				                                      </div>
                            					</div>
											
											</c:forEach>
											<c:forEach var="user" items="${BoardProfileList}">
											<div class="media  col-md-6" id="boardfanboard${user.boardId}">
				                                <a href="${pageContext.request.contextPath}/${user.boardName}/board/${user.boardId}">
				                                <div class="media-left buddyImg">
				                                    <img src="${user.boardImageURL}">
				                                </div>
				                                </a>
				                    				  <div class="media-body">
				                                       <a href="${pageContext.request.contextPath}/${user.boardName}/board/${user.boardId}">  <h4 class="media-heading">${user.boardName}</h4></a>
				                                        <span class="date">${user.city}</span>
				                                           <c:if test="${user.createdBy ne USRID}">
				                                         <a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="boardFan${user.boardId}" onclick="FanAction('${USRID}','${user.boardId}','buddyUnFanToBoard','buddyUnFanToBoard')">Un Fan</a>
				                                         <a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="boardfanuser${user.boardId}" >Un Fan success</a>                                
				                                     		</c:if>
				                                      </div>
                            					</div>
											
											</c:forEach>
										</c:otherwise>
								
								</c:choose>
                             
                             			   
                            </div>
                           <div class="clear"></div>
                           <!-- <dir id="AllFanOfListDivPagination"><a href="javascript:getallFanlistbypage('All',10,'AllBoardAllFansList2','AllFanOfListDivPagination')">more records</a></dir> -->
                           <dir id="AllFanOfListDivPagination"><a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage('All',10,'AllBoardAllFansList2','AllFanOfListDivPagination')">more records</a></dir>
                           
                        </div>
                        
                         <div class="clear"></div>
                        
                            <div role="tabpanel" class="tab-pane" id="BoardFansListDIV">
                              
                              
                              <div class="col-md-12 noPadding" id="BoardFansListDIV2">
								
                            </div>
                              
                           <div class="clear"></div>
                           <!-- <dir id="boardFanOfListDivPagination"><a href="javascript:getboardFanlistbypage('Board',10,'BoardFansListDIV2','boardFanOfListDivPagination')">more records</a></dir> -->
                           <dir id="boardFanOfListDivPagination"></dir> 
                        </div>
                        
                        
                        <div role="tabpanel" class="tab-pane" id="BoardUserFanListDIv">
                            <div class="col-md-12 noPadding" id="BoardUserFanListDIv2">

                                
                              
                            </div>  
                            	 <div class="clear"></div>
                            	<!-- <dir id="userFanOfListDivPagination"><a href="javascript:getUserFanlistbypage('Buddy',0,'BoardUserFanListDIv2','userFanOfListDivPagination')">more records</a></dir> -->
                            	<dir id="userFanOfListDivPagination"></dir>
                            </div>
                          
                           
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
		<script src="${pageContext.request.contextPath}/js/cricketSocial/buddyFanOf.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>

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