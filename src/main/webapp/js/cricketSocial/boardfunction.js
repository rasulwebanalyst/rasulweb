/**
 * New node file
 */
 $(document).ready(function(){

//alert('ssssssssssssss');

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
		 $('#loading').show();
		 var   projectURL=  document.getElementById('projectURL').value;
		 var   content=  document.getElementById('content').value;
		 var buddyIMG= document.getElementById('buddyIMG').value;
		 var boardId=document.getElementById('boardId').value;
		 var postfeed={
				 content:content,
				 feedType : 'Board',
				 boardId : boardId,
				 fileAttachement:feedImagesArray
					 
	     };
	     var postinfo=JSON.stringify(postfeed);
	    
	     $.ajax({
				type : "POST",
				url : projectURL+"/postFeed",
				dataType: "json",
	         contentType: "application/json; charset=utf-8",
	         data:postinfo,			            
				success : function(res) {
					console.log(res);	
					var htm ='';
					$('#loading').hide();
					$('.uploadedFiles').empty();
					
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

					console.log("time"+result);
					
				var boardImg=$('#buddyIMG').val();
					feedImagesArray.length = 0;
					if(res!=null)
						{
						
						
						var time=timeDifferenceCal(res[0].modifiedDate);
						 var fid="'"+res[0].feedId+"'";
						htm +='<div class="col-md-12 feedBlock whiteBox feedDiv'+res[0].feedId+'" >'           	
		               
						 +'<div class="media ">'
		                +'<div class="media-left">'
		                +'<a href="#">'
		                  +'<img src="'+boardImg+'" class="nav-avatar" onerror="imgError(this)">'
		                +'</a>'
		              +'</div>'
		              +'<div class="media-body">'
		                +'<h4 class="media-heading">'+res[0].postedByName+'</h4>'
		                +'<div class="headRight">' 
		               /* +'<p class="trash-holder" onclick="feedDelete('+fid+')" title="Delete"  ><i class="fa fa-trash trash"></i> </p>'
		                +	'<span id="HitCountDIv'+res[0].feedId+'"><img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1"  >0</span><span id="commentCount'+res[0].feedId+'" onclick=getAllComments("'+res[0].feedId+'")><i class="fa fa-commenting-o"></i>0</span>'
		                +'</div>';*/
						
			                
			                +'<div class="dropdown">'
		                	+'<p id="HitCountDIv'+res[0].feedId+'" onmouseout="removeHitList('+fid+')" onmouseover="getHitList('+fid+')" class="trash-holder"><img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >0</p>'
		                	+'<div id="Hitlist_'+res[0].feedId+'"></div>'
		                
		                +'</div>'
			                
			                
			                +'<p class="trash-holder" onclick="feedDelete('+fid+')" title="Delete"  ><i class="fa fa-trash trash"></i> </p>'
			                +'<p class="trash-holder"  onclick="feedEdit('+fid+')" title="Edit"  ><i class="fa fa-pencil trash"></i> </p>'
			                +	'<p id="commentCount'+res[0].feedId+'" onclick=getAllComments("'+res[0].feedId+'")><i class="fa fa-commenting"></i>0</p>'
			                +'</div>';
						
						
						
						
						
						
						
		                
		                //+'<span class="postTime">'+result+'</span>'
		                htm+='<span class="postTime">Just now</span>'
		                +'<div class="galleryBlock">';
						var attachments=res[0].fileAttachement;
						console.log("attachments"+JSON.stringify(attachments));
		                if(attachments != null && attachments.length>0){
		                	for(var i=0;i<attachments.length;i++){
		                	//	htm +='<img src="'+attachments[i].attachmentUrl	 +'">';
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
		               
		                htm +='<p id='+res[0].feedId+'>'+res[0].content+'</p>'               	
		                	+'</div>'
		                
		               // +'<a href="javascript:addfeedHit2('+fid+',this)" id="feed'+res[0].feedId+'" class="shareLink"><i class="fa hitIcon"></i> Hit</a>'
		                	/*+'<div class="hitIconDiv" id="hittDiv'+res[0].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid+')" class="shareLink" id="feed'+res[0].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>'
		                	+'<div class="hitIconDiv" id="hittedDiv'+res[0].feedId+'" style="display: none;"><img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" ><i class="fa hitIcon"></i> Hit</div>'*/
		               
		                	
		                	+'<div class="hitIconDiv" id="hittDiv'+res[0].feedId+'"><a href="javascript:userHitBtn('+fid+','+fid+')" class="shareLink" id="feed'+res[0].feedId+'"><i class="fa hitIcon"></i> Hit</a></div>'
		                	+'<div class="hitIconDiv" id="hittedDiv'+res[0].feedId+'" style="display: none;"><a href="javascript:userHitBtn('+fid+','+fid+')" class="shareLink" style="color: #4c9fe1;"><img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" > UnHit</a></div>'
		                	
		                	
		                	
		                	+'<a href="javascript:showCommentDIV('+fid+')" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>'
		                +'<a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>'
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
					$('#NoFeedMsgDIV').html('');
					$('#NoFeedMsgDIV').remove();
				},
				
				error:function(response){
				//alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		 
		 
	  }

	});

});
 
 
 function timeDifferenceCal(feeddate)
 {

	
	 	
	 	var date2= new Date(feeddate);
	 	 var date = new Date(date2.getFullYear()+"-"+(date2.getMonth()+1)+"-"+date2.getDate()+" "+date2.getHours()+":"+(date2.getMinutes()-1)+":"+date2.getSeconds()+" UTC");
	 	 var d1=new Date();
	 	 console.log("local dates"+d1);
	 	 console.log("utc to ist date "+date);
	 	var  result;
	 	var hours = Math.abs(d1 - date) / 36e5;
	 	var min=Math.abs(d1 - date) / (60*1000);
	 	var sec=Math.abs(d1 - date) /(1000);
	 	if(sec<60)
	 	{
	 		result=Math.round(sec)+' sec';
	 		
	 	}else if(min<60){
	 		result=Math.round(min)+' minutes';
	 	}else{
	 		result=Math.round(hours)+' hours';
	 	}

	 return result;
	 
 }
 
 

 function showCommentDIV(id)
 {
	 //feedContenDIVt
	 $('#feedContenDIVt'+id).show();
	 
	 
 }
 function sendFeedComments(elem){
	 
		var id=elem.value;
		var comment=$('#feedcontent'+id).val();
		if(comment.length>0)
			{
			
			
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
					url : ctx+"/postFeedComment",
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
						$('#commentCount'+id).html('<i class="fa fa-commenting-o"></i>'+counin);
						
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
										
											// var time=timeDifferenceCal(res[i].createdDate);
									 var time=feedDisplayDate2(res[i].createdDate);
											 console.log(res[i].createdDate);
											 var commentId="'"+res[i].feedCommentId+"'";
											 var cmtid=res[i].feedCommentId;
											 var fid=res[i].feedId;
											 var feedId="'"+res[i].feedId+"'";
											htm +='<div class="media">'
					                             +'<div class="media-left">'
					                          //   +'<img src="'+projectURL+'/images/profileIcon.png" class="teamLogo">'
					                             +'<img src="'+res[i].userProfilePic+'" onerror=errorImageset1(this) class="teamLogo">'
					                             +'</div>'
					                             +'<div class="media-body" id="editdiv_'+cmtid+'">'
					                             +'<h4 class="media-heading">'+res[i].commentedByName;
											console.log("Flag value :"+viewFlag);
											if(viewFlag>0){
												if(buddyID==res[i].commentedBy){
													
													htm +='<span class="trash-holder" title="Edit" onClick="commentEdit('+commentId+','+feedId+')"> <i class="fa fa-pencil trash"></i> </span>';
													 htm +='<span class="trash-holder" title="Delete" onClick="commentDelete('+commentId+','+feedId+')"> <i class="fa fa-trash trash"></i> </span>';
												}else{
													htm +='<span class="trash-holder" title="Report spam" onClick="commentSpam('+commentId+','+feedId+')"> <i class="fa fa-ban"></i> </span>';
												}
											}
											
					                            
					                             htm +='<span class="date">'+time+'</span></h4>'
					                             +"<p id='Original"+cmtid+"'>"+res[i].comments+"</p>"
					                        +'</div>';
					                             
					                             
					                             console.log("It has come hear");
					                             htm +='<div class="media-body" style="display: none;" id="body_'+cmtid+'">';
					                             htm +="<span class='trash-holder' title='save' onclick=SaveComment('"+cmtid+"','"+fid+"')><i class='fa fa-check-square-o' aria-hidden='true'></i></span>";
					                             htm +="<span class='trash-holder' title='save' onclick=SaveCommentClose('"+cmtid+"')><i class='fa fa-times' aria-hidden='true'></i></span>";
					                             htm +="<textarea  class='form-control' style='margin-bottom: 10px;width: 356px;height: 53px !important;' id='Edited"+cmtid+"'>"+res[i].comments+"</textarea>";
					                             htm +="</div>";
					                             
					                      htm+='</div>';
											
									
									}// for
								
						}else{
							htm +='<div class="media">No Records are found</div>';
						}
						var counin=res.length;
							//$('#commentCount').Text('');
						$('#commentCount'+id).html('<i class="fa fa-commenting"></i>'+counin);
								
						}else{
							htm +='<div class="media">No Records are found</div>';
							$('#commentCount'+id).html('<i class="fa fa-commenting"></i>0');
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
 
 function errorImageset1(id)
 {
	 var   projectURL=  document.getElementById('projectURL').value;
 	id.src=projectURL+"/images/profileIcon.png";
 }
 
 function commentEdit(id,fid)
 {
	 $("#editdiv_"+id).hide();
	 $("#body_"+id).show();
 }
 
 function SaveCommentClose(id)
 {
	 $("#editdiv_"+id).show();
	 $("#body_"+id).hide();
 }
 
 function commentDelete(id, fid){
	// alert('id------------> '+id);
	 

	 var commentDelete={
			 feedid : fid,
			 commentId : id
     };
	 
	 var postinfo=JSON.stringify(commentDelete);
	 console.log(postinfo);
	 $.ajax({
			type : "POST",
			url : ctx+"/feedCommentDelete",
			dataType : "json",
			contentType : "application/json; charset=utf-8",
			data : postinfo,			            
			success : function(res) {
				console.log(res);
				getAllComments(fid);
			},
			
			error:function(response){
			alert("Error message"+JSON.stringify(response));
			},
		
			
		}); 
	 
	 
 }
 

 function commentSpam(id, fid){
	 //alert('id------------> '+id);
	 
	 var   buddyID=  document.getElementById('BuddyID').value;
	 var commentDelete={
			 feedid : fid,
			 commentId : id,
			 loginUserId : buddyID
     };
	 
	 var postinfo=JSON.stringify(commentDelete);
	 console.log(postinfo);
	 $.ajax({
			type : "POST",
			url : ctx+"/feedCommentSpam",
			dataType : "json",
			contentType : "application/json; charset=utf-8",
			data : postinfo,			            
			success : function(res) {
				console.log(res);
				getAllComments(fid);
			},
			
			error:function(response){
			alert("Error message"+JSON.stringify(response));
			},
		
			
		}); 
	 
	 
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
				dataType: "json",
	   contentType: "application/json; charset=utf-8",
	   data:postinfo,			            
				success : function(res) {
					console.log(res);
					if(res!=null)
						{
						
							$('#HitCountDIv'+id).html('<img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >'+res.hitCount+'');
							

							
						}
				},
				
				error:function(response){
				alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
	 
	 
 }
 
 function addfeedHit2(id, ele)
 {
	 
	 document.getElementById('feed'+id).href = 'javascript:'; 
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
				dataType: "json",
	   contentType: "application/json; charset=utf-8",
	   data:postinfo,			            
				success : function(res) {
					console.log(res);
					if(res!=null)
						{
						
							$('#HitCountDIv'+id).html('<img src="'+projectURL+'/images/hitIcon1.png" width="18" class="hitIcon1" >'+res.hitCount+'');
							console.log('feed'+id);
							document.getElementById('feed'+id).href = 'javascript:';							
							console.log(document.getElementById('feed'+id).href);
						}
				},
				
				error:function(response){
				alert("Error message"+JSON.stringify(response));
				},
			
				
			}); 
		}else{
			
		}
	 
	 
 }
 
 
 
 function FanAction(userId,fanId,action,message){
	//alert('');
	  $.ajax({
			type : "GET",
			url : ctx+"/fanActions",
			dataType: "json",
       contentType: "application/json; charset=utf-8",
       data:{			            
    	   userId:userId,
    	   fanId:fanId,
    	   action:action
       },
			success : function(res) {
			if(res != null){
				if(res.requestStatus==0){
					var results=res.results;
					if(results != null){
						if(results.becomefan != null){
							$('#fan'+fanId).show();
							$('#becomeFan'+fanId).hide();
						}
						if(results.becomeunfan != null){
							$('#fan'+fanId).hide();
							$('#becomeFan'+fanId).show();
						}
						if(message=='boardfanboard')
							{
								$('#boardfanboard'+fanId).hide();
								$('#boardFan'+fanId).show();
								$('#boardfanboard'+fanId).remove();
							}
						
						if(message=='boardfanuser')
							{
								$('#boardfanuser'+fanId).hide();
								$('#boardFan'+fanId).show();
							}
						
						if(message=='buddyFanToBoard')
							{
								$('#boardfanuser'+fanId).hide();
								$('#boardFan'+fanId).show();
							}
						if(message=='buddyUnFanToBoard')
							{
							console.log('buddyUnFanToBoard----------------start-------- >'+fanId);
								$('#boardfanuser'+fanId).show();
								$('#boardFan'+fanId).hide();
								$('#boardfanboard'+fanId).remove();
								$('#boardfanuser'+fanId).remove();
								$('.buddyBoardFan'+fanId).remove();
						 console.log('buddyUnFanToBoard----------------end-------- >'+fanId);
							}
						if(message=='buddyUnFanToBoard2')
						{
							console.log('buddyUnFanToBoard2----------------start-------- >'+userId);
							$('#boardfanuser'+userId).remove();
							$('#boardFan'+userId).hide();
							$('#boardfanuser'+userId).show();
							$('.buddyBoardFan'+userId).remove();
							console.log('buddyUnFanToBoard2----------------end-------- >'+userId);
						}
						
						if(message=='buddyUnFanOfToBuddy')
							{
							console.log('buddyUnFanOfToBuddy----------------start-------- >'+fanId);
								$('#fan'+fanId).show();
								$('#becomeFan'+fanId).hide();
								$('#boardfanuser'+fanId).remove();
								$('#buddytobuddy'+fanId).remove();
								console.log('buddyUnFanOfToBuddy------------------end------>'+fanId);
							}
						
						if(message=='buddyUnFanToBuddy')
							{
								$('#fan'+fanId).hide();
								$('#becomeFan'+fanId).show();
							}
						if(message=='buddyUnFanToBuddy2')
						{
							$('#fan'+fanId).show();
							$('#becomeFan'+fanId).hide();
							$('#boardfanuser'+fanId).remove();
						}
						
						if(message='boardFanToBuddy'){
							$('#fan'+fanId).show();
							$('#becomeFan'+fanId).hide();
						}
						
						if(message='boardUnFanToBuddy'){
							console.log('buddyUnFanToBoard2----------------start-------- >'+userId);
							$('#boardfanuser'+userId).remove();
							$('#boardFan'+userId).hide();
							$('#boardfanuser'+userId).show();
							$('.buddyBoardFan'+userId).remove();
							console.log('buddyUnFanToBoard2----------------end-------- >'+userId);
						}
						
						
					}
				}
			}	
			
				
				
			},
			error:function(response){
				console.log("Error message"+JSON.stringify(response));
			},
			
		}); 
	 
	 
	 
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
 
 
