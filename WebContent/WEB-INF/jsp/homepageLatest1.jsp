<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</head>
<body>
<div>
<%@ include file="BuddyHeader.jsp" %>
 <section class="middleContentBlock">
    
    <div class="profileBanner">
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        <%@ include file="BuddySideMenu.jsp" %>

                    <div class="col-md-7 pageMiddleBlock">
                     <form action="postFeed" name="postfrom" id="postfrom" method="post" enctype="multipart/form-data">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                            <b>Status update</b>
                            <input id="upload" type="file" name="dataFile"   onchange="readURL(this)" />
                            <a href="#" class="pull-right" id="upload_link"><i class="fa fa-picture-o"></i> Add photos</a> 
                         <a href="#" >Add profile photo</a>
                            <div class="postBlock">
                            	<img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								 <div class="uploadedFiles">
                                   <div class="uploadedImg">
                                        <img id="profileimg" src="images/img1.jpg">
                                        <i class="fa fa-close upclose"></i>
                                	</div>
                                </div>
							<a href="#" class=""><button type="submit" class="pull-right btn blueBtn" >Post</button></a>  
								                    
                            </div>
                            
                        </div>
                     		  <!--  <input type="hidden" value="" name="postedByName" id="postedByName"> -->
                        </form>
                      <input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}">
                      
                      <div id="postedresult">
       
                      </div>
                       
                      
                        <div class="col-md-12 feedBlock whiteBox">
                      
                        <c:choose>
                        	<c:when test="${empty FeedsList}">
                        	 <div class="media" id="NoFeedMsgDIV">
                        	 	Currently there are no feeds available in your pitch
                        	 </div>
                        	</c:when>
                        		
                        	<c:otherwise>
                        	
                        		 <c:forEach var="feed" items="${FeedsList}">
                        	
                                <div class="media">
	                                  <div class="media-left">
	                                    <a href="#">
	                                      <img src="images/profileIcon.png" class="nav-avatar">
	                                    </a>
	                                  </div>
	
	                                  <div class="media-body">
	                                    <h4 class="media-heading">${feed.postedByName}</h4>
		                                    <div class="headRight">
		                                    	<span id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</span><span id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</span>
		                                    </div>
	                                    
	                                    <span class="postTime"><script type="text/javascript">
                                    	
                                    	document.write(feedDuration("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	</script></span>
	                                    <div class="galleryBlock">
	                                    <c:if test="${not empty feed.fileAttachement }">
	                                    	<c:forEach var="feedImage" items="${feed.fileAttachement}">
	                                    		${feedImage.attachmentUrl }
	                                    		
	                                    	</c:forEach>
	                                    </c:if>
	                                         ${feed.content}
	                                    </div>
	                                    
	                                    <a href="javascript:addfeedHit('${feed.feedId}')" class="shareLink"><i class="fa hitIcon" disabled='disabled'></i> Hit</a>
	                                    <%-- <a href="#" class="shareLink" onclick="showCommentDIV('${feed.feedId}')"><i class="fa fa-commenting"></i> Comment</a> --%>
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="javascript:shareFeed('${feed.feedId}')" class="shareLink" ><i class="fa fa-share"></i> Share</a>
	                                    
	                                    <div class="postBlock commentBlock" id="feedContenDIVt${feed.feedId}" style="display: none;">
                                            <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">
                                            <textarea class="form-control" id="feedcontent${feed.feedId}" placeholder="Write a Comment"></textarea>
                                            <div style="color: red; margin-left: 54px;" id="feedcmderrorDiv${feed.feedId}"></div>
                                            <a href="javascript:" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn"  onclick="sendFeedComments(this)" value="${feed.feedId}">Post</button></a>
                                        </div>
                                        
	                                  </div>
                                </div>
                               
                                </c:forEach>
                        		
                        	</c:otherwise>
                        	
                        </c:choose>
                   
                        		    
                                
                                
                                
                        
                        
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
        
   </script>      
     <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
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

var feedImagesArray=[];
function readURL(input) {
	//alert("alert");
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        	console.log(e.target.result);
        	var result=e.target.result;
        	
            $('#profileimg').attr('src', e.target.result);
            
            var bytes=result.substring(result.indexOf(',')+1,result.length);
            var imageType=result.substring(result.indexOf('data:')+5,result.indexOf('/'));
            
            var feedImage={
            		imageOrVideoByteDatastr:bytes,
            		attachmentType:imageType
            };
            feedImagesArray.push(feedImage);
            
        };
        
        reader.readAsDataURL(input.files[0]);
    }
}

$(document).ready(function () {
	$("#upload_link").on('click', function(e){
		e.preventDefault();
		$("#upload").trigger('click');
	});
});

</script>
</body>
</html>