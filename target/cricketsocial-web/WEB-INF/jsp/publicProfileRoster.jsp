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
       <!-- responsive css -->
	 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">
    
	<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    <script>var ctx="${pageContext.request.contextPath}";</script>
    
    <script src="${pageContext.request.contextPath }/js/jspdf.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jspdf.plugin.autotable.js"></script>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


<script type="text/javascript">
                       var rosterrowObj=[];
                       </script>

<div class="notification" id="notificationPopupDiv" style="display:none;">
	<span class="insideBlock noti_arrow" id="notificationPopupMessageDIV">Please login to add product to list</span>
</div>
<%-- <%@ include file="CSCommon.jsp" %> --%>
   <!--  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header pull-left">
                <a class="navbar-brand" href="#">
                   <img src="images/Logo.png">
                </a>
                
               <div class="topSearch">
                     <input type="text" class="form-control" placeholder="Search for buddies & boards">
                     <i class="fa fa-search"></i>
                </div>
                
                
            </div>
            
            
            <div class="collapse navbar-collapse pull-right" id="">
                <ul class="nav navbar-nav topNav">
                    
                    <li class="myBoard">
                    	<span class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">My Board</span> <i class="fa fa-caret-down"></i>
                    
                    	<ul class="dropdown-menu logMenus" role="menu">
                          <li><a href="#">My Board 1</a></li>
                          <li><a href="#">My Board 2</a></li>
                          <li><a href="#">My Board 3</a></li>
                          <li><a href="#">My Board 4</a></li>
                        </ul>
                    
                    </li>
                    
                    <li>
                       <a href="#"> <i class="fa fa-userIcon"><img src="images/usersIcon.png"></i></a>
                    </li>
                    <li>
                       <a href="#"> <i class="fa fa-bell"></i></a>
                    </li>
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
    <%@ include file="CSCommon.jsp" %>
	<%-- <%@ include file="BoardHeader.jsp" %> --%>
	<%@ include file="BoardHeaderpublic.jsp" %>
	
   
    
    <section class="middleContentBlock">
    
    <div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <i class="fa fa-camera changePhoto" title="Change Photo"></i>
          </div>
          
          <!-- <div class="container">  
            
            <a href="#" class="hitBoard"><i class="fa boardHit"></i> <span>Hit Board</span></a>
            
        </div> -->
        
        
        <!--<div class="container bannerBtnsblock">
        <div class="bannerBtns">
        	<i class="fa fa-camera changePhoto" title="Change Photo"></i>
            
           <div class="boardHitBtn"> <i class="fa boardHit"></i>Hit </div>
         </div>   
        </div>-->
        
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
        
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                <c:choose>
                <c:when test="${empty RoasterResponseById }">
                	<%@ include file="BoardPublicProfileSideMenu.jsp" %>
                     
                     <%@ include file="BoardFanMenu.jsp" %> 
                <div class="col-md-10 pull-right rosterBlock rightnone">
                 <div class="col-md-12 whiteBox">
                 	No Rosters are available.
                 </div>
                 </div>
                 
                 	  <div class="col-md-10 pull-right rosterBlock rightnone">
                 <div class="col-md-12 whiteBox">
          			
          			
          			
		          
                  </div>
                  </div>
                	
                   <%--   <%@ include file="BoardSideMenu.jsp" %> --%>
                   
                     
                </c:when>
                <c:otherwise>
                   <%@ include file="BoardPublicProfileSideMenu.jsp" %>
                <%@ include file="BoardFanMenu.jsp" %> 
                	<div class="col-md-10 pull-right rosterBlock rightnone">
                 <div class="col-md-12 whiteBox">
          			
          			
          			
		          <h1 class="noBorder">Roster                   			
                            <div class="h1Sbox">
                                <div class="selectdiv pull-right">
                                    <select class="selectboxdiv" onchange="getRosterDetails(this.value)">
                                    <option value="">Select Roster</option>
                                         <c:forEach var="Roster" items="${Roasters}" >
                                    		<option value="${Roster.rosterId}">${Roster.rosterName}</option>
                                   		 </c:forEach>
                                        
                                    </select>
                                    <div class="out"> Select Roster</div>    
                                </div>
                                </div>
                             
                  </h1>
                  </div>
                  </div>
                  
                  
                  <div class="col-md-10 pull-right rosterBlock rightnone">
                  <div class="col-md-12 whiteBox rosterDetail">
                        	<div class="media">
                                 <c:choose>
                                         	<c:when test="${RoasterResponseById.rosterDetails.checkAffiliatedFlag}"> 
                                         	 <div class="media-left">
                                   					 <a href="${pageContext.request.contextPath}/${RoasterResponseById.rosterDetails.leagueBoardDto.boardName}/board/${RoasterResponseById.rosterDetails.leagueBoardDto.boardId}"><img src="${RoasterResponseById.rosterDetails.leagueBoardDto.boardImgURL}" onerror="imgError(this)"></a>
                              				  </div> 
                                         	 </c:when>
                                         	<c:otherwise>
                                         		
                                         		  
                                         	</c:otherwise>
                                         </c:choose> 
                               
                    				  <div class="media-body">
                                        <h4 class="media-heading">${RoasterResponseById.rosterDetails.rosterName}</h4>
                                         <span class="Affiliated">
                                         
                                          <c:choose>
                                         	<c:when test="${RoasterResponseById.rosterDetails.checkAffiliatedFlag}"> 
                                         		Affiliated to:  <a href="${pageContext.request.contextPath}/${RoasterResponseById.rosterDetails.leagueBoardDto.boardName}/board/${RoasterResponseById.rosterDetails.leagueBoardDto.boardId}"><span class="badge" id="affilatedLeagueId">${RoasterResponseById.rosterDetails.leagueBoardDto.boardName} </span></a> 
                                         	 </c:when>
                                         	<c:otherwise>
                                         		
                                         		  
                                         	</c:otherwise>
                                         </c:choose> 
                                         
                                         
                                       </span>
                                         
                                      </div>
                            	</div>
                        </div>
                  </div>
                 	
          		
                  
                
                    

                    <div class="col-md-7 pageMiddleBlock">
                     	
                        <div class="col-md-12 membersBlock whiteBox">
                            
                            <h2>
                            
                            <b>Members</b>
                            <a  style="margin-top: -5px;" class="pull-right" href="javascript:getPDF()"><img style="width: 30px; height: 25px;" src='${pageContext.request.contextPath}/images/Pdfdownload.png'></a>
                            <!-- <a href="#" class="pull-right">View All</a> -->
                        	</h2>
                            
                            <div class="col-md-12 noPadding">
                            
                            
                             <c:forEach var="rosterMember" items="${RoasterMemberList.rosterMembers }" varStatus="loop">
                           		<a href="${pageContext.request.contextPath}/buddy/${rosterMember.userProfile.firstName}/${rosterMember.userId}">
                           		<div class="col-md-4 membs">
                           		
                            		<img src="${rosterMember.userProfile.userImageUrl }" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" /><br/>
                            		
                                    <b>${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</b>
                                    <br>
                                    <span>${rosterMember.rosterRole}</span>
                              	 </div>
                              	 </a>
                              	 
                            </c:forEach> 
                            
                            <c:forEach var="rosterMemberprint" items="${Rosterprint.playerList }" varStatus="loop">
                              	
                              	<script type="text/javascript">
                              	
                              	var sno=parseInt("${loop.index}")+1;
                              	var lname="${rosterMemberprint.lastName}";
                              	var desc="${rosterMemberprint.designation}";
                              	var app="";
                              	if(desc == "Captain")
                              		{
                              		app="(c)";
                              		}
                              	else if(desc == "vice_Captain"){
                              		app="(vc)";
                              	}else if(desc == "Coach"){
                              		app="(coach)";
                              	}
                              	
                              	rosterrowObj.push({
                              		serialno : sno,
                              		firstName : "${rosterMemberprint.firstName}",
                              		lastName : lname+" "+app,
                              		accountCreateddate : "${rosterMemberprint.profileCreatedDate}",
                              		addedrosterdate : "${rosterMemberprint.playerAddedtoRosterDate}" 
                              		
                              	});
                              	</script> 
                            </c:forEach> 
                            
                               
                                
                            </div>
                        </div>
                        
                        
                        <div class="panel-group rosterAccordion" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    <h4 class="panel-title" >
                                        Batting and Fielding Performances <i class="fa fa-chevron-down"></i>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                    <div class="form-group">
                                    
                                    	<table>
                                    	<thead>
                                        	<tr>                                        
                                            <th>Player</th>
                                            <th>M</th>
                                            <th>I</th>
                                            <th>NO</th>
                                            <th>R</th>
                                            <th>HS</th>
                                            <th>Avg</th>
                                            <th>SR</th>
                                            <th>100</th>
                                            <th>50</th>
                                            <th>CT</th>
                                            <th>ST</th>
                                            </tr>
                                            
                                           </thead>
                                           <tbody>
                                           			<c:forEach var="batting" items="${BattingPerformance}">
                                           						<tr>
                                           							<td>${batting.firstName} ${batting.lastName}</td>
                                           							<td>${batting.matchCount}</td>
                                           							<td>${batting.inningsCount}</td>
                                           							<td>${batting.notOut}</td>
                                           							<td>${batting.runs}</td>
                                           							<td>${batting.highScore}</td>
                                           							<td><fmt:formatNumber type="number"  pattern="##########.##"  value="${batting.average}" /></td>
                                           							<td><fmt:formatNumber type="number"  pattern="##########.##"  value="${batting.strikeRate}" /></td>
                                           							<td>${batting.centuryCount}</td>
                                           							<td>${batting.halfCentury}</td>
                                           							<td>${batting.catchesCount}</td>
                                           							<td>${batting.stumpingCount}</td>
                                           							
                                           						</tr>
                                           			</c:forEach>
                                           		<tr>
                                           		
                                           		
                                           		</tr>                      
                                            
                                           </tbody> 
                                    </table>
                                      	<c:choose>
                                      		<c:when test="${ not empty BattingPerformance}">
                                      					
                                      		</c:when>
                                      		<c:otherwise>
                                      			<div>No Records are there</div>
                                      		</c:otherwise>
                                      	</c:choose>
                                      	</div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                    <h4 class="panel-title" >
                                       Bowling Performances <i class="fa fa-chevron-down"></i> </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       	<div class="form-group">
                                        <table>
                                    	<thead>
                                        	<tr>
                                        	
                                            <th>Player</th>
                                            <th>Overs</th>
                                            <th>M</th>
                                            <th>R</th>
                                            <th>W</th>
                                            <th>BBI</th>
                                            <th>5W</th>
                                            <th>10W</th>
                                            <th>Avg</th>
                                            <th>SR</th>
                                            <th>ECO</th>
                                            </tr>
                                            
                                           </thead>
                                           <tbody>
                                           <!-- BowlingPerformance -->
                                           <c:forEach items="${BowlingPerformance}" var="bowler">
                                           		<tr>
                                           			<td>${bowler.firstName} ${bowler.lastName}</td>
                                           			<td>${bowler.bowlingOvers}</td>
                                           			<td>${bowler.matchCount}</td>
                                           			<td>${bowler.runs}</td>
                                           			<td>${bowler.wickets}</td>
                                           			<%-- <td>${bowler.bestBowlinginInnings}/${bowler.bowlingRuns}</td> --%>
                                           			<td>${bowler.bbi}</td>
                                           			<td>${bowler.fiveWicketsCount}</td>
                                           			<td>${bowler.tenWicketsCount}</td>
                                           			<td><fmt:formatNumber type="number"  pattern="##########.##"  value="${bowler.average}" /></td>
                                           			<td><fmt:formatNumber type="number"  pattern="##########.##"  value="${bowler.strikeRate}" /></td>
                                           			<td><fmt:formatNumber type="number"  pattern="##########.##"  value="${bowler.economy}" /></td>
                                           		</tr>
                                           
                                           </c:forEach>
                                           
                                          
                                           </tbody> 
                                           
                                          
                                    </table>
                                    </div>
										<c:choose>
                                      		<c:when test="${ not empty BowlingPerformance}">
                                      					
                                      		</c:when>
                                      		<c:otherwise>
                                      			<div>No Records are there</div>
                                      		</c:otherwise>
                                      	</c:choose>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        
                        
                        <div class="col-md-12 phoVidBlock whiteBox">
                            
                            <h2>
                            
                            <b>Photos / Videos</b>
                            <a href="${pageContext.request.contextPath}/rosterInfo/${RoasterResponseById.rosterDetails.rosterId}/${BoradInfo.boardId}" class="pull-right">View All</a>
                        	</h2>
                            <c:choose>
                            	<c:when test="${!empty RoasterImageList || !empty RoasterVideosList}">
                            		<div class="col-md-6 noLeftPad">
			                            	<c:choose>
			                            			<c:when test="${not empty RoasterImageList}">
			                            				<div class="col-md-12 noPadding">
			                            					<img src="${RoasterImageList[0].attachmentUrl}">
			                                  			 	 <span></span>
			                             			   </div>
			                            			</c:when>
			                            			<c:otherwise>
			                            					<div style="color: red;"></div>
			                            			</c:otherwise>
			                            	
			                            	</c:choose>
                            	
                            		 </div>
                            		 <div class="col-md-6 noRightPad">  
                               
			                               <c:choose>
			                            			<c:when test="${not empty RoasterVideosList}">
			                            				 <div class="col-md-12 noPadding">
			                            					<!-- <iframe width="269" height="200" src="https://www.youtube.com/embed/HTL0_54L8OE" frameborder="0" allowfullscreen></iframe> -->
			                                    				<video width="269" height="200" controls>
			  															<source src="${RoasterVideosList[0].attachmentUrl}" type="video/mp4">  
															</video>
			                               				 </div>
			                            			</c:when>
			                            			<c:otherwise>
			                            					<div style="color: red;"></div>
			                            			</c:otherwise>
			                            	
			                            	</c:choose>
                              
                                
                          			  </div>
                            		 
                            	</c:when>
                            	<c:otherwise>
                            		       <div class="col-md-6 noRightPad">  
                            		       <div style="color: red;">No images/videos are there</div>
                            		       </div>                    	
                            	</c:otherwise>
                            </c:choose>
                            
                            
                            
                              
                        </div>
                     	
                     
                     
                           <!--  <b>Status update</b>
                            <a href="#" class="pull-right"><i class="fa fa-picture-o"></i> Add Video/ Photos</a>
                        	
                            <div class="postBlock">
                            	<img src="images/userImg.jpg" class="nav-avatar">
                               	<textarea class="form-control" id="" placeholder="Whats happening?"></textarea>
                            	
                                <div class="uploadedFiles">
                                	<div class="uploadedImg">
                                        <img src="images/img1.jpg">
                                        <i class="fa fa-close upclose"></i>
                                	</div>
                                    <div class="uploadedImg">
                                        <img src="images/img1.jpg">
                                        <i class="fa fa-close upclose"></i>
                                	</div>
                                    
                                    <a href="#" class="pull-right btn blueBtn pull-right"></a>  
                                </div>
                                                                
                            </div> -->
                            
                            
                              <c:if test="${memberExists == 4 }">   
                           
                            
                            <%-- <form  name="postfrom" id="rosterFeedPostfrom"  action="postFeed" onsubmit="return feedValidation()">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                            <b>Status update</b>
                            <a href="#" class="pull-right" id="upload_link"><i class="fa fa-picture-o" ></i> Add Video/Photos</a>
                        	
                        	<div id="fileDiv">
                           	 <input id="upload0" type="file" style="visibility: hidden;" name="file" onchange="readURL(this)" />
                            </div>
                        	
                            <div class="postBlock">
                            	<img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								
								<input type="hidden" value="${RoasterResponseById.rosterDetails.rosterId}" name="rosterId" id="rosterId">
								<input type="hidden" value="${BoradInfo.boardId }" name="rosterBoardId" id="rosterBoardId" >
								 <div class="uploadedFiles">
                                    <a href="#" class=""><button type="submit" class="pull-right btn blueBtn" onclick="showloader();">BOWL</button></a>  
                                </div>
								
								                    
                            </div>
                            
                        </div>
                        </form> --%>
                        <form  name="postfrom" id="rosterFeedPostfrom" action="postFeed" onsubmit="return feedValidation()">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                            <b>Status update</b>
                            <!-- <a href="#" id="upload_link" class="pull-right"><i class="fa fa-picture-o"></i> Add Video/ Photos</a> -->
                            <a href="#" class="pull-right" id="upload_link" title="Please upload below 2 MB file"><i class="fa fa-picture-o" ></i> Add photos</a>
                        	
                        	<div id="fileDiv">
                           	 <input id="upload0" type="file" style="visibility: hidden;" name="file" onchange="readURL(this)" />
                            </div>
                        	
                        	
                            <div class="postBlock">
                            	<img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								
								<input type="hidden" value="${RoasterResponseById.rosterDetails.rosterId}" name="rosterId" id="rosterId">
								<input type="hidden" value="${BoradInfo.boardId }" name="rosterBoardId" id="rosterBoardId" >
								 <div class="uploadedFiles">
                                     
                                </div>
								
								    <a href="#" class=""><button type="submit" class="pull-right btn blueBtn" onclick="showloader();">BOWL</button></a>
								                     
                            </div>
                            
                        </div>
                        </form>
                            
                            </c:if>  
                           
                      
                             <input type="hidden" value="${pageContext.request.contextPath}" id="projectURL" name="projectURL">
                   
                         <div id="postedresult">
       
                      </div>
                         <c:if test="${memberExists == 4 }">   
                        <div class="col-md-12 feedBlock whiteBox">
                        
                        	 <c:choose>
                             	<c:when test="${empty RoasterResponseById.feedsList}">
                             		<div class="media" id="NoFeedMsgDIV">
                        	 			Currently there are no feeds available in your pitch
                        			 </div>
                             	</c:when>
                             	<c:otherwise>
	                              <c:forEach var="feed" items="${RoasterResponseById.feedsList}" varStatus="index">
	                              	<div class="media">
	                                  <div class="media-left">
	                                    <a href="#">
	                                      <img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
	                                    </a>
	                                  </div>
	
	                                  <div class="media-body">
	                                    <h4 class="media-heading">${feed.postedByName}</h4>
		                                    <div class="headRight">
		                                    	<%-- <span id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</span><span id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</span> --%>
		                                    	<p id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</p> <p id="HitCountDIv${index.count}"><img src="${pageContext.request.contextPath}/images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p>
		                                    </div>
	                                    <span class="postTime">
		                                    <script type="text/javascript">
	                                    		document.write(feedDisplayDate("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
	                                    	</script>	
                                    	</span>
	                                   <%--  <div class="galleryBlock">
	                                         ${feed.content}
	                                    </div> --%>
	                                    <div class="galleryBlock">
	                                     <c:if test="${not empty feed.fileAttachement}">
	                                    	<c:forEach var="feedImage" items="${feed.fileAttachement}">
	                                    		
	                                    		<c:choose>
	                                    			<c:when test="${feedImage.attachmentType eq 'video'}">
	                                    					<video width="320" height="240" controls>
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
	                                    
	                                   <%--  <a href="javascript:addfeedHit('${feed.feedId}')" class="shareLink"><i class="fa hitIcon"></i> Hit</a> --%>
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
	                                    <a href="javascript:showCommentDIV('${feed.feedId}')" class="shareLink" ><i class="fa fa-commenting"></i> Comment</a>
	                                   
	                                    <a href="javascript:shareFeed('${feed.feedId}','Roster')" class="shareLink" id="share${feed.feedId}"><i class="fa fa-share"></i> Share</a>
	                                    
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
                        </c:if>
                        


                      </div>

                      <%@ include file="EventSideMenu.jsp" %>
                	
                
                </c:otherwise>
               </c:choose>   
                 
                     
                     <!--/Right Block End-->

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    
    
    
    

<script src="${pageContext.request.contextPath}/js/cricketSocial/rosterFeeds.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/feedFunction.js"></script>
<%-- <script src="${pageContext.request.contextPath}/cricketSocial/commentfunctions.js"></script> --%>

 	<!--Select Box-->
	<script>
	 $('#loading').hide();
	
	/* $(document).ready(function(){ */
		
	/* }); */
	function getRosterDetails(rosterId){
		var boardId="${BoradInfo.boardId }";
		window.location.href=ctx+"/rosterProfileDetails/"+rosterId+"/"+boardId+"";
		
	}
	
	
	
    </script>

	<!--File Upload-->
	<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				var fileTextBoxLength=$('input:file').length;
        		fileTextBoxLength=fileTextBoxLength-1;
        		$("#upload"+fileTextBoxLength).trigger('click');
				//$("#upload:hidden").trigger('click');
			});
		});
   </script>      

