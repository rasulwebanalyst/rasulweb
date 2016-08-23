/**
 * New node file
 */
function playersearch(elem,divId,hiddenId){
	
 	var key=$(elem).val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	var keyobj={
 			searchQuery : key	
 	};
 	if(key.length>1) {
 			    $.ajax({
 						type : "POST",
 						url : ctx+"/playerSearch",
 						dataType: "json",
 			        contentType: "application/json; charset=utf-8",
 			        data : JSON.stringify(keyobj),					            
 						success : function(res) {
 							console.log(res);	
 							var html="";
 							
 							if(res != null){
 								var users=res;
 								console.log(JSON.stringify(users));
 								html+="<ul style='width: 210px;'>";
 								
 								if(users!= null && users.length >0){
 									for(var i in users){
 										var name=users[i].name;
 								
 								
 								//html +="<li onclick=playerSelect(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
 								 /* html +="<li><div onclick=playerSelect(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
  
		                          
		                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
	                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

	                          	}else{
	                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
	                          	}
		                      	html+='</div>';
		                      	html+='<div class="media-body">';
		                      	html += " ";
		                      
		                      	html+=""+name+"";		                      	
		                          html+='</div>'
		                       	 +'</div>';
		                          html +='</div>';
		                          if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN" ||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
		                          	html += '<span>'+users[i].city+'</span>';
		                          }else{
		                          	html += '<span>'+users[i].city+','+users[i].state+'</span>'; 
		                          }

		                          html +='</li>';*/
		                          
		                          
		                          
		                          
		                          html +="<li class='selection-item' onclick=playerSelect('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'><a>";

			                          
			                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img onError="userErrorDefaultImg(this)" src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	}
			                      	html += "</a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading' style='text-align: left'> ";
			                      	html+=""+name+"<br></a>";
			                          if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
			                        		html += '<span class="auto-black">'+users[i].city+'</span>';
			                        	}else{
			                        		html += '<span class="auto-black">'+users[i].city+','+users[i].state+'</span>'; 
			                        	}

			              			html+='</h4><div class="headRight" ></div></div></div></li>';
		                          
		                          
		                          
		                          
		                          
		                          
 									}
 								}else{
								//	html+="<ul style='width: 210px;' >";
								//	html+="<li></li>";
								///	html+="<li></li>";
									html+="<li>No matches found...</li>";
									//	html+="</ul>";
     							
 							}	
 								
 								
										html+="</ul>";
     							$('#'+divId).html(html);
     							$('#'+divId).show();
     						
 							}else{
									html+="<ul style='width: 210px;' >";
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
 	   }
   
 } 



function playerSelect(elem,textBox,divId,userId,hiddenId){
	$("#compareerror").text('');
		//$('#'+textBox).val($('#teamsearch'+userId).text());
		var img = document.getElementById('teamsearch'+userId);
	//	alert(img.src);
		//$('#'+textBox).val($(elem).text());
		var name=elem.replace(/-/g," ");
   		$('#'+textBox).val(name);
		$('#'+divId).hide();	
		$('#'+hiddenId).val(userId);	
		
} 

function playerValidation()
{
	/*var uid=document.getElementById('uid').value;

	var uid1=document.getElementById('uid1').value;
	var uid2=document.getElementById('uid2').value;
	var uid3=document.getElementById('uid3').value;
	*/
	/*if(uid!="" || uid1!="" || uid2!="" || uid3!="")
		{
			return true;
		}else{
			
			//showDiv(message,sec,id,id2)
			showDiv('Please select player to compare',2000,'compareerror','compareerror');
			return false;
		}*/
	
	if(playerValidation()==true){
		return true;
	}else{
		return false;
	}
	
}

function playerValidation(){
	var uid=document.getElementById('uid').value;

	var uid1=document.getElementById('uid1').value;
	var uid2=document.getElementById('uid2').value;
	var uid3=document.getElementById('uid3').value;
	var count=0;
	if(uid!="")
	{
		count=parseInt(count)+parseInt("1");
	}
	if(uid1!="")
	{
		count=parseInt(count)+parseInt("1");
	}
	if(uid2!="")
	{
		count=parseInt(count)+parseInt("1");
	}
	if(uid3!="")
	{
		count=parseInt(count)+parseInt("1");
	}
	
	if(count>1){
		$("#compareerror").text('');
		return true;
	}else if(count==0){
		showDiv1('Please select player to compare','compareerror','compareerror');
		return false;
	}else{
		//displaynotification("Select at least two players to compare",1500);
		showDiv1('Select atleast two players to compare','compareerror','compareerror');
		return false;
		
	}
	
}

function showDiv1(message,id,id2)
{
			 $('#'+id2).text(message);
			 $("#"+id).show();
		 	//setTimeout(function() {$("#"+id).fadeOut(sec); }, sec);
}

function showPlayerYearInfo(ele)
{
	var val=ele.value;
	var pval=document.getElementById('filterByYear').value;
		document.getElementById('filterByYear').value=val;
	
	//alert(val);
	if(val.length>2 && pval!=val)
		{
				
			$("#playerCompareForm" ).submit();
		}
	
}


$(function(){
	
	$("body").click(function(){
		$("#addMemberautoCompleteDIV").fadeOut();
		$("#addMemberautoCompleteDIV1").fadeOut();
		$("#addMemberautoCompleteDIV2").fadeOut();
		$("#addMemberautoCompleteDIV3").fadeOut();
		
		});

		 $("#addMemberNameDIV").click(function(e){
			 e.stopPropagation();
				$("#addMemberautoCompleteDIV").show();
				$("#addMemberautoCompleteDIV1").fadeOut();
				$("#addMemberautoCompleteDIV2").fadeOut();
				$("#addMemberautoCompleteDIV3").fadeOut();
		});    	
	
		 $("#addMemberNameDIV1").click(function(e){
				$("#addMemberautoCompleteDIV1").show();
				 e.stopPropagation();
				 	$("#addMemberautoCompleteDIV").fadeOut();
					$("#addMemberautoCompleteDIV2").fadeOut();
					$("#addMemberautoCompleteDIV3").fadeOut();
				 
		});
		 $("#addMemberNameDIV2").click(function(e){
				$("#addMemberautoCompleteDIV2").show();
				 e.stopPropagation();
				 	$("#addMemberautoCompleteDIV").fadeOut();
					$("#addMemberautoCompleteDIV1").fadeOut();
					$("#addMemberautoCompleteDIV3").fadeOut();
		});    	
	
		 $("#addMemberNameDIV3").click(function(e){
				$("#addMemberautoCompleteDIV3").show();
				 e.stopPropagation();
				 	$("#addMemberautoCompleteDIV").fadeOut();
					$("#addMemberautoCompleteDIV2").fadeOut();
					$("#addMemberautoCompleteDIV1").fadeOut();
		});    	
	
		 

	
	
});
