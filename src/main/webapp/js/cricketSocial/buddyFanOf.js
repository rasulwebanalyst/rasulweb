/**
 * New node file
 */


function boardFansList()
{
	
	var board={
			fanType : 'Board'
	};
	var postinfo=JSON.stringify(board);	
		var category='Board';
		var display='BoardFansListDIV2';
		
		var pageCall='boardFanOfListDivPagination';
		var category2="'"+category+"'";
		var display2="'"+display+"'";
		var pageCall2="'"+pageCall+"'";

		var buddyUnFanBoard="'buddyUnFanBoard'";
		   var boardfanboard="'boardfanboard'";
		
		
	$.ajax({
		type : "POST",
		url : ctx+"/userFanOfList",
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
					
					if(res.boardProfileList!=null)
						{
							for(var i in res.boardProfileList)
								{
								
								
								var boardid="'"+res.boardProfileList[i].boardId+"'";
								htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                            if(res.boardProfileList[i].boardImageURL != null || res.boardProfileList[i].boardImageURL !=""){
	                            	htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                            }else{
	                            	htm += '<img src="images/boardIcon.png">';
	                            }
	                                
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                                   htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';
	                                   if(res.boardProfileList[i].createdBy != userId){
	                                	   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" onclick=FanAction('+userId2+','+boardid+','+buddyUnFanBoard+','+boardfanboard+')>Un Fan</a>';                                    
		                                   htm +=' <a class="btn   btn-default btn-sm  btn-sm  blockBtn"  style="display: none;"  id=fan'+res.boardProfileList[i].boardId+' >Un Fan success</a>';
	                                   }
	                                   
	                                   htm += '</div>';
	                        	 htm +='</div>';

								}
								nextindicate=parseInt(nextindicate)+parseInt(1);
						 
						}else{
							htm +='No fans';
						}
					
					if(nextindicate!=0){
						   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getboardFanlistbypage('+category2+',10,'+display2+','+pageCall2+')">More records</a>';
					   }else{
						   htm2 +='';
					   }
					
				}else{
					//alert('records not found');
					htm +='No fans';
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
	
	var board={
			fanType : 'Buddy'
	};
	var postinfo=JSON.stringify(board);
	var category='Buddy';
	var display='BoardUserFanListDIv2';
	
	var buddyUnFanToBoard="'buddyUnFanToBoard'";
	var buddyUnFanToBoard2="'buddyUnFanToBoard2'";
	
	var buddyUnFanToBuddy="'buddyUnFanToBuddy'";
	var buddyUnFanToBuddy2="'buddyUnFanToBuddy2'";
	
	
	var pageCall='userFanOfListDivPagination';
	var category2="'"+category+"'";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	$.ajax({
		type : "POST",
		url : ctx+"/userFanOfList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var  htm2 = '';
			if(res!=null)
				{
				var userId=$('#BuddyID').val();
				var nextindicate=0;
					if(res.userProfileList!=null)
						{
					
						for(var i in res.userProfileList)
							{
							var userid="'"+res.userProfileList[i].userId+"'";
						 htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
		                            htm += '<div class="media-left buddyImg">';
		                            if(res.userProfileList[i].userImageUrl != null || res.userProfileList[i].userImageUrl !=""){
		                            	htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                            }else{
		                            	htm += '<img src="images/profileIcon.png">';
		                            }
		                               
		                            htm += '</div>';
		                				  htm += '<div class="media-body" id="boardfanuser'+userid+'">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
		                                 //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " id=fan'+res.userProfileList[i].userId+' onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'","buddyUnFanToBuddy","buddyFanToBuddy")>Un Fan</a>';                                    
		                                   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'",'+buddyUnFanToBuddy+','+buddyUnFanToBuddy2+')>Un Fan</a>';
		                                   htm +='<a class="btn   btn-default btn-sm  btn-sm  blockBtn " style="display: none;" id=becomeFan'+res.userProfileList[i].userId+' >Un Fan success</a>';
		                                   htm += '</div>';
		                        	 htm +='</div>';
		                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
							}
						if(nextindicate!=0){
							   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getUserFanlistbypage('+category2+',10,'+display2+','+pageCall2+')">More records</a>';
						   }else{
							   htm2 +='';
						   }
						

						}else{
							htm +='No fans';
						}
				}else{
					//alert('records not found');
					htm +='No fans';
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


function buddyPublicProfileboardFansList()
{
	var userId=$('#BuddyPublicUserId').val();
	var board={
			fanType : 'Board',
			userId : userId
	};
	var postinfo=JSON.stringify(board);	
	$.ajax({
		type : "POST",
		url : ctx+"/buddyPublicProfileFanOfList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);
			
			//var userId=$('#BuddyID').val();
			var htm='';
			if(res!=null)
				{
					
					if(res.boardProfileList!=null)
						{
							for(var i in res.boardProfileList)
								{
								
								
								
								htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                            
	                            if(res.boardProfileList[i].boardImageURL != null || res.boardProfileList[i].boardImageURL !=""){
	                            	htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                            }else{
	                            	htm += '<img src="images/boardIcon.png">';
	                            }
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                                   htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                                  // htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanBoard,boardfanboard)">Un Fan</a>';                                    
	                                 htm += '</div>';
	                        	 htm +='</div>';

								}
						 
						}else{
							htm +='No fans';
						}
				}else{
					//alert('records not found');
					htm +='No fans';
				}
			
					$('#BoardFansListDIV2').html(htm);
			
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
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/buddyPublicProfileFanOfList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			if(res!=null)
				{
				var userId=$('#BuddyPublicUserId').val();

					if(res.userProfileList!=null)
						{
						for(var i in res.userProfileList)
							{
							var userid="'"+res.userProfileList[i].userId+"'";
						 htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
		                            htm += '<div class="media-left buddyImg">';
		                            if(res.userProfileList[i].userImageUrl != null || res.userProfileList[i].userImageUrl !=""){
		                            	htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                            }else{
		                            	htm += '<img src="images/prfileIcon.png">';
		                            }
		                            
		                            htm += '</div>';
		                				  htm += '<div class="media-body" id="boardfanuser'+userid+'">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
		                                //   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+userId+','+res.userProfileList[i].userId+',boardUnFanBuddy,buddytobuddy)">Un Fan</a>';                                    
		                                 htm += '</div>';
		                        	 htm +='</div>';
							}

						}else{
							htm +='No fans';
						}
				}else{
					//alert('records not found');
					htm +='No fans';
				}
			
					$('#BoardUserFanListDIv2').html(htm);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}


function getallFanlist()
{
	var buddyUnFanToBoard="'buddyUnFanToBoard'";
	var buddyUnFanToBoard2="'buddyUnFanToBoard2'";
	
	var buddyUnFanToBuddy="'buddyUnFanToBuddy'";
	var buddyUnFanToBuddy2="'buddyUnFanToBuddy2'";
	
	var board={
			fanType : 'All'
	};
	var postinfo=JSON.stringify(board);
	var category='All';
	var display='AllBoardAllFansList2';
	//+','++'
	var pageCall='AllFanOfListDivPagination';
	var category2="'"+category+"'";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	$.ajax({
		type : "POST",
		url : ctx+"/userFanOfList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm = '';
			var  htm2 = '';
			if(res!=null)
				{
					var userId=$('#BuddyID').val();

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						var nextindicate=0;
						if(res.userProfileList!=null && res.userProfileList.length>0)
						{
						
						for(var i in res.userProfileList)
						{
							htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                if(res.userProfileList[i].userImageUrl != null || res.userProfileList[i].userImageUrl !=""){
	                                	htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                                }else{
	                                	htm += '<img src="images/profileIcon.png">';
	                                }
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
	                                  // htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'","boardUnFanBuddy","buddytobuddy")>Un Fan</a>';   
	                                 
	                                	   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'",'+buddyUnFanToBuddy+','+buddyUnFanToBuddy2+')>Un Fan</a>';   
	                                   
	                                  	                                   
	                                   htm += '</div>';
	                        	 htm +='</div>';
						}
						nextindicate=parseInt(nextindicate)+parseInt(1);
						}else{
							
						}
					
					if(res.boardProfileList.length>0){
						for(var i in res.boardProfileList)
						{
						htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
                        htm += '<div class="media-left buddyImg">';
                        if(res.boardProfileList[i].boardImageURL != null || res.boardProfileList[i].boardImageURL !=""){
                        	htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                        }else{
                        	htm += '<img src="images/boardIcon.png">';
                        }
                           // htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                             //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.boardProfileList[i].boardId+'","buddyUnFanBoard","boardfanboard") >Un Fan</a>';                                    
                               if(res.boardProfileList[i].createdBy!=userId){
                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.boardProfileList[i].boardId+'",'+buddyUnFanToBoard+','+buddyUnFanToBoard+') >Un Fan</a>';
                               }
                               htm += '</div>';
                    	 htm +='</div>';

						}
						nextindicate=parseInt(nextindicate)+parseInt(1);
					}else{
						
					}
					//alert(nextindicate);
					   if(nextindicate!=0){
						   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage('+category2+',10,'+display2+','+pageCall2+')">More records</a>';
					   }else{
						   htm2 +='';
					   }
						   
					
					
						
						}else{
							htm +='No fans';
							 htm2 +='';
						}
				}else{
					//alert('records not found');
					htm +='No fans';
					 htm2 +='';
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
	$.ajax({
		type : "POST",
		url : ctx+"/buddyPublicProfileFanOfList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			if(res!=null)
				{
					var userId=$('#BuddyID').val();

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						for(var i in res.userProfileList)
						{
					 htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                            if(res.userProfileList[i].userImageUrl != null || res.userProfileList[i].userImageUrl !=""){
	                            	htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                            }else{
	                            	htm += '<img src="images/profileIcon.png">';
	                            }
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
	                                //   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+userId+','+res.userProfileList[i].userId+',boardUnFanBuddy,buddytobuddy)">Un Fan</a>';                                    
	                                 htm += '</div>';
	                        	 htm +='</div>';
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
                            //   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+userId+','+res.boardProfileList[i].boardId+',buddyUnFanBoard,boardfanboard)" >Un Fan</a>';                                    
                             htm += '</div>';
                    	 htm +='</div>';

						}
						
						
						}else{
							htm +='No fans';
						}
				}else{
					//alert('records not found');
					htm +='No fans';
				}
			
					$('#AllBoardAllFansList2').html(htm);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
function getallFanlistbypage(category,startNode,display,pageCall)
{
	
	var endnode=10+startNode;
	
	var board={
			fanType : category,
			startNode : startNode,
			endNode : 10
			
			
	};
	
	var buddyUnFanToBoard="'buddyUnFanToBoard'";
	var buddyUnFanToBoard2="'buddyUnFanToBoard2'";
	
	var buddyUnFanToBuddy="'buddyUnFanToBuddy'";
	var buddyUnFanToBuddy2="'buddyUnFanToBuddy2'";
	
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFanOfListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			if(res!=null)
				{
					var userId=$('#BuddyID').val();

					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
							var nextindicate=0;
							if(res.userProfileList!=null && res.userProfileList.length>0)
							{
							
							for(var i in res.userProfileList)
							{
								htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
		                            htm += '<div class="media-left buddyImg">';
		                                if(res.userProfileList[i].userImageUrl != null || res.userProfileList[i].userImageUrl !=""){
		                                	htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                                }else{
		                                	htm += '<img src="images/profileIcon.png">';
		                                }
		                            htm += '</div>';
		                				  htm += '<div class="media-body">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
		                                   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'",'+buddyUnFanToBuddy+','+buddyUnFanToBuddy2+')>Un Fan</a>';                                    
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
	                        if(res.boardProfileList[i].boardImageURL != null || res.boardProfileList[i].boardImageURL !=""){
	                        	htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                        }else{
	                        	htm += '<img src="images/boardIcon.png">';
	                        }
	                           // htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                        htm += '</div>';
	            				  htm += '<div class="media-body">';
	                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.boardProfileList[i].boardId+'",'+buddyUnFanToBoard+','+buddyUnFanToBoard+') >Un Fan</a>';                                    
	                             htm += '</div>';
	                    	 htm +='</div>';

							}
							nextindicate=parseInt(nextindicate)+parseInt(1);
						}else{
							
						}
						
						   if(nextindicate!=0){
							   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">more records</a>';
						   }else{
							   htm2 +='';
							   displaynotification('No more records',1000);
							   
						   }
							   
						
						
						
						}else{
							htm2 +='';
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
function getboardFanlistbypage(category,startNode,display,pageCall)
{
	
	var board={
			fanType : category,
			startNode : startNode,
			endNode : 10 
			
			
	};
	
	var buddyUnFanToBoard="'buddyUnFanToBoard'";
	var buddyUnFanToBoard2="'buddyUnFanToBoard2'";
	
	var buddyUnFanToBuddy="'buddyUnFanToBuddy'";
	var buddyUnFanToBuddy2="'buddyUnFanToBuddy2'";
	
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFanOfListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			if(res!=null)
				{
					var userId=$('#BuddyID').val();

					if(res.boardProfileList!=null)
						{
							var nextindicate=0;
						if(res.boardProfileList.length>0){
							for(var i in res.boardProfileList)
							{
							htm +='<div class="media col-md-6" id="boardfanboard'+res.boardProfileList[i].boardId+'">';
	                        htm += '<div class="media-left buddyImg">';
	                        if(res.boardProfileList[i].boardImageURL != null || res.boardProfileList[i].boardImageURL !=""){
	                        	htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                        }else{
	                        	htm += '<img src="images/boardIcon.png">';
	                        }
	                           // htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                        htm += '</div>';
	            				  htm += '<div class="media-body">';
	                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                              // htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.boardProfileList[i].boardId+'","buddyUnFanBoard","boardfanboard") >Un Fan</a>';                                    
	                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.boardProfileList[i].boardId+'",'+buddyUnFanToBoard+','+buddyUnFanToBoard+') >Un Fan</a>';
	                               htm += '</div>';
	                    	 htm +='</div>';

							}
							nextindicate=parseInt(nextindicate)+parseInt(1);
						}else{
							
						}
						
						   if(nextindicate!=0){
							   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getboardFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">more records</a>';
						   }else{
							   htm2 +='';
							   displaynotification('No more records',1000);
						   }
							   
						
						
						
						}else{
							htm2 +='';
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
	
	var board={
			fanType : category,
			startNode : startNode,
			endNode : 10 
			
			
	};
	var buddyUnFanToBoard="'buddyUnFanToBoard'";
	var buddyUnFanToBoard2="'buddyUnFanToBoard2'";
	
	var buddyUnFanToBuddy="'buddyUnFanToBuddy'";
	var buddyUnFanToBuddy2="'buddyUnFanToBuddy2'";
	
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/userFanOfListPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			if(res!=null)
				{
					var userId=$('#BuddyID').val();

					if(res.userProfileList!=null)
						{
							var nextindicate=0;
							if(res.userProfileList.length>0)
							{
							
							for(var i in res.userProfileList)
							{
								htm +='<div class="media col-md-6" id="buddytobuddy'+res.userProfileList[i].userId+'">';
		                            htm += '<div class="media-left buddyImg">';
		                                if(res.userProfileList[i].userImageUrl != null || res.userProfileList[i].userImageUrl !=""){
		                                	htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                                }else{
		                                	htm += '<img src="images/profileIcon.png">';
		                                }
		                            htm += '</div>';
		                				  htm += '<div class="media-body">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';                                        
		                                 //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'","boardUnFanBuddy","buddytobuddy")>Un Fan</a>';                                    
		                                    htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick=FanAction("'+userId+'","'+res.userProfileList[i].userId+'",'+buddyUnFanToBuddy+','+buddyUnFanToBuddy2+')>Un Fan</a>';		                                   
		                                   htm += '</div>';
		                        	 htm +='</div>';
							}
							nextindicate=parseInt(nextindicate)+parseInt(1);
							}else{
								
							}
						   if(nextindicate!=0){
							 //  htm2 ='<a href="javascript:getUserFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">more records</a>';
							   htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getUserFanlistbypage('+category2+','+page+','+display2+','+pageCall2+')">more records</a>';
						   }else{
							   htm2 +='';
							   displaynotification('No more records',1000);
						   }
							   
						
						
						
						}else{
							htm2 +='';
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
