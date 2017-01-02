<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
    
    <script src="${pageContext.request.contextPath }/js/jspdf.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jspdf.plugin.autotable.js"></script>

   <script type="text/javascript">
var pageNum=10;
var rosterrowObj=[];
</script> 

</head>

<body>
<div id="RoasterPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        <div id="RoasterPopupText">
        <p id="RoasterPopupText">Sorry! below players already playing in UnitedStates and details are.</p>
        <ol type="number" class="roa-ol">
        	<!-- <li><span>Name</span><span>-</span><span>QWERWER</span></li>
        	<li><span>Name</span><span>-</span><span>QWERWER</span></li>
        	<li><span>Name</span><span>-</span><span>QWERWER</span></li> -->
        </ol>
        </div>
      </div>
      <div class="modal-footer action">
      <button type="button" onclick="RoasterPopup()" class="btn btn-default ok">OK</button>
       </div>
    </div>

  </div>
</div>  
 
 <!-- <div id="RoasterPopup" class="popupDiv" >

           <div class="box modal" style="width:400px;">
                
           		 <span class="head"></span> 
                
                <span class="close_btn" > <i class="fa fa-close"></i> </span>
                
                	<div class="popupContentDiv">
                	<p style="text-align:center;" id="RoasterPopupText">
                	
                	UnAuthorised user to access dashboard!
                	
                	</p>
                	<div class="centBtn">
                     <input type="button" class="btn btn-primary btn-sm"  style="margin-left:16px; margin-top:20px;" onclick="RoasterPopup()" value="OK">
                      </div>
                   
                </div>
            </div>
 
 	</div>   -->
<div class="notification" id="notificationPopupDiv" style="display:none;">
	<span class="insideBlock noti_arrow" id="notificationPopupMessageDIV">Please login to add product to list</span>
</div>


