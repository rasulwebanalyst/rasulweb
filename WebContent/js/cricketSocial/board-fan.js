/**
 * New node file
 */


function boardFansList()
{
	var regBoardId=document.getElementById('boardId').value;
	var regBoardId2="'"+regBoardId+"'";
	var board={
			boardId : regBoardId,
			fanType : 'Board'
	};
	var boardfanboard="'"+"boardfanboard"+"'";
	var boardUnFanBoard="'"+"boardUnFanBoard"+"'";
	var buddyUnFanToBoard="'"+"buddyUnFanToBoard"+"'";
	var buddyUnFanToBoard2="'"+"buddyUnFanToBoard2"+"'";
	
	var category="Board";
	var display="BoardFansListDIV2";
	var pageCall="BoardBoardFansDiv";
	
	var category2="'"+category+"'";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var postinfo=JSON.stringify(board);	
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
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
					
					if(res.boardProfileList!=null)
						{
							/*for(var i in res.boardProfileList)
								{
								
								var userid="'"+res.boardProfileList[i].boardId+"'";
								
								htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                                   htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                                   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanboard)">Un Fan</a>';                                    
	                                 htm += '</div>';
	                        	 htm +='</div>';

								}*/
						
						for(var i in res.boardProfileList)
						{
							var userid="'"+res.boardProfileList[i].boardId+"'";
						htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
                        htm += '<div class="media-left buddyImg">';
                        htm +=' <a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'">';
                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                            htm +='</a>';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
            				  htm +=' <a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'">';
                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
                              htm +='</a>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                               //htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId2+','+userid+',boardUnFanBuddy,boardfanboard)" >Un Fan</a>';                                    
                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId2+','+userid+','+boardUnFanBoard+','+boardfanboard+')" >Un Fan</a>';
                               htm += '</div>';
                    	 htm +='</div>';
                    	 nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						if(nextindicate!=0 ){
							
							if(res.boardCount > 10 ){
								
								 htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+',10,'+display2+','+pageCall2+')">Load more</a>';
								
							}else{
								
							}
							
							  
						   }else{
							   htm2 +='';
							   displaynotification('No more fans available',2000);
						   }
						
						 
						}else{
							htm +='Records not found';
						}
				}else{
					//alert('records not found');
					htm +='Records not found';
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
	var regBoardId=document.getElementById('boardId').value;
	
	var board={
			boardId : regBoardId,
			fanType : 'Board'
	};
	var postinfo=JSON.stringify(board);	
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);
			var htm='';
			if(res!=null)
				{
					
					if(res.boardProfileList!=null)
						{
							for(var i in res.boardProfileList)
								{
								
								var userid="'"+res.boardProfileList[i].boardId+"'";
								
								htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
	                                   htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
	                                //   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn" onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanboard)">Un Fan</a>';                                    
	                                 htm += '</div>';
	                        	 htm +='</div>';

								}
						 
						}else{
							htm +='Records not found';
						}
				}else{
					//alert('records not found');
					htm +='Records not found';
				}
			
					$('#BoardFansListDIV2').html(htm);
			
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}


function ajaxcall(postinfo)
{
	//var projectURL=document.getElementById('projectURL').value;
	//alert(postinfo);
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			return res;
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
}

