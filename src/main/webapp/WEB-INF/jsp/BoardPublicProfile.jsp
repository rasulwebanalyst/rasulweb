<!DOCTYPE html>
<html lang="en">
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
   <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
      <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
 
<script>var ctx="${pageContext.request.contextPath}";</script>
<script type="text/javascript">
var pageNum=10;
</script>
<SCRIPT>
function feedDuration(feeddate)
{
	//alert("feeddate"+feeddate );
//var date2= new Date(feeddate).toISOString();
//var date1= new Date();
var date2= new Date(feeddate);
	 var d1= new Date();
	 var date1= new Date(d1.getTime() + d1.getTimezoneOffset() * 60000);
//alert(date1);
//alert(date2);
var  result;
var hours = Math.abs(date1 - date2) / 36e5;
var min=Math.abs(date1 - date2) / (60*1000);
var sec=Math.abs(date1 - date2) /(1000);
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



</head>

<style>

.dropbtn {
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none; 
    position: absolute;
    background-color: #9197a3;
    min-width: 130px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 9;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}




</style>



<body>
   <%@ include file="CSCommon.jsp" %>
   
   <%-- <%@ include file="BoardHeader.jsp" %> --%>
   <%@ include file="BoardHeaderpublic.jsp" %>
       
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/feedFunction.js"></script>
    <section class="middleContentBlock">
       <%@ include file="BoardPublicProfileBanner.jsp" %>
    
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                    
           <%@ include file="BoardPublicProfileSideMenu.jsp" %>
            <%@ include file="BoardFanMenu.jsp" %>         
                    
                    
                    
                    
                    <div class="col-md-7 pageMiddleBlock">
                     
                     <form action="postFeed.htm" name="postfrom" id="postfrom" method="post">
                     <c:if test="${BoradInfo.postingAbility eq 5}">
                     
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                     	<div id="fileDiv">
                           	 <input id="upload0" type="file" style="visibility: hidden;" name="file" onchange="readURL(this)" />
                            </div>
                            <b>Status update</b>
                            <a href="#" class="pull-right" id="upload_link"><i class="fa fa-picture-o"></i> Add photos</a>
                        	
                            <div class="postBlock">
                            	<img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								
								<input type="hidden" value="${BoradInfo.boardId}" name="boardId" id="boardId">
								
								 <div class="uploadedFiles">
                                    
                                </div>
								<a href="#" class=""><button type="submit" class="pull-right btn blueBtn" >BOWL</button></a>  
								                    
                            </div>
                            
                        </div>
                     		  </c:if>
                        </form>
                      <input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}">
                      
                      <div id="postedresult">
       
                      </div>
                       
                      
                        <div class="col-md-12 feedBlock whiteBox"  id="feedMainDIV">
                      
                        <c:choose>
                        	<c:when test="${empty FeedsList}">
                        	 <div class="media" id="NoFeedMsgDIV">
                        	 	Currently there are no feeds available in your pitch
                        	 </div>
                        	</c:when>
                        		
                        	<c:otherwise>
                        	
                        		 <c:forEach var="feed" items="${FeedsList}" varStatus="index">
                        	
                               
                                <div class="media">
	                                  <div class="media-left">
	                                    <a href="#">
	                                       <img src="${feed.userImageurl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">
	                                    </a>
	                                  </div>
	
	                                  <div class="media-body">
	                                    <h4 class="media-heading">${feed.postedByName}</h4>
		                                    <div class="headRight">
		                                    
		                                    
		                                    
		                                    <div class="dropdown">
		                                    	<p id="HitCountDIv${index.count}" onmouseout="removeHitList('${feed.feedId}')" onmouseover="getHitList('${feed.feedId}')" class="trash-holder"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p>
		                                    	
		                                    	<div id="Hitlist_${feed.feedId}"></div>
		                                    
		                                    </div>
		                                    
		                                    
		                                     <c:choose>
		                                    		<c:when test="${feed.postedBy eq USRID}">
		                                    			<p class="trash-holder" onclick="feedDelete('${feed.feedId}')" title="Delete"><i class="fa fa-trash trash"></i> </p>
		                                    		
		                                    		<p class="trash-holder"  onclick="feedEdit('${feed.feedId}')" title="Edit"  ><i class="fa fa-pencil trash"></i> </p>
		                                    		</c:when>
		                                    		<c:otherwise>
		                                    			<p class="trash-holder" onclick="feedSpam('${feed.feedId}')" title="Report spam"><i class="fa fa-ban"></i> </p>
		                                    		</c:otherwise>
		                                    	</c:choose>
		                                    
		                                    	<%-- <p id="HitCountDIv${feed.feedId}"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p> --%>
		                                    	<p id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</p>
		                                    </div>
	                                    
	                                    <span class="postTime"><script type="text/javascript">
                                    	
                                    	//document.write(feedDuration("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	document.write(feedDisplayDate("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	</script></span>
	                                    <div class="galleryBlock">
	                                     <c:if test="${not empty feed.fileAttachement }">
	                                    	<c:forEach var="feedImage" items="${feed.fileAttachement}">
	                                    		<%-- <img src="${feedImage.attachmentUrl }"> --%>
	                                    		<c:choose>
	                                    			<c:when test="${feedImage.attachmentType eq 'video'}">
	                                    					<video width="100%" controls>
																							  <source src="${feedImage.attachmentUrl}" type="video/mp4">
																							 <%--  <source src="${feedImage.attachmentUrl}" type="video/ogg"> --%>
																							  Your browser does not support the video tag.
																				</video>
	                                    					
	                                    			</c:when>
	                                    			<c:otherwise>
	                                    					<%-- <embed style="width:100%; height:320px;" src="${feedImage.attachmentUrl }">	
	                                    						  --%>
	                                    						  <%-- <iframe width="269" height="200" src="${feedImage.attachmentUrl}" frameborder="0" allowfullscreen></iframe> --%>
				                                    					<img src="${feedImage.attachmentUrl }">	                                     				
	                                    			</c:otherwise>
	                                    			
	                                    		
	                                    		</c:choose>
	                                    		
	                                    	</c:forEach>
	                                    </c:if>

	                                         <p>${feed.content}</p>
	                                    </div>
	                                    
	                                   <%--  <a href="javascript:addfeedHit('${feed.feedId}')" class="shareLink"><i class="fa hitIcon"></i> Hit</a> --%>
	                                  <%--  <c:choose>
	                                    		<c:when test="${feed.userFeedHit}">
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>	
	                                    		</c:when>
	                                    		<c:otherwise>
	                                    					
	                                    					<a href="javascript:addfeedHit2('${feed.feedId}', this)" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a>
	                                    					<div class="hitIconDiv" id="hittDiv${index.count}"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" id="feed${index.count}"><i class="fa hitIcon"></i> Hit</a></div>
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}" style="display: none;"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>
	                                    		</c:otherwise>
	                                    </c:choose> --%>
	                                    
	                                    
	                                    <c:choose>
	                                    		<c:when test="${feed.userFeedHit}">
	                                    		            <div class="hitIconDiv" id="hittDiv${index.count}" style="display: none;"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" id="feed${index.count}"><i class="fa hitIcon"></i> Hit</a></div>
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" style="color: #4c9fe1;"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" > UnHit</a></div>
	                                    		</c:when>
	                                    		<c:otherwise>
	                                    		            <div class="hitIconDiv" id="hittDiv${index.count}"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" id="feed${index.count}"><i class="fa hitIcon"></i> Hit</a></div>
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}" style="display: none;"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" style="color: #4c9fe1;"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" > UnHit</a></div>
	                                    		</c:otherwise>
	                                    </c:choose>
	                                    
	                                    
	                                    
	                                    <%-- <a href="#" class="shareLink" onclick="showCommentDIV('${feed.feedId}')"><i class="fa fa-commenting"></i> Comment</a> --%>
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="javascript:shareFeed('${feed.feedId}')" class="shareLink" ><i class="fa fa-share"></i> Share</a>
	                                    
	                                    <div class="postBlock commentBlock" id="feedContenDIVt${feed.feedId}" style="display: none;">
                                            <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">
                                            <textarea class="form-control" id="feedcontent${feed.feedId}" placeholder="Write a Comment"></textarea>
                                            <div style="color: red; margin-left: 54px;" id="feedcmderrorDiv${feed.feedId}"></div>
                                            <a href="javascript:" class=""><button type="button" class="pull-right btn blueBtn" style="margin-top: 6px;" name="feedcommentbtn"  onclick="sendFeedComments(this)" value="${feed.feedId}">BOWL</button></a>
                                        </div>
                                        
	                                  </div>
                                </div>
                               
                                </c:forEach>
                        		
                        	</c:otherwise>
                        	
                        </c:choose>
                   
                        		    
                                
                                
                                
                        
                        
