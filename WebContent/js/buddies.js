/**
 * 
 */


function buddyRequest(id){
	var htm='';
	if(id!=''){
		 var uid="'"+id+"'";
		 //htm +='<a href="#" class="btn btn-default dBtn btn-sm" onclick="unBuddyRequest('+uid+')" >UnBuddy</a>';
		// htm +='<a href="#" class="btn btn-default dBtn btn-sm" >Request sent</a>';
		 htm +='<button class="btn btn-default dBtn btn-sm" type="button">Request sent</button>';	
		 console.log(htm);
			 var user={
					 inviteeId : id,
		      };
			   var buddyreq=JSON.stringify(user);
				$.ajax({
					type : "POST",
					url : ctx+"/buddyRequest",
					dataType: "json",
		        contentType: "application/json; charset=utf-8",
		        data : buddyreq,			            
					success : function(res) {
						if(res!= null){
							var results=res.results;
							if(results.status != null){
								displaynotification(results.status,2000);
							}
							if(results.itemsFound  != null){
								$('#buddyreq'+id).html(htm);
								//alert(results.itemsFound);
							}
						}else{
							alert("Your request failed due to some service problem");
						}
					},
					error:function(response){
					console.log("Error message"+JSON.stringify(response));
					},
				
				}); 
		}
	}
	
	


   	
   	
 	function getMyBuddiesAjax(){
 		var pageCall='AllFanOfListDivPagination';
 		var display='buddyListId';
 		var display2 = "'"+display+"'";
 		var pageCall2 = "'"+pageCall+"'";
 		$.ajax({
			type : "GET",
			url :ctx+"/getMyBuddiesAjaxLimit",
			dataType: "json",
            contentType: "application/json; charset=utf-8",
			success : function(response) {
				var res = response.userList;
				var html="";
				var  htm2 = '';
				var nextindicate=0;
				
				if(res!= null){
								
					if(res.length >0){
						for(var i=0;i<res.length;i++){
							var user=res[i];
							html+='<div class="media" id="buddies'+user.userId+'">';
							html+='<div class="media-left buddyImg">';
							html+='<a href="'+ctx+'/buddy/'+user.firstName +'/'+user.userId+'">';
							html+='  <img src="'+user.userImageUrl+'" onError="userErrorDefaultImg(this)">';
							html+='</a>';
							html+='</div>';
							html+='  <div class="media-body">';
							html+='<a href="'+ctx+'/buddy/'+user.firstName +'/'+user.userId+'">';
							html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'</h4>';
							html+='</a>';
							html+='  <span class="date">'+user.city+'</span>';
						/*	html+=' <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn ">Get Notifications</button>';*/
							//html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,"'+user.userId.trim()+'")">Un Buddy</a>';  
							var userid="'"+user.userId.trim()+"'";
							html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,'+userid+')">Un Buddy</a>';
							html+=' </div>';
							html+='</div>';
							nextindicate=parseInt(nextindicate)+parseInt(1);
							
						}
						if(nextindicate!=0){
							if(response.userCount > 10){
								
								htm2+='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPagination(10,'+display2+','+pageCall2+')">Load more</a>';
								
							}else{
								
							}
									
								}else{
								
							   htm2 +='';
						   }
						   
						}else{
							console.log(res);
							html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
						}	
						
				}else{
					html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
				}

				
				$('#buddyListId').html(html);
			
				$('#'+pageCall).html(htm2);
				
			},
			error:function(response){
				alert("Your request failed due to some service problem");
			},
		
		}); 
   		
   		
   	}
 	
 	function getMyBuddiesAjaxPagination(startNode,display,pageCall){
   		
 		var uId=$('#BuddyID').val();

 		var board={
 				userId : uId,
 				startNode : startNode,
 				endNode : '10'
 		};
 		var startNode2 = "'"+startNode+",";
 		var display2="'"+display+"'";
 		var pageCall2="'"+pageCall+"'";
 		var page=parseInt(startNode)+parseInt(10);
 		var postinfo=JSON.stringify(board);
 		$.ajax({
			type : "POST",
			url :ctx+"/getMyBuddiesAjaxPaginationLimit",
			dataType: "json",
            contentType: "application/json; charset=utf-8",
            data:postinfo,	
			success : function(response) {
				console.log(response);
				var res = response.userList;
				var html="";
				var  htm2 = '';
				var nextindicate=0;
				if(res!= null){
								
					if(res.length >0){
						for(var i=0;i<res.length;i++){
							var user=res[i];
							html+='<div class="media" id="buddies'+user.userId+'">';
							html+='<div class="media-left buddyImg">';
							html+='  <img src="'+user.userImageUrl+'" onError="userErrorDefaultImg(this)">';
							html+='</div>';
							html+='  <div class="media-body">';
							html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'</h4>';
							html+='  <span class="date">'+user.city+'</span>';
						/*	html+=' <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn ">Get Notifications</button>';*/
							//html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,"'+user.userId.trim()+'")">Un Buddy</a>';  
							var userid="'"+user.userId.trim()+"'";
							html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,'+userid+')">Un Buddy</a>';
							html+=' </div>';
							html+='</div>';
							nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						if(nextindicate!=0){
							  // htm2 ='<a href="javascript:getallFanlistbypage('+page+','+display2+','+pageCall2+')">Load More</a>';
							if(page < response.userCount){
							htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPagination('+page+','+display2+','+pageCall2+')">Load more</a>';
							}else{
								
							}
							}else{
							   htm2 +='';
						   }
						
						}else{
							console.log(res);
							//html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
						}	
						
				}else{
					//html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
				}
				$('#buddyListId').append(html);
				$('#'+pageCall).html(htm2);
			},
			error:function(response){
				alert("Your request failed due to some service problem");
			},
		
		}); 
   		
   		
   	}
 	
 	
	
	function getMyBuddyRequestsAjaxPagination(startNode,display,pageCall){

		var uId=$('#BuddyID').val();
 		var board={
 				userId : uId,
 				startNode : startNode,
 				endNode : '10'
 		};
 		var page=parseInt(startNode)+parseInt(10);
 		var postinfo=JSON.stringify(board);
 		
		var display2 = "'"+display+"'";
 		var pageCall2 = "'"+pageCall+"'";
   		$.ajax({
			type : "POST",
			url :ctx+"/getMyBuddyRequestsAjaxPaginationLimit",
			dataType: "json",
            contentType: "application/json; charset=utf-8",
            data:postinfo,
			success : function(response) {
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
							html+='  <img src="'+user.userImageUrl+'" onError="userErrorDefaultImg(this)">';
							html+='</div>';
							html+='  <div class="media-body">';
							html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'</h4>';
							html+='  <span class="date" style="width:100%">'+user.city+'</span>';
							html+=' <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn" id=acceptReq'+user.userId.trim()+'  onclick=buddyManupulations(28,"'+user.userId.trim()+'","invitation'+user.userId.trim()+'")>Confirm Buddy</button>';
							html+=' <a class="btn   btn-default btn-sm  btn-sm  blockBtn " id=declineReq'+user.userId.trim()+'  onclick=buddyManupulations(29,"'+user.userId.trim()+'","invitation'+user.userId.trim()+'")>Decline Request</a>';
							html+='  <a class="btn btn-default btn-sm  btn-sm  blockBtn pull-right"  style="display:none;"  id=friend'+user.userId.trim()+'  btn-default btn-sm  btn-sm  blockBtn pull-right" >Buddy</a>';
							html+=' </div>';
							html+='</div>';
							
							nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						if(nextindicate!=0){
							if(page < response.userCount){
								htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddyRequestsAjaxPagination('+page+','+display2+','+pageCall2+')">Load more</a>';
							}else{
								
							}
								
							}else{
						   htm2 +='';
					   }
					}else{
					//	html+="<div class='media'><b>You have no requests at this moment.</b></div>";
					}	
					
				}else{
					//html+="<div class='media'><b>You have no requests at this moment..</b></div>";	

				}
				//document.getElementById('RequestsDiv').innerHTML=html;
				$('#'+display).append(html);
				$('#'+pageCall).html(htm2);

			},
			error:function(response){
				console.log("Your request failed due to some service problem"+JSON.stringify(response));
			},
		
		}); 
   		
   		
   	}