<!--Select Box-->
	<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            });
        });
    </script>

<!--Accordion Arrow-->
<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-chevron-down").removeClass("fa-chevron-down").addClass("fa-chevron-up");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-chevron-up").removeClass("fa-chevron-up").addClass("fa-chevron-down");
			});
		});
        
        function getBoardForAutoComplete(autoCompleteId,boardType,elem){
        	    	var key=elem.value;
        	    	if(key.length >0){
        	    		if(key.length > 2){
        	    			//alert(category);
        				    $.ajax({
        							type : "GET",
        							url : ctx+"/boardSearchInUserProfile",
        							dataType: "json",
        				        	contentType: "application/json; charset=utf-8",
        				        	data : {
        				        		key:key,
        				        		category:boardType
        				        	},
        							success : function(res) {
        								console.log(res);	
        								if(res!=null){
        									var boardProfileList=res.boardProfileList;
        									var html="";
        									if(boardProfileList !=null ){
        										html+="<ul>";
        										for(var i=0;i<boardProfileList.length;i++){
        											
        											html+="<li onclick=setValueToTextBox(this,'"+boardProfileList[i].boardId+"')>"+boardProfileList[i].boardName+"</li>";
        										}
        										html+="</ul>";
        										$('#boardAutoCompleteListIdToAffiliate').html(html);
        										$('#boardAutoCompleteListIdToAffiliate').show();
        									}else{
        										
        										html+="<ul>";
        										html+="<li>No boards available </li>";
        										html+="</ul>";
        										$('#boardAutoCompleteListIdToAffiliate').html(html);
        										$('#boardAutoCompleteListIdToAffiliate').show();

        									}
        								}else{
        									$('#boardAutoCompleteListIdToAffiliate').hide();	
        								}
        							},error:function(res){
        								console.log(res);	
        							}
        				    });	
        	    			
        	    		}else{
        	    			
        	    			$('#boardAutoCompleteListIdToAffiliate').hide();
        	    			
        	    		}
        	    	}
        	    	
        	    }
        function setValueToTextBox(elem,leagueId){
        	$('#leagueHiddenId').val(leagueId);
        		$('#affilatedBoardId').val($(elem).text());
        		$('#boardAutoCompleteListIdToAffiliate').hide();	
        }
        
        
        
        function affiliateRoster(rosterId,leagueHiddenId){
        	
        	var leagueId=$('#leagueHiddenId').val();
        	console.log("leagueId"+leagueId);
        	if(leagueId != null && leagueId !=""){
        		
        		   $.ajax({
						type : "GET",
						url : ctx+"/affiliateRoster",
						dataType: "json",
			        	contentType: "application/json; charset=utf-8",
			        	data : {
			        		rosterId:rosterId,
			        		leagueId:leagueId
			        	},
						success : function(res) {
							console.log(res);	
							
							if(res!=null){
								if(res.requestStatus == 0){
									var results=res.results;
									if(results != null){
										
										$('#affilateBlockId').hide();
										$('#affButtonId').hide();
										
										var leagueName=$('#affilatedBoardId').val();
										
										$('#affilatedLeagueId').text(leagueName);
										$('#affilatedLeagueId').css("display", "inline-block");
										
										showNotification("Your roster has been affiliated success fully",1000);
									}else{
										showNotification("Service has been interupted due to some reasons",1000);
									}
									
								}else{
									showNotification("Service has been interupted due to some reasons",1000);							}
							}else{
								showNotification("Service has been interupted due to some reasons",1000);						}
						},error:function(res){
							showNotification("Service has been interupted due to some reasons",1000);
						}
			    });	
        		
        	}else{
        		console.log("Please choose any league to affiliate");
        	}
        	
        }
        
        
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
    					feedImagesArray.splice(i,1);
    				}
    			}
    			
    		}
    		
    		
    		
    		
    	}
       
   </script>            
    
    <script type="text/javascript">
   function getPDF(){
	   //alert('getPDF function ');
	   
	   var doc = new jsPDF('p', 'pt','a4');
	    doc.setProperties({
	    	title: 'Cricket Socio',
	    	subject: 'Buddy Score Card',
	    	author: 'Vignesh Ranganathan',
	    	keywords: 'Batting, Bowling',
	    	creator: 'Cricket Social'
	    	
	    });
	    
 /* var date=new Date();
 var dateformat=date.getMonth()+"-"+date.getDate()+"-"+date.getFullYear(); */
 var teamname="${Rosterprint.teamBoardName}";
 var dateformat="${PrintDate}";
 var Rostername="${RoasterResponseById.rosterDetails.rosterName}";
 var Affliatedto="${RoasterResponseById.rosterDetails.leagueBoardDto.boardName}";
 var RosterCreateddate="${RosterCreatedDate}";
	    // for date
	    doc.setFontSize(10);
	    doc.setFontType("normal");
	    doc.setTextColor(0,0,0);
	    doc.text(485,10,"Printed On ");
	    doc.text(535,10,": "+dateformat);
	    
	    
	    //Header
	    
	    doc.setFontSize(20);
    doc.setFont("helvetica");
    doc.setFontType("bold");
    doc.setTextColor(50,83,168);
    doc.text(220,30,"Roster Details");
	    
	    //Roster name ,affliatedto,creatreddate
	    
	    doc.setFontSize(12);
	    doc.setFontType("normal");
	    doc.setTextColor(0,0,0);
	    doc.text(10,70,"Team Name ");
	    doc.text(110,70,": "+teamname);
	    doc.text(10,100,"Roster Name ");
	    doc.text(110,100,": "+Rostername);
	    doc.text(10,130,"Roster Affiliated to  ");
	   doc.text(110,130,": "+Affliatedto);
	    /* doc.text(10,160,"Roster Created Date  "); */
	    doc.text(10,160,"Roster Creation Date  ");
	    doc.text(110,160,": "+RosterCreateddate);
	   
	   
	   // Roster Information
	   
	   doc.setFontSize(16);
 			    doc.setFont("helvetica");
 			    doc.setFontType("bold");
 			    doc.setTextColor(50,83,168);
 			    doc.text(10,205,"Roster Information");
 			    doc.setTextColor(0,0,0);
	   
 			   var columns = [
                   {title: "S.No", dataKey: "serialno"},
                   {title: "First Name", dataKey: "firstName"},
                   {title: "Last Name", dataKey: "lastName"},
                   {title: "Profile Created On", dataKey: "accountCreateddate"},
                   {title: "Profile Added to Roster On", dataKey: "addedrosterdate"}
               ];
 			   
 			   
 			  console.log(rosterrowObj);
 			    var yHeight=205;
 			 			if(rosterrowObj.length>0)
 			 				{
 			 					
 			 					  doc.autoTable(columns,rosterrowObj, {
 			 		 			        theme: 'grid',
 			 		 			        startY: parseInt(yHeight)+parseInt(20),
 			 		 			        margin: {horizontal: 10},
 			 		 			        styles: {overflow: 'linebreak'},
 			 		 			        bodyStyles: {valign: 'top'},
 			 		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
 			 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
 			 		 			        headerStyles: {fillColor: [99, 184, 255]}
 			 		 			    });
 			 					
 			 				
 			 					  
 			 					  if(rosterrowObj.length<3)
 			 						  {
 										    yHeight=parseInt(rosterrowObj.length)*100+yHeight;
 			 						  }else if(rosterrowObj.length>=3)
 			 							  {
 			 							 	yHeight=parseInt(rosterrowObj.length)*50+yHeight;
 			 							  }
 			 					  
 			 					
 			 				}
 			   
 			   
 			   
	    
	    /* 
	    
	    doc.setDrawColor(8, 110, 194);
	    doc.setFillColor(76, 159, 225);
	    doc.rect(340, 85, 60, 40, 'F');
	    doc.setDrawColor(0,116,110);
	    doc.setFillColor(1,155,145);
	    doc.rect(420, 85, 60, 40, 'F');
	    doc.setDrawColor(165,14,21);
	    doc.setFillColor(215,30,38);
	    doc.rect(500, 85, 60, 40, 'F');
	    doc.setFontSize(16);
	    doc.setFontType("normal");
	    doc.text(343,140,"Matches");
	    doc.text(423,140,"Runs");
	    doc.text(503,140,"Wickets");
	    
	    doc.setFontSize(16);
	    doc.setTextColor(255,255,255);
	    doc.setFontType("bold");
	    doc.text(355,110,"${UserMatchInfo.playedMatches}");
	    doc.text(435,110,"${UserMatchInfo.totalMadeRuns}");
	    doc.text(515,110,"${UserMatchInfo.totalWicketTaken}"); */
 
	    
	    
	    
/* 	 doc.setFontSize(20);
    doc.setFont("helvetica");
    doc.setFontType("bold");
    doc.setTextColor(50,83,168);
    doc.text(10,30,"${UserInfo.firstName} ${UserInfo.lastName}");
    doc.setFontSize(18);
    doc.setFontType("normal");
    doc.setTextColor(0,0,0);
    doc.text(30,70,"Role ");
    doc.text(125,70,": "+roleinfotopdf);
    doc.text(30,100,"Bats  ");
    doc.text(125,100,": ${SelectedPlayersInfo.player1.battingInfo}");
    doc.text(30,130,"Bowls  ");
    doc.text(125,130,": ${SelectedPlayersInfo.player1.bowlingInfo}");
    doc.text(30,160,"Country  ");
    doc.text(125,160,": ${UserInfo.country}");
    doc.setDrawColor(8, 110, 194);
    doc.setFillColor(76, 159, 225);
    doc.rect(340, 85, 60, 40, 'F');
    doc.setDrawColor(0,116,110);
    doc.setFillColor(1,155,145);
    doc.rect(420, 85, 60, 40, 'F');
    doc.setDrawColor(165,14,21);
    doc.setFillColor(215,30,38);
    doc.rect(500, 85, 60, 40, 'F');
    doc.setFontSize(16);
    doc.setFontType("normal");
    doc.text(343,140,"Matches");
    doc.text(423,140,"Runs");
    doc.text(503,140,"Wickets");
    
    doc.setFontSize(16);
    doc.setTextColor(255,255,255);
    doc.setFontType("bold");
    doc.text(355,110,"${UserMatchInfo.playedMatches}");
    doc.text(435,110,"${UserMatchInfo.totalMadeRuns}");
    doc.text(515,110,"${UserMatchInfo.totalWicketTaken}");
    

    
	    
    var columns = [
                   {title: "Date", dataKey: "gamedate"},
                   {title: "TROPHY", dataKey: "tournamentName"},
                   {title: "LEAGUE", dataKey: "leagueBoardName"},
                   {title: "POS", dataKey: "positionOfStand"},
                   {title: "RUNS", dataKey: "runs"},
                   {title: "4s", dataKey: "fours"},
                   {title: "6s", dataKey: "sixs"},
                   {title: "DISMISS TYPE", dataKey: "dismissType"},
                   {title: "SR", dataKey: "strikeRate"}				 			  
               ];
    
    var columns2 = [
                    {title: "Date", dataKey: "gameDate"},
                    {title: "TROPHY", dataKey: "tournamentName"},
                    {title: "LEAGUE", dataKey: "leagueBoardName"},
                    {title: "OVERS", dataKey: "bowlerovers"},
                    {title: "MAIDENS", dataKey: "maidenOvers"},
                    {title: "RUNS", dataKey: "bowlingruns"},
                    {title: "WICKETS", dataKey: "wickets"},
                    {title: "SR", dataKey: "strikeRate"}
                   		 			  
                ];
    
    
    console.log(battingrowObj);
    var yHeight=200;
 			if(battingrowObj.length>0)
 				{
 					
 			    doc.setFontSize(20);
 			    doc.setFont("helvetica");
 			    doc.setFontType("bold");
 			    doc.setTextColor(50,83,168);
 			    doc.text(10,yHeight,"Batting Performance");
 			    doc.setTextColor(0,0,0);
 					
 					
 					  doc.autoTable(columns,battingrowObj, {
 		 			        theme: 'grid',
 		 			        startY: parseInt(yHeight)+parseInt(20),
 		 			        margin: {horizontal: 10},
 		 			        styles: {overflow: 'linebreak'},
 		 			        bodyStyles: {valign: 'top'},
 		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
 		 			        headerStyles: {fillColor: [99, 184, 255]}
 		 			    });
 					
 				
 					  
 					  if(battingrowObj.length<3)
 						  {
							    yHeight=parseInt(battingrowObj.length)*100+yHeight;
 						  }else if(battingrowObj.length>=3)
 							  {
 							 	yHeight=parseInt(battingrowObj.length)*50+yHeight;
 							  }
 					  
 					
 				}
 				
 			 var yHeight2=100;
 			if(bowingrowObj.length>0)
				{
 				if(yHeight > 200)
					{
					
						if(battingrowObj.length<=4)
							{
								yHeight2=yHeight;
							}else{
								doc.addPage();
							}
					}else{
						yHeight2=yHeight;
					}
			    doc.setFontSize(20);
			    doc.setFont("helvetica");
			    doc.setFontType("bold");
			    doc.setTextColor(50,83,168);
			    doc.text(10,yHeight2,"Bowling Performance");
			    doc.setTextColor(0,0,0);
					
					
					  doc.autoTable(columns2,bowingrowObj, {
		 			        theme: 'grid',
		 			        startY: parseInt(yHeight2)+parseInt(30),
		 			        margin: {horizontal: 10},
		 			        styles: {overflow: 'linebreak'},
		 			        bodyStyles: {valign: 'top'},
		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
		 			        columnStyles: {email: {columnWidth: 'wrap'}},
		 			        headerStyles: {fillColor: [99, 184, 255]}
		 			    });
					  if(bowingrowObj.length<5)
						  {
						  	  yHeight2=parseInt(bowingrowObj.length)*50+yHeight2;
						  }else{
							  yHeight2=parseInt(bowingrowObj.length)*35+yHeight2;	  
						  }
					  
				} */
 					 
 					
		
	    doc.save('${RoasterResponseById.rosterDetails.rosterName}.pdf');
   }
   
   </script>

</body>

</html>