</div>

                      </div>

                   
                        <%@ include file="AroundYouMenu.jsp" %>
                     
                     <!--/Right Block End-->

                        
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
       		userID : "${USRID}",
       		feedHitUserId : "${USRID}",
       		boardId : "${BoradInfo.boardId}"
	     };
       var postinfo=JSON.stringify(nodes);
  	 var   projectURL=  document.getElementById('projectURL').value;

       $.ajax({
   		type : "POST",
   		url :ctx+"/boardFeedsSearch",
   		dataType: "json",
           contentType: "application/json; charset=utf-8",
           data : postinfo,	
   		success : function(res) {
   			console.log(res);
   			var htm ='';
			if(res!=null)
				{
						if(res.length>0)
							{
									for(var f in res){

										
										var date2= new Date(res[f].createdDate);
										var d1= new Date();
										 var  result;
										 var hours = Math.abs(d1 - date2) / 36e5;
										 var min=Math.abs(d1 - date2) / (60*1000);
										 var sec=Math.abs(d1 - date2) /(1000);
										 console.log("hours"+hours);
										 console.log("min"+min);
										 console.log("sec"+sec);
									 if(sec<=60)
									 {
									 	result=Math.round(sec)+' sec';
									 	
									 }else if(min<60){
									 	result=Math.round(min)+' minutes';
									 }else{
									 	result=Math.round(hours)+' hours';
									 }
									 
									 var userImage=$('#userImageId').val();
									 
										 var fid="'"+res[f].feedId+"'";
										 var fid2="'scroll"+res[f].feedId+"'";
										 var fid3="'scroll"+f+""+res[f].feedId+"'";
										 var feedtype="'Buddy'";
										htm +='<div class="col-md-12 feedBlock whiteBox" >'           	
						               
										 +'<div class="media">'
						                +'<div class="media-left">'
						                +'<a href="#">';
										if(userImage != null || userImage !=""){
											htm +='<img src="'+userImage+'" class="nav-avatar">';
										}else{
											htm +='<img src="'+projectURL+'images/profileIcon.png" class="nav-avatar">';
										}
											
										htm +='</a>'
						              +'</div>'
						              +'<div class="media-body">'
						                +'<h4 class="media-heading">'+res[f].postedByName+'</h4>'
						                +'<div class="headRight">'
						               // +	'<span id="HitCountDIv'+res[f].feedId+'"><img src="'+ctx+'/images/hitIcon1.png" width="18" class="hitIcon1"  >'+res[f].feedHitCount+'</span><span id="commentCount'+res[f].feedId+'"><i class="fa fa-commenting-o"></i>'+res[f].feedCommentCount+'</span>'
						               +'<p id="commentCountscroll'+f+''+res[f].feedId+'" onclick="getAllComments('+fid+')"><i class="fa fa-commenting"></i>'+res[f].feedCommentCount+'</p> <p id="HitCountDIvscroll'+f+''+res[f].feedId+'"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" id="commentCountscroll'+f+''+res[f].feedId+'" >'+res[f].feedHitCount+'</p>'
						                +'</div>';
						                
						              //  +'<span class="postTime">'+result+'</span>'
						             htm +='<span class="postTime">'+feedDuration(res[f].createdDate)+'</span>';
						              
						              htm +='<div class="galleryBlock">';
										var attachments=res[f].fileAttachement;
										console.log("attachments"+JSON.stringify(attachments));
						                if(attachments != null && attachments.length>0){
						                	for(var i=0;i<attachments.length;i++){
						                		
						                		if(attachments[i].attachmentType == 'video')
						                			{
						                				htm +='<video width="100%" controls>';
						                				htm +='<source src="'+attachments[i].attachmentUrl	 +'" type="video/mp4">';
						                				htm +='</video>';  
						                			}else{
						                				htm +='<img src="'+attachments[i].attachmentUrl	 +'">';
						                			}
						                	}
						                }
						               
						                htm +='<p>'+res[f].content+'</p>'               	
						                	+'</div>';
						                	
						             //   +'<a href="javascript:addfeedHit('+fid+')" class="shareLink"><i class="fa hitIcon"></i> Hit</a>'
						                	if(res[f].userFeedHit)
						                		{
						                		///htm+'<div class="hitIconDiv" id="hittDivscroll'+res[f].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid2+')" class="shareLink" id="feed'+res[f].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>'
						                		htm	+='<div class="hitIconDiv" id="hittedDivscroll'+res[f].feedId+'" style="display: block;"><img src="'+ctx+'/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>';
						                		}else{
						                			htm	+='<div class="hitIconDiv" id="hittDivscroll'+res[f].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid2+')" class="shareLink" id="feed'+res[f].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>';
						                			htm	+='<div class="hitIconDiv" id="hittedDivscroll'+res[f].feedId+'" style="display: none;"><img src="'+ctx+'/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>';
						                		}
						             		
						                	htm +='<a href="javascript:showCommentDIV('+fid3+')" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>'
						               // +'<a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>'
						                +'<a href="javascript:shareMenus('+fid3+')" class="shareLink" id="share${feed.feedId}" ><i class="fa fa-share"></i> Share</a>'
						                +'<span class="shareMenus" id="shareMenusscroll'+f+''+res[f].feedId+'" style="display: none;">'
						                 +'<input type="radio" class="" checked id="allOption'+res[f].feedId+'" name="shareOption'+res[f].feedId+'"  onclick="shareFeed2('+fid+','+feedtype+',this.value)" value="All">'
						                 +'<label for="allOption'+res[f].feedId+'"><span></span>All</label>'                                            
						                 +'<input type="radio" class="" id="buddyOption'+res[f].feedId+'" name="shareOption'+res[f].feedId+'" onclick="shareFeed2('+fid+','+feedtype+',this.value)" value="Buddy">'
						                 +'<label for="buddyOption'+res[f].feedId+'"><span></span>Buddy</label>'                                          
						                 +'</span>'
						              +'</div>'
						            +'</div>'
						            +'<div class="postBlock commentBlock" id="feedContenDIVtscroll'+f+''+res[f].feedId+'" style="display: none;">'
						            +'<img src="'+buddyIMG+'" onError="this.onerror=null;this.src=/images/profileIcon.png;" class="nav-avatar">'
						            +'<textarea class="form-control" id="feedcontentscroll'+f+''+res[f].feedId+'" placeholder="Write a Comment"></textarea>'
						            +'<div style="color: red; margin-left: 54px;" id="feedcmderrorDivscroll'+f+''+res[f].feedId+'"></div>'
						           // +'<a href="#" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" onclick="sendFeedComments(this)" value="'+res[f].feedId+'">BOWL</button></a>'
						           //sendFeedComments2 
						           //+'<a href="#" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" onclick="sendFeedComments2(this,'+fid3+')" value="'+res[f].feedId+'">BOWL</button></a>'
						           +'<button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" style="margin-top: 6px;" onclick="sendFeedComments2(this,'+fid3+')" value="'+res[f].feedId+'">BOWL</button>'
						           +'</div>'
						            
						            +'</div>';
									}
										
							}else{
								$(window).data('ajaxready', false);
							}
				}
			
			$("#feedMainDIV").append(htm);
			document.getElementById('content').value='';
   		},
   		error:function(response){
   			console.log("Your request failed due to some service problem"+JSON.stringify(response));
   		},
   	
   	}); 
}

