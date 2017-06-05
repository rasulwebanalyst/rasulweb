/**
 * New node file
 */
$(function(){
	getNotification();
	
	//$('#userNotificationShowDIV').show();
	$("body").click(function(){
		$("#userNotificationShowDIV").fadeOut();
		$("#friendRequestHeaderDiv").fadeOut();
		$("#buddySearchDIV").fadeOut();
		});
	
		$("#userNotificationShowDIV").click(function(e){
		 e.stopPropagation();
			$("#userNotificationShowDIV").show();
		});
	$("#userNoficationListIcon").click(function(e){
		 e.stopPropagation();
			$("#userNotificationShowDIV").show();
			$("#friendRequestHeaderDiv").fadeOut();
			$('#buddySearchDIV').fadeOut();
		});
	
	$("#showFriendRequesDIV").click(function(e){
		 e.stopPropagation();
		 $("#buddySearchDIV").fadeOut();
		 $('#userNotificationShowDIV').fadeOut();
	});    	

	 $("#buddySearchboxDiv").click(function(e){
		 e.stopPropagation();
			$("#friendRequestHeaderDiv").fadeOut();
			 $('#userNotificationShowDIV').fadeOut();
			
	});
	
	
});
var viewFlag=0;

function getNotification(){
	$.ajax({
		type : "POST",
		url :ctx+"/getUserNotification",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
		success : function(res) {
			console.log(res);
			if(res!=null)
				{
					var count=res.eventNotificationCount;
					if(count>0)
						{
							$('#userNoficationCount').text(count);
						}
				}else{
					
				}
			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	}); 
   	
}

function imgError(ele)
{
	   ele.onerror=null;
	   ele.src='https://cdn.cricketsocial.com/images/boardIcon.png';	 
}

function userErrorDefaultImg(ele)
{
	  ele.onerror=null;
	   ele.src='https://cdn.cricketsocial.com/images/profileIcon.png';	
	
	
}


function getNoficationList()
{
	
	$.ajax({
		type : "POST",
		url :ctx+"/getUserNotificationList",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
		success : function(res) {
			console.log(res);
			  var htm='';
		          if(res!=null && res.length>0)
		        	  {
		        	
		 			 htm +='<li><strong>Notifications</strong></li>';
		 		    	
		 		          
		 		          for(var i in res)
		 		        	  {
		 		        	  		//console.log(res[i].tournamentScheduler[0]);
		 		        	  if(res[i].tournamentScheduler != null){
		 		        	  	 for(var j in res[i].tournamentScheduler){

			 		        	  		if(res[i].tournamentScheduler[j]!=null)
			 		        	  			{
			 		        	  			if(res[i].tournamentScheduler[j].leagueInfo!=null){
			 		        	  				
			 		        	  				var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].tournamentScheduler[j].gameDate);
				 		        	  			htm +='<li>';
					 		        	  		htm +='<div class="col-md-12 noPadding">';
					 		        	  		htm +='<div class="col-md-12 noPadding eventUserDetails eventUsr2">';
						 		 				htm +='<a class="eventname" href="'+ctx+'/'+res[i].tournamentScheduler[j].leagueInfo.boardName+'/board/'+res[i].tournamentScheduler[j].leagueInfo.boardId+'"><img src="'+res[i].tournamentScheduler[j].leagueInfo.boardImageURL+'" class="nav-avatar" onError="imgError(this)"> '+res[i].tournamentScheduler[j].leagueInfo.boardName+'</a>';
						 		 				htm +='<div class="teamLogos teamleague2">';
						 		 				htm +='<a href="'+ctx+'/'+res[i].tournamentScheduler[j].homeTeamInfo.boardName+'/board/'+res[i].tournamentScheduler[j].homeTeamInfo.boardId+'"><img src="'+res[i].tournamentScheduler[j].homeTeamInfo.boardImageURL+'" class="teamLogo"  onError="imgError(this)"> </a><b>VS</b><a href="'+ctx+'/'+res[i].tournamentScheduler[j].awayTeamInfo.boardName+'/board/'+res[i].tournamentScheduler[j].awayTeamInfo.boardId+'"> <img src="'+res[i].tournamentScheduler[j].awayTeamInfo.boardImageURL+'" class="teamLogo" onError="imgError(this)"></a>';
						 		 				htm +='</div>';
						 		 				htm +='</div>';
						 		 				htm +='<a href="'+ctx+'/userEvent">';
						 		 				htm +='<div class="col-md-12 Leag-Img">';
							 		            htm +='<h4>'+res[i].tournamentScheduler[j].tournamentInfo.tournamentName+'</h4>';
							 		            if(res[i].tournamentScheduler[j].groundDetails!=null)
							 		            	{
							 		            		/*htm +='<p><strong>'+getDateInStringFormateWithShortMonthNameTime_withTimeStampInput(res[i].tournamentScheduler[j].gameDate)+'</strong>, '+res[i].tournamentScheduler[j].groundDetails.groundName+','+res[i].tournamentScheduler[j].groundDetails.city+'</p>';*/
							 		            	htm +='<p><strong>'+dateNewObject+'</strong>, '+res[i].tournamentScheduler[j].groundDetails.groundName+','+res[i].tournamentScheduler[j].groundDetails.city+'</p>';
							 		            	}
							 		            
							 		            htm +='</div>';
							 		            htm +='</a>';
							 		            htm +='</div>';
							 		            htm +='</li>';
			 		        	  			}//
			 		        	  			}
			 		        	  		
		 		        	  	 }
		 		        	  }else if(res[i].eventId != null ){
		 		        		  
		 		        		  if(res[i].notificationType == 'Create'){
		 		        		  
		 		        		  htm +='<li>';
		 		        		 htm +='<div class="col-md-12 noPadding">';
			 		 				htm +='<div class="col-md-12 Leag-Img notify-list">';
			 		 				
			 		 				htm +='<h4 style="font-size: 12px; center;color: #4c9fe1;">Event Name : '+res[i].eventName+'</h4>'
			 		 				htm +='<p style="font-size: 12px; "> Event Description : '+res[i].eventDescription+'</p>';
			 		 				/**/
			 		 				var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].eventDate);
			 		 				htm +='<p style="font-size: 12px; ">Event Date : '+dateNewObject+' </p>';
			 		 				htm +='<p style="font-size: 12px; ">Venue : '+res[i].venue+' </p>';
				 		            
				 		            htm +='</div>';
				 		            htm +='</div>';
		 		        		 htm +='</li>';
		 		        		  }
		 		        		  else{
		 		        			  
		 		        			 htm +='<li>';
			 		        		 htm +='<div class="col-md-12 noPadding">';
				 		 				htm +='<div class="col-md-12 Leag-Img notify-list">';
				 		 				htm +='<h4 style="font-size: 13px;  center; color: #4c9fe1;">Event Cancelled</h4>'
				 		 				htm +='<p style="font-size: 12px; ">Event Name : '+res[i].eventName+'</p>'
				 		 				var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].eventDate);
				 		 				htm +='<p style="font-size: 12px; ">Event Date : '+dateNewObject+' </p>';
				 		 				htm +='<p style="font-size: 12px; ">Venue : '+res[i].venue+' </p>';
				 		 				htm +='<p style="font-size: 12px; "> Cancel Reason : '+res[i].cancelReason+'</p>';
					 		            
					 		            htm +='</div>';
					 		            htm +='</div>';
			 		        		 htm +='</li>';
		 		        		  }
		 		        		  
		 		        	  }
		 		        	  else{
		 		        		  console.log("Tournament scheduler is 0");
		 		        		  
		 		        		 htm +='<li>';
		 		        	  		htm +='<div class="col-md-12 noPadding">';
			 		 				htm +='<div class="col-md-12 Leag-Img notify-list">';
			 		 				
			 		 				htm +='<img src="'+res[i].userImageUrl+'" style="width: 50px;    height: 50px;" onError="userErrorDefaultImg(this)">';
			 		 				htm +='<h4 style="font-size: 12px;"><a href="'+ctx+'/buddy/'+res[i].firstName+'/'+res[i].userId+'">'+res[i].firstName+' '+res[i].lastName+'</a> updated his/her profile</h4>'
			 		 				htm +='<p style="font-size: 12px; padding-left: 60px;"> '+res[i].oldFname+' '+res[i].oldLname+' updated his/her <br>';
			 		 				var namechanges=0;
			 		 				if(res[i].firstName != res[i].oldFname || res[i].lastName != res[i].oldLname)
	 		        	  			{
			 		 					namechanges=1;
			 		 					htm +='name as <a style="margin-right: -3px;" href="'+ctx+'/buddy/'+res[i].firstName+'/'+res[i].userId+'">'+res[i].firstName+' '+res[i].lastName+'</a>';
	 		        	  			}
			 		 				if(res[i].newDob != res[i].oldDob )
	 		        	  			{
			 		 					if(namechanges == 1){
			 		 						htm +='<span style="margin-left: -5px;">,</span>';
			 		 					}
			 		 					htm +=' DOB from '+res[i].oldDob+' to '+res[i].newDob+'';
	 		        	  			}
			 		 				htm +='.';
			 		 				htm +='</p>';
				 		            
				 		            htm +='</div>';
				 		            htm +='</div>';
				 		            htm +='</li>';
		 		        		  
		 		        		  
		 		        		  }
		 		        	  }
		 		         $('#userNotificationListUL').html(htm);
		 		        $('#userNotificationListUL').addClass("notificationMenuScroll");
		 		        $('#userNotificationShowDIV').show();
		 		       $('#userNoficationCount').text('');
		 		        
		        	  }else{
		        		  htm +='<li><strong>Notifications</strong></li>';
		        		  //	  htm +='<li><p>No notification<p></li>';
		        		//  htm +='<li><strong>No notification</strong></li>';
		        		  $('#userNotificationErrorDiv').html('No notification available');
		        		  //displaynotification("No notifications",2000);
		        		  $('#userNotificationListUL').html(htm);
		        		  $('#userNotificationShowDIV').show();
		        			
		        	  }
		        
					
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	}); 
	
	
}
function testdirect(date1)
{
	var date = date1;
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	 
 var hours = gettingFromServer.getHours();
 console.log(hours)
 var minutes = gettingFromServer.getMinutes();
 var ampm = hours >= 12 ? 'PM' : 'AM';
 hours = hours % 12;
 hours = hours ? hours : 12; // the hour '0' should be '12'
 minutes = minutes < 10 ? '0'+minutes : minutes;
 hours = hours < 10 ? '0'+hours : hours ;
 var strTimeHours = hours + ':' + minutes + ampm;
 var strTime = (gettingFromServer.getMonth()+1)+"/"+gettingFromServer.getDate()+"/"+gettingFromServer.getFullYear()+" "+strTimeHours;
 return strTime;
}


