<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorbox.css" />
    <link href="https://hayageek.github.io/jQuery-Upload-File/4.0.8/uploadfile.css" rel="stylesheet">
      <script>var ctx="${pageContext.request.contextPath}";</script>
    
      
</head>

<body>
<div class="notification" id="notificationPopupDiv" style="display:none;">
	<span class="insideBlock noti_arrow" id="notificationPopupMessageDIV">Please login to add product to list</span>
</div>

    <%@ include file="CSCommon.jsp" %>
	<%@ include file="BoardHeader.jsp" %>
	
   
    <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
<%@ include file="BoardPublicProfileSideMenu.jsp" %>
      <%@ include file="BoardFanMenu.jsp" %> 
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox rosterMediaBlock">
		          <h1 class="">Squad Media</h1>
          	
                      	<!--Tab Content-->  
                        
                        <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#Photos" aria-controls="home" role="tab" data-toggle="tab">Photos</a></li>
                        <li role="presentation"><a href="#Videos" aria-controls="profile" role="tab" data-toggle="tab">Videos</a></li>
                       <!--  <li role="presentation"><a href="#FileUpload" aria-controls="profile" role="tab" data-toggle="tab">File Upload</a></li> -->
                      </ul>
                        
							<div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active photoGallery" id="Photos">
								 <div class="col-md-12 noPadding">
                                 
							        
                                    <c:choose>
                                 		<c:when test="${not empty RoasterImageList}">
                                 				<c:forEach items="${RoasterImageList}" var="video">
                                 					<p><a class="group2" href="${video.attachmentUrl}" title=""><img src="${video.attachmentUrl}" class="galThumb"></a></p>
                                 				</c:forEach>
                                 		</c:when>
                                 		<c:otherwise>
                                 				<div>No images available </div>
                                 		</c:otherwise>
                                 	
                                 	</c:choose>
                                    
                                 </div>				                            
                           <div class="clear"></div>
                        </div>
                        
                        <div role="tabpanel" class="tab-pane" id="Videos">
								 <div class="col-md-12 noPadding videoGallery">
                                 	
                                 	 <c:choose>
                                 		<c:when test="${not empty RoasterVideosList}">
                                 				<c:forEach items="${RoasterVideosList}" var="video">
                                 					<p><a class="" href="#" title="">
				                                    	<video width="320" height="240" controls>
  															<source src="${video.attachmentUrl}" type="video/mp4">  
												</video>
				                                    	
				                                    	</a>
				                                    </p> 
                                 				</c:forEach>
                                 		</c:when>
                                 		<c:otherwise>
                                 				<div>No videos available </div>
                                 		</c:otherwise>
                                 	
                                 	</c:choose> 
                                 	
                                 </div>				                            
                           <div class="clear"></div>
                        </div>
                        
                        <div role="tabpanel" class="tab-pane" id="FileUpload">
								 <div class="col-md-12 noPadding fileUpload">
                                	


                                        
                                   
                                 </div>				                            
                           <div class="clear"></div>
                        </div>
                        
                       </div>
                        
                        <!--/Tab Content-->
                        
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>       
   <script src="https://hayageek.github.io/jQuery-Upload-File/4.0.8/jquery.uploadfile.min.js"></script> 
   <script src="https://malsup.github.com/jquery.form.js"></script>
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
   <script src="https://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
<script src="https://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	$('#roasterFileForm').validate({
		
		rules :{
			attachment :{
				required: true,
				extension: "jpg|mp4|jpge|gif|png"
			} 
		},
		messages :{
			attachment :{
				required : "Please upload file",
				extension: "Please upload image/video file only"
			}
			}
		
	});
	
});


</script>
 <!--Gallery-->
   
   <script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade", loop: false});
				
			});
		</script>
</body>

</html>