</script>
 
    <%@ include file="Footer.jsp" %>

<script type="text/javascript">

var feedImagesArray=[];

function readURL(input) {
	
    if (input.files) {
    	var fileTextBoxLength=$('input:file').length;
        var reader = new FileReader();
        reader.onload = function (e) {
        	 console.log('fileTextBoxLength');
        	console.log(fileTextBoxLength);
        	console.log('response : ');
        	console.log(e);
        	
        	var result=e.target.result;
        	
        	var bytes=result.substring(result.indexOf(',')+1,result.length);
            var imageType=result.substring(result.indexOf('data:')+5,result.indexOf('/'));
            
        	var fileSize = (e.total)/1024/1024;
    		////alert(fileSize);
    		if(fileSize<=2.1)
    		{
    			if(imageType=='image'  ){

    	            var feedImage={
    	           		 id:fileTextBoxLength,
    	            		imageOrVideoByteDatastr:bytes,
    	            		attachmentType:imageType
    	            };
    	            console.log('image details');
    	            console.log(feedImage);
    	            feedImagesArray.push(feedImage);
    	            
    	        	
    	        	var html='';
    	        	html+='<div class="uploadedImg" >';
    	        	//html+='<img src="'+result+'">';
    	        	if(imageType=='video')
    	            		{
    	            		
    	            		html+='<img src="${pageContext.request.contextPath}/images/video_image.png">';
    	            		}else{
    	            			html+='<img src="'+result+'">';
    	            		}
    	        	html+=' <i class="fa fa-close upclose" onclick="removeFeedImage(this,'+fileTextBoxLength+')"></i>';
    	        	html+='</div>';
    	        	
    	        	
    	        	$('.uploadedFiles').append(html);
    	        	 var filehtml="<input id='upload"+fileTextBoxLength+"' type='file' style='display:none;' name='file' onchange='readURL(this)' />";
    	             $('#fileDiv').append(filehtml);
    			}else{
    	        	displaynotification('Please upload image files only',1500);
    	        }
    		}else{
    			displaynotification('Please upload below 2 MB file',1500);
            }
        
	
            
        };
        
        reader.readAsDataURL(input.files[0]);
    }
}

