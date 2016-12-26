<!DOCTYPE html>
<html lang="en">
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<body>
   <%@ include file="CSCommon.jsp" %>
   <%@ include file="BoardHeader.jsp" %>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>
    
    <section class="middleContentBlock">
       <%@ include file="BoardBanner.jsp" %>
    <%-- <div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <i class="fa fa-camera changePhoto" title="Change Photo"></i>
          </div>
          
          <div class="container" id="likesDiv">  
          
          <c:choose>
          	<c:when test="${BoradInfo.category eq 'League' }">
          		<c:if test="${BoradInfo.likesReceived < 24}">
            		<a href="#" class="hitBoard" onclick="becomeFanCountFunction('${BoradInfo.boardId}')"><i class="fa boardHit"></i> <span>Become a fan</span><span id="likesCountId">(${BoradInfo.likesReceived})</span></a>
           		 </c:if>
          	</c:when>
          	
          	<c:when test="${BoradInfo.category eq 'Team' }">
          		<c:if test="${BoradInfo.likesReceived < 14}">
            		<a href="#" class="hitBoard" onclick="becomeFanCountFunction('${BoradInfo.boardId}')"><i class="fa boardHit"></i> <span>Become a fan</span><span id="likesCountId">(${BoradInfo.likesReceived})</span></a>
           		 </c:if>
          	</c:when>
          
          </c:choose>
          
           
            
        </div>
        
        
        <!--<div class="container bannerBtnsblock">
        <div class="bannerBtns">
        	<i class="fa fa-camera changePhoto" title="Change Photo"></i>
            
           <div class="boardHitBtn"> <i class="fa boardHit"></i>Hit </div>
         </div>   
        </div>-->
        
    	<img src="images/innerBanner.png">
        
    </div> --%>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
                   <!--  <div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><img src="images/teamLogo4.png">
                        	 Kent Cricket Board
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyScore.png"></i>Score</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/IAmFanOf.png"></i>Fan Of</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBuddyList.png"></i>Roster</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/CricketBook.png"></i>League Management</a></li>
                            </ul>
                        
                        
                    </div> -->
                    
           <%@ include file="BoardSideMenu.jsp" %>
                    <div class="col-md-7 pageMiddleBlock">
                     
                     <form action="postFeed.htm" name="postfrom" id="postfrom" method="post">
                   <%--   <c:if test="${(BoradInfo.postingAbility eq 5)  || (BoradInfo.hasAdminRights)}"> --%>
                     
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                     	<div id="fileDiv">
                           	 <input id="upload0" type="file" style="visibility: hidden;" name="file" onchange="readURL(this)" />
                            </div>
                            <b>Status update</b>
                            <a href="#" class="pull-right" id="upload_link"><i class="fa fa-picture-o"></i> Add photos</a>
                        	
                            <div class="postBlock">
                            	<img src="" class="nav-avatar" onclick="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								
								<input type="hidden" value="${BoradInfo.boardId}" name="boardId" id="boardId">
								
								 <div class="uploadedFiles">
                                    
                                </div>
								<a href="#" class=""><button type="submit" class="pull-right btn blueBtn" >BOWL</button></a>  
								                    
                            </div>
                            
                        </div>
                     		 <%--  </c:if> --%>
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
                        	
                                <%-- <div class="media">
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
	                                         ${feed.content}
	                                    </div>
	                                    
	                                    <a href="javascript:addfeedHit('${feed.feedId}')" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>
	                                    
	                                    <div class="postBlock commentBlock" id="feedContenDIVt${feed.feedId}" style="display: none;">
                                            <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar">
                                            <textarea class="form-control" id="feedcontent${feed.feedId}" placeholder="Write a Comment"></textarea>
                                            <div style="color: red; margin-left: 54px;" id="feedcmderrorDiv${feed.feedId}"></div>
                                            <a href="javascript:" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn"  onclick="sendFeedComments(this)" value="${feed.feedId}">Post</button></a>
                                        </div>
                                        
	                                  </div>
                                </div> --%>
                                <div class="media">
	                                  <div class="media-left">
	                                    <a href="#">
	                                      <img src="${feed.userImageurl}" class="nav-avatar" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
	                                      
	                                    </a>
	                                  </div>
	
	                                  <div class="media-body">
	                                    <h4 class="media-heading">${feed.postedByName}</h4>
		                                    <div class="headRight">
		                                    	<%-- <span id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</span><span id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</span> --%>
		                                    	<p id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</p> <p id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p>
		                                    </div>
	                                    
	                                    <span class="postTime"><script type="text/javascript">
                                    	
                                    	document.write(feedDuration("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
                                    	</script></span>
	                                    <div class="galleryBlock">
	                                     <c:if test="${not empty feed.fileAttachement }">
	                                    	<c:forEach var="feedImage" items="${feed.fileAttachement}">
	                                    		<img src="${feedImage.attachmentUrl }">
	                                    		
	                                    	</c:forEach>
	                                    </c:if>

	                                         <p>${feed.content}</p>
	                                    </div>
	                                    
	                                    <%-- <a href="javascript:addfeedHit('${feed.feedId}')" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a> --%>
	                                    <c:choose>
	                                    		<c:when test="${feed.userFeedHit}">
	                                    					<a href="javascript:" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a>	
	                                    		</c:when>
	                                    		<c:otherwise>
	                                    					
	                                    					<a href="javascript:addfeedHit2('${feed.feedId}', this)" class="shareLink" id="feed${feed.feedId}"><i class="fa hitIcon"></i> Hit</a>
	                                    		</c:otherwise>
	                                    </c:choose>
	                                    <%-- <a href="#" class="shareLink" onclick="showCommentDIV('${feed.feedId}')"><i class="fa fa-commenting"></i> Comment</a> --%>
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="javascript:shareFeed('${feed.feedId}')" class="shareLink" ><i class="fa fa-share"></i> Share</a>
	                                    
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
                        <%@ include file="AroundYouMenu.jsp" %>
                       
                       <%-- <%@ include file="BoardAroundYouMenu.jsp" %> --%> 
                     
                     <!--/Right Block End-->

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    <%@ include file="Footer.jsp" %>

<script type="text/javascript">


$(document).ready(function(){
	$('#loading').hide();
});

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
        	html+='<img src="'+result+'">';
        	html+=' <i class="fa fa-close upclose" onclick="removeFeedImage(this,'+fileTextBoxLength+')"></i>';
        	html+='</div>';
        	
        	
        	$('.uploadedFiles').append(html);
        	 var filehtml="<input id='upload"+fileTextBoxLength+"' type='file' style='display:none;' name='file' onchange='readURL(this)' />";
             $('#fileDiv').append(filehtml);
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


</script>

</body>

</html>
