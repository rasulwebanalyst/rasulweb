<!DOCTYPE html>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://example.com/functions" prefix="f" %>
    
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
<script>var ctx="${pageContext.request.contextPath}";</script>

<script type="text/javascript">
var pageNum=40;
</script>
  <script src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>
</head>
<body>
<!-- <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header pull-left"> <a class="navbar-brand" href="#"> <img src="images/Logo.png"> </a>
      <div class="topSearch">
        <input type="text" class="form-control" placeholder="Search for buddies & boards">
        <i class="fa fa-search"></i> </div>
    </div>
    <div class="collapse navbar-collapse pull-right" id="">
      <ul class="nav navbar-nav topNav">
        <li class="myBoard"><span>My Board</span></li>
        <li> <a href="#"> <i class="fa fa-userIcon"><img src="images/usersIcon.png"></i></a> </li>
        <li> <a href="#"> <i class="fa fa-bell"></i></a> </li>
        <li>
            <img src="images/userImg.jpg" class="nav-avatar dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">
            <ul class="dropdown-menu logMenus" role="menu">
              <li><a href="#">My Profile</a></li>
              <li><a href="#">Change Password</a></li>
              <li><a href="#">Logout</a></li>
            </ul>
        </li>
        
      </ul>
    </div>
  </div>
</nav> -->

<%@ include file="BuddyHeader.jsp" %>

<div class="profileBanner"> <img src="images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
          <%@ include file="BuddySideMenu.jsp" %>
        <!-- <div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><img src="images/userImg.jpg">
                        	 Lakshith
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyScore.png"></i>My Score</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyEvents.png"></i>My Events</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyFans.png"></i>My Fans</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/IAmFanOf.png"></i>I Am Fan Of</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBuddyList	.png"></i>My Buddy List</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/PlayerCompare.png"></i>Player Compare</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/CricketBook.png"></i>Cricket Book</a></li>
                            </ul>
                        
                        
                    </div> -->
        
        
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox" id="teamAroundYouListDiv">
          
		          <h1 class="">Leagues Around You</h1>
          		  <c:forEach items="${BRDAroundYou}" var="brd">
          		  <c:set var="boardName" value="${f:replace(brd.boardName,'[^a-zA-Z0-9 ]', '%20')}" />	
                        <div class="laeguesBlock" onclick="window.location.href='${pageContext.request.contextPath}/${boardName}/board/${brd.boardId}';">
                				<div class="media" >
                				
                                  <div class="media-left">
                                     <a href="${pageContext.request.contextPath}/${boardName}/board/${brd.boardId}">
                                      <img src="${brd.boardImageURL}" class="teamLogo" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
                                  </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> <a href="${pageContext.request.contextPath}/${boardName}/board/${brd.boardId}">${brd.boardName}</a></h4>
                                    <span class="date"><fmt:formatDate value="${brd.createdDate}" pattern="dd MMMM YYYY"/></span>
                                    
                                  </div>
                                 
                                </div>
			            </div>
                        </c:forEach>
                      <!--   <div class="laeguesBlock">
                				<div class="media">
                                  <div class="media-left">
                                      <img src="images/teamLogo2.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Chennai League Match</h4>
                                    <span class="date">05 Augest 2015</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is been industry’s</p>
                                    
                                  </div>
                                </div>
			            </div>
                        
                        <div class="laeguesBlock">
                				<div class="media">
                                  <div class="media-left">
                                      <img src="images/teamLogo4.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Chennai League Match</h4>
                                    <span class="date">05 Augest 2015</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is been industry’s</p>
                                    
                                  </div>
                                </div>
			            </div>

                         <div class="laeguesBlock">
                				<div class="media">
                                  <div class="media-left">
                                      <img src="images/teamLogo3.png" class="teamLogo">
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Chennai League Match</h4>
                                    <span class="date">05 Augest 2015</span>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is been industry’s</p>
                                    
                                  </div>
                                </div>
			            </div>
 -->
                        
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<script type="text/javascript">
$(window).data('ajaxready', true).scroll(function(e) {
    console.log('scroll');
    
	if ($(window).data('ajaxready') == false) {
	//	alert('no ajax');
        return;
    }else{
    	
        if( $(window).scrollTop()+1 >= ($(document).height() - $(window).height())){
        	pageNum=parseInt(pageNum)+parseInt(10);
        	console.log('page -->'+pageNum);
        	getTeamAroundYou(pageNum,10);
        		
        }
    }
    
});

function getTeamAroundYou(pageNum, numberOFRecords){
	 var nodes={
       		startNode : pageNum,
       		endNode : numberOFRecords,
       		category : "League"
	     };
       var postinfo=JSON.stringify(nodes);
       $.ajax({
   		type : "POST",
   		url :ctx+"/teamAroundYouSearch",
   		dataType: "json",
           contentType: "application/json; charset=utf-8",
           data : postinfo,	
   		success : function(res) {
   			console.log(res);
   				if(res!=null){
   						
   					if(res.length>0){	    						
   						var htm="";
   						for(var i in res){
   						
			   							/* htm +="<div class='buddysBlock col-md-6' onclick='window.location.href="+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+";'>";
				 			            htm +="<div class='media'>";
				 			            htm +="<div class='media-left' style='cursor:pointer'>";
				 			            htm +="<a href='"+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+"'><img src='"+res[i].boardImageURL+"' class='teamLogo'></a>";
				 			            htm +="</div>";
				 			            htm +="<div class='media-body'>";
				 			            htm +="<h4 class='media-heading'><a href='"+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+"'>"+res[i].boardName+"</a></h4>";
				 			            htm +="<span class='date'>"+res[i].city+"</span>";
				 			            htm +="</div>";
				 			            htm +="</div>";
				 			            htm +="</div>";			 */	
				 			            
   						 htm +="<div class='laeguesBlock' onclick='window.location.href=${pageContext.request.contextPath}/"+res[i].boardName+"/board/"+res[i].boardId+"};'>";
             			htm +="<div class='media' >";
                         htm +="<div class='media-left'>";
 						//htm +="<img src='${brd.boardImageURL}' class='teamLogo' onError=''>";
 						 htm +="<a href='"+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+"'><img src='"+res[i].boardImageURL+"' class='teamLogo' onError=''></a>";
                         htm +="</div>";
                         htm +="<div class='media-body'>";
                         htm +="<a href='"+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+"'>";
                          htm +="<h4 class='media-heading'> "+res[i].boardName+"</h4>";
                          htm +="</a>";
                          //htm +="<span class='date'>"getDateInStringFormateWithFullMonthName_withTimeStampInput(res[i].createdDate)+"</span>";
                          htm +="<span class='date'>"+getDateInStringFormateWithFullMonthName_withTimeStampInput(res[i].createdDate)+"</span>";
                          htm +="</div>";
                          htm +="</div>";
 		            htm +="</div>";
				 			            
				 			            
   						}
   						
   						$('#teamAroundYouListDiv').append(htm);
   						}else{
   							$(window).data('ajaxready', false);
   						}
   					
   					
   					}else{
   						
   					}
   		},
   		error:function(response){
   			console.log("Your request failed due to some service problem"+JSON.stringify(response));
   		},
   	
   	}); 
}

</script>
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
	<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-plus-circle").removeClass("fa-plus-circle").addClass("fa-minus-circle");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			});
		});
   </script>
</body>
</html>