function removeFeedImage(elem,fileLength){
	//alert("removing current one");
	$(elem).parent().remove();
	$('#upload'+fileLength).remove();
	if(feedImagesArray != null){
		for(var i=0;i<feedImagesArray.length;i++){
			var fileImage=feedImagesArray[i];
			if(fileImage.id = fileLength ){
				feedImagesArray.slice(i,1);
			}
		}
		
	}
	
	
	
	
}

$("#upload_link").on('click', function(e){
	e.preventDefault();
	var fileTextBoxLength=$('input:file').length;
	fileTextBoxLength=fileTextBoxLength-1;
	$("#upload"+fileTextBoxLength).trigger('click');
});


$(document).ready(function(){
	$('#loading').hide();
});

</script>

<script type="text/javascript">



function feedEdit(id)
{
	var feed=$("#"+id).text();
	$("#feedsedited").val(feed);
	$("#EditedId").val(id);
	$("#feededit").show();
	console.log(feed);
	}
function closeFeededit()
{
	$("#feededit").hide();
	}
	
	function updatePost()
	{
		var feed=$("#feedsedited").val();
		var editedid=$("#EditedId").val();
		console.log("Edited feed :"+feed);
		
		
		var feedarray=feed.split(" ");
		var sentfeed="";
		for(var i in feedarray)
			{
			var word=linkify(feedarray[i]);
			console.log(sentfeed);
			console.log(i);
			if(i == 0){sentfeed+=word;}else{
			sentfeed+=" "+word;}
			}
		console.log(sentfeed);
		
		
var request={
				
				content : sentfeed,
				updateFlag : "feed",
				feedId : editedid,
		}
		
		$.ajax({
			
			type : "post",
			url : "${pageContext.request.contextPath}/UpdateFeed",
			data : JSON.stringify(request),
			contentType : "application/json",
			success : function(res){
				
				if(res == "success")
					{
					$("#"+editedid).html(sentfeed);
					}
				$("#feedsedited").val("");
				$("#EditedId").val("");
				$("#feededit").hide();
				}
			
		}) 
	}
	
	function linkify(text) {
	    var urlRegex =/(\b(((https?|ftp|file|):\/\/)|www[.])[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/ig;
	    return text.replace(urlRegex, function(url) {
	        return '<a href="' + url + '">' + url + '</a>';
	    });
	}



function SaveComment(id,fid)
{
	var comment=$("#Edited"+id).val();
	 /*alert(comment);*/
	
	console.log("Edited feed :"+comment);
	
	var request={
			feedCommentId : id,
			content : comment,
			updateFlag : "feedComment",
			feedId : fid,
	}
	
	$.ajax({
		
		type : "post",
		url : "${pageContext.request.contextPath}/UpdateComment",
		data : JSON.stringify(request),
		contentType : "application/json",
		success : function(res){
			
			if(res == "success")
				{
				console.log("Edit comment :"+res);
				$("#Original"+id).text(comment);
				$("#editdiv_"+id).show();
				 $("#body_"+id).hide();
				}
			}
		
	})
	
}


function getHitList(fid)
{
	 console.log("add");
	 
	 var request={
			 feedId : fid,	 
	 }
	 $.ajax({
		 type : "post",
		 url : "${pageContext.request.contextPath}/hitList",
		 data : JSON.stringify(request),
		 contentType : "application/json",
		 success : function(res)
		 {
			 var htmlco="";
			 if(res !=null)
				 {
				 htmlco+="<div class='dropdown-content'>";
			for(var i in res)
				{
				htmlco+="<li>"+res[i].hittedByName+"</li>";
				}

			 htmlco+="</div>";

				 }
			 
			 $("#Hitlist_"+fid).html(htmlco).trigger('create');
			 
		 }
		 
	 })
}

function removeHitList(fid)
{
	  $("#Hitlist_"+fid).html("").trigger('create');
	 console.log("remove"); 
}


</script>

</body>

</html>
