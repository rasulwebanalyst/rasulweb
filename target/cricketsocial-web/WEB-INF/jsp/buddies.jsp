<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />

<!--Font-Awesome Icons-->
<link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>

<script>var ctx="${pageContext.request.contextPath}";</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script>
    var emailIDSArr=[];
    function validateMail(mail){
    	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))){
    		
			return false;
		}else{
			return true;
		}
    }
    
    
    function inviteYourBuddieByMail(mailArrayParam){
    	console.log(mailArrayParam);
    	var mail=$('#emailId').val();
    	var text=$('#invitationText').val();
    	var mailArray=new Array();
    	
		    if(mailArrayParam != null){
		    	 mailArray=mailArrayParam;
		    	 text="";
		    }else{
		    	mailArray.push(mail);
		    	
		    }
		    
		    
		    
		    
    	 var buddyInvitaion={
    			inviteeArray:emailIDSArr,
    			msgcontent:text
    	};
    	
    	console.log("myarray ==============="+JSON.stringify(buddyInvitaion));
    	 
    	if((!emailIDSArr.length)){
    		
    		/* if(!validateMail(mail) && mailArrayParam == null){
    			alert("Please enter valid email to continue");
    			return false;
    		} */
    		$('#gmailPopupDiv').hide();

			hidingEmailValidation();
    		$.ajax({
				type : "POST",
				url :"${pageContext.request.contextPath}/inviteBuddyByMail",
				dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data:JSON.stringify(buddyInvitaion),
				success : function(res) {
					alert("You have successfully invited your buddy");
					showNotification("You have successfully invited your buddy",3000);
					hide_notificationpoup(3000);

					$('#emailId').val('');
					$('#invitationText').val('');
					$(".emailIds").html("").trigger("create");
				},
				error:function(response){
				console.log("Error message"+JSON.stringify(response));
				},
			
			});  

    		
    		
    	}else{
    		showNotification("Please enter any of your buddy mail to invite",3000);
			hide_notificationpoup(3000);
    		//alert("Please enter any of your budie mail to invite");
    	}
    	
    }
    
    function addingEmailID(){
    	var textValue=$("#emailId").val();
    	if(textValue.indexOf(",")!=-1){
    		if(validateMail(textValue.replace(/,/,""))){
    		if(emailIDSArr.indexOf(textValue.replace(/,/,""))!=-1){
    			showNotification("Email is already in list",3000);
    			hide_notificationpoup(3000);
    			$("#emailId").val("");
    			return false;
    		}
    		emailIDSArr.push(textValue.replace(/,/,""));
    		var htmlContent="";
    		for(var i=0;i<emailIDSArr.length;i++){
    			htmlContent+="<span class='emailID' id="+i+"emailID>"+emailIDSArr[i]+" <span onclick='removeEmailIDFromArray("+i+")' style='cursor: pointer;'>X</span></span>";
    		}
    		$("#emailId").val("");
    		hidingEmailValidation();
    		$(".emailIds").html(htmlContent).trigger("create");
    		}else{
    			showNotification("Please enter the valid E-mail to continue",3000);
				hide_notificationpoup(3000);
    		}
    	}
    	
    };
    function removeEmailIDFromArray(index){
    	emailIDSArr.splice(index,1);
    	$("#"+index+"emailID").remove();
    };
    function hidingEmailValidation(){
    	$("#emailIDValidation").hide();
    }
    function clearEmail(){
    	emailIDSArr=[];
		$(".emailIds").html("").trigger("create");
    }
    </script>
   
    
</head>
<body>
 <%@ include file="CSCommon.jsp" %>

<div class="gmailPopupDiv" id="gmailPopupDiv" style="display: none;">
           <div class="box">
           		<span class="head">Gmail Contacts</span>
                <span class="close_btn" onclick="$('#gmailPopupDiv').hide()"> <i class="fa fa-close"></i> </span>

				<div class="popupContentDiv">
                	
                    <div class="fs-pup">
                          <div class="toptxt"><span id="noOfContactsId">726</span> Contacts Imported</div>
                          
                          <div class="selall">
                            <p>
                              <input type="checkbox" name="" id="selectAllId"  value="" onclick="checkAllGmailContascts(this)">
                              select all</p>
                          </div>
                          
                          <div class="mailids" id="mailidsId">
                           <!--  <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p>
                            <p>
                              <input type="checkbox" name="" id="" checked="" value="">
                              Friends.nma@gmail.com
                            </p> -->
                           </div>
                          
                          
                         <div class="popbut">
                          <a href="#" onclick="inviteYourBuddieByMailFromContacts()">Import</a>
                      </div>
                        </div>
                    
                </div>
                
            </div>
 	</div>









