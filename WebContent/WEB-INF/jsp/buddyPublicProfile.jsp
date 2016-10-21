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
<script type="text/javascript">
var pageNum=50;
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
}else if(hours<=24){
	result=Math.round(hours)+' hours';
}else{
	 var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
	result=Math.round(Math.abs((d1.getTime() - date2.getTime())/(oneDay)))+' days';
}

return result;
}
</SCRIPT>
</head>
<body >
<div>
<div>


<%@ include file="CSCommon.jsp" %>
</div>
<%@ include file="BuddyPublicHeader.jsp" %>
 <section class="middleContentBlock">
  <%--   
    <div class="profileBanner">
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
    </div>
     --%>
      <%@ include file="BuddyPublicBanner.jsp" %>
     
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                         <%@ include file="BuddyPublicSideMenu.jsp" %>
<div class="userName col-md-10" id="likesDiv">
	
							<div class="hitBoard">
							            <c:if test="${USRID ne BuddyPublicUserId}">
							            <c:set var="fancount" value="${BuddyPublicFanCount+BuddyPublicBoradFanCount}"/>
							            <c:choose>
							                   		<c:when test="${BuddyFanReq}">
							                   			<a href="javascript:" class=""> <span>Fan</span> <span>(${fancount})</span></a>
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:FanAction('${USRID}','${BuddyPublicUserId}','buddyFanToBuddy')" class="" id="becomeFan${BuddyPublicUserId}"> <span>Become a Fan</span><span>(${fancount})</span> </a>
							                   			<a href="javascript:" class="" id="fan${BuddyPublicUserId}" style="display: none"> <span>Fan</span> <span>(${fancount+1})</span> </a>	
							                   		</c:otherwise>
							                   </c:choose>
							            
							            <c:choose>
							                   		<%-- <c:when test="${BuddyFriend}">
							                   			<a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Friend</span> </a>
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:buddyRequest2('${BuddyPublicUserId}','')" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy Request</span></a>
							                   		</c:otherwise> --%>
							                   		
							                   		
							                   		
							                   		<c:when test="${!empty BuddyFriendRequest}">
							                   			<%-- <a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Friend</span> </a> --%>
							                   			<c:choose>
							                   				<c:when test="${BuddyFriendRequest.requestStatus eq 6}">
							                   						<a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy</span> </a>
							                   				</c:when>
							                   				<c:when test="${BuddyFriendRequest.requestStatus eq 4}">
							                   						<a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Request sent</span> </a>
							                   				</c:when>
							                   				<c:when test="${BuddyFriendRequest.requestStatus eq 7}">
							                   						<a href="javascript:" class=""> <span id="conformbuddyRequest${BuddyPublicUserId}" onclick="buddyManupulations2(28,'${BuddyPublicUserId}','invitation${BuddyPublicUserId}')" >Confirm Buddy</span> 
							                   							<span id="buddyRequest${BuddyPublicUserId}" style="display: none;">Buddy</span> 
							                   						</a>
							                   						
							                   				</c:when>
							                   				<c:otherwise>
							                   						<a href="javascript:buddyRequest2('${BuddyPublicUserId}','')" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy Request</span></a>
							                   				</c:otherwise>
							                   			</c:choose>
							                   			
							                   			
							                   			
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:buddyRequest2('${BuddyPublicUserId}','')" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy Request</span></a>
							                   		</c:otherwise> 
							                   </c:choose>
							                   </c:if>
							            </div>