<!--File Upload-->
	


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
    
    <div id="rosterDeletePaupDIV" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Message</span>
              <div onclick="deleteRosterPOup()"> <span class="close_btn" > <i class="fa fa-close" ></i> </span></div>

               <div class="popupContentDiv">
					<b>Confirm to delete roster</b><br> 
                    <input type="hidden" id="deleteRosterID" value="" name="deleteRosterID">
                    <div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="conformDeleteRoster()">Ok</button></div>
                                       
               </div>
           </div>

        </div>
    <script type="text/javascript">
    
    function deleteRosterPOup(){
    	$('#rosterDeletePaupDIV').hide();
    }
    
    function conformDeleteRoster(){
     
    	var id=$('#deleteRosterID').val();
    	
    	if(id!=null){
    		var url="${pageContext.request.contextPath}/deleteRoster?rosterId="+id+"&bid=${BoradInfo.boardId}";
    		window.location.href=url;
    		
    	}
    	
    }
    
    function deleteRosterPoupShow(id){
    	$('#deleteRosterID').val(id);
    	$('#rosterDeletePaupDIV').show();
    }
    </script>
    
	<%@ include file="BoardHeader.jsp" %>
	
   
    
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
        
    	<img src="images/innerBanner.png">
        
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                <c:choose>
                <c:when test="${empty RoasterResponseById }">
                	
                <div class="col-md-10 pull-right rosterBlock">
                 <div class="col-md-12 whiteBox">
                 	No Rosters are available.
                 </div>
                 </div>
                 
                 	  <div class="col-md-10 pull-right rosterBlock">
                 <div class="col-md-12 whiteBox">
          			
          			
          			
		          <h1 class="noBorder">Roster <a href="createRoaster?bid=${BoradInfo.boardId}" class="btn btn-default dBtn pull-right">Create Roster</a>
                           
                  </h1>
                  </div>
                  </div>
                	
                     <%@ include file="BoardSideMenu.jsp" %>
                     
                     
                     
                </c:when>
                <c:otherwise>
                	<div class="col-md-10 pull-right rosterBlock">
                 <div class="col-md-12 whiteBox">
          			
          			
          			
		          <h1 class="noBorder">Roster <a href="createRoaster?bid=${BoradInfo.boardId}" class="btn btn-default dBtn pull-right">Create Roster</a>
                  			
                            <div class="h1Sbox">
                                <div class="selectdiv pull-right">
                                    <select class="selectboxdiv" onchange="getRosterDetails(this.value)">
                                    <option value="">Select Roster</option>
                                         <c:forEach var="Roster" items="${Roasters}" >
                                    		<option value="${Roster.rosterId}">${Roster.rosterName}</option>
                                   		 </c:forEach>
                                        
                                    </select>
                                    <div class="out">Select Roster</div>    
                                </div>
                                </div>
                             
                  </h1>
                  </div>
                  </div>
                  
                  
                  <div class="col-md-10 pull-right rosterBlock">
                  <div class="col-md-12 whiteBox rosterDetail">
                        	<div class="media">
                               <c:choose>
                                         	<c:when test="${RoasterResponseById.rosterDetails.checkAffiliatedFlag}"> 
                                         	 <div class="media-left">
                                   					 <a href="${pageContext.request.contextPath}/${RoasterResponseById.rosterDetails.leagueBoardDto.boardName}/board/${RoasterResponseById.rosterDetails.leagueBoardDto.boardId}"><img src="${RoasterResponseById.rosterDetails.leagueBoardDto.boardImgURL}"  onerror="imgError(this)"></a>
                              				  </div> 
                                         	 </c:when>
                                         	<c:otherwise>
                                         		
                                         		  
                                         	</c:otherwise>
                                         </c:choose> 
                    				  <div class="media-body">
                                        <h4 class="media-heading">${RoasterResponseById.rosterDetails.rosterName}</h4>
                                         <span class="Affiliated">Affiliated to: 
                                         
                                          <c:choose>
                                         	<c:when test="${RoasterResponseById.rosterDetails.checkAffiliatedFlag}"> 
                                         		<a href="${pageContext.request.contextPath}/${RoasterResponseById.rosterDetails.leagueBoardDto.boardName}/board/${RoasterResponseById.rosterDetails.leagueBoardDto.boardId}"><span class="badge" id="affilatedLeagueId">${RoasterResponseById.rosterDetails.leagueBoardDto.boardName} </span></a> 
                                         	 </c:when>
                                         	<c:otherwise>
                                         		 <span class="badge" id="affilatedLeagueId" style="display:none;"> </span>
                                         		  <span class="Affi_tbox" id="affilateBlockId" style="display:inline-block;">
                                         			<input class="form-control affTbox" type="text" id="affilatedBoardId" name="affilatedBoard" style="color:black;" onkeyup="getBoardForAutoComplete('boardAutoCompleteListIdToAffiliate','League',this)"> 
                                         	 		<div class="autoComplete rosterAC" id="boardAutoCompleteListIdToAffiliate">
                                         			</div> 
                                         	 		<input type="hidden" id="leagueHiddenId" />
                                         	 		
                                        		 </span>
                                        		<!--  <div class="clearfix"></div> -->
                                        		 <a  href="#" onclick="affiliateRoster('${RoasterResponseById.rosterDetails.rosterId}','leagueHiddenId')" id="affButtonId"> Affiliate </a>
                                        		 
                                         	</c:otherwise>
                                         </c:choose> 
                                         
                                         
                                       </span>
                                         
										 
                                         
                                       <%--   <a href="deleteRoster?rosterId=${RoasterResponseById.rosterDetails.rosterId}&bid=${BoradInfo.boardId}" class="btn btn-default btn-sm  dBtn pull-right ">Delete Roster</a> --%>
                                       <c:if test="${!RoasterResponseById.rosterDetails.checkAffiliatedFlag}">
                                       <a id="Deleterosteroption" href="javascript:" onclick="deleteRosterPoupShow('${RoasterResponseById.rosterDetails.rosterId}')" class="btn btn-default btn-sm  dBtn pull-right ">Delete Roster</a>
                                       </c:if>
                                                                         
                                         <a href="${pageContext.request.contextPath}/editRoster?rid=${RoasterResponseById.rosterDetails.rosterId}" class="btn btn-default btn-sm  dBtn pull-right ">Edit Roster</a>                                
                                         <a href="${pageContext.request.contextPath}/rosterMedia/${RoasterResponseById.rosterDetails.rosterId}/${BoradInfo.boardId}" class="btn btn-default btn-sm  dBtn pull-right ">Upload Files</a>                                
                                      </div>
                            	</div>
                        </div>
                  </div>
                 	
          		
                     <%@ include file="BoardSideMenu.jsp" %>
                
                    

                    <div class="col-md-7 pageMiddleBlock">
                     	
                        <div class="col-md-12 membersBlock whiteBox">
                            
                            <h2>
                            
                            <b>Members</b>
                            <a style="margin-top: -5px;" class="pull-right" href="javascript:getPDF()"><img style="width: 30px; height: 25px;" src='${pageContext.request.contextPath}/images/Pdfdownload.png'></a>
                            <!-- <a href="#" class="pull-right">View All</a> -->
                        	</h2>
                            
                            <div class="col-md-12 noPadding">
                            
                            
                            <%--  <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers }"> --%>
                            <c:forEach var="rosterMember" items="${RoasterMemberList.rosterMembers}">
                           		<a href="${pageContext.request.contextPath}/buddy/${rosterMember.userProfile.firstName}/${rosterMember.userId}">
                           		<div class="col-md-4 membs">
                           		
                            		<img src="${rosterMember.userProfile.userImageUrl }" title="${rosterMember.userProfile.firstName}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" /><br/>
                            		
                                    <b>${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</b><br>
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
                                           							<td>
                                           							
                                           								${batting.firstName} ${batting.lastName}
                                           								</td>
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
                                    </div>
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
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                    <h4 class="panel-title" >
                                       Bowling Performances <i class="fa fa-chevron-down"></i> </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       	
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
                            
                            <b>Photos</b>
                            <a href="${pageContext.request.contextPath}/rosterMedia/${RoasterResponseById.rosterDetails.rosterId}/${BoradInfo.boardId}" class="pull-right">View All</a>
                        	</h2>
                            <c:choose>
                            	<%-- <c:when test="${!empty RoasterImageList || !empty RoasterVideosList}"> --%>
                            	<c:when test="${!empty RoasterImageList}">
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
			                            			<c:when test="${not empty RoasterImageList}">
			                            				<div class="col-md-12 noPadding">
			                            					<img src="${RoasterImageList[1].attachmentUrl}">
			                                  			 	 <span></span>
			                             			   </div>
			                             			  
			                            			</c:when>
			                            			<c:otherwise>
			                            					<div style="color: red;"></div>
			                            			</c:otherwise>
			                            	
			                            	</c:choose>
                            	
                            		 </div>
                            		 <div class="col-md-6 noRightPad" style="display: none;">  
                               
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
                            		       <div style="color: red;">No images are there</div>
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
                            
                            
                            
                            
                      <form  name="postfrom" id="rosterFeedPostfrom" action="postFeed" onsubmit="return feedValidation()">
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                            <b>Status update</b>
                            <!-- <a href="#" id="upload_link" class="pull-right"><i class="fa fa-picture-o"></i> Add Video/ Photos</a> -->
                            <a href="#" class="pull-right" id="upload_link" title="Please upload below 2 MB file"><i class="fa fa-picture-o" ></i> Add photos</a>
                        	
                        	<div id="fileDiv">
                           	 <input id="upload0" type="file" style="visibility: hidden;" name="file" onchange="readURL(this)" />
                            </div>
                        	
                        	
                            <div class="postBlock">
                            	<img src="${USRIMG}?" class="nav-avatar" onerror="userErrorDefaultImg(this)" >
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>
								<div class="clearfix"></div>
								<input type="hidden" value="${RoasterResponseById.rosterDetails.rosterId}" name="rosterId" id="rosterId">
								<input type="hidden" value="${BoradInfo.boardId }" name="rosterBoardId" id="rosterBoardId" >
								 <div class="uploadedFiles">
                                     
                                </div>
								
								    <a href="#" class=""><button type="submit" class="pull-right btn blueBtn" onclick="showloader();">BOWL</button></a>
								                     
                            </div>
                            
                        </div>
                        </form>
                            
                   
                         <div id="postedresult">
       
                      </div>
                       
                        <div class="col-md-12 feedBlock whiteBox" id="feedMainDIV">
                        
                        	 <c:choose>
                             	<c:when test="${empty RoasterResponseById.feedsList}">
                             		<div class="media" id="NoFeedMsgDIV">
                        	 			Currently there are no feeds available in your pitch
                        			 </div>
                             	</c:when>
                             	<c:otherwise>
	                              <c:forEach var="feed" items="${RoasterResponseById.feedsList}" varStatus="index">
	                              	<div class="media feedDiv${feed.feedId}">
	                                  <div class="media-left">
	                                    <a href="#">
	                                      <img src="${feed.userImageurl }" class="nav-avatar" onerror="userErrorDefaultImg(this)">
	                                    </a>
	                                  </div>
	
	                                  <div class="media-body">
	                                    <h4 class="media-heading">${feed.postedByName}</h4>
		                                    <div class="headRight">
		                                    	<%-- <span id="HitCountDIv${feed.feedId}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</span><span id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</span> --%>
		                                    	<c:choose>
		                                    		<c:when test="${feed.postedBy eq USRID}">
		                                    			<p class="trash-holder" onclick="feedDelete('${feed.feedId}')" title="Delete"><i class="fa fa-trash trash"></i> </p>
		                                    		</c:when>
		                                    		<c:otherwise>
		                                    			<p class="trash-holder" onclick="feedSpam('${feed.feedId}')" title="Report spam"><i class="fa fa-ban"></i> </p>
		                                    		</c:otherwise>
		                                    	</c:choose>
		                                    	<p id="commentCount${feed.feedId}" onclick="getAllComments('${feed.feedId}')"><i class="fa fa-commenting-o"></i>${feed.feedCommentCount}</p> <p id="HitCountDIv${index.count}"><img src="images/hitIcon1.png" width="18" class="hitIcon1" >${feed.feedHitCount}</p>
		                                    </div>
	                                    <span class="postTime">
		                                    <script type="text/javascript">
		                                    
		                                    //document.write(feedDuration("<fmt:formatDate  type='both'  value='${feed.modifiedDate}'/>"));
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
                        <input type="hidden" value="${pageContext.request.contextPath}" id="projectURL" name="projectURL">
                        


                      </div>

                     <!--Right Block-->
                     	
                	
                
                </c:otherwise>
               </c:choose>   
                 
                      <%@ include file="EventSideMenu.jsp" %>
                     <!--/Right Block End-->

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    
    
    
    

<script src="${pageContext.request.contextPath}/js/cricketSocial/rosterFeeds.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/feedFunction.js"></script>

 	<!--Select Box-->
	<script>
	 $('#loading').hide();
	
	/* $(document).ready(function(){ */
		
	/* }); */
	function getRosterDetails(rosterId){
		var boardId=$('#rosterBoardId').val();
		window.location.href="rosterDetails?rosterId="+rosterId+"&bId="+boardId+"";
		
	}
	
	var feedImagesArray=[];

	function readURL(input) {
		
	    if (input.files) {
	    	var fileTextBoxLength=$('input:file').length;
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	var result=e.target.result;
	        	
	        	var fileSize = (e.total)/1024/1024;
        		////alert(fileSize);
        		if(fileSize<=2.1)
        		{
        			console.log('soruce filed---> '+result);
    	        	var bytes=result.substring(result.indexOf(',')+1,result.length);
    	            var imageType=result.substring(result.indexOf('data:')+5,result.indexOf('/'));
    	            
    	            if(imageType=='image'){
    	            	

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
        			displaynotification('Please upload below 2 MB file',2000);
        		}
	        	
	        };
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
function readURL2(input) {
		
	    if (input.files) {
	    	var fileTextBoxLength=$('input:file').length;
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	var result=e.target.result;
	        	console.log('soruce filed---> '+result);
	        	var bytes=result.substring(result.indexOf(',')+1,result.length);
	            var imageType=result.substring(result.indexOf('data:')+5,result.indexOf('/'));
	            
	            
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
					feedImagesArray.splice(i,1);
					displaynotification('File removed',2000);
				}
			}
			
		}
		
		
		
		
	}
	
    </script>

	  
<script>
        $(document).ready(function () {
        	
        	$("#upload_link").on('click', function(e){
        		e.preventDefault();
        		var fileTextBoxLength=$('input:file').length;
        		fileTextBoxLength=fileTextBoxLength-1;
        		$("#upload"+fileTextBoxLength).trigger('click');
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
<!--Accordion Arrow-->
<%-- <script src="${pageContext.request.contextPath}/cricketSocial/commentfunctions.js"></script> --%>

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
        											
        											html+="<li  onclick=setValueToTextBox(this,'"+boardProfileList[i].boardId+"')><img src='"+boardProfileList[i].boardImageURL+"' height='30px' width='30px' onerror=imgError(this)/> "+boardProfileList[i].boardName+"</li>";
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
        	var boardid=$('#rosterBoardId').val();
        	console.log("leagueId"+leagueId);
        	var teamname=$('#affilatedBoardId').val();
        	if(leagueId != null && leagueId !=""){
        		
        		   $.ajax({
						type : "GET",
						url : ctx+"/affiliateRoster",
						dataType: "json",
			        	contentType: "application/json; charset=utf-8",
			        	data : {
			        		rosterId:rosterId,
			        		leagueId:leagueId,
			        		boardId : boardid
			        	},
						success : function(res) {
							console.log(res);	
							
							if(res!=null){
								if(res.requestStatus == 0){
									var results=res.results;
									if(results != null){
										console.log(results.statusMsg);
										if(results.statusMsg == "success"){
											
											$('#affilateBlockId').hide();
											$('#affButtonId').hide();
											
											var leagueName=$('#affilatedBoardId').val();
											
											$('#affilatedLeagueId').text(leagueName);
											$('#affilatedLeagueId').css("display", "inline-block");
											
											displaynotification("Your roster has been affiliated success fully",1000);
											
											$('#Deleterosteroption').hide();
											
										}else{
										var playerrestrictionobj=results.playesrRestriction;
										var playerrestriction=playerrestrictionobj.restrictedPlayers;
										var name="";
										for(var i=0;i<playerrestriction.length;i++)
											{
											name+="<li><span>"+playerrestriction[i].username+"</span><span>-</span><span>"+playerrestriction[i].boardName+"</span></li>";
											/* if(i==0)
												{
												name=playerrestriction[i].username+" "+playerrestriction[i].boardName;
												}else{name+=" , "+playerrestriction[i].username+" "+playerrestriction[i].boardName;} */
											}
										console.log(name);
										if(playerrestriction.length !=0){
											//displaynotification("Sorry! "+name+" has already been playing in a team for "+teamname ,3000); 
											/* var name1="Sorry! following players already playing in "+teamname+" for following team "+name;
											$("#RoasterPopupText").text(name1); */
											var html="";
											html+="<p>Sorry! below players already playing in "+teamname+" and the details are.</p>";
											html+="<ol type='number' class='roa-ol'>"+name+"</ol>";
											$("#RoasterPopupText").html(html).trigger('create');
											$("#RoasterPopup").show();
										}else{
										$('#affilateBlockId').hide();
										$('#affButtonId').hide();
										
										var leagueName=$('#affilatedBoardId').val();
										
										$('#affilatedLeagueId').text(leagueName);
										$('#affilatedLeagueId').css("display", "inline-block");
										
										displaynotification("Your roster has been affiliated success fully",1000);
										$('#Deleterosteroption').hide();
										}
									}
										
									}else{
										displaynotification("Service has been interupted due to some reasons",1000);
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
        		displaynotification("Please choose any league to affiliate",2000);
        	}
        	
        }
        
        
        function rosterDeleteFun(){
        	$('#rosterDeletePaupDIV').hide();
        }
        
        function RoasterPopup()
        {
        	$("#RoasterPopup").hide();
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
 			   
 			   
 			   
	    
		
	    doc.save('${RoasterResponseById.rosterDetails.rosterName}.pdf');
   }
   
   </script>

</body>

</html>