<%@ include file="BuddyHeader.jsp" %>

<!-- <div class="profileBanner"> <img src="images/innerBanner.png"> </div> -->
   <%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
      
        
                                <%@ include file="BuddySideMenu.jsp" %>
        
      
      
     <div class="col-md-7 pageMiddleBlock">
      		<div class="col-md-12 whiteBox mybuddyBlock">
          
		          <h1 class="">My Buddies</h1>
          	
                        
                    <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#BuddyList" aria-controls="home" role="tab" data-toggle="tab" id="BuddyListHref">Buddy List</a></li>
                        <li role="presentation"><a href="#BuddyRequest" aria-controls="profile" role="tab" data-toggle="tab" id="BuddyRequestsHref">Buddy Request</a></li>
                        <li role="presentation"><a href="#InvitetoCricketSocial" onclick="hidingEmailValidation()" aria-controls="profile" role="tab" data-toggle="tab">Invite your cricket buddies</a></li>
                        <li role="presentation"><a href="#SearchBuddy" aria-controls="profile" role="tab" data-toggle="tab" onclick="searchClean()">Search Buddy</a></li>
                      </ul>
                    
                      <!-- Tab panes -->
                      <div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active" id="BuddyList">
                            <div class="col-md-12 noPadding" id="buddyListId">
                            
                        <c:choose>
                        	<c:when test="${empty Buddies}">
                        		<div class="media">
                        			<b>You have no buddies here find search and make buddies.</b>
                        		</div>
                        	</c:when>
                        	<c:otherwise>
                        		<c:forEach var="Buddy" items="${Buddies}" >
                            	<div class="media" id="buddies${Buddy.userId}">
                                <div class="media-left buddyImg">
                                    <a href="${pageContext.request.contextPath}/buddy/${Buddy.firstName}/${Buddy.userId}"><img src="${Buddy.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';"></a>
                                </div>
                    				  <div class="media-body">
                                        <h4 class="media-heading"><a href="${pageContext.request.contextPath}/buddy/${Buddy.firstName}/${Buddy.userId}">${Buddy.firstName} ${Buddy.lastName}</a></h4>
                                        <span class="date">${Buddy.city} </span>