function userFansList()
{
	var regBoardId=document.getElementById('boardId').value;
	//var projectURL=document.getElementById('projectURL').value;
	var regBoardId2="'"+regBoardId+"'";
	var board={
			boardId : regBoardId,
			fanType : 'Buddy'
	};
	
	var boardfanboard="'"+"boardfanboard"+"'";
	var boardUnFanBoard="'"+"boardUnFanBoard"+"'";
	var buddyUnFanToBoard="'"+"buddyUnFanToBoard"+"'";
	var buddyUnFanToBoard2="'"+"buddyUnFanToBoard2"+"'";
	
	var category="Buddy";
	var display="BoardUserFanListDIv2";
	var pageCall="BoardUserFansDiv";
	
	var category2="'"+category+"'";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var postinfo=JSON.stringify(board);
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
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
					
					if(res.userProfileList!=null)
						{
						/*for(var i in res.userProfileList)
							{
							var userid="'"+res.userProfileList[i].userId+"'";
						 htm +='<div class="media col-md-6">';
		                            htm += '<div class="media-left buddyImg">';
		                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                            htm += '</div>';
		                				  htm += '<div class="media-body" id="boardfanuser'+userid+'">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';   
		                                   console.log(coOwner);
		                                   console.log(findIndexOfArray(coOwner,res.userProfileList[i].userId));
		                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
		                                   var index=coOwnerList.indexOf(res.userProfileList[i].userId);
		                                   if(index!=-1)
		                                	   {
		                                	   
		                                	   }else{
		                                		   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanuser)">Un Fan</a>';
		                                	   }
		                                                                       
		                                 htm += '</div>';
		                        	 htm +='</div>';
							}*/
						
						for(var i in res.userProfileList)
						{
							var userid="'"+res.userProfileList[i].userId+"'";
							htm +='<div class="media col-md-6" id="boardfanuser'+res.userProfileList[i].userId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                            htm +=' <a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
	                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                                htm +='</a>';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                				  htm +=' <a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                  htm +='</a>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';  
	                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
	                                   //if(coOwner.indexOf(res.userProfileList[i].userId))
	                                   console.log(coOwnerList);
	                                   var index=coOwnerList.indexOf(res.userProfileList[i].userId);
	                                   
	                                   console.log(res.userProfileList[i].userId+ 'user status = '+index);
	                                   if(index==-1)
	                                	   {
	                                	   	htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " id="boardFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userid+','+regBoardId2+','+buddyUnFanToBoard+','+buddyUnFanToBoard2+')">Un Fan</a>';
	                                	   }else{
	                                		  
	                                	   }
	                                                                     
	                                 htm += '</div>';
	                        	     htm +='</div>';
	                        	  	nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						

						if(nextindicate!=0){
							  // htm2 ='<a href="javascript:getallFanlistbypage('+page+','+display2+','+pageCall2+')">Load More</a>';
							
							if(res.userProfileCount > 10){
								htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+',10,'+display2+','+pageCall2+')">Load more</a>';
								
							}else{
								
							}
							
						   }else{
							   htm2 +='';
						   }
						
						
						}else{
							htm +='Records not found';
						}
				}else{
					//alert('records not found');
					htm +='Records not found';
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
	var regBoardId=document.getElementById('boardId').value;
	//var projectURL=document.getElementById('projectURL').value;
	
	var board={
			boardId : regBoardId,
			fanType : 'Buddy'
	};
	var postinfo=JSON.stringify(board);
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			if(res!=null)
				{
					
					if(res.userProfileList!=null)
						{
						for(var i in res.userProfileList)
							{
							var userid="'"+res.userProfileList[i].userId+"'";
						 htm +='<div class="media col-md-6">';
		                            htm += '<div class="media-left buddyImg">';
		                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
		                            htm += '</div>';
		                				  htm += '<div class="media-body" id="boardfanuser'+userid+'">';
		                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
		                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';   
		                                   console.log(coOwner);
		                                   console.log(findIndexOfArray(coOwner,res.userProfileList[i].userId));
		                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
		                                   if(coOwner.indexOf(res.userProfileList[i].userId))
		                                	   {
		                                	   
		                                	   }else{
		                                		 //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanuser)">Un Fan</a>';
		                                	   }
		                                                                       
		                                 htm += '</div>';
		                        	 htm +='</div>';
							}

						
						
						
						}else{
							htm +='Records not found';
						}
				}else{
					//alert('records not found');
					htm +='Records not found';
				}
			
					$('#BoardUserFanListDIv2').html(htm);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
function findIndexOfArray(findfrom, findthis) 
{
	console.log('tis '+findthis);
	console.log('findfrom--> '+findfrom);
	for (var i = 0; i < findfrom.length; i++) {
        if (findfrom[i] == findthis) {
            console.log('return value'+i);
        	return i;
        }
    }
    return -1;
}

function getallFanlist()
{
	var regBoardId=document.getElementById('boardId').value;
	//var projectURL=document.getElementById('projectURL').value;
	var regBoardId2="'"+regBoardId+"'";
//	var boardUnFanBuddy="'"+"boardUnFanBuddy"+"'";
	var boardfanboard="'"+"boardfanboard"+"'";
	var boardUnFanBoard="'"+"boardUnFanBoard"+"'";
	var buddyUnFanToBoard="'"+"buddyUnFanToBoard"+"'";
	var buddyUnFanToBoard2="'"+"buddyUnFanToBoard2"+"'";
	var board={
			boardId : regBoardId,
			fanType : 'All'
	};
	var postinfo=JSON.stringify(board);
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var  htm2 = '';
			var nextindicate=0;
			var lengthArray = [];
			if(res!=null)
				{
					
					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						for(var i in res.userProfileList)
						{
							var userid="'"+res.userProfileList[i].userId+"'";
					 htm +='<div class="media col-md-6" id="boardfanuser'+res.userProfileList[i].userId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                            htm +=' <a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
	                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                             htm +='</a>';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                				  htm +=' <a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                  htm +='</a>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';  
	                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
	                                   //if(coOwner.indexOf(res.userProfileList[i].userId))
	                                   console.log(coOwnerList);
	                                   var index=coOwnerList.indexOf(res.userProfileList[i].userId);
	                                   
	                                   console.log(res.userProfileList[i].userId+ 'user status = '+index);
	                                   if(index==-1)
	                                	   {
	                                	   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " id="boardFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userid+','+regBoardId2+','+buddyUnFanToBoard+','+buddyUnFanToBoard2+')">Un Fan</a>';
	                                	   }else{
	                                		   
	                                	   }
	                                                                     
	                                 htm += '</div>';
	                        	     htm +='</div>';
	                        	 nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						
						for(var i in res.boardProfileList)
						{
							var userid="'"+res.boardProfileList[i].boardId+"'";
						htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
                        htm += '<div class="media-left buddyImg">';
                        htm +=' <a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'">';
                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                            htm +='</a>';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
            				   htm +=' <a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'">';
                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
                              htm +='</a>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                               //htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId2+','+userid+',boardUnFanBuddy,boardfanboard)" >Un Fan</a>';                                    
                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId2+','+userid+','+boardUnFanBoard+','+boardfanboard+')" >Un Fan</a>';
                               htm += '</div>';
                    	 htm +='</div>';
                    		nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						
											
												if(nextindicate!=0){
													
													
													//if(res.userProfileList.length >= 10 || res.boardProfileList.length >= 10){
														//alert("indide if");
														//var content=$("#BoardAllFansDiv").html()
														///alert(content);
													if(res.userProfileCount > 10 || res.boardCount > 10){
														
														htm2 ="<a class='btn btn-default dBtn pull-right lodbtn' href=javascript:getallFanlistPagination('All',10,'AllBoardAllFansList2','BoardAllFansDiv')>Load more</a>";
														$("#BoardAllFansDiv").html(htm2);
														//var content=$("#BoardAllFansDiv").html();
													  
														$("#BoardAllFansDiv").show();					
													}else{
														
														htm2 = '';
														$("#BoardAllFansDiv").html(htm2);
													}
													
												   }else{
													   //alert("Inside else");
													   var hhtm='';
													   $("#BoardAllFansDiv").html(hhtm);
												   }
						
						}else{
							htm +='Records not found';
						}
				}else{
					//alert('records not found');
					htm +='Records not found';
				}
			
					$('#AllBoardAllFansList2').html(htm);
					//$('#loadMoreAll').html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}
function getallFanlist2()
{
	var regBoardId=document.getElementById('boardId').value;
	//var projectURL=document.getElementById('projectURL').value;
	
	var board={
			boardId : regBoardId,
			fanType : 'All'
	};
	var postinfo=JSON.stringify(board);
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansList",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			if(res!=null)
				{
					
					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
						for(var i in res.userProfileList)
						{
							var userid="'"+res.userProfileList[i].userId+"'";
					 htm +='<div class="media col-md-6" id="boardfanuser'+userid+'">';
	                            htm += '<div class="media-left buddyImg">';
	                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';  
	                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
	                                   if(coOwner.indexOf(res.userProfileList[i].userId))
	                                	   {
	                                	   	
	                                	   }else{
	                                		 //  htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanuser)">Un Fan</a>';
	                                	   }
	                                                                     
	                                 htm += '</div>';
	                        	 htm +='</div>';
						}
						
						for(var i in res.boardProfileList)
						{
							var userid="'"+res.boardProfileList[i].boardId+"'";
						htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
                        htm += '<div class="media-left buddyImg">';
                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                           //    htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanboard)" >Un Fan</a>';                                    
                             htm += '</div>';
                    	 htm +='</div>';

						}
						
						
						}else{
							htm +='Records not found';
						}
				}else{
					//alert('records not found');
					htm +='Records not found';
				}
			
					$('#AllBoardAllFansList2').html(htm);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

function getallFanlistPagination(category,startNode,display,pageCall)
{
	var regBoardId=document.getElementById('boardId').value;
	//var projectURL=document.getElementById('projectURL').value;
	var regBoardId2="'"+regBoardId+"'";
	var uId=$('#BuddyID').val();
	/*var board={
			fanType : category,
			userId : uId,
			startNode : startNode,
			endNode : '10'
	};*/
	var board={
			boardId : regBoardId,
			fanType : category,
			startNode : startNode,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var category2="'"+category+"'";
	var startNode2 = "'"+startNode+",";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	
	var boardfanboard="'"+"boardfanboard"+"'";
	var boardUnFanBoard="'"+"boardUnFanBoard"+"'";
	var buddyUnFanToBoard="'"+"buddyUnFanToBoard"+"'";
	var buddyUnFanToBoard2="'"+"buddyUnFanToBoard2"+"'";
	
	var page=parseInt(startNode)+parseInt(10);
	
	//alert(page);
	
	$.ajax({
		type : "POST",
		url : ctx+"/boardFansListPagination",
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
					//var totalCount = 
					
		//alert(userCount+"board count "+boardCount);
					
					if(res.userProfileList!=null || res.boardProfileList!=null)
						{
						
					
						for(var i in res.userProfileList)
						{
							var userid="'"+res.userProfileList[i].userId+"'";
					 htm +='<div class="media col-md-6" id="boardfanuser'+res.userProfileList[i].userId+'">';
	                            htm += '<div class="media-left buddyImg">';
	                            htm +=' <a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
	                                htm += '<img src="'+res.userProfileList[i].userImageUrl+'">';
	                                htm +='</a>';
	                            htm += '</div>';
	                				  htm += '<div class="media-body">';
	                				  htm +=' <a href="'+ctx+'/buddy/'+res.userProfileList[i].firstName+'/'+res.userProfileList[i].userId+'">';
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].firstName+'</h4>';
	                                  htm +='</a>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';  
	                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
	                                   //if(coOwner.indexOf(res.userProfileList[i].userId))
	                                   console.log(coOwnerList);
	                                   var index=coOwnerList.indexOf(res.userProfileList[i].userId);
	                                   
	                                   console.log(res.userProfileList[i].userId+ 'user status = '+index);
	                                   if(index==-1)
	                                	   {
	                                	   	htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " id="boardFan'+res.userProfileList[i].userId+'" onclick="FanAction('+userid+','+regBoardId2+','+buddyUnFanToBoard+','+buddyUnFanToBoard2+')">Un Fan</a>';
	                                	   }else{
	                                		  
	                                	   }
	                                                                     
	                                 htm += '</div>';
	                        	     htm +='</div>';
	                        	  	nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						
						
						
						
						for(var i in res.boardProfileList)
						{
							var userid="'"+res.boardProfileList[i].boardId+"'";
						htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
                        htm += '<div class="media-left buddyImg">';
                        htm +=' <a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'">';
                            htm += '<img src="'+res.boardProfileList[i].boardImageURL+'">';
                        htm +='</a>';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
                              htm += '<h4 class="media-heading">'+res.boardProfileList[i].boardName+'</h4>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                               //htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId2+','+userid+',boardUnFanBuddy,boardfanboard)" >Un Fan</a>';                                    
                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId2+','+userid+','+boardUnFanBoard+','+boardfanboard+')" >Un Fan</a>';
                               htm += '</div>';
                    	 htm +='</div>';
                    	 nextindicate=parseInt(nextindicate)+parseInt(1);
						}
						if(nextindicate!=0){
						//	alert('category :'+category);
							
							
							if(category == 'All'){
								//alert("category all");
								if(page < userCount || page < boardCount){
								
									htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';								
								}else{
								
									//html2='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
									html2='';
								}
							}else if(category == 'Buddy'){
								if(page < userCount){
								
									htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
								}else{
									html2='';
							
								}
							}else{
								if(page < boardCount){
									htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')" >Load more</a>';
								}else{
									html2='';
								}
							}
							
								
							
						   }else{
							   //htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
							   htm2 = '';
							   displaynotification('No more fans available',2000);
						   }
						
						
						}else{
							//htm +='Records not found';
						}
				}else{
					//alert('records not found');
				//	htm +='Records not found';
				}
			
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
			if(nextindicate!=0)
				$("#"+pageCall).show();
			else
				$("#"+pageCall).hide();
			//$("#loadMoreAll").html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}

