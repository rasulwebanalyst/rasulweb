/**
 * New node file
 */



 function getFeedComments(id, divid)
 {
	 
	 
	if(id!='')
		{
		 var   projectURL=  document.getElementById('projectURL').value;
		 var   buddyID=  document.getElementById('BuddyID').value;
		 var   buddyName= document.getElementById('BuddyNME').value;
		 
		 
		 var postCmtparams={
				 feedId: id			      
	     };
		 
		 var postinfo=JSON.stringify(postCmtparams);
		 
		 $.ajax({
				type : "POST",
				url : projectURL+"/ViewFeedComment",
				headers : {'Name' : HeaderName},
				dataType: "json",
	   contentType: "application/json; charset=utf-8",
	   data:postinfo,			            
				success : function(res) {
					console.log(res);
					
					var htm='';
					if(res!=null)
						{   
						
						if(res.length>0)
						{
								for(var i in res)
									{
										
											 var time=timeDifferenceCal(res[i].createdDate);
											 console.log(res[i].createdDate);
											htm +='<div class="media">'
					                             +'<div class="media-left">'
					                          //   +'<img src="'+projectURL+'/images/profileIcon.png" class="teamLogo">'
					                             +'<img src="'+res[i].userProfilePic+'" onError="this.onerror=null;this.src='+projectURL+'/images/profileIcon.png;" class="teamLogo">'
					                             +'</div>'
					                             +'<div class="media-body">'
					                             +'<h4 class="media-heading">'+res[i].commentedByName+'<span class="date">'+time+'</span></h4>'
					                             +'<p>'+res[i].comments+'</p>'
					                        +'</div>'
					                      +'</div>';
											
									
									}// for
								
						}else{
							htm +='<div class="media">No Record are found</div>';
						}
								
								
						}else{
							htm +='<div class="media">No Record are found</div>';
						}
					$('#commentListDivPopup').html(htm);
					showViewfeedCommentPopuDiv();
				},
				
				error:function(response){
				alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
	 
	 
 }
 
 function userHitBtn2(id,vid)
 {
	// alert(''+id);
	$('#hittDiv'+vid).hide();
	 $('#hittedDiv'+vid).show();
	 
	 document.getElementById('feed'+vid).href = 'javascript:'; 
		if(id!='')
			{
			 var   projectURL=  document.getElementById('projectURL').value;
			 var   buddyID=  document.getElementById('BuddyID').value;
			 var   buddyName= document.getElementById('BuddyNME').value;
			
			
			 var postHitparams={
					 feedId: id,
					 hittedBy : buddyID,
					 hittedByName : buddyName,
					 active : 1
		     };
			 
			 var postinfo=JSON.stringify(postHitparams);
			
			 $.ajax({
					type : "POST",
					url : projectURL+"/FeedHitByBuddy",					
					headers : {'Name' : HeaderName},
					dataType: "json",
		   contentType: "application/json; charset=utf-8",
		   data:postinfo,			            
					success : function(res) {
						console.log(res);
						if(res!=null)
							{
							
								$('#HitCountDIv'+vid).html('<img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >'+res.hitCount+'');
							
								document.getElementById('feed'+vid).href = 'javascript:';							
								console.log(document.getElementById('feed'+vid).href);
							}
					},
					
					error:function(response){
					alert("Error message"+JSON.stringify(response));
					},
				
					
				}); 
			}else{
				
			}
	 
	 
	 
 }
 
 
 function userHitBtn(id,vid)
 {
	// alert(''+id);
	 
	 var flag="";
	 
	 if($('#hittDiv'+vid).css('display') == 'none')
		 {
		 console.log("hittDiv")
		 flag="remove";
		 $('#hittDiv'+vid).show();
		 $('#hittedDiv'+vid).hide();
		 
		 }else
			 {
			 console.log("hittedDiv")
			 flag="add"
			 $('#hittDiv'+vid).hide();
			 $('#hittedDiv'+vid).show();
			 }
	 
	/*$('#hittDiv'+vid).hide();
	 $('#hittedDiv'+vid).show();*/
	 
	 /*document.getElementById('feed'+vid).href = 'javascript:'; */
		if(id!='')
			{
			 var   projectURL=  document.getElementById('projectURL').value;
			 var   buddyID=  document.getElementById('BuddyID').value;
			 var   buddyName= document.getElementById('BuddyNME').value;
			
			
			 var postHitparams={
					 feedId: id,
					 hittedBy : buddyID,
					 hittedByName : buddyName,
					 active : 1,
					 hitFlag : flag
		     };
			 
			 var postinfo=JSON.stringify(postHitparams);
			
			$.ajax({
					type : "POST",
					url : projectURL+"/FeedHitByBuddy",
					headers : {'Name' : HeaderName},
					dataType: "json",
		   contentType: "application/json; charset=utf-8",
		   data:postinfo,			            
					success : function(res) {
						console.log(res);
						if(res!=null)
							{
							
								$('#HitCountDIv'+vid).html('<img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >'+res.hitCount+'');
							
								/*document.getElementById('feed'+vid).href = 'javascript:';*/							
								console.log(document.getElementById('feed'+vid).href);
							}
					},
					
					error:function(response){
					alert("Error message"+JSON.stringify(response));
					},
				
					
				}); 
			}else{
				
			}
	 
	 
	 
 }
 
 