function getFriendRequestCount(){
	alert("Friend Requset count:");
	
		
	
	
}
	

function getMyBuddiesAjaxPaginationPublicProfile(startNode,display,pageCall){
		
		var uId=$('#BuddyPublicUserId').val();

		//alert(uId);
		var board={
				userId : uId,
				startNode : startNode,
				endNode : '10'
		};
		var startNode2 = "'"+startNode+",";
		var display2="'"+display+"'";
		var pageCall2="'"+pageCall+"'";
		var page=parseInt(startNode)+parseInt(10);
		var postinfo=JSON.stringify(board);
		$.ajax({
		type : "POST",
		url :ctx+"/getMyBuddiesAjaxPaginationLimit",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data:postinfo,	
		success : function(response) {
			console.log(response);
			var res = response.userList;
			var html="";
			var  htm2 = '';
			var nextindicate=0;
			if(res!= null){
							
				if(res.length >0){
					for(var i=0;i<res.length;i++){
						var user=res[i];
						html+='<div class="media" id="buddies'+user.userId+'">';
						html+='<div class="media-left buddyImg">';
						html+='  <img src="'+user.userImageUrl+'" onError="userErrorDefaultImg(this)">';
						html+='</div>';
						html+='  <div class="media-body">';
						html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'</h4>';
						html+='  <span class="date">'+user.city+'</span>';
					/*	html+=' <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn ">Get Notifications</button>';*/
						//html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,"'+user.userId.trim()+'")">Un Buddy</a>';  
						var userid="'"+user.userId.trim()+"'";
						//html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,'+userid+')">Un Buddy</a>';
						html+=' </div>';
						html+='</div>';
						nextindicate=parseInt(nextindicate)+parseInt(1);
					}
					if(nextindicate!=0){
						  // htm2 ='<a href="javascript:getallFanlistbypage('+page+','+display2+','+pageCall2+')">Load More</a>';
						if(page < response.userCount){
						htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPagination('+page+','+display2+','+pageCall2+')">Load more</a>';
						}else{
							
						}
						}else{
						   htm2 +='';
					   }
					
					}else{
						console.log(res);
						//html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
					}	
					
			}else{
				//html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
			}
			$('#buddyListId').append(html);
			$('#'+pageCall).html(htm2);
		},
		error:function(response){
			alert("Your request failed due to some service problem");
		},
	
	}); 
		
		
	}


