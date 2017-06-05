 $(document).ready(function(){

$('#postfrom').validate({

rules: {

	content : {
						required : true,
						minlength : 2
		}
		
},
messages :
{
	content : {
			
			required : "Please enter your delivery",
			minlength : "Please enter atleast 2 character's"
			
	}
	
},
 submitHandler: function(form) {
	
	 var   projectURL=  document.getElementById('projectURL').value;
	 var   content=  document.getElementById('content').value;
	 var buddyIMG= document.getElementById('buddyIMG').value;
	 var   buddyID=  document.getElementById('BuddyID').value;
	 var feedto=$('input[name="feedTo"]:checked').val();
	// alert(feedto);
	 
	 var publiccheck=$("#publiccheck").val()
	 var postfeed;
	 
	 if(publiccheck == 'FromPublic')
		 {
		 var publicid=$("#Buddypublicid").val();
		 
		 postfeed={
				 content:content,
				 feedType : 'Buddy',
				 postedBy : buddyID,
				 fileAttachement:feedImagesArray,
				 feedTo : feedto,
				 publicProfileId : publicid,
				 feedType : "PublicBuddy"
		 };
		 
		 }else{
	 
  postfeed={
		 content:content,
		 feedType : 'Buddy',
		 postedBy : buddyID,
		 fileAttachement:feedImagesArray,
		 feedTo : feedto
 };
		 }
	 console.log(JSON.stringify(postfeed));
	 	 
     var postinfo=JSON.stringify(postfeed);
     $.ajax({
			type : "POST",
			url : projectURL+"/postFeed",
			headers : {'Name' : HeaderName},
			dataType: "json",
         contentType: "application/json; charset=utf-8",
         data:postinfo,			            
			success : function(res) {
				console.log(JSON.stringify(res));
				
				var htm ='';
				$('.uploadedFiles').empty();
				var contentwithurl="";
				var contentwithid="";
				 
				if(res!=null)
					{
					
					var date2= new Date(res[0].createdDate);
					var d1= new Date();
					 var  result;
					 var hours = Math.abs(d1 - date2) / 36e5;
					 var min=Math.abs(d1 - date2) / (60*1000);
					 var sec=Math.abs(d1 - date2) /(1000);
					 console.log("hours"+hours);
					 console.log("min"+min);
					 console.log("sec"+sec);
				 if(sec<=60)
				 {
				 	result=Math.round(sec)+' sec';
				 	
				 }else if(min<60){
				 	result=Math.round(min)+' minutes';
				 }else{
				 	result=Math.round(hours)+' hours';
				 }
				 
				 var userImage=$('#userImageId').val();
				 
					 var fid="'"+res[0].feedId+"'";
					 var feedtype="'Buddy'";
					htm +='<div class="col-md-12 feedBlock whiteBox feedDiv'+res[0].feedId+'" >'           	
	               
					 +'<div class="media feedDiv'+res[0].feedId+'">'
	                +'<div class="media-left">'
	                +'<a href="#">';
					if(userImage != null || userImage !=""){
						htm +='<img src="'+userImage+'" class="nav-avatar">';
					}else{
						htm +='<img src="'+projectURL+'images/profileIcon.png" class="nav-avatar">';
					}
						
					htm +='</a>'
	              +'</div>'
	              +'<div class="media-body">'
	                +'<h4 class="media-heading">'+res[0].postedByName+'</h4>'
	                +'<div class="headRight">'
	                
	                +'<div class="dropdown">'
                	+'<p id="HitCountDIv'+res[0].feedId+'" onmouseout="removeHitList('+fid+')" onmouseover="getHitList('+fid+')" onclick="gitHitedList('+fid+')" class="trash-holder"><img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >0</p>'
                	+'<div id="Hitlist_'+res[0].feedId+'"></div>'
                
                +'</div>'
	                
	                
	                +'<p class="trash-holder" onclick="feedDelete('+fid+')" title="Delete"  ><i class="fa fa-trash trash"></i> </p>'
	                +'<p class="trash-holder"  onclick="feedEdit('+fid+')" title="Edit"  ><i class="fa fa-pencil trash"></i> </p>'
	                +	'<p id="commentCount'+res[0].feedId+'" onclick=getAllComments("'+res[0].feedId+'")><i class="fa fa-commenting"></i>0</p>'
	                +'</div>';
	                
	                //+'<span class="postTime">'+result+'</span>'
					htm +='<span class="postTime">Just now</span>'
	                +'<div class="galleryBlock">';
					var attachments=res[0].fileAttachement;
					console.log("attachments"+JSON.stringify(attachments));
	                if(attachments != null && attachments.length>0){
	                	for(var i=0;i<attachments.length;i++){
	                		
	                		if(attachments[i].attachmentType == 'video')
	                			{
	                			htm +='<video width="100%" controls>';
	                			htm +='<source src="'+attachments[i].attachmentUrl	 +'" type="video/mp4">';
	                				htm +='</video>';  
	                			}else{
	                				htm +='<img src="'+attachments[i].attachmentUrl	 +'">';
	                			}
	                	}
	                }
	                contentwithurl=res[0].content;
	                contentwithid=res[0].feedId;
	                htm +='<p id='+res[0].feedId+'>'+res[0].content+'</p>'               	
	                	+'</div>'
	                
	             //   +'<a href="javascript:addfeedHit('+fid+')" class="shareLink"><i class="fa hitIcon"></i> Hit</a>'
	                	+'<div class="hitIconDiv" id="hittDiv'+res[0].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid+')" class="shareLink" id="feed'+res[0].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>'
	                	+'<div class="hitIconDiv" id="hittedDiv'+res[0].feedId+'" style="display: none;"><a href="javascript:userHitBtn('+fid+','+fid+')" class="shareLink" style="color: #4c9fe1;"><img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" > Unhit</a></div>'
	                	
	                	
	                	
	                +'<a href="javascript:showCommentDIV('+fid+')" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>'
	               // +'<a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>'
	                +'<a href="javascript:shareMenus('+fid+')" class="shareLink" id="share${feed.feedId}" ><i class="fa fa-share"></i> Share</a>'
                    +'<span class="shareMenus" id="shareMenus'+res[0].feedId+'" style="display: none;">'
                     +'<input type="radio" class="" checked id="allOption'+res[0].feedId+'" name="shareOption'+res[0].feedId+'"  onclick="shareFeed2('+fid+','+feedtype+',this.value)" value="All">'
                     +'<label for="allOption'+res[0].feedId+'"><span></span>All</label>'                                            
                     +'<input type="radio" class="" id="buddyOption'+res[0].feedId+'" name="shareOption'+res[0].feedId+'" onclick="shareFeed2('+fid+','+feedtype+',this.value)" value="Buddy">'
                     +'<label for="buddyOption'+res[0].feedId+'"><span></span>Buddy</label>'                                          
                     +'</span>'
	              +'</div>'
	            +'  </div>'
	            +'<div class="postBlock commentBlock" id="feedContenDIVt'+res[0].feedId+'" style="display: none;">'
                +'<img src="'+buddyIMG+'" onError="this.onerror=null;this.src=/images/profileIcon.png;" class="nav-avatar">'
                +'<textarea class="form-control" id="feedcontent'+res[0].feedId+'" placeholder="Write a Comment"></textarea>'
                +'<div style="color: red; margin-left: 54px;" id="feedcmderrorDiv'+res[0].feedId+'"></div>'
                +'<a href="#" class=""><button type="button" class="pull-right btn blueBtn" name="feedcommentbtn" onclick="sendFeedComments(this)" value="'+res[0].feedId+'">BOWL</button></a>'
                +'</div>'
	            
	            +'</div>';
					
					}
				
				$("#postedresult").prepend(htm);
				document.getElementById('content').value='';
				// $('#fileDiv').html('');
				
				
				contentwithurl=res[0].content;
                contentwithid=res[0].feedId;
				
                $("#"+contentwithid).html(contentwithurl);
				
				 $('#loading').hide();
				$('#NoFeedMsgDIV').html('');
				 feedImagesArray.length=0;
			},
			
			error:function(response){
			console.log("Error message"+JSON.stringify(response));
			$('#loading').hide();
			$('#NoFeedMsgDIV').html('');
			 feedImagesArray.length=0;
			 $('#NoFeedMsgDIV').remove();
			},
		
			
		}); 
	 
	 
  }

});



});
 
 function feedValidation()
 {
	 $('#loading').show();
	 //alert("$('#postfrom').form()---"+$('#postfrom').valid());
	 
	 if($('#postfrom').valid())
		 {
		 	return true;
		 }else{
			 
			 $('#loading').hide();
			 return false;
		 }
 }
 function timeDifferenceCal(feeddate)
 {
 
	//alert("feeddate"+feeddate);
	 var date2= new Date(feeddate);
	 var d1= new Date();
	 var date1= new Date(d1.getTime() + d1.getTimezoneOffset() * 60000);

 var  result;
 var hours = Math.abs(date1 - date2) / 36e5;
 var min=Math.abs(date1 - date2) / (60*1000);
 var sec=Math.abs(date1 - date2) /(1000);
 console.log("date2"+date2);

 console.log("date1"+date1);
 

 console.log("hours"+hours);
 console.log("min"+min);
 console.log("sec"+sec);
 
 if(sec<=60)
 {
 	result=Math.round(sec)+' sec';
 	
 }else if(min<60){
 	result=Math.round(min)+' minutes';
 }else if(hours<=24){
 	result=Math.round(hours)+' hours';
 }else{
	 	var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
		result=Math.round(Math.abs((d1.getTime() - date2.getTime())/(oneDay)))+' days';
 }
/*
 }else if(min<60){
	result=Math.round(min)+' minutes';
}else if(hours<=24){
	result=Math.round(hours)+' hours';
}else{
	 var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
	result=Math.round(Math.abs((d1.getTime() - date2.getTime())/(oneDay)))+' days';
}
 * */
 return result;
 }

 
 function showCommentDIV(id)
 {
	 //feedContenDIVt
	 $('#feedContenDIVt'+id).show();
	 
	 
 }
 
 function sendFeedComments(elem){
	 
		//alert('comment----------> '+elem.value);
		var id=elem.value;
		var comment=$('#feedcontent'+id).val();
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
						$('#feedContenDIVt'+id).hide();
						$('#feedcontent'+id).val('');
						//var count=$('#commentCount'+id).val();
						var count=Number($("#commentCount"+id).text());
						//alert('count :'+count);
						var counin=parseInt(count,10)+parseInt("1",10);
						//id="commentCount${feed.feedId}">
						$('#commentCount'+id).html('<i class="fa fa-commenting"></i>'+counin);
						
						$('#NoFeedMsgDIV').html('');
					},
					
					error:function(response){
					//alert("Error message"+JSON.stringify(response));
					},
				
					
				}); 
			}else{
				$('#feedcmderrorDiv'+id).text('Please enter your delivery');
			}
		
		 
		 
	   }
 
 
 
 function getAllComments(id)
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
										
										//	 var time=timeDifferenceCal(res[i].createdDate);
									
									 var time=feedDisplayDate2(res[i].createdDate);
											 console.log(''+res[i].createdDate);
											 console.log('userProfilePic---> '+res[i].userProfilePic);
											htm +='<div class="media">'
					                             +'<div class="media-left">'
					                         //    +'<img src="'+projectURL+'/images/profileIcon.png" class="teamLogo">'
					                             +'<img src="'+res[i].userProfilePic+'" onError="this.onerror=null;this.src='+projectURL+'/images/profileIcon.png;" class="teamLogo">'
					                             +'</div>'
					                             +'<div class="media-body">'
					                             +'<h4 class="media-heading">'+res[i].commentedByName+' <span class="trash-holder"> <i class="fa fa-trash trash"></i> </span><br> <span class="date">'+time+'</span></h4>'
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
				//alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
	 
	 
 }
 
 function showViewfeedCommentPopuDiv()
 {
 	
 	$('#ViewfeedCommentPopuDiv').show();
 	
 }
 
 function hideViewfeedCommentPopuDiv()
 {
 	//alert(hiiiiiiii);
 	$('#ViewfeedCommentPopuDiv').hide();
 }
 
 function commentpopuphide()
 {

	 	//$('#ViewfeedCommentPopuDiv').hide();
	 //alert('d');
	 $('#ViewfeedCommentPopuDiv').hide();
 }
 
 

 
 
 function addfeedHit(id)
 {
	 
	 
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
					console.log('feed hit '+res);
					if(res!=null)
						{
						
							$('#HitCountDIv'+id).html('<img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >'+res.hitCount+'');
							//$('#hitAchor'+id).attr("href", "#");
							//hitAchor${feed.feedId}
							
							document.getElementById('hitAchor'+id).href = '#';
							
						}
				},
				
				error:function(response){
				 console.log("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
	 
	 
 }
 
 function shareFeed(feedId,sharedFrom){
	 if(feedId!='')
		{
		 alert(feedId);
		 var   buddyID=  document.getElementById('BuddyID').value;
		 var   buddyName= document.getElementById('BuddyNME').value;
		 var postHitparams={
				 feedId: feedId,
				 hittedBy : buddyID,
				 hittedByName : buddyName,
				 active : 1,
				 sharedFrom : sharedFrom
	     };
		 
		 var postinfo=JSON.stringify(postHitparams);
		 
		 $.ajax({
				type : "POST",
				url : ctx+"/shareFeed",
				headers : {'Name' : HeaderName},
				dataType: "json",
				  contentType: "application/json; charset=utf-8",
	   data:postinfo,			            
				success : function(res) {
					console.log(res);
					
					//$('#share'+feedId).html('<i class="fa fa-share"></i> Shared');
				//	alert('shared successfully');
					displaynotification('shared successfully',2000);
					// $('#share'+feedId).attr("disabled","disabled");
					//<i class="fa fa-share"></i>
				},
				
				error:function(response){
				 console.log("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
 }
 function shareMenus(id)
 {
	 $('#shareMenus'+id).show();
	 
 }
 function shareFeed2(feedId,sharedFrom,sharedTo){
	 if(feedId!='')
		{
		 var   buddyID=  document.getElementById('BuddyID').value;
		 var   buddyName= document.getElementById('BuddyNME').value;
		
		
		 var postHitparams={
				 feedId: feedId,
				 hittedBy : buddyID,
				 hittedByName : buddyName,
				 active : 1,
				 sharedFrom : sharedFrom,
				 sharedTo : sharedTo
	     };
		 
		 var postinfo=JSON.stringify(postHitparams);
		 
		 $.ajax({
				type : "POST",
				url : ctx+"/shareFeed",
				headers : {'Name' : HeaderName},
				dataType: "json",
				  contentType: "application/json; charset=utf-8",
	   data:postinfo,			            
				success : function(res) {
					console.log(res);
					
					//$('#share'+feedId).html('<i class="fa fa-share"></i> Shared');
					$('#shareMenus'+feedId).hide();
					$('input[name=shareOption'+feedId+']').attr('checked', false);
					displaynotification('shared successfully',2000);
					
					// $('#share'+feedId).attr("disabled","disabled");
					//<i class="fa fa-share"></i>
				},
				
				error:function(response){
				 console.log("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
 }
 function shareFeedByBuddy(feedID)
 {
	 if(feedID!='')
		{
		 
		 var   buddyID=  document.getElementById('BuddyID').value;
		 var   buddyName= document.getElementById('BuddyNME').value;
		
		
		 var postHitparams={
				 feedId: feedID,
				 hittedBy : buddyID,
				 hittedByName : buddyName,
				 active : 1,
				 sharedFrom : "Buddy"
	     };
		 
		 var postinfo=JSON.stringify(postHitparams);
		 
	 $.ajax({
			type : "POST",
			url : ctx+"/shareFeed",
			headers : {'Name' : HeaderName},
			dataType: "json",
contentType: "application/json; charset=utf-8",
data:postinfo,			            
			success : function(res) {
				console.log(res);
				if(res!=null)
					{
					
					
					}
			//	$('#share'+feedID).html('<i class="fa fa-share"></i> Shared');
			//	 $('#share'+feedID).attr("disabled","disabled");
				// $('#share'+feedID).attr('href','javascript:');
				displaynotification('shared successfully',2000);
			},
			
			error:function(response){
			 console.log("Error message"+JSON.stringify(response));
			},
		
			
		});
	}
 }
 
 function addfeedHit2(id, ele)
 {
	 
	 
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
						console.log('feed hit '+res);
						if(res!=null)
							{
								console.log(res);
								$('#HitCountDIv'+id).html('<img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >'+res.hitCount+'');
								//$('#hitAchor'+id).attr("href", "#");
								//hitAchor${feed.feedId}
								
								console.log('hitAchor'+id);
								document.getElementById('hitAchor'+id).href = 'javascript:';
								//ele.disabled=true;
								//ele.href="#";
								console.log(document.getElementById('hitAchor'+id).href);
							}
					},
					
					error:function(response){
					 console.log("Error message"+JSON.stringify(response));
					},
				
					
				}); 
			}else{
				
			}
		 
	 
 }
		 
 function newshareFeed2(feedId,sharedFrom,sharedTo,uid){
	 if(feedId!='')
		{
		 var   buddyID=  document.getElementById('BuddyID').value;
		 var   buddyName= document.getElementById('BuddyNME').value;
		
		
		 var postHitparams={
				 feedId: feedId,
				 hittedBy : buddyID,
				 hittedByName : buddyName,
				 active : 1,
				 sharedFrom : sharedFrom,
				 sharedTo : sharedTo
	     };
		 
		 var postinfo=JSON.stringify(postHitparams);
		 
		 $.ajax({
				type : "POST",
				url : ctx+"/shareFeed",
				headers : {'Name' : HeaderName},
				dataType: "json",
				  contentType: "application/json; charset=utf-8",
	   data:postinfo,			            
				success : function(res) {
					console.log(res);
					
					//$('#share'+feedId).html('<i class="fa fa-share"></i> Shared');
					$('#shareMenus'+feedId).hide();
					$('input[name=shareOption'+feedId+']').attr('checked', false);
					displaynotification('Shared successfully',2000);
					
					// $('#share'+feedId).attr("disabled","disabled");
					//<i class="fa fa-share"></i>
					$('#shareMenus'+uid).hide();
				},
				
				error:function(response){
				 console.log("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
 }
 
 function bowloption(ele){
	 $('#bowlOptionDIV').show();
 }
 
 