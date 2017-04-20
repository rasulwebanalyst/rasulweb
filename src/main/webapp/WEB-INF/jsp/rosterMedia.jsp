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

    <link href="https://hayageek.github.io/jQuery-Upload-File/4.0.8/uploadfile.css" rel="stylesheet">
      <script>var ctx="${pageContext.request.contextPath}";</script>
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colorbox.css" />
   
    
      
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
        
        
 <%@ include file="BoardSideMenu.jsp" %>
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox rosterMediaBlock">
		          <h1 class="">Squad Media</h1>
          	
                      	<!--Tab Content-->  
                        
                        <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#Photos" aria-controls="home" role="tab" data-toggle="tab">Photos</a></li>
                        <li role="presentation" style="display: none;"><a href="#Videos" aria-controls="profile" role="tab" data-toggle="tab">Videos</a></li>
                        <li role="presentation"><a href="#FileUpload" aria-controls="profile" role="tab" data-toggle="tab">File Upload</a></li>
                      </ul>
                        
							<div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active photoGallery" id="Photos">
								 <div class="col-md-12 noPadding">
                                 
							        
                                    <c:choose>
                                 		<c:when test="${not empty RoasterImageList}">
                                 				<c:forEach items="${RoasterImageList}" var="video">
                                 					<p><a class="group2" href="${video.attachmentUrl}" title=""><img src="${video.attachmentUrl}" class="galThumb"></a>
                                       
                                   	</p>
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
				                                    	<video width="320" height="240" style="width: 100%;" controls>
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
                                	<p>
                                    	Files and Images can be uploaded to your Weet-Bix MyCricket site, and are maintained in the File Manager screen.
                                        
                                        <h2 class="noBorder">About Files</h2>
                                        Files can be any type of document (with certain exceptions) and would normally be uploaded so that a menu item can be assigned, or a link can be created on a Html page to the item. Examples are Video files (MP4), Image files (JPG,GIF,PNG).<br>
<br>
<h2 class="noBorder">About Images</h2>

Images uploaded to Cricket Social can only have the file extensions of .JPG .GIF or .PNG. They are normally uploaded so that they can be used inline within a Html page, or a slideshow gallery.
<br>
<br>

Images that have not been optimized for the web (such as BMP, TIF files) should not be uploaded, as they are typically too big in filesize for quick dowload and view. Images greater than 100kB are listed with a red background as an indication that they probably should be optimized. See below for further information about image optimization.
<br>
<br>

<form action="${pageContext.request.contextPath}/saveRoasterFile" method="post" id="roasterFileForm" name="roasterFileForm" enctype="multipart/form-data">
		<!-- <input type="file" class="" id="attachment" name="attachment"> -->
		
		 <a href="#" id="upload_link1" class="btn btn-default" >Choose file</a> <span id="fileNameToShow"></span>
   <input type="file" id="attachment" name="attachment" onchange ="readName(this)" style="visibility:hidden;height:0;width:0;overflow:hidden" />
		
		<input type="hidden" value="${BoradInfo.boardId}" id="boardId" name="boardId">
		<input type="hidden" value="${rosterId}" id="rosterId" name="rosterId">
		<div style="margin-top: 10px;">
			<input type="Submit" class="btn blueBtn btn-sm" value="Submit">	
		</div>
</form>


                                        
                                   
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
<!--    <script src="http://malsup.github.com/jquery.form.js"></script>
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
   <script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script> -->
<script src="https://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	$('#roasterFileForm').validate({
		
		rules :{
			attachment :{
				required: true,
				extension: "jpg|jpeg|gif|png"
			} 
		},
		messages :{
			attachment :{
				required : "Please upload file",
				extension: "Please upload image file only"
			}
			}
		
	});
	
});


</script>
 <!--Gallery-->
   
   <script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
		<script>
		function readName(elem){
			var imageUrl=$('#attachment')[0].files[0];	
			if(typeof imageUrl === "undefined" || imageUrl==null){
				$("#fileNameToShow").html("");
			}else{
			var iamgeExtension=imageUrl.name;
			$("#fileNameToShow").html(iamgeExtension);
			//alert("iamgeExtension " + iamgeExtension);
			}
		}
		
		
		
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade", loop: false});
				
				$('#upload_link1').click(function () {
					$('#attachment').trigger('click');
				});
				
			});
		</script>
</body>

</html>
