/**
 * New node file
 */


function boardFansList()
{
	var board={
			fanType : 'Board'
	};
	var postinfo=JSON.stringify(board);	
	var pageCall='BoardFanOfListDivPagination';
	var display='BoardFansListDIV2';
	var fanType='Board';
	var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall2 = "'"+pageCall+"'";
	var boardfanboard="'boardUnFanToBuddy'";
	var buddyUnFanBoard="'boardUnFanToBuddy'";
	$.ajax({
		type : "POST",
		url : ctx+"/userFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);
			
			var userId=$('#BuddyID').val();
			var userId2="'"+userId+"'";
			var htm='';
			var  htm2 = '';
			var nextindicate=0;
			if(res!=null)
				{
				var boardCount = res.boardCount;
					if(res.boardProfileList!=null)
						{
							for(var i in res.boardProfileList)
								{
								var boardid="'"+res.boardProfileList[i].boardId+"'";
								htm +='<div class="media col-md-6 buddyBoardFan'+res.boardProfileList[i].boardId+'" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                                   htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                                   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" href="javascript:" id="fan'+res.boardProfileList[i].boardId+'" onclick=FanAction('+boardid+','+userId2+','+buddyUnFanBoard+','+boardfanboard+')>Un Fan</a>';  
	                                   htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
	                                 htm += '</div>';
	                        	 htm +='</div>';
	                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
								}
							if(nextindicate!=0){
								if(boardCount >10){
									htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getBoardFanlistbypage('+fanType2+',10,'+display2+','+pageCall2+')">Load more</a>';
								}
								   
							   }else{
								   htm2 +='';
							   }
						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('records not found');
					htm +='No more fans available';
				}
			
					$('#BoardFansListDIV2').html(htm);
					$('#'+pageCall).html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function boardFansList2()
{
	var userId=$('#BuddyPublicUserId').val();
	
	var board={
			fanType : 'Board',
			userId : userId
	};
	var postinfo=JSON.stringify(board);	
	var pageCall='BoardFanOfListDivPagination';
	var display='BoardFansListDIV2';
	var fanType='Board';
//	var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall2 = "'"+pageCall+"'";
	$.ajax({
		type : "POST",
		url : ctx+"/buddyPublicProfileFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);
			
		//	var userId=$('#BuddyID').val();
			var htm='';
			var  htm2 = '';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
					if(res.boardProfileList!=null)
						{
							for(var i in res.boardProfileList)
								{
								
								
								
								htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                                   htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                               //    htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanBoard,boardfanboard)">Un Fan</a>';                                    
	                                 htm += '</div>';
	                        	 htm +='</div>';
	                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
								}
						 
							if(nextindicate > 0){
								  console.log(boardCount);
								   if(boardCount > 10){
										
									   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getBoardFanlistbypage2('+fanType2+',10,'+display2+','+pageCall2+')">Load more</a>';								
									}else{
									
										//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
										html2='';
									}  
							
							}else{
								   htm2 +='';
							   }
						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('records not found');
					htm +='No more fans available';
				}
			
					$('#BoardFansListDIV2').html(htm);
					$('#'+pageCall).html(htm2);
			
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}



function userFansList()
{
	//var projectURL=document.getElementById('projectURL').value;
	var ht='';
	$('#AllBoardAllFansList2').html(ht);
	$('#BoardUserFanListDIv2').html(ht);
	var board={
			fanType : 'Buddy'
	};
	var postinfo=JSON.stringify(board);
	var pageCall='userFanOfListDivPagination';
	var display='BoardUserFanListDIv2';
	var fanType='Buddy';
	var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall2 = "'"+pageCall+"'";	
	$.ajax({
		type : "POST",
		url : ctx+"/userFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var  htm2 = '';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var userId=$('#BuddyID').val();
			    var uid= "'"+$('#BuddyID').val()+"'";
					if(res.userProfileList!=null)
						{
						for(var i in res.userProfileList)
							{
							var userid="'"+res.userProfileList[i].userId+"'";
							var fid="'"+res.userProfileList[i].userId+"'";
							var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
						 htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
						 htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
						 htm += '<div class="media-left buddyImg">';
		                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                            htm += '</div>';
		                            htm +='</a>';
		                				   htm += '<div class="media-body" id="boardfanuser'+userid+'">';
		                				   htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
		                                   htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm +='</a>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
		                                   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+uid+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';                                    
		                                   htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
		                                   htm += '</div>';
		                        	 htm +='</div>';
		                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
							}
						if(nextindicate!=0){
							
								if(userCount >10){
									  htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getUserFanlistbypage('+fanType2+',10,'+display2+','+pageCall2+')">Load more</a>';
								}else{
									
								}
							 
						   }else{
							   htm2 +='';
						   }
						   

						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('No fans');
					htm +='No more fans available';
				}
			
					$('#BoardUserFanListDIv2').html(htm);
					$('#'+pageCall).html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function userFansList2()
{
	//var projectURL=document.getElementById('projectURL').value;
	
	
	
	var userId=$('#BuddyPublicUserId').val();
	
	var board={
			fanType : 'Buddy',
			userId : userId
			
	};
	var postinfo=JSON.stringify(board);
	var pageCall='userFanOfListDivPagination';
	var display='BoardUserFanListDIv2';
	var fanType='Buddy';
	//var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall2 = "'"+pageCall+"'";	
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/buddyPublicProfileFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var  htm2 = '';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;

					if(res.userProfileList!=null)
						{
						for(var i in res.userProfileList)
							{
							var userid="'"+res.userProfileList[i].userId+"'";
							//var fid="'"+res.userProfileList[i].userId+"'";
							//var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
						 htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
						 htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
		                            htm += '<div class="media-left buddyImg">';
		                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                            htm += '</div>';
		                            htm +'<a/>';
		                				  htm += '<div class="media-body" id="boardfanuser'+userid+'">';
		                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                  htm +='</a>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
		                                 //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+userId+','+res.userProfileList[i].userId+',boardUnFanBuddy,buddytobuddy)">Un Fan</a>';                                    
		                                 htm += '</div>';
		                        	 htm +='</div>';
		                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
							}

						if(nextindicate!=0){
							  
						  
							   if(userCount >10 ){
									
								   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getUserFanlistbypage2('+fanType2+',10,'+display2+','+pageCall2+')">Load more</a>';								
								}else{
								
									//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
									html2='';
								}
							   
						
						}else{
							   htm2 +='';
						   }
						
						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('No fans');
					htm +='No more fans available';
				}
			
					$('#BoardUserFanListDIv2').html(htm);
					$('#'+pageCall).html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function getallFanlist()
{
	var ht='';
	$('#AllBoardAllFansList2').html(ht);
	var board={
			fanType : 'All'
	};
	var postinfo=JSON.stringify(board);

		var boardfanboard="'boardUnFanToBuddy'";
		var buddyUnFanBoard="'boardUnFanToBuddy'";
		
	var pageCall='AllFanOfListDivPagination';
	var display='AllBoardAllFansList2';
	var fanType='All';
	var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall2 = "'"+pageCall+"'";
	$.ajax({
		type : "POST",
		url : ctx+"/userFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
				 
					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						  if(res.userProfileList!=null && res.userProfileList.length>0)
							  {
							  	for(var i in res.userProfileList)
								{
									var fid="'"+res.userProfileList[i].userId+"'";
									var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
									
									
									
											  htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
											  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
				                              htm += '<div class="media-left buddyImg">';
				                              htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
				                              htm += '</div>';
				                              htm +='</a>';
			                				  htm += '<div class="media-body">';
			                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
			                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
			                                  htm +='</a>';
			                                  htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
			                                  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userId+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';
			                                  htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
			                                  htm += '</div>';
			                                  htm +='</div>';
								}
							  	
							  	nextindicate=parseInt(nextindicate)+parseInt(1);
							  	
							  }else{
								  
							  }
						
						
						  
						  if(res.boardProfileList!=null && res.boardProfileList.length>0){
							  for(var i in res.boardProfileList)
								{
								  var boardid="'"+res.boardProfileList[i].boardId+"'";
								  
								  htm +='<div class="media col-md-6 buddyBoardFan'+res.boardProfileList[i].boardId+'" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
		                        htm += '<div class="media-left buddyImg">';
		                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
		                        htm += '</div>';
		            				  htm += '<div class="media-body">';
		                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
		                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
		                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="fan'+res.boardProfileList[i].boardId+'" onclick="FanAction('+boardid+','+userId+','+buddyUnFanBoard+','+boardfanboard+')" >Un Fan</a>';                                    
		                               htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
		                               htm += '</div>';
		                    	 htm +='</div>';

								}
							  nextindicate=parseInt(nextindicate)+parseInt(1);
								
						  }else{
							  
						  }
						  
						  
						if(nextindicate!=0){
							if(userCount > 10 ||  boardCount > 10){
								
								htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage('+fanType2+',10,'+display2+','+pageCall2+')">Load More</a>';								
							}else{
							
								//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
								html2='';
							} 
							
						   }else{
							   htm2 +='';
						   }
						
						
						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('records not found');
					htm +='No more fans available';
				}
			
					$('#AllBoardAllFansList2').html(htm);
					$('#'+pageCall).html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
function getallFanlist2()
{
	var userId=$('#BuddyPublicUserId').val();
	
	var board={
			fanType : 'All',
			userId : userId
	};
	var postinfo=JSON.stringify(board);
	var pageCall='AllFanOfListDivPagination';
	var display='AllBoardAllFansList2';
	var fanType='All';
	//var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall2 = "'"+pageCall+"'";
	$.ajax({
		type : "POST",
		url : ctx+"/buddyPublicProfileFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
					var userId=$('#BuddyID').val();
					var userCount  = res.userProfileCount;
					var boardCount = res.boardCount;
					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						for(var i in res.userProfileList)
						{
					 htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
	                                 //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+userId+','+res.userProfileList[i].userId+',boardUnFanBuddy,buddytobuddy)">Un Fan</a>';                                    
	                                 htm += '</div>';
	                        	 htm +='</div>';
	                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						
						for(var i in res.boardProfileList)
						{
						htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
                        htm += '<div class="media-left buddyImg">';
                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                              // htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanBoard,boardfanboard)" >Un Fan</a>';                                    
                             htm += '</div>';
                    	 htm +='</div>';
                    	 nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						
						if(nextindicate!=0){
							 
						  
							   if(nextindicate!=0){
									if(userCount > 10|| boardCount > 10){
										
										  htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage2('+fanType2+',10,'+display2+','+pageCall2+')">Load More</a>';								
									}else{
									
										//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
										html2='';
									} 
									
								   }else{
									   htm2 +='';
								   }
						
						}else{
							   htm2 +='';
						   }
						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('records not found');
					htm +='No more fans available';
				}
			
					$('#AllBoardAllFansList2').html(htm);
					$('#'+pageCall).html(htm2);

		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function getallFanlistPagination(fanType,startNode,display,pageCall)
{
	var ht='';
	var uId=$('#BuddyID').val();
	$('#AllBoardAllFansList2').html(ht);
	var board={
			fanType : fanType,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};
	var postinfo=JSON.stringify(board);
	var fanType2 = "'"+fanType+"'";
	var display2 = "'"+display+"'";
	var pageCall = "'"+pageCall+"'";
	var page=parseInt(startNode)+parseInt(10);
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var  htm2 = '';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						  if(res.userProfileList!=null && res.userProfileList.length>0)
							  {
							  	for(var i in res.userProfileList)
								{
									var fid="'"+res.userProfileList[i].userId+"'";
									var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
									
									
									
											  htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
											  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
				                              htm += '<div class="media-left buddyImg">';
				                              htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
				                              htm += '</div>';
				                              htm +='</a>';
			                				  htm += '<div class="media-body">';
			                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
			                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
			                                  htm +='</a>';
			                                  htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
			                                  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userId+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';
			                                  htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
			                                  htm += '</div>';
			                                  htm +='</div>';
								}
							  	
							  	nextindicate=parseInt(nextindicate)+parseInt(1);
							  	
							  }else{
								  
							  }
						
						
						  
						  if(res.boardProfileList!=null && res.boardProfileList.length>0){
							  for(var i in res.boardProfileList)
								{
								  htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
		                        htm += '<div class="media-left buddyImg">';
		                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
		                        htm += '</div>';
		            				  htm += '<div class="media-body">';
		                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
		                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
		                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="fan'+res.boardProfileList[i].boardId+'" onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanToBoard,buddyUnFanToBoard)" >Un Fan</a>';                                    
		                               htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
		                               htm += '</div>';
		                    	 htm +='</div>';

								}
							  nextindicate=parseInt(nextindicate)+parseInt(1);
								
						  }else{
							  
						  }
						  
						  
						if(nextindicate!=0){
							  
							   
							   if(page < userCount || page < boardCount){
									
								   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage('+fanType2+','+page+','+display2+','+pageCall2+')">Load more</a>';								
								}else{
								
									//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
									html2='';
								}
						   }else{
							   htm2 +='';
						   }
						
						}else{
							htm +='No more fans available';
						}
				}else{
					//alert('records not found');
					htm +='No more fans available';
				}
			
					$('#'+display).html(htm);
					$('#'+pageCall).html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function getallFanlistbypage(category,startNode,display,pageCall)
{
	var uId=$('#BuddyID').val();
	var board={
			fanType : category,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";

	var boardfanboard="'boardUnFanToBuddy'";
		var buddyUnFanBoard="'boardUnFanToBuddy'";
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
					var userId=$('#BuddyID').val();

					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						  if(res.userProfileList!=null && res.userProfileList.length>0)
							  {
							  	for(var i in res.userProfileList)
								{
									var fid="'"+res.userProfileList[i].userId+"'";
									var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
									
									
									
											  htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
											  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
				                              htm += '<div class="media-left buddyImg">';
				                              htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
				                              htm += '</div>';
				                              htm +='</a>';
			                				  htm += '<div class="media-body">';
			                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
			                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
			                                  htm +='</a>';
			                                  htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
			                                  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userId+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';
			                                  htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
			                                  htm += '</div>';
			                                  htm +='</div>';
								}
							  	
							  	nextindicate=parseInt(nextindicate)+parseInt(1);
							  	
							  }else{
								  
							  }
						
						
						  
						  if(res.boardProfileList!=null && res.boardProfileList.length>0){
							  for(var i in res.boardProfileList)
								{
									
									var boardid="'"+res.boardProfileList[i].boardId+"'";
									
								  htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
		                        htm += '<div class="media-left buddyImg">';
		                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
		                        htm += '</div>';
		            				  htm += '<div class="media-body">';
		                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
		                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
		                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="fan'+res.boardProfileList[i].boardId+'" onclick="FanAction('+userId+','+boardid+','+buddyUnFanBoard+','+boardfanboard+')" >Un Fan</a>';                                    
		                               htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
		                               htm += '</div>';
		                    	 htm +='</div>';

								}
							  nextindicate=parseInt(nextindicate)+parseInt(1);
								
						  }else{
							  
						  }
						  
						  
						if(nextindicate!=0){
							
							if(page < userCount || page < boardCount){
							
								htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
							}else{
								htm2='';
							}
							
							
							
						   }else{
							   htm2 +='';
						   }
						
						}else{
							htm +='No more fans available';
						}
				
				}else{
					htm2 +='';
				}
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
function getBoardFanlistbypage(category,startNode,display,pageCall)
{
	var uId=$('#BuddyID').val();
	var board={
			fanType : category,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	
	var boardfanboard="'boardUnFanToBuddy'";
	var buddyUnFanBoard="'boardUnFanToBuddy'";
	
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
				
					//var userId=$('#BuddyID').val();

					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						 
						  if(res.boardProfileList!=null && res.boardProfileList.length>0){
							  for(var i in res.boardProfileList)
								{
								  var boardid="'"+res.boardProfileList[i].boardId+"'";
								  htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
		                        htm += '<div class="media-left buddyImg">';
		                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
		                        htm += '</div>';
		            				  htm += '<div class="media-body">';
		                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
		                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
		                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="fan'+res.boardProfileList[i].boardId+'" onclick="FanAction('+userId+','+boardid+','+buddyUnFanBoard+','+boardfanboard+')" >Un Fan</a>';                                    
		                               htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
		                               htm += '</div>';
		                    	 htm +='</div>';

								}
							  nextindicate=parseInt(nextindicate)+parseInt(1);
								
						  }else{
							  
						  }
						  
						  
						if(nextindicate!=0){
							
							if(page < boardCount){
								
								 htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getBoardFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';								
							}else{
							
								//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
								html2='';
							}
							
							  
						   }else{
							   htm2 +='';
						   }
						
						}else{
							htm +='No more fans available';
						}
				
				}else{
					htm2 +='';
				}
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}


function getUserFanlistbypage(category,startNode,display,pageCall)
{
	var uId=$('#BuddyID').val();
	var board={
			fanType : category,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
				
				var userId=$('#BuddyID').val();

					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						  if(res.userProfileList!=null && res.userProfileList.length>0)
							  {
							  	for(var i in res.userProfileList)
								{
									var fid="'"+res.userProfileList[i].userId+"'";
									var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
									
									
									
											  htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
											  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
				                              htm += '<div class="media-left buddyImg">';
				                              htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
				                              htm += '</div>';
				                              htm +='</a>';
			                				  htm += '<div class="media-body">';
			                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
			                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
			                                  htm +='</a>';
			                                  htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
			                                  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userId+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';
			                                  htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
			                                  htm += '</div>';
			                                  htm +='</div>';
								}
							  	
							  	nextindicate=parseInt(nextindicate)+parseInt(1);
							  	
							  }else{
								  
							  }
						
						if(nextindicate!=0){
							 
						  
							   if(page < userCount){
									
								   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getUserFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
								}else{
									html2='';
							
								}
							   
						}else{
							   htm2 +='';
						   }
						
						}else{
							htm +='No more fans available';
						}
				
				}else{
					htm2 +='';
				}
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

// *****************************************************************************************************************************************


function getallFanlistbypage2(category,startNode,display,pageCall)
{
	var uId=$('#buddyPublicUserId').val();
	var board={
			fanType : category,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
					var userId=$('#BuddyID').val();

					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						  if(res.userProfileList!=null && res.userProfileList.length>0)
							  {
							  	for(var i in res.userProfileList)
								{
									var fid="'"+res.userProfileList[i].userId+"'";
									var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
									
									
									
											  htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
											  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
				                              htm += '<div class="media-left buddyImg">';
				                              htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
				                              htm += '</div>';
				                              htm +='</a>';
			                				  htm += '<div class="media-body">';
			                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
			                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
			                                  htm +='</a>';
			                                  htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
			                                //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userId+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';
			                               //    htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
			                                  htm += '</div>';
			                                  htm +='</div>';
								}
							  	
							  	nextindicate=parseInt(nextindicate)+parseInt(1);
							  	
							  }else{
								  
							  }
						
						
						  
						  if(res.boardProfileList!=null && res.boardProfileList.length>0){
							  for(var i in res.boardProfileList)
								{
								  htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
		                        htm += '<div class="media-left buddyImg">';
		                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
		                        htm += '</div>';
		            				  htm += '<div class="media-body">';
		                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
		                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
		                            //   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="fan'+res.boardProfileList[i].boardId+'" onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanToBoard,buddyUnFanToBoard)" >Un Fan</a>';                                    
		                              // htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
		                               htm += '</div>';
		                    	 htm +='</div>';

								}
							  nextindicate=parseInt(nextindicate)+parseInt(1);
								
						  }else{
							  
						  }
						  
						  
						if(nextindicate!=0){
							   
							// alert('fancount--> '+userCount +' page -->'+page);
							   if(page < userCount || page < boardCount){
									
								   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage2('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';								
								}else{
								
									//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
									html2='';
								}
							   
						   }else{
							   htm2 +='';
						   }
						
						}else{
							//htm +='No fans';
						}
				
				}else{
					htm2 +='';
				}
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function getUserFanlistbypage2(category,startNode,display,pageCall)
{
	var uId=$('#buddyPublicUserId').val();
	var board={
			fanType : category,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
					var userId=$('#BuddyID').val();

					//var userId="'"+$('#BuddyID').val()+"'";
					var userCount  = res.userProfileCount;
					var boardCount = res.boardCount;

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						  if(res.userProfileList!=null && res.userProfileList.length>0)
							  {
							  	for(var i in res.userProfileList)
								{
									var fid="'"+res.userProfileList[i].userId+"'";
									var buddyUnFanOfToBuddy="'"+"buddyUnFanOfToBuddy"+"'";
									
									
									
											  htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
											  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
				                              htm += '<div class="media-left buddyImg">';
				                              htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
				                              htm += '</div>';
				                              htm +='</a>';
			                				  htm += '<div class="media-body">';
			                				  htm +'<a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
			                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
			                                  htm +='</a>';
			                                  htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
			                             //     htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="becomeFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userId+','+fid+','+buddyUnFanOfToBuddy+','+buddyUnFanOfToBuddy+')">Un Fan</a>';
			                             //     htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id="fan'+res.userProfileList[i].userId+'" >Un Fan success</a>';
			                                  htm += '</div>';
			                                  htm +='</div>';
								}
							  	
							  	nextindicate=parseInt(nextindicate)+parseInt(1);
							  	
							  }else{
								  
							  }
						
						if(nextindicate!=0){
							
							 if(page < userCount){
									
								   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getUserFanlistbypage2('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';								
								}else{
								
									//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
									html2='';
								}
						
						}else{
							   htm2 +='';
						   }
						
						}else{
						//	htm +='No fans';
						}
				
				}else{
					htm2 +='';
				}
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
function getBoardFanlistbypage2(category,startNode,display,pageCall)
{
	var uId=$('#BuddyID').val();
	var userId2=$('#BuddyPublicUserId').val();
	
	var board={
			fanType : category,
			userId : userId2,
			startNode : startNode,
			endNode : '10'
	};
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFansListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				var userCount  = res.userProfileCount;
				var boardCount = res.boardCount;
					var userId=$('#BuddyID').val();

					var userId="'"+$('#BuddyID').val()+"'";

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						 
						  if(res.boardProfileList!=null && res.boardProfileList.length>0){
							  for(var i in res.boardProfileList)
								{
								  htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
		                        htm += '<div class="media-left buddyImg">';
		                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
		                        htm += '</div>';
		            				  htm += '<div class="media-body">';
		                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
		                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
		                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" id="fan'+res.boardProfileList[i].boardId+'" onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanToBoard,buddyUnFanToBoard)" >Un Fan</a>';                                    
		                               htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id="becomeFan'+res.boardProfileList[i].boardId+'" >Un Fan success</a>';
		                               htm += '</div>';
		                    	 htm +='</div>';

								}
							  nextindicate=parseInt(nextindicate)+parseInt(1);
								
						  }else{
							  
						  }
						  
						  
						if(nextindicate!=0){
							   
						 
							if(page < boardCount){
									
								   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getBoardFanlistbypage2('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';								
								}else{
								
									//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
									html2='';
								}
						
						}else{
							   htm2 +='';
						   }
						
						}else{
							//htm +='No fans';
						}
				
				}else{
					htm2 +='';
				}
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
