/**
 * 
 */

function getFanOfList(status)
{
	var regBoardId=document.getElementById('boardId').value;
	//var projectURL=document.getElementById('projectURL').value;
	var coOwner=[];
	var board={
			boardId : regBoardId,
			fanType : status
	};
	var postinfo=JSON.stringify(board);
	//var res=ajaxcall(postinfo);
//	alert(JSON.stringify(res));
	$.ajax({
		type : "POST",
		url : ctx+"/boardFanOfList",
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
	                                  htm += '<h4 class="media-heading">'+res.userProfileList[i].fullName+'</h4>';
	                                   htm += '<span class="date">'+res.userProfileList[i].city+'</span>';  
	                                 //  if(findIndexOfArray(coOwner,res.userProfileList[i].userId)!=-1)
	                                   if(coOwner.indexOf(res.userProfileList[i].userId))
	                                	   {
	                                	   	
	                                	   }else{
	                                		   htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanuser)">Un Fan</a>';
	                                	   }
	                                                                     
	                                 htm += '</div>';
	                        	 htm +='</div>';
						}
						
						for(var i in res.boardProfileList)
						{
							var userid="'"+res.boardProfileList[i].boardId+"'";
						htm +='<div class="media col-md-6" id="boardfanboard'+userid+'">';
                        htm += '<div class="media-left buddyImg">';
                            htm += '<a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'"><img src="'+res.boardProfileList[i].boardImageURL+'">';
                        htm += '</div>';
            				  htm += '<div class="media-body">';
                              htm += '<h4 class="media-heading"><a href="'+ctx+'/'+res.boardProfileList[i].boardName+'/board/'+res.boardProfileList[i].boardId+'">'+res.boardProfileList[i].boardName+'</a></h4>';
                               htm += '<span class="date">'+res.boardProfileList[i].city+'</span>';                                        
                               htm +=  '<a class="btn   btn-default btn-sm  btn-sm  blockBtn " onclick="FanAction('+regBoardId+','+userid+',boardUnFanBuddy,boardfanboard)" >Un Fan</a>';                                    
                             htm += '</div>';
                    	 htm +='</div>';

						}
						
						
						}else{
							htm +="<div style='color: red;'>Records not found</div>";
						}
				}else{
					//alert('records not found');
					htm +="<div style='color: red;'>Records not found</div>";
				}
			
			if(status=='All'){
				
					$('#AllBoardAllFansList2').html(htm);
				
				}else if(status=='Board'){
					
					$('#BoardFansListDIV2').html(htm);
				}else if(status=='Buddy'){
					$('#BoardUserFanListDIv2').html(htm);
				}
					
					
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
}