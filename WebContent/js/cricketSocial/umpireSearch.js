/**
 * New node file
 */

function getUmpireList(elem,divId,hiddenId){
		
	 	var key=$(elem).val();
	 	var textBoxId=$(elem).attr('id');
		$('#error').html('');
	 	console.log('value : '+key);
	 	console.log('textBoxI : '+textBoxId);
	 	var bid=$('#leaguBoardboardId').val();
	 	 var search={
	 			searchKey : key,
	 			boardId : bid
	            };
		   var postinfo=JSON.stringify(search);
		   
	 	if(key.length>2) {
	 			    $.ajax({
	 						type : "POST",
	 						//url : ctx+"/umpireCheckList?term="+key,
	 						url : ctx+"/umpireCheckListWithLeauge",
	 						dataType: "json",
	 			        contentType: "application/json; charset=utf-8",
	 			        data : postinfo,					            
	 						success : function(res) {
	 							console.log(res);	
	 							var html="";
	 							var name = null;
	 							if(res != null){
	 								var users=res;
	 								console.log(JSON.stringify(users));
	 								html+="<ul style='width: 70%'>";
	 								
	 								if(users!= null && users.length >0){
	 									for(var i in users){
	 										
	 										if(users[i].fullName != null){
	 											 name=users[i].fullName;
	 										}
	 								
	 								
	 								html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
			                            
			                          
			                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	}
			                      	html += " ";
			                      	html+=""+name+"";
			                          html+='</div>'
			                       	 +'</div>'
			              			+'</li>';
	 									}
	 								}else{
	 									html+="<li>No results found...</li>";
	 								}
	 								
	 								
											html+="</ul>";
	     							$('#'+divId).html(html);
	     							$('#'+divId).show();
	     						
	 							}else{
										html+="<ul>";
										html+="<li>No results found...</li>";
											html+="</ul>";
	     							$('#'+divId).html(html);
	     							$('#'+divId).show();
	 							}	  
	 						},
	 						
	 						error:function(response){
	 							$('#'+divId).hide();
	 						console.log("Error message"+JSON.stringify(response));
	 						},
	 					
	 						
	 					}); 
	 				
	 	   }else{
	 		   $('#'+divId).hide();
	 		 $("#addMemberIDDIV").val('');
	 	   }
	   
	 } 

