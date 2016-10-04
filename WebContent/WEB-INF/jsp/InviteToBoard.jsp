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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/token-input.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/token-input-facebook.css"
	type="text/css" />
</head>
<body>



<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		<%@ include file="BoardHeader.jsp" %>
		<%@ include file="CSCommon.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath }/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
           	<%@ include file="BoardSideMenu.jsp" %>
        
        
      
      
      <div class="col-md-7 pageMiddleBlock">
      		<div class="col-md-12 whiteBox mybuddyBlock">
          
		          <h1 class="">Invite to Become a Fan of Board</h1>
          	
                    
                    
                    <div role="tabpanel" class="tab-pane" id="InvitetoCricketSocial">
                            <div class="col-md-12 noPadding">
                              
                              <p style="text-align:left; margin-left:0;">Please send invites only to people you know personally who will be glad to get them.
									
                              </p>
                              
                              <h2 style="padding-left:0px; " class="noBorder">Invite buddies by email</h2>
                              
                              <div class="form-group col-md-12 noPadding">
                                    <input type="text" class="form-control" placeholder="Email" id="emailId">
                                    <input type="hidden" id="hiddenEmailId" name="hiddenEmailId">
                              </div>
                             
                              <div class="form-group col-md-12 noPadding">
                             
                              		<label>Write a personal Message (Optional)</label>
                            		<textarea class="form-control textarea" rows="5" id="messageText" placeholder="Content (Max 500 Characters)"></textarea>
                          	</div>
                            <div class="form-group col-md-12 noPadding">
                             			 <button type="button" class="btn  btn-default btn-sm  dBtn " onclick="inviteYourBuddieByMail()">Send Invite</button>
                                         <button type="button" class="btn  btn-default btn-sm  blockBtn " onclick="cancelFunction()">Clear</button>
                             </div>
                            </div>  
                            
                            
                          <!--  <div class="col-md-12 noPadding">
 								
                                <strong>OR</strong> Import Contact
                                 
                                  <div class="importSocialContact socialBLock">
                                 	<i class="fa fa-google-plus-square"></i>
                                    <i class="fa fa-facebook-square"></i>
                                    <i class="fa fa-envelope-square"></i>
                                    <i class="fa fa-linkedin-square"></i>
                                    <i class="fa fa-twitter-square"></i>
                                    
                                 </div> 
                                                    
                            </div>-->
                              
                            
                                
                            </div>    
                    

                        
            
          	
          </div>    
      </div>
      
      
       <!--Right Block-->
                     		 <%@ include file="AroundYouMenu.jsp" %>
                     
                     <!--/Right Block End-->
      
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file ="Footer.jsp" %>


<script>
$(document).ready(function(){
	var mailArray=[];
	$("#emailId").tokenInput(ctx+"/umpireSearchForCreateScheduler/",{
		resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.emailAddress + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.emailAddress + "</div></div></li>" },
		preventDuplicates: true,
		propertyToSearch: "emailAddress",
		theme: "facebook",   
		onAdd: function (item) {
			mailArray.push(item.emailAddress);
			$('#hiddenEmailId').val(mailArray);
			
		},
		onDelete: function (item) {
	    	var index = mailArray.indexOf(item.emailAddress);
			if (index >= 0) {
				mailArray.splice( index, 1 );
			}
			$('#hiddenEmailId').val(mailArray);
	},onResult: function (item) {
	    if($.isEmptyObject(item)){
	        return [{id:'0',emailAddress: "No Results Found"}];
	  }else{
	        return item;
	  }
	}
	});
})


function validateMail(mail){
	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))){
		
		return false;
	}else{
		return true;
	}
}


function inviteYourBuddieByMail(mailArrayParam){
	console.log(mailArrayParam);
	var mail=$('#hiddenEmailId').val();
	var text=$('#messageText').val();
	var bid ="${boardId}";
	
	  /*   if(mailArrayParam != null){
	    	 mailArray=mailArrayParam;
	    	 text="";
	    }else{
	    	mailArray.push(mail);
	    	
	    }
	    */
	    var seperateMail = mail.split(",");
	    var myArray = [];
	    myArray.push(seperateMail);
	   console.log("myarray ==============="+JSON.stringify(seperateMail)); 
	    
	   
	    
	 var buddyInvitaion={
			inviteeArray: seperateMail,
			msgcontent:text,
			boardId : bid
	};
	
	if((mail != null && mail.trim() !="") || mailArrayParam !=null){
		for(var i=0; i< seperateMail.length; i++){
			var mailId = seperateMail[i];
			 if(!validateMail(mailId) && mailArrayParam == null){
	    			//alert("Please enter valid email to continue");
	    			displaynotification("Please enter valid email to continue",3000);
					//hide_notificationpoup(3000);
	    			return false;
	    		}
		}
	if(text){
		if(text.length>500){
			displaynotification("Maximum 500 charcters",3000);
			//hide_notificationpoup(3000);
			return false;
		}
	}
		/* if(!validateMail(mail) && mailArrayParam == null){
			alert("Please enter valid email to continue");
			return false;
		} */
		
		$.ajax({
			type : "POST",
			url :"${pageContext.request.contextPath}/inviteBuddyToBoardByMail",
			dataType: "json",
            contentType: "application/json; charset=utf-8",
            data:JSON.stringify(buddyInvitaion),
			success : function(res) {
				document.getElementById("emailId").value = "";
				document.getElementById("messageText").value = "";
				cancelFunction();
				displaynotification("You have successfully invited your buddy",3000);
				//window.location.href = "${pageContext.request.contextPath}/inviteBoardPage/boardId/"+bid;
				
			},
			error:function(response){
			console.log("Error message"+JSON.stringify(response));
			},
		
		});  

		
		
	}else{
		displaynotification("Please enter any of your buddy mail to invite",3000);
		//hide_notificationpoup(3000);
		//alert("Please enter any of your budie mail to invite");
	}
	
}

function cancelFunction(){
	$("#emailId").tokenInput("clear");
	$("#messageText").val("");
}
function invitSkip(){
	   $('#invitationText').val('');
	   $('#emailId').val('');
}
</script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
</body>
</html>