function getMyBuddiesAjaxPublicProfile(){
	var uId=$('#BuddyPublicUserId').val();
	//alert(uId);
		var pageCall='AllFanOfListDivPagination';
		var display='buddyListId';
		var display2 = "'"+display+"'";
		var pageCall2 = "'"+pageCall+"'";
		var bean = {
				userId : uId
				
		};
		$.ajax({
		type : "post",
		url :ctx+"/getMyBuddiesAjaxLimitPublicProfile",
		data: JSON.stringify(bean),
        contentType: "application/json; charset=utf-8",
		success : function(response) {
			var res = response.userList;
			var html="";
			var  htm2 = '';
			var nextindicate=0;
			
			if(res!= null){
							
				if(res.length >0){
					for(var i=0;i<res.length;i++){
						var user=res[i];
						html+='<div class="media" id="buddies'+user.userId+'">';
						html+='<div class="media-left buddyImg">';
						html+='<a href="'+ctx+'/buddy/'+user.firstName +'/'+user.userId+'">';
						html+='  <img src="'+user.userImageUrl+'" onError="userErrorDefaultImg(this)">';
						html+='</a>';
						html+='</div>';
						html+='  <div class="media-body">';
						html+='<a href="'+ctx+'/buddy/'+user.firstName +'/'+user.userId+'">';
						html+=' <h4 class="media-heading">'+user.firstName +' '+ user.lastName+'</h4>';
						html+='</a>';
						html+='  <span class="date">'+user.city+'</span>';
					/*	html+=' <button type="submit" class="btn  btn-default btn-sm  btn-sm dBtn ">Get Notifications</button>';*/
						//html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,"'+user.userId.trim()+'")">Un Buddy</a>';  
						var userid="'"+user.userId.trim()+"'";
						//html+='  <a class="btn btn-default btn-sm btn-sm blockBtn pull-right" onclick="buddyManupulations(33,'+userid+')">Un Buddy</a>';
						html+=' </div>';
						html+='</div>';
						nextindicate=parseInt(nextindicate)+parseInt(1);
						
					}
					if(nextindicate!=0){
						if(response.userCount > 10){
							
							htm2+='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getMyBuddiesAjaxPaginationPublicProfile(10,'+display2+','+pageCall2+')">Load more</a>';
							
						}else{
							
						}
								
							}else{
							
						   htm2 +='';
					   }
					   
					}else{
						console.log(res);
						html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
					}	
					
			}else{
				html+="<div class='media'><b>You have no buddies here find search and make buddies.</b></div>";	
			}

			
			$('#buddyListId').html(html);
		
			$('#'+pageCall).html(htm2);
			
		},
		error:function(response){
			alert("Your request failed due to some service problem");
		},
	
	}); 
		
		
	}