<!--                                         <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn ">Get Notifications</button>
 -->                                         <a class="btn   btn-default btn-sm  btn-sm  blockBtn pull-right " onclick="buddyManupulations(33,'${Buddy.userId}')">Un Buddy</a>                                
                                      </div>
                            	</div>
                            </c:forEach>
                        	</c:otherwise>
                        </c:choose> 
                            
                            
                           <%--  <c:choose>
                        	<c:when test="${empty Buddies}">
                        	
                        	</c:when>
                        	<c:otherwise>
                        			 <div class="clear"></div>
                            <dir id="AllFanOfListDivPagination"><a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPagination(10,'buddyListId','AllFanOfListDivPagination')">Load more</a></dir>
                           
                        	</c:otherwise>
                        </c:choose>  --%>
                        
                       

                            
                            </div>
                          
                        </div>
                         <div id="AllFanOfListDivPagination">
                             <c:choose>
                         
                           	<c:when test="${userCount > 10}">
                          			 <div class="clear"></div>
                            <a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPagination(10,'buddyListId','AllFanOfListDivPagination')">Load more</a>
                           
                           	</c:when>
                           	
                           	<c:otherwise>
                           	
                           	</c:otherwise>
                           
                           </c:choose>
                           </div>
                            
                        
                         <div class="clear"></div>
                        
                            <div role="tabpanel" class="tab-pane" id="BuddyRequest">
                              
                        <div class="col-md-12 noPadding"  id="RequestsDiv">
                        		
							<%-- <c:forEach var="invitation" items="${Invitations}" >
                            	<div class="media" id="invitation${invitation. }">
                                <div class="media-left buddyImg">
                                    <img src="src="${invitation.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
                                </div>
                    				  <div class="media-body">
                                        <h4 class="media-heading">${invitation.firstName} ${invitation.lastName}</h4>
                                        <span class="date">${invitation.city}</span>
                                        <button type="submit" class="btn  btn-default btn-sm  dBtn" onclick="buddyManupulations(28,'${invitation.userId}')">Confirm Buddy</button>
                                         <button type="submit" class="btn  btn-default btn-sm  blockBtn" onclick="buddyManupulations(29,'${invitation.userId}')">Decline Request</button>
                                         <button style="display:none;" id="friend${invitation.userId}" class="btn  btn-default btn-sm  blockBtn" onclick="buddyManupulations(29,'${invitation.userId}')">Decline Request</button>
                                         
                                      </div>
                            	</div>
                              
                            </c:forEach> --%>
                            </div>
                              
                           <div class="clear"></div> 
                            <dir id="userRequestListDivPagination">
                            <!-- <a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPagination(10,'RequestsDiv','userRequestListDivPagination')">Load more</a> -->
                            </dir>
                        </div>
                        
                        
                        <div role="tabpanel" class="tab-pane" id="InvitetoCricketSocial">
                            <form action="" id="inviteForm">
                            <div class="col-md-12 noPadding">
                              
                              <p style="text-align:left">Please send invites only to people you know personally who will be glad to get them						
                              </p>
                              
                              <h2 style="padding-left:0px; " class="noBorder">Invite by email</h2>
                              
                              <div class="form-group col-md-12 noPadding">
                                    <input type="text" class="form-control" placeholder="Enter multiple email id separated by comma" onkeyup="addingEmailID()" id="emailId" name="emailId">
                                    <!-- <label for="invitationText" id="emailIDValidation" class="error" style="display:none">Please add atleast one E-mail.</label> -->
                              </div>
                             <div class="emailIds">
                             </div>
                              <div class="form-group col-md-12 noPadding">
                             
                              		<label>Write a personal Message</label>
                            		<textarea class="form-control textarea" rows="5" id="invitationText" placeholder="Content (Max 500 Characters)" name="invitationText"></textarea>
                          	</div>
                            <div class="form-group col-md-12 noPadding">
                             			<!--  <button type="submit" class="btn  btn-default btn-sm  dBtn " onclick="inviteYourBuddieByMail()">Send Invite</button> -->
                             			<!-- <button type="button" class="btn  btn-default btn-sm  blockBtn " onclick="invitSkip()">Skip</button> -->
                             			
                             			<button type="button" class="btn  btn-default btn-sm  dBtn " onclick="inviteValidationValidation()">Send Invite</button>
                             			 <button type="reset" class="btn  btn-default btn-sm  blockBtn "  onclick="clearEmail()">Clear</button>
                             			 
                             </div>
                            </div>  
                            </form>
                            
                            <div class="col-md-12 noPadding">
 								
                                <strong>OR</strong> Import contacts from <i class="fa fa-google-plus-square" onclick="getGmailContacts();"></i>
                                 
                                 <!-- <div class="importSocialContact socialBLock">
                                 	<i class="fa fa-google-plus-square" onclick="getGmailContacts();"></i>
                                    <i class="fa fa-facebook-square"></i>
                                    <i class="fa fa-envelope-square"></i>
                                    <i class="fa fa-linkedin-square"></i>
                                    <i class="fa fa-twitter-square"></i> 
                                    
                                 </div> -->
                                                    
                            </div>
                              
                            
                                
                            </div>
                           <div class="clear"></div>
                           
                           <div role="tabpanel" class="tab-pane" id="SearchBuddy">
                            <div class="col-md-12">
                           
                            <h2 style="padding-left:0px; " class="noBorder">Find Buddy from different parts of your life</h2>
							
                            <div class="SearchBuddyBlock">
                             <form  id="buddiesSearchform" name="buddiesSearchform" onsubmit="return searchBuddiesByCriteriaNew()">
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Name" id="nameId" name="buddyName"></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="Place of Living" id="searchPlaceLiving" name="searchPlaceLiving"></div> 
                    		  </div>
                              
                              
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="E-mail" id="searchemailId" name="searchemailId"></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="City" id="cityId" name="searchCity"></div> 
                    		  </div>
                              
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Cricket Team" id=""></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="Cricket League" id=""></div> 
                    		  </div>
                                
                                
                                <div class="Searchbtn centerbtns">
                                	<button type="submit"  class="btn  btn-default dBtn ">Search</button>
                                	<!-- <a href="javascript:searchBuddiesByCriteriaNew()" class="btn  btn-default dBtn ">Search</a> -->
                                 </div>
                                </form>
                                
                                </div>
                                <div id="buddySearchResultsId" style="display:none;">
                             
                              </div>
                            </div>
                           <div class="clear"></div>
                           
                           
                        </div> 
                           
                           
                           
                        </div>
                        
  
            
        </div>

                        
            
          	
          </div>    
      </div>
      
      
       <!--Right Block-->
        <%@ include file="AroundYouMenu.jsp" %>
                     <%-- 	<div class="col-md-3 pull-right noPadding">
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="#">Matches Around You</a></div>
                              
                              <c:choose>
	                             	<c:when test="${empty MatchesArroundYou}">
	                             		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
	                             			No Matches around you.
	                             		</div>
	                             	</c:when>
	                             	<c:otherwise>
		                              <c:forEach items="${MatchesArroundYou}" var="match">
		                              <c:set var="board" value="${match.boardProfList.toArray()[0]}"></c:set>
		                               <c:set var="board1" value="${match.boardProfList.toArray()[1]}"></c:set>
		                               
		                               <div class="sidebar-list">
	                              			${board.boardName} vs ${board1.boardName}<br> <strong>${match.gameDate}</strong>
	                                   		 <span class="teamLogos">
	                                			<img src="${board.boardImageURL }" class="teamLogo"> <b>VS</b> <img src="${board1.boardImageURL }" class="teamLogo">
	                                		</span>
	                             		 </div>
		                              		
		                              </c:forEach>
	                             	</c:otherwise>
	                             </c:choose> 
                              
                              
                             
                            </div>
                          </div>
                          
                          
                              <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"> <a href="${pageContext.request.contextPath}/LeaguesAroundYou">Leagues Around You</a></div>
                              
                              
                               <c:choose>
                             	<c:when test="${empty BRDAroundYou}">
                             		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No leagues around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
	                              <c:forEach items="${BRDAroundYou}" var="brd">
	                              		<div class="sidebar-list">
			                              		${brd.boardName}<br> <strong><fmt:formatDate value="${brd.createdDate}" pattern="MMM dd, YYYY"/></strong>
			                                    <div class="teamLogos">
			                                		<img src="${brd.boardImageURL}" class="teamLogo">
			                                	</div>
	                             			 </div>
	                              </c:forEach>
                             	</c:otherwise>
                             </c:choose> 
                            </div>
                          </div>
                          
                         
                          <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/BuddyAroundYou">Buddies Around You </a><span class="sidebar-header-light"></span></div>
                               <c:choose>
                             	<c:when test="${empty BuddyAroundYou}">
                             		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No buddies around you.
                             		</div>
                             	</c:when>
                             	<c:otherwise>
                             	   <c:forEach items="${BuddyAroundYou}" var="buddy">
			                               <c:if test="${not empty buddy.firstName}">
			                              <div class="sidebar-list">
			                                    <div class="teamLogos">
			                                	<img src="${buddy.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="teamLogo" >
			                                	</div>
			                                     ${buddy.firstName}<br>
			---------   
			                              </div>
			                              </c:if>
                              </c:forEach>
                             	</c:otherwise>
                              </c:choose>	
                              
                            
                        
                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header"><a href="${pageContext.request.contextPath}/TeamAroundYou">Teams Around You</a></div>
                              
                              
                              
                              <c:choose>
                              	<c:when test="${empty TEAMAroundYou}">
                              		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No teams around you.
                             		</div>
                              	</c:when>
                              	<c:otherwise>
                              	<div class="sidebar-list"> 
                              		 <c:forEach items="${TEAMAroundYou}" var="brd">
                              		
                                    <img src="${brd.boardImageURL}" class="teamLogo">
                                   
                                    </c:forEach>
                                   </div>
                              	</c:otherwise>
                              </c:choose>
                             	
                            
                              
                            </div>
                          </div>
                          
                          
                        </div>
                      --%>
                     <!--/Right Block End-->
      
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>

<script type="text/javascript">
function inviteValidationValidation(mailArrayParam){
	var mailId = $("#emailId").val();
	if(mailId != ''){
		var booleanValue = validateMail(mailId);
		if(booleanValue == true){
			emailIDSArr.push(mailId);
		}else{
			$("#emailId").val("");
			//showNotification("Please enter valid mail to invite",3000);
			//hide_notificationpoup(3000);
			
		}
	}
	
 	if(!emailIDSArr.length){
		showNotification("Please enter any of your buddy mail to invite",3000);
		hide_notificationpoup(3000);
 	}
	
	 if($("#inviteForm").validate({
		 errorPlacement : function(error, element){
			 error.insertAfter(element);
		 },
		 rules:{
			invitationText: {
				required : true,
				maxlength : 500,
				minlength : 5,
			}
		 },
		 messages :{
		     invitationText: {
		    	 required : "Please enter the message",
	            	  minlength : "Please enter minimum 5 character's",
	            	maxlength : "Message should be maximum of 500 character's ",
		     }
			 
		 },
	 }).form()){
	    	var mail=$('#emailId').val();
	    
	    	var text=$('#invitationText').val();
	    	var mailArray=new Array();
	    	
			    if(mailArrayParam != null){
			    	 mailArray=mailArrayParam;
			    	 text="";
			    }else{
			    	mailArray.push(mail);
			    	
			    }
			    
			    
			    
	    	 var buddyInvitaion={
	    			inviteeArray:emailIDSArr,
	    			msgcontent:text
	    	};
	    	 console.log("myarray ==============="+emailIDSArr);
	    	if(emailIDSArr.length){
	    		/* if(!validateMail(mail) && mailArrayParam == null){
	    			alert("Please enter valid email to continue");
	    			return false;
	    		} */
	    		$('#gmailPopupDiv').hide();
	    		$.ajax({
					type : "POST",
					url :"${pageContext.request.contextPath}/inviteBuddyByMail",
					dataType: "json",
		            contentType: "application/json; charset=utf-8",
		            data:JSON.stringify(buddyInvitaion),
					success : function(res) {
						$('#emailId').val('');
						$('#invitationText').val('');
						$("#emailIDValidation").hide();
						for(var i=0;i<emailIDSArr.length;i++){
							$("#"+i+"emailID").remove();
						}
						emailIDSArr=[];
						//alert("You have successfully invited your buddy");
						showNotification("You have successfully invited your buddy",3000);
						hide_notificationpoup(3000);
					},
					error:function(response){
					console.log("Error message"+JSON.stringify(response));
					},
				
				});  

	    		
	    		
	    	}else{
	    		showNotification("Please enter any of your buddy mail to invite",3000);
				hide_notificationpoup(3000);
	    		//alert("Please enter any of your budie mail to invite");
	    	}
	    	
	    	
	    	return false;
	    	
		 
	 }else{
	 }
}

</script>

<script src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>

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
   <script>
   
   function invitSkip(){
	   $('#invitationText').val('');
	   $('#emailId').val('');
   }
   
   
   function searchBuddiesByCriteriaNew(){

	 	/* if(!emailIDSArr.length){
			showNotification("Please enter any of your buddy mail to invite",3000);
			hide_notificationpoup(3000);
	 	}
		 */
		 if($("#buddiesSearchform").validate({
			 errorPlacement : function(error, element){
				 error.insertAfter(element);
			 },
			 rules:{
				 searchPlaceLiving : {
					maxlength : 50,
					minlength : 2,
				},
				searchemailId : {
					email:true
				},
				searchCity : {
					maxlength : 50,
					minlength : 2,
				},
				buddyName : {
					maxlength : 50,
					minlength : 2,
				},
			 },
			 messages :{
				 searchPlaceLiving : {
		            	minlength : "Please enter minimum 2 characters",
		            	maxlength : "Message should be maximum of 50 characters ",
			     },
			     searchemailId : {
			    	 email:"Invalid E-mail"
		     		},
			 
		    	 searchCity : {
	            	minlength : "Please enter minimum 2 characters",
	            	maxlength : "Message should be maximum of 50 characters ",
		    	 },
			 
		     	buddyName : {
	            	minlength : "Please enter minimum 2 characters",
	            	maxlength : "Message should be maximum of 50 characters ",
		    	 }
			 
			 },
		 }).form()){
			 
		   		
		   		var fullName=$('#nameId').val().trim();
				var city= $('#cityId').val().trim();
					var emailAddress=$('#searchemailId').val().trim();
					var placesLivedArray =[]; 
				var searchPlaceLiving=$('#searchPlaceLiving').val().trim();
		   	console.log('---------------------------'+emailAddress+'----------------------');
					
		   		if(fullName!='' || city!='' || emailAddress!='' || searchPlaceLiving!=''){
		   			
		   			if(searchPlaceLiving.tri !='' && searchPlaceLiving.length>1){
		   				placesLivedArray.push(searchPlaceLiving);
		   			}
		   			
		   			var buddySearchCriteria={
		   					fullName:fullName,
		   					city:city,
		   					emailAddress:emailAddress,
		   					placesLivedArray : placesLivedArray
		   			};
		   			
		   			
		   			$.ajax({
						type : "POST",
						url :"${pageContext.request.contextPath}/buddySearchCriteria",
						dataType: "json",
			            contentType: "application/json; charset=utf-8",
			            data:JSON.stringify(buddySearchCriteria),
						success : function(res) {
							var htmlTemplate="";
							if(res !=null){
								var results=res.results;
								if(results != null){
									var searchResponse=results.searchResponse;
									if(searchResponse != null){
										var userList=searchResponse.userList;
										if(userList != null && userList.length >0){
											
											if(userList.length>1){
												htmlTemplate+='<h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">'+userList.length+' Results..Found</strong></h2>';	
											}else{
												htmlTemplate+='<h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">'+userList.length+' Result..Found</strong></h2>';
											}
											for(var i=0;i<userList.length;i++){
												var user=userList[i];
												htmlTemplate+='<div class="media">';
												htmlTemplate+='<div class="media-left buddyImg">';
												htmlTemplate+='<a href="${pageContext.request.contextPath}/buddy/'+user.firstName+'/'+user.userId+'">';
												htmlTemplate+='<img src="'+user.userImageUrl+'?" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;">';
												htmlTemplate+='</a>';
												htmlTemplate+='</div>';
												htmlTemplate+='<div class="media-body">';
												htmlTemplate+='<a href="${pageContext.request.contextPath}/buddy/'+user.firstName+'/'+user.userId+'">';
												htmlTemplate+='<h4 class="media-heading">'+user.firstName+' '+user.lastName+'</h4>';
												htmlTemplate+='</a>';
											//	htmlTemplate+=' <span class="date" style="width:100%">'+user.city+'</span>';
												if(user.city=="UNKNOWN"&&user.state=="UNKNOWN" ||user.city==""&&user.state==""||user.city=="null"&&user.state=="null"||user.city==null&&user.state==null){
													htmlTemplate += '<span class="date" style="width:100%">'+user.city+'</span>';
												}else{
													htmlTemplate += '<span class="date" style="width:100%">'+user.city+','+user.state+'</span>'; 
												}

												if(user.checkConnect == 'BUDDY'){
													htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit" style="background:black"  class="btn  btn-default btn-sm  dBtn disabled" >Buddy</button>';
												}else if(user.checkConnect == 'NOT BUDDY'){
													htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit"  class="btn  btn-default btn-sm  dBtn" onclick=buddyRequest("'+user.userId.trim()+'");>Buddy Request</button>';
												}else{
													htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit" style="background:black"  class="btn  btn-default btn-sm  dBtn disabled">Request Sent</button>';
												}
												
												htmlTemplate+='</div>';
												htmlTemplate+='</div>';
													
											}
											$('#buddySearchResultsId').html(htmlTemplate);
											$('#buddySearchResultsId').show();
											
										}else{
											var html = '';
											html+='<h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">0 Result..Found</strong></h2>';
											$('#buddySearchResultsId').html(html);
											$('#buddySearchResultsId').show();
											
											displaynotification("No results available for your search",1500);
										}
									}else{
										displaynotification("No results available for your search",1500);
									}
								}else{
									displaynotification("Response time out due to service unavialble",1500);
								}
							}else{
								displaynotification("Response time out due to service unavialble",1500);
							}
							
							
							
						},
						error:function(response){
						alert("Error message"+JSON.stringify(response));
						},
					
					}); 
		   		}else{
		   			displaynotification("Please select any one field to search",1500);
		   		}
			 
		    	return false;
		    
		 }
   }
   function searchClean(){
	      $('#nameId').val('');
		  $('#cityId').val('');
		  $('#searchemailId').val('');
		  $('#searchPlaceLiving').val('');
		  var html = '';
			$('#buddySearchResultsId').html(html);
			$('#buddySearchResultsId').show();	
   }
   	function searchBuddiesByCriteria(){
   		
   		var valid=false;
   		$('.SearchBuddyBlock').find('input[type=text]').each(function(){
            if($(this).val() != "") {
            	valid=true;
            }
        });
   		var fullName=$('#nameId').val();
		var city= $('#cityId').val();
			var emailAddress=$('#searchemailId').val();
			var placesLivedArray =[]; 
   	
   		if(valid){
   			var buddySearchCriteria={
   					fullName:fullName,
   					city:city,
   					emailAddress:emailAddress,
   					placesLivedArray : placesLivedArray
   			};
   			
   			
   			$.ajax({
				type : "POST",
				url :"${pageContext.request.contextPath}/buddySearchCriteria",
				dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data:JSON.stringify(buddySearchCriteria),
				success : function(res) {
					var htmlTemplate="";
					if(res !=null){
						var results=res.results;
						if(results != null){
							var searchResponse=results.searchResponse;
							if(searchResponse != null){
								var userList=searchResponse.userList;
								if(userList != null && userList.length >0){
									
									if(userList.length>1){
										htmlTemplate+='<h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">'+userList.length+' Results..Found</strong></h2>';	
									}else{
										htmlTemplate+='<h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">'+userList.length+' Result..Found</strong></h2>';
									}
									for(var i=0;i<userList.length;i++){
										var user=userList[i];
										htmlTemplate+='<div class="media">';
										htmlTemplate+='<div class="media-left buddyImg">';
										htmlTemplate+='<a href="${pageContext.request.contextPath}/buddy/'+user.firstName+'/'+user.userId+'">';
										htmlTemplate+='<img src="'+user.userImageUrl+'?" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;">';
										htmlTemplate+='</a>';
										htmlTemplate+='</div>';
										htmlTemplate+='<div class="media-body">';
										htmlTemplate+='<a href="${pageContext.request.contextPath}/buddy/'+user.firstName+'/'+user.userId+'">';
										htmlTemplate+='<h4 class="media-heading">'+user.firstName+' '+user.lastName+'</h4>';
										htmlTemplate+='</a>';
										htmlTemplate+=' <span class="date" style="width:100%">'+user.city+'</span>';
										if(user.checkConnect == 'BUDDY'){
											htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit" style="background:black"  class="btn  btn-default btn-sm  dBtn disabled" >Buddy</button>';
										}else if(user.checkConnect == 'NOT BUDDY'){
											htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit"  class="btn  btn-default btn-sm  dBtn" onclick=buddyRequest("'+user.userId.trim()+'");>Buddy Request</button>';
										}else{
											htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit" style="background:black"  class="btn  btn-default btn-sm  dBtn disabled">Request Sent</button>';
										}
										
										htmlTemplate+='</div>';
										htmlTemplate+='</div>';
											
									}
									$('#buddySearchResultsId').html(htmlTemplate);
									$('#buddySearchResultsId').show();
									
								}else{
									var html = '';
									$('#buddySearchResultsId').html(html);
									$('#buddySearchResultsId').show();
									
									displaynotification("No results available for your search",1500);
								}
							}else{
								displaynotification("No results available for your search",1500);
							}
						}else{
							displaynotification("Response time out due to service unavialble",1500);
						}
					}else{
						displaynotification("Response time out due to service unavialble",1500);
					}
					
					
					
				},
				error:function(response){
				alert("Error message"+JSON.stringify(response));
				},
			
			}); 
   		}else{
   			displaynotification("Please select any one field to search",1500);
   		}
   		
   	}
	
	$(function() {
	  
	    
	    $(".nav-tabs a").click(function(e){
	    	
	    	var target=e.target.id;
	    	if(target == 'BuddyListHref' ){
	    		getMyBuddiesAjax();
	    	}else if(target == 'BuddyRequestsHref'){
	    		//alert('getMyBuddyRequestsAjax');
	    		getMyBuddyRequestsAjax();
	    	}

	    });
	    
	});
	

   	
   	
   </script>
</body>
</html>
