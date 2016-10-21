<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
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
<!--Font-Awesome Icons-->
<link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">

<script>var ctx="${pageContext.request.contextPath}";</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script>
    
    function validateMail(mail){
    	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))){
    		
			return false;
		}else{
			return true;
		}
    }
    
    
    function inviteYourBuddieByMail(mailArrayParam){
    	var mail=$('#emailId').val();
    	var text=$('#invitationText').val();
    	var mailArray=new Array();
    	
		    if(mailArrayParam != null){
		    	 mailArray=mailArrayParam;
		    	 text="";
		    }else{
		    	mailArray.push(mail);
		    	
		    }
		    
		    var seperateMail = mail.split(",");
		    var myArray = [];
		    myArray.push(seperateMail);
		   console.log("myarray ==============="+JSON.stringify(seperateMail));
		    
    	var buddyInvitaion={
    			inviteeArray:seperateMail,
    			message:text
    	};
    	
    	if((mail != null && mail.trim() !="") || mailArrayParam !=null){
    		for(var i=0; i< seperateMail.length; i++){
    			var mailId = seperateMail[i];
    			 if(!validateMail(mailId) && mailArrayParam == null){
    	    			/* alert("Please enter valid email to continue");
    	    			return false; */
    				 showNotification("Please enter valid email to continue",3000);
				     hide_notificationpoup(3000);
 	    			 return false;
    	    		}
    		}
    		
    		$.ajax({
				type : "POST",
				url :"${pageContext.request.contextPath}/inviteBuddyByMail",
				dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data:JSON.stringify(buddyInvitaion),
				success : function(res) {
					$('#emailId').val('');
					showNotification("You have successfully invited your buddy",3000);
					hide_notificationpoup(3000);
					//alert("You have successfully invited your buddy");
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
    
    </script>
    
    
</head>
<body>
 <%@ include file="CSCommon.jsp" %>
<%@ include file="BuddyPublicHeader.jsp" %>

 <%@ include file="BuddyPublicBanner.jsp" %>
 
 <div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
      
        
                                <%@ include file="BuddyPublicSideMenu.jsp" %>
        
     <div class="userName col-md-10" id="likesDiv">
	
							<div class="hitBoard">
							            
							            
							        <%--     <c:choose>
							                   		<c:when test="${BuddyFanReq}">
							                   			<a href="javascript:" class=""> <span>Fan</span> <span>(${BuddyPublicFanCount})</span></a>
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:FanAction('${USRID}','${BuddyPublicUserId}','buddyFanToBuddy')" class="" id="becomeFan${BuddyPublicUserId}"> <span>Became a Fan</span><span>(${BuddyPublicFanCount})</span> </a>
							                   			<a href="javascript:" class="" id="fan${BuddyPublicUserId}" style="display: none"> <span>Fan</span> <span>(${BuddyPublicFanCount+1})</span> </a>	
							                   		</c:otherwise>
							                   </c:choose>
							            
							            <c:choose>
							                   		<c:when test="${BuddyFriend}">
							                   			<a href="javascript:" class=""> <span id="buddyRequest${BuddyPublicUserId}">Friend</span> </a>
							                   		</c:when>
							                   		<c:otherwise>
							                   			<a href="javascript:buddyRequest2('${BuddyPublicUserId}','')" class=""> <span id="buddyRequest${BuddyPublicUserId}">Buddy Request</span></a>
							                   		</c:otherwise>
							                   </c:choose> --%>
							                   
							            </div>

</div>
				
				
      
     <div class="col-md-7 pageMiddleBlock">
      		<div class="col-md-12 whiteBox mybuddyBlock">
          
		          <h1 class="">My Buddies</h1>
          	
                        
                    <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#BuddyList" aria-controls="home" role="tab" data-toggle="tab" id="BuddyListHref">Buddy List</a></li>
                       
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
                                    <img src="${Buddy.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';">
                                </div>
                    				  <div class="media-body">
                                        <h4 class="media-heading">${Buddy.firstName} ${Buddy.lastName}</h4>
                                        <span class="date">${Buddy.city} </span>
<!--                                         <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn ">Get Notifications</button> -->                                                                        
                                      </div>
                            	</div>
                            </c:forEach>
                        	</c:otherwise>
                        </c:choose> 
                            
                           

                            
                            </div>
                           <div class="clear"></div>
                           
                           
                        </div>
                        
                        <div id="AllFanOfListDivPagination">
                             <c:choose>
                         
                           	<c:when test="${userCount > 10}">
                          			 <div class="clear"></div>
                            <a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPaginationPublicProfile(10,'buddyListId','AllFanOfListDivPagination')">Load more</a>
                           
                           	</c:when>
                           	
                           	<c:otherwise>
                           	
                           	</c:otherwise>
                           
                           </c:choose>
                           </div>
                        
                         <div class="clear"></div>
                        
                            <div role="tabpanel" class="tab-pane" id="BuddyRequest">
                              
                        <div class="col-md-12 noPadding"  id="RequestsDiv">
                        		<div class="media">
                        			<b>You have no requests here find search and make buddies.</b>
                        		</div>
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
                        </div>
                        
                        
                        <div role="tabpanel" class="tab-pane" id="InvitetoCricketSocial">
                            <div class="col-md-12 noPadding">
                              
                              <p style="text-align:left">Please send invites only to people you know personally who will be glad to get them.
									We'll automatically send up to 3 reminders after the first invite.
                              </p>
                              
                              <h2 style="padding-left:0px; " class="noBorder">Invite Buddies by Email</h2>
                              
                              <div class="form-group col-md-12 noPadding">
                                    <input type="text" class="form-control" placeholder="Email" id="emailId">
                              </div>
                             
                              <div class="form-group col-md-12 noPadding">
                             
                              		<label>Write a personal Message (Optional)</label>
                            		<textarea class="form-control textarea" rows="5" id="invitationText" placeholder="Content (Max 500 Characters)"></textarea>
                          	</div>
                            <div class="form-group col-md-12 noPadding">
                             			 <button type="submit" class="btn  btn-default btn-sm  dBtn " onclick="inviteYourBuddieByMail()">Send Invite</button>
                                         <button type="submit" class="btn  btn-default btn-sm  blockBtn ">Skip</button>
                             </div>
                            </div>  
                            
                            <div class="col-md-12 noPadding">
 								
                                <strong>OR</strong> Import Contact
                                 
                                 <div class="importSocialContact socialBLock">
                                 	<i class="fa fa-google-plus-square" onclick="getGmailContacts();"></i>
                                  <!--   <i class="fa fa-facebook-square"></i>
                                    <i class="fa fa-envelope-square"></i>
                                    <i class="fa fa-linkedin-square"></i>
                                    <i class="fa fa-twitter-square"></i> -->
                                    
                                 </div>
                                                    
                            </div>
                              
                            
                                
                            </div>
                           <div class="clear"></div>
                           
                           <div role="tabpanel" class="tab-pane" id="SearchBuddy">
                            <div class="col-md-12">
                            
                            <h2 style="padding-left:0px; " class="noBorder">Find Buddy from different parts of your life</h2>
							
                            <div class="SearchBuddyBlock">
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Name" id="nameId"></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="Placed Lived" id=""></div> 
                    		  </div>
                              
                              
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Email" id="emailId"></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="City" id="cityId"></div> 
                    		  </div>
                              
                               <div class="media">
                                    <div class="col-md-6 noLeftPad"><input type="text" class="form-control" placeholder="Cricket Team" id=""></div> 
                                    <div class="col-md-6 noRightPad"><input type="text" class="form-control" placeholder="Cricket League" id=""></div> 
                    		  </div>
                                
                                
                                <div class="Searchbtn centerbtns">
                                	<button type="submit" onclick="searchBuddiesByCriteria()" class="btn  btn-default dBtn ">Search</button>
                                 </div>
                                
                                
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
      
      
         <%@ include file="AroundYouMenu.jsp" %>
                     <!--/Right Block End-->
      
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>


<script src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>

<script src="${pageContext.request.contextPath}/js/buddies.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/boardfunction.js"></script>

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
   	function searchBuddiesByCriteria(){
   		
   		var valid=false;
   		$('.SearchBuddyBlock').find('input[type=text]').each(function(){
            if($(this).val() != "") {
            	valid=true;
            }
        });
   	
   		if(valid){
   			var buddySearchCriteria={
   					fullName:$('#nameId').val(),
   					city:$('#cityId').val(),
   					emailAddress:$('#emailId').val()
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
									htmlTemplate+='<h2 style="margin-left:-14px; padding-top:20px;" class="noBorder"><strong style="color:#3253a8">'+userList.length+' Result</strong>..Found</h2>';
									for(var i=0;i<userList.length;i++){
										var user=userList[i];
										htmlTemplate+='<div class="media">';
										htmlTemplate+='<div class="media-left buddyImg"><img src="'+user.userImageUrl+'" onError="this.onerror=null;this.src=${pageContext.request.contextPath}/images/profileIcon.png;"></div>';
										htmlTemplate+='<div class="media-body">';
										htmlTemplate+='<h4 class="media-heading">'+user.firstName+' '+user.lastName+'</h4>';
										htmlTemplate+=' <span class="date">'+user.city+'</span>';
										if(user.yourBuddy){
											htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit"  class="btn  btn-default btn-sm  dBtn" >Friends</button>';
										}else{
											htmlTemplate+='<div id="buddyreq'+user.userId+'"> <button type="submit"  class="btn  btn-default btn-sm  dBtn" onclick=buddyRequest("'+user.userId.trim()+'");>Buddy Request</button>';
										}
										htmlTemplate+='</div>';
										htmlTemplate+='</div>';
											
									}
									$('#buddySearchResultsId').html(htmlTemplate);
									$('#buddySearchResultsId').show();
									
								}else{
									alert("No results available for your search");
								}
							}else{
								alert("No results available for your search");
							}
						}else{
							alert("Response time out due to service unavialble");
						}
					}else{
						alert("Response time out due to service unavialble");
					}
					
					
					
				},
				error:function(response){
				alert("Error message"+JSON.stringify(response));
				},
			
			}); 
   		}else{
   			alert("Please select any one field to search");
   		}
   		
   	}
	
	$(function() {
	  
	    
	    $(".nav-tabs a").click(function(e){
	    	
	    	var target=e.target.id;
	    	if(target == 'BuddyListHref' ){
	    		getMyBuddiesAjaxPublicProfile();
	    	}else if(target == 'BuddyRequestsHref'){
	    		getMyBuddyRequestsAjax();
	    	}
	    	
	       
	      /*   alert("clicke"+target.indexOf('BuddyRequest'));
	        alert("clicke"+target.indexOf('BuddyList'));
 */
	    	
	    	//$(this).tab('show');
	    });
	    
	});
	

   	
   	
   </script>
</body>
</html>