function getDateInStringFormateWithShortMonthNameTime_withTimeStampInput(timestamp)
{
		var date = new Date(timestamp);
		var day = date.getDate();
		var monthIndex = date.getMonth();
		var year = date.getFullYear();
		//var monthNames = ["January", "February", "March","April", "May", "June", "July","August", "September", "October", "November", "December" ];
		var monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
		var strVal=day + ' ' + monthNames[monthIndex] + ' ' + year+' '+date.getHours()+':'+date.getMinutes();
		return strVal;
}

function sendFeedComments2(elem,mesgid){
	 
	//alert('comment----------> '+elem.value);
	var id=elem.value;
	var comment=$('#feedcontent'+mesgid).val();
	$('#feedcmderrorDiv'+mesgid).text('');
	if(comment.length>0)
		{
		
		//var comment=document.getElementById('content').value;
		//alert('comment value : '+comment);
		 var   projectURL=  document.getElementById('projectURL').value;
		 var   buddyID=  document.getElementById('BuddyID').value;
		 var   buddyName= document.getElementById('BuddyNME').value;
		 
		 
		 var postCmtparams={
				 active: "1",
			        comments: comment,
			        feedId: id,
			        commentedBy: buddyID,
			        commentedByName: buddyName 		 
	     };
		 
		 var postinfo=JSON.stringify(postCmtparams);
		 $.ajax({
				type : "POST",
				url : projectURL+"/postFeedComment",
				headers : {'Name' : HeaderName},
				dataType: "json",
	      contentType: "application/json; charset=utf-8",
	      data:postinfo,			            
				success : function(res) {
					console.log(res);
					$('#feedContenDIVt'+mesgid).hide();
					$('#feedcontent'+mesgid).val('');
					//var count=$('#commentCount'+id).val();
					var count=Number($("#commentCount"+mesgid).text());
					console.log('count----> '+res.results.commentCount);
					$('#commentCount'+mesgid).html('<i class="fa fa-commenting"></i>'+res.results.commentCount);
					$('#shareMenus'+mesgid).hide();
					$('#NoFeedMsgDIV').html('');
				},
				
				error:function(response){
				//alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			$('#feedcmderrorDiv'+mesgid).text('Please enter your delivery');
		}
	
	 
	 
   }



$(function(){
	var test=$('#boardListHeader').height();
	//alert(parseInt(test)/parseInt(2));
	var nodeValue=28;
	$('#boardListHeader').scroll(function(){
		/*
		if($('#boardListHeader').scrollTop()>=test/2){
	        nodeValue=parseInt(nodeValue)+parseInt(2);    
	       
	        var postCmtparams={
	        		startNode : nodeValue,
	        		endNode : 2		      
		     };
	        var postinfo=JSON.stringify(postCmtparams);
	        $.ajax({
	    		type : "POST",
	    		url :ctx+"/boardListFunction",
	    		dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data : postinfo,	
	    		success : function(res) {
	    			console.log(res);
	    				if(res!=null && res.length>0){
	    					var htm="";
	    					for(var i in res){
	    							htm +="<li><a href="+ctx+"'/board?bid="+res[i].boardId+"'>"+res[i].boardName+"</a></li>";
	    						}
	    					
	    					$('#boardListHeader').append(htm);
	    					}else{
	    						
	    					}
	    		},
	    		error:function(response){
	    			console.log("Your request failed due to some service problem"+JSON.stringify(response));
	    		},
	    	
	    	}); 
	        
	    }*/
		
	});
	
});


function round(value, decimals) {
    return Number(Math.round(value+'e'+decimals)+'e-'+decimals);
}

function userErrorDefaultBanner(ele)
{
	  ele.onerror=null;
	   ele.src=ctx+'/images/innerBanner.png';	
	
}

function getDateWithTimeStamp(timestamp)
{
		var date = new Date(timestamp);
		var day = date.getDate();
		var monthIndex = date.getMonth();
		var year = date.getFullYear();
		var monthNames = ["January", "February", "March","April", "May", "June", "July","August", "September", "October", "November", "December" ];
		//var strVal=day + ' ' + monthNames[monthIndex] + ' ' + year;
		var te=parseInt(monthIndex)+parseInt(1);
		var strVal= year+'-'+te+'-'+day;
		return strVal;
}
function loadfunctionTest(){
	alert('function ');
}

function dateUTC(dateVal){

	
	var date = new Date(Date.UTC(dateVal.year, dateVal.month, dateVal.day, dateVal.hour, dateVal.min));
	var day = date.getDate();
	var monthIndex = date.getMonth();
	var year = date.getFullYear();
	var dayNames = ['Sun','Mon','Tue','Wed','Thur','Fri','Sat'];
	var dayName=dayNames[date.getDay()];
	console.log('day ---> '+date.getDay()+'         name --> '+dayName);
	var te=parseInt(monthIndex)+parseInt(1);
	var strVal=day + '/' +te + '/' + year;
	var hours="";
	var hr=date.getHours();
	if(hr>12){
		hours=hr-12;
	}else{
		hours=hr == 0 ? 12 : hr;
	}
	var ampm = hr < 12 ? "am" : "pm";
	var min = date.getMinutes();
	if (min < 10) {
	    min = "0" + min;
	}
	
	var time=hours+":"+min+" "+ampm ;
	var dateObj={
			date : strVal,
			time : time,
			day : day,
			dateName:dayName
			
	};
	return dateObj;

}

$(document).ready(function(){
	
	$.validator.addMethod("numeric",function(value,element)
			{
				return numbersOnly(value); 
			},"Numbers only");
});


$(function() {
	/*$('.number2').on('keydown', '#child', function(e){-1!==$.inArray(e.keyCode,[46,8,9,27,13,110,190])||/65|67|86|88/.test(e.keyCode)&&(!0===e.ctrlKey||!0===e.metaKey)||35<=e.keyCode&&40>=e.keyCode||(e.shiftKey||48>e.keyCode||57<e.keyCode)&&(96>e.keyCode||105<e.keyCode)&&e.preventDefault()});
*/
	  $(".number").keypress(function (e) {
		     //if the letter is not digit then display error and don't type anything
		     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
		        //display error message
		        $(".numberError").html("").show().fadeOut("slow");
		               return false;
		    }
		   
		});
	  
	  
	  $(".OnlyNumber").on("keypress keyup blur",function (event) {    
          $(this).val($(this).val().replace(/[^\d].+/, ""));
           if ((event.which < 48 || event.which > 57)) {
               event.preventDefault();
           }
       });
	  
});



function numValidation(){
	
}


function numbersOnly(num)
{
	 var numbers = /^[0-9]+$/;  
	 return numbers.test(num);

}
//***************************************************************  Buddy request related service  ***********************************************************
$(document).ready(function () {
    $('#loading').hide();
    $.ajax({
		type : "GET",
		url :ctx+"/getMyBuddyRequestsAjax",
		headers : {'Name' : HeaderName},
		dataType: "json",
        contentType: "application/json; charset=utf-8",
		success : function(res) {
			var html="";	
			
			html+='<li>Buddy Requests</li>';
			var friendCount=0;
			if(res!= null){
				if(res.length >0){
					$('#friendRequestbadgeId').text(res.length);
					for(var i=0;i<res.length;i++){
						var user=res[i];
						html+='<li  id=invitation'+user.userId.trim()+'>';
						html+='<div class="media">';
						html+='<div class="media-left"> <a href="#"> '; 
						if(user.userImageUrl != null || user.userImageUrl != ""){
    						html+='<img src="'+user.userImageUrl+'"  class="nav-avatar">';
						}else{
    						html+='<img src="${pageContext.request.contextPath}/images/profileIcon.png"  class="nav-avatar">';

						}
						html+='</a></div>';
						html+='  <div class="media-body">';
						html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'<br>';
						html+='  <span>'+user.city+'</span> </h4> ';
						html+='<div class="headRight"> <a href="#" class="btn btn-default dBtn btn-sm"  id=acceptReq'+user.userId.trim()+'  onclick=buddyManupulations(28,"'+user.userId.trim()+'","invitation'+user.userId.trim()+'")>Accept</a>';
						html+='  <a href="#" class="btn btn-default dBtn btn-sm"  id=declineReq'+user.userId.trim()+'  onclick=buddyManupulations(29,"'+user.userId.trim()+'","invitation'+user.userId.trim()+'")>Decline</a>';
						html+='  <a href="#" class="btn btn-default dBtn btn-sm"  style="display:none;"  id=friend'+user.userId.trim()+' >Buddy</a>';
						html+=' </div>';
						html+='</div>';
						html+='</div>';
						html+='</li>';
						friendCount=res.length;
						console.log(friendCount);
    					$('#friendRequestCountBadge').html(friendCount+'');
		    			$('#friendRequestUlId').html(html);
		    			$('#friendRequestUlId').addClass("notificationMenuScroll");
					}
					
				}
				
				
			}
			
		
			
			
			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	}); 
   	

});

function buddyManupulations(serviceId,userBuddyId,id){
		$.ajax({
		type : "GET",
		url :ctx+"/buddyInvitaionManupulations",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data:{
        	serviceId:serviceId,
        	userBuddyId:userBuddyId
        },
		success : function(res) {
			if(res!= null){
				var results=res.results;
				
				if(results != null){
					displaynotification(results.status,2000);
					console.log('request response-----> '+results.status);
				}
				
				if(serviceId == 28){
					$('#friend'+userBuddyId).show();
					$('#acceptReq'+userBuddyId).hide();
					$('#declineReq'+userBuddyId).hide();
					
					$('#'+id).prop("disabled", true);
				}else if(serviceId == 29){
					$('#'+id).remove();
				}else if(serviceId == 33){
					$('#buddies'+userBuddyId).remove();
					var n = $("#buddyListId div").length;
					 var html="";
					if(n<=0){
						html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";
						$('#buddyListId').html(html);
					}
					
					
					
				}
				
				$("#invitation"+userBuddyId).remove();
				$("#invitation"+userBuddyId).remove();
				$("#buddies"+userBuddyId).remove();
				$("#buddies"+userBuddyId).remove();
				
			}else{
				displaynotification("Your request failed due to some service problem",2000);
			}
		},
		error:function(response){
			displaynotification("Your request failed due to some service problem",2000);
		},
	
	}); 
		
		
	}
	
function getMyBuddyRequestsAjax(){
	var pageCall='userRequestListDivPagination';
		var display='RequestsDiv';
		var display2 = "'"+display+"'";
		var pageCall2 = "'"+pageCall+"'";
		$.ajax({
		type : "GET",
		url :ctx+"/getMyBuddyRequestsAjaxLimit",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
		success : function(response) {
			//alert(response.userCount);
			var res = response.userList;
			var html="";
			var  htm2 = '';
			var nextindicate=0;
			if(res!= null){
				if(res.length >0){
					for(var i=0;i<res.length;i++){
						var user=res[i];
						html+='<div class="media" id=invitation'+user.userId.trim()+'>';
						html+='<div class="media-left buddyImg">';
						html+='<a href="'+ctx+'/buddy/'+user.firstName +'/'+user.userId.trim()+'">';
						html+='  <img src="'+user.userImageUrl+'" onError="userErrorDefaultImg(this)">';
						html+='</a>';
						html+='</div>';
						html+='  <div class="media-body">';
						html+='<a href="'+ctx+'/buddy/'+user.firstName +'/'+user.userId.trim()+'">';
						html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'</h4>';
						html+='</a>';
						html+='  <span class="date" style="width:100%">'+user.city+'</span>';
						html+=' <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn" id=acceptReq'+user.userId.trim()+'  onclick=buddyManupulations(28,"'+user.userId.trim()+'","invitation'+user.userId.trim()+'")>Confirm Buddy</button>';
						html+='  <a class="btn   btn-default btn-sm  btn-sm  blockBtn " id=declineReq'+user.userId.trim()+'  onclick=buddyManupulations(29,"'+user.userId.trim()+'","invitation'+user.userId.trim()+'")>Decline Request</a>';
						html+='  <a class="btn btn-default btn-sm  btn-sm  blockBtn pull-right"  style="display:none;"  id=friend'+user.userId.trim()+'  btn-default btn-sm  btn-sm  blockBtn pull-right" >Buddy</a>';
						html+=' </div>';
						html+='</div>';
						nextindicate=parseInt(nextindicate)+parseInt(1);
					}
					if(nextindicate!=0){
						if(response.userCount > 10){
						htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddyRequestsAjaxPagination(10,'+display2+','+pageCall2+')">Load more</a>';	
						}else{
							
						}
						
						}else{
					   htm2 +='';
				   }
				}else{
					html+="<div class='media'><b>You have no request at this moment.</b></div>";
				}	
				
			}else{
				html+="<div class='media'><b>You have no request at this moment..</b></div>";	

			}
			document.getElementById('RequestsDiv').innerHTML=html;
			$('#'+pageCall).html(htm2);

		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	}); 
		
		
	}
function showFriendREquDiv(divId){
	
	$('#'+divId).toggle();
	$('#friendRequestCountBadge').hide();
}

function confirmBuddyFromPublic(id){

	var id2="'"+id+"'";
	var div="'invitation"+id+"'";
	//alert(id2);
	buddyManupulations2(28,id2,div);
	
	
	
}

function buddyManupulations2(serviceId,userBuddyId,id){
	$.ajax({
	type : "GET",
	url :ctx+"/buddyInvitaionManupulations",
	dataType: "json",
    contentType: "application/json; charset=utf-8",
    data:{
    	serviceId:serviceId,
    	userBuddyId:userBuddyId
    },
	success : function(res) {
		if(res!= null){
			var results=res.results;
			
			if(results != null){
				displaynotification(results.status,2000);
				console.log('request response-----> '+results.status);
			}
			
			if(serviceId == 28){
				$('#friend'+userBuddyId).show();
				$('#acceptReq'+userBuddyId).hide();
				$('#declineReq'+userBuddyId).hide();
				$('#conformbuddyRequest'+userBuddyId).hide();
				$('#buddyRequest'+userBuddyId).show();
				$('#friendRequestCountBadge').hide();
				$('#'+id).prop("disabled", true);
			}else if(serviceId == 29){
				$('#'+id).remove();
			}else if(serviceId == 33){
				$('#buddies'+userBuddyId).remove();
				var n = $("#buddyListId div").length;
				 var html="";
				if(n<=0){
					html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";
					$('#buddyListId').html(html);
				}
				
				
				
			}
			
			$("#invitation"+userBuddyId).remove();
			$("#invitation"+userBuddyId).remove();
			$("#buddies"+userBuddyId).remove();
			$("#buddies"+userBuddyId).remove();
			
		}else{
			displaynotification("Your request failed due to some service problem",2000);
		}
	},
	error:function(response){
		displaynotification("Your request failed due to some service problem",2000);
	},

}); 
	
	
}

//******************************************************************************************************************************

function getDateInObjectUTCFormate_withTimeStampInput(timestamp)
{
	
	var date = new Date(timestamp);
	//alert("date"+date);
	var dateNew = new Date(date.getTime() + date.getTimezoneOffset()*60000);
	var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(dateNew);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	
	//alert("server Date :"+gettingFromServer);
	
	return formatAMPM(gettingFromServer); 
		
		//dateVal.year, dateVal.month, dateVal.day, dateVal.hour, dateVal.min
	//	return dateObj;
}


var formatAMPM = function(date) {
	  var hours = date.getHours();
	  console.log(hours);
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  hours = hours < 10 ? '0'+hours : hours ;
	  var strTime =(date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear()+" "+ hours + ':' + minutes + ' ' + ampm;
	// alert("sting time :"+strTime);
	  return strTime;
	};


//********************************************************************** Match validation ***********************************************************
	

	function overValidation(val){
		var regExp = /^\d+(\.[0-5])?$/;
		if(regExp.test(val))
		{
			return true;
		}else{
			
			return false;
		}
	}
	
	//****************************************************************** new changes feed   **************************************************************
	function feedDelete(id){
		$('#deleteFeedId').val(id);
		$('#deleteFeedConfromBox').show();
	
	}
	function feedSpam(id){
		$('#reportFeedId').val(id);
		$('#reportSpamFeedConfromBox').show();
	
	}
	function reportSpamFeed(){
		
		var id =$('#reportFeedId').val();
		var userId=$('#reportFeedBy').val();
		
		 var feedDelete={
				 feedid : id,
				 loginUserId : userId 
	     };
		 
		 var postinfo=JSON.stringify(feedDelete);
		 $.ajax({
				type : "POST",
				url : ctx+"/feedSpam",
				headers : {'Name' : HeaderName},
				dataType: "json",
	      contentType: "application/json; charset=utf-8",
	      data:postinfo,			            
				success : function(res) {
					console.log(res);
					$('.feedDiv'+id).remove();
					$('#reportSpamFeedConfromBox').hide();
				},
				
				error:function(response){
				//alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
	}
	
	function feedDeleteConfrom(){
			
		var id =$('#deleteFeedId').val();
		var userId=$('#feedDeletedBy').val();
		
		
		 var   buddyName= document.getElementById('BuddyNME').value;
		 
		 
		 var feedDelete={
				 feedid : id,
				 loginUserId : userId 
	     };
		 
		 var postinfo=JSON.stringify(feedDelete);
		 $.ajax({
				type : "POST",
				url : ctx+"/feedDelete",
				headers : {'Name' : HeaderName},
				dataType: "json",
	      contentType: "application/json; charset=utf-8",
	      data:postinfo,			            
				success : function(res) {
					console.log(res);
					$('.feedDiv'+id).remove();
					$('#deleteFeedConfromBox').hide();
				},
				
				error:function(response){
				//alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		
	
	}
	function cancelDeleteFeed(){
		$('#deleteFeedConfromBox').hide();
	}
	function cancelReportFeed(){
		$('#reportSpamFeedConfromBox').hide();
	}