</div>
                    <div class="col-md-7 pageMiddleBlock">
                     <form action="postFeed.htm" name="postfrom" id="postfrom" method="post" enctype="multipart/form-data" onsubmit="return feedValidation()">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                           <div id="fileDiv">
                           	 <input id="upload0" type="file" style="visibility: hidden;" name="file" onchange="readURL(this)" />
                            </div>
                            <b>Status update</b>
                            <a href="#" class="pull-right" id="upload_link"><i class="fa fa-picture-o"></i> Add Video</a>
                            <!-- <a href="#" class="pull-right" id="upload_videofile"><i class="fa fa-picture-o"></i> Add Video</a> --> 
                            <div class="postBlock">
                            	<img src="${USRIMG}" class="nav-avatar" onError="userErrorDefaultImg(ele)">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								 								 
								 <div class="uploadedFiles">
                                   
                                </div>
                                <!-- <div class="postShare" id="shareMenus" style="display: block;">                                      	
                                            <input type="radio" checked id="allOption" name="feedTo"  value="All">
                                           <input type="radio" id="allOption" checked name="feedTo" value="All">
                                            <label for="allOption"><span></span>All</label>
                                            
                                            <input type="radio" id="buddyOption" name="feedTo" value="Buddy">
                                            <label for="buddyOption"><span></span>Buddy</label>                                          
                                       </div> -->
							<a href="#" class=""><button type="submit" class="pull-right btn blueBtn" >BOWL</button></a>  
								                    
                            </div>
                            
                        </div>
                        </form>
                      <input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}">
                      
                      <div id="postedresult">
       
                      </div>
                       
                      
                        <div class="col-md-12 feedBlock whiteBox" id="feedMainDIV">
                      
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
	                                  <c:choose>
	                                  	<c:when test="${not empty feed.boardName}">
	                                  			<img src="${feed.boardImageurl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" class="nav-avatar">
	                                  	</c:when>
	                                  	<c:otherwise>
	                                  		<img src="${feed.userImageurl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">                                  	
	                                  	</c:otherwise>
	                                  </c:choose>
	                                    <a href="#">
	                                      
	                                    </a>
	                                  </div>
	
	                                  <div class="media-body">
	                                    <c:choose>
	                                    	 <c:when test="${not empty feed.boardName}">
	                                    	 	 <h4 class="media-heading"><a href="${pageContext.request.contextPath}/${feed.boardName}/board/${feed.boardId}">${feed.boardName}</a> <br>
                                        <span></span></h4>
	                                    	 </c:when>
	                                    	 <c:when test="${not empty feed.rosterName}">
	                                    	 	 <h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/${feed.postedByName}/${feed.postedBy}">${feed.postedByName}</a> <br>
                                        <span>Private message from <a href="${pageContext.request.contextPath}/rosterInfo?rosterId=${feed.rosterId}">${feed.rosterName}</a></span></h4>
	                                    	 </c:when>
	                                    	  <c:when test="${not empty feed.sharedBy}">
	                                   				 <h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/${feed.sharedByName}/${feed.postedBy}">${feed.sharedByName}</a> shared <a href="${pageContext.request.contextPath}/buddy/${feed.postedByName}/${feed.postedByName}">${feed.postedByName}'s</a> Feed</h4> 	
	                                    	 </c:when>
	                                    	 <c:otherwise>
	                                    	 	<h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/${feed.postedByName}/${feed.postedBy}">${feed.postedByName}</a></h4> 
	                                    	 </c:otherwise>
	                                    </c:choose>	                                   
	                                    
	                                    <!-- <div class="headRight"><img src="images/hitIcon1.png" width="18" class="hitIcon1">250 <i class="fa fa-commenting-o cmtIcon"></i> 250</div> -->
	                                    
	                                    
		                                    <%-- <div class="headRight">
		                                    	<span id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</span><span id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</span>
		                                    </div> --%>
		                                    
		                                    <div class="headRight">
		                                    	<p id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</p> <p id="HitCountDIv${index.count}"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p>
		                                    </div>
		                                    
		                                    
	                                    
	                                    <span class="postTime"><script type="text/javascript">                                   	
                                    	//document.write(feedDuration("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	document.write(feedDisplayDate("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	</script></span>
	                                    <div class="galleryBlock">
	                                     <c:if test="${not empty feed.fileAttachement}">
	                                    	<c:forEach var="feedImage" items="${feed.fileAttachement}">
	                                    		
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
	                                    		
	                                    		<!-- <embed style="width:100%; height:320px;" src="https://www.youtube.com/embed/amL-L8av4yI"> -->
	                                    	</c:forEach>
	                                    </c:if>

	                                         <P>${feed.content}</P>
	                                    </div>
	                                    
	                                    
	                                    <c:choose>
	                                    		<c:when test="${feed.userFeedHit}">
	                                    					<%-- <a href="javascript:" class="shareLink" id="hitAchor${feed.feedId}"><i class="fa hitIcon"></i> Hit</a> --%>	
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>
	                                    		</c:when>
	                                    		<c:otherwise>
	                                    					
	                                    					<div class="hitIconDiv" id="hittDiv${index.count}"><a href="javascript:userHitBtn('${feed.feedId}',${index.count})" class="shareLink" id="feed${index.count}"><i class="fa hitIcon"></i> Hit</a></div>
	                                    					<div class="hitIconDiv" id="hittedDiv${index.count}" style="display: none;"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>
	                                    		</c:otherwise>
	                                    </c:choose>
	                                    <%-- <a href="#" class="shareLink" onclick="showCommentDIV('${feed.feedId}')"><i class="fa fa-commenting"></i> Comment</a> --%>
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="javascript:shareMenus('${index.count}')" class="shareLink" id="share${feed.feedId}" ><i class="fa fa-share"></i> Share</a>
	                                    <span class="shareMenus" id="shareMenus${index.count}" style="display: none;">                                      	
                                            <input type="radio" class="" id="allOption${feed.feedId}" name="shareOption${feed.feedId}"  onclick="newshareFeed2('${feed.feedId}','Buddy',this.value,${index.count})" value="All">
                                            <label for="allOption${feed.feedId}"><span></span>All</label>
                                            
                                            <input type="radio" class="" id="buddyOption${feed.feedId}" name="shareOption${feed.feedId}" onclick="newshareFeed2('${feed.feedId}','Buddy',this.value,${index.count})" value="Buddy">
                                            <label for="buddyOption${feed.feedId}"><span></span>Buddy</label>                                          
                                       </span>
	                                    <div class="postBlock commentBlock" id="feedContenDIVt${feed.feedId}" style="display: none;">
                                            <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">
                                            <textarea class="form-control" id="feedcontent${feed.feedId}" placeholder="Write a Comment"></textarea>
                                            <div style="color: red; margin-left: 54px;" id="feedcmderrorDiv${feed.feedId}"></div>
                                            <a href="javascript:" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn"  onclick="sendFeedComments(this)" value="${feed.feedId}">BOWL</button></a>
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
       		userID : "${BuddyPublicUserId}",
       		feedHitUserId : "${USRID}"
	     };
       var postinfo=JSON.stringify(nodes);
  	 var   projectURL=  document.getElementById('projectURL').value;

       $.ajax({
   		type : "POST",
   		url :ctx+"/userPublicFeedsSearch",
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
						                if(res[f].boardName!=null)
						                	{
						                		htm +='<img src="'+res[f].boardImageurl+'" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/boardIcon.png;" class="nav-avatar">';
						                	}else {if(userImage != null || userImage !=""){
											htm +='<img src="'+userImage+'" class="nav-avatar">';
										}else{
											htm +='<img src="'+projectURL+'images/profileIcon.png" class="nav-avatar">';
										}
						                	}
										htm +='</a>'
						              +'</div>'
						              +'<div class="media-body">';
						              
						              if(res[f].boardName!=null){
						            	  htm +='<h4 class="media-heading"><a href="${pageContext.request.contextPath}/'+res[f].boardName+'/board/'+res[f].boardId+'">'+res[f].boardName+'</a> <br>';
						            		  htm +='<span></span></h4>';
						              		}else if(res[f].rosterName!=null){
						              		htm +='<h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/'+res[f].postedByName+'/'+res[f].postedBy+'">'+res[f].postedByName+'</a> <br>';
						              		}else if(res[f].sharedBy!=null){
						              			var s="'";
						              			htm +='<h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/'+res[f].sharedByName+'/'+res[f].postedBy+'">'+res[f].sharedByName+'</a> shared <a href="${pageContext.request.contextPath}/buddy/'+res[f].postedByName+'/'+res[f].postedBy+'">'+res[f].postedByName+''+s+'s</a> Feed</h4>'; 	

						              		}else{
						              			htm +='<h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/'+res[f].postedByName+'/'+res[f].postedBy+'">'+res[f].postedByName+'</a></h4>';
						              		}
						                //htm +='<h4 class="media-heading">'+res[f].postedByName+'</h4>'
						              htm +='<div class="headRight">'
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
						                				htm +='<video width="100%" style="margin-top: 6px;" controls>';
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
						           +'<button type="button" class="pull-right btn blueBtn" style="margin-top: 6px;" name="feedcommentbtn" onclick="sendFeedComments2(this,'+fid3+')" value="'+res[f].feedId+'">BOWL</button>'
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
 <!-- jQuery -->
 
      <script src="${pageContext.request.contextPath}/circketsocial/homepagevalidation.js"></script>
    
		<script src="${pageContext.request.contextPath}/js/buddies.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/feedFunction.js"></script>
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

     <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>
     
<script type="text/javascript">

var geocoder = new google.maps.Geocoder();
var address = "new york";

geocoder.geocode( { 'address': address}, function(results, status) {

  if (status == google.maps.GeocoderStatus.OK) {
    
    console.log(results);
  } 
}); 

var feedImagesArray=[];

function readURL(input) {
	
    if (input.files) {
    	var fileTextBoxLength=$('input:file').length;
        var reader = new FileReader();
        reader.onload = function (e) {
        	var result=e.target.result;
        	console.log('soruce filed---> '+result);
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
    	            console.log("feed Image"+JSON.stringify(feedImage));
    	            feedImagesArray.push(feedImage);
    	        	console.log("JHSO array"+JSON.stringify(feedImagesArray));
    	        	var html='';
    	        	html+='<div class="uploadedImg" >';
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
    	        	// var filehtml="<input id='upload"+feedImagesArray.length+"' type='file' style='display:none;' name='file' onchange='readURL(this)' />";
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
	alert("removing current one");
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

$('#upload_videofile').on('click',function(e){
	e.preventDefault();
	alert('video file');
});

$(function(){
	$('#loading').hide();
});
</script>
</body>
</html>