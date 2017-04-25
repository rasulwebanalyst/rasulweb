/**
 * New node file
 */
function gettingEventAcceptedPeopleList(eid,display,serviceId)
{
	//alert(display);
	$('.eventoption').hide();
	var datainfo={
			eventId : eid,	
			eventInfoId : serviceId 	
			
	};
	var postinfo=JSON.stringify(datainfo);	
	$.ajax({
		type : "POST",
		url :ctx+"/eventAcceptedPeopleList",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			var htm="";	
			console.log(' value------> '+res);
			console.log(res);
			if(res.length>0)
				{
				if(serviceId==151)
				{
				htm +="<h1 class='noBorder'>Accepted Buddies </h1>";
				}else if(serviceId==152){
					htm +="<h1 class='noBorder'>May Be Buddies </h1>";
				}else {
					htm +="<h1 class='noBorder'>Rejected Buddies </h1>";
				}
					for(var i in res)
						{
															
								
					         
								htm +="<div class='col-md-12 accptList'>";
								htm +="<span><a href='"+ctx+"/buddy/"+res[i].firstName+"/"+res[i].userId+"'>"+res[i].firstName+"</a></span>";
								htm +="<img class='pull-right' src='"+res[i].userImageUrl+"' onError='userErrorDefaultImg(this)'>";
								htm +=" </div>";
						
						}
				}else{
					
					//displaynotification('Records not found',3000);
					displaynotification('No responses yet',3000);
				}
			
			$('#'+display).html(htm);
			$('#'+display).show();
			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
}
/*private String matchid;
private String rosterId;*/
function gettingmatchAcceptedPeopleList(eid,matchid,rosterid,display,serviceId)
{
	//alert(display);
	$('.eventoption').hide();
	var datainfo={
			matchid : matchid,	
			eventInfoId: serviceId,
			rosterId : rosterid 	
	};
	var postinfo=JSON.stringify(datainfo);	
	$.ajax({
		type : "POST",
		url :ctx+"/matchAcceptedPeopleList",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			var htm="";	
			console.log(' value------> '+res);
			console.log(res);
			if(res.length>0)
				{
				if(serviceId==200)
				{
				htm +="<h1 class='noBorder'>Accepted Buddies </h1>";
				}else if(serviceId==202){
					htm +="<h1 class='noBorder'>May Be Buddies </h1>";
				}else if(serviceId==201){
					htm +="<h1 class='noBorder'>Rejected Buddies </h1>";
				}
					for(var i in res)
						{
															
								
					         
								htm +="<div class='col-md-12 accptList'>";
								htm +="<span><a href='"+ctx+"/buddy/"+res[i].fullName+"/"+res[i].userId+"'>"+res[i].fullName+"</a></span>";
								htm +="<img class='pull-right' src='"+res[i].userImageUrl+"' onError='userErrorDefaultImg(this)'>";
								htm +=" </div>";
						
						}
					console.log(htm);
				}else{
					
					//displaynotification('Records not found',3000);
					displaynotification('No responses yet',3000);
				}
			$('#'+display).html(htm);
			$('#'+display).show();
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
}




function gettingmatchAcceptedPeopleList1(matchid,rosterid)
{
	alert("result =======>");
	$('.eventoption').hide();
	var datainfo={
			matchid : matchid,	
			rosterId : rosterid 	
	};
	var postinfo=JSON.stringify(datainfo);	
	$.ajax({
		type : "POST",
		url :ctx+"/matchPeopleList",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			alert("result");			
			console.log(' value------> '+JSON.stringify(res));
			console.log("result========================================>"+res);
			
			
			var doc = new jsPDF('p', 'pt','a4');
	 		doc.setProperties({
	    	title: 'Cricket Social',
	    	subject: 'Buddy Score Card',
	    	author: 'Vignesh Ranganathan',
	    	keywords: 'Batting, Bowling',
	    	creator: 'Cricket Social'			    	
	 		});
	 		
	 	 var tournamentname=$('#tourname_'+matchid).val();
	 	 var hometeam=$('#hometeamname_'+matchid).val();
	 	 var awayteam=$('#awayteamname_'+matchid).val();
	 	 var ground=$('#groundName_'+matchid).val();
	 	var date=$('#date_'+matchid).val();
	 	var acceptevent=[];
	 	var rejectevent=[];
	 	var maybeevent=[];
	 	 alert(tournamentname);
		//Header
	 		doc.setFontSize(20);
	 		doc.setFont("helvetica");
	 		doc.setFontType("bold");
	 		doc.setTextColor(50,83,168);
	 		doc.text(220,30,"Match Availability Details");
	 	//	 	
	 		
	 		doc.setFontSize(12);
	 	    doc.setFontType("normal");
	 	    doc.setTextColor(0,0,0);
	 	    doc.text(10,70,"Tournament Name ");
	 	    doc.text(110,70,": "+tournamentname);
	 	    doc.text(10,100,"Teams ");
	 	    doc.text(110,100,": "+hometeam+"  vs  "+awayteam);
	 	   /* doc.text(10,130,"Against Team ");
	 	    doc.text(110,130,": "+awayteam);
	 	     doc.text(10,160,"Roster Created Date  "); */
	 	    doc.text(10,130,"Ground Name ");
	 	    doc.text(110,130,": "+ground);	 	    
	 	    doc.text(10,160,"Game Date  ");
	 	    doc.text(110,160,": "+date);
	 	    
	 	    //accepted
	 	    
	 			doc.setFontSize(16);
			    doc.setFont("helvetica");
			    doc.setFontType("bold");
			    doc.setTextColor(50,83,168);
			    doc.text(10,200,"Status : Accepted ");
			    doc.setTextColor(0,0,0);
			    
			    
			    
			    
             	  for(var i in res.acceptEventList)
             		  {
             	acceptevent.push({
             		serialno : parseInt(i)+1,
             		firstName : res.acceptEventList[i].fullName,         		
             		
             	});
             		  }
			    var columns = [
			                   {title: "S.No", dataKey: "serialno"},
			                   {title: "Name", dataKey: "firstName"},			                   
			               ];
			 		
			    var yHeight=190;
		 			if(acceptevent.length>0)
		 				{		 					
		 					  doc.autoTable(columns,acceptevent, {
		 		 			        theme: 'grid',
		 		 			        startY: parseInt(yHeight)+parseInt(20),
		 		 			        margin: {horizontal: 10},
		 		 			        styles: {overflow: 'linebreak'},
		 		 			        bodyStyles: {valign: 'top'},
		 		 			        alternateRowStyles: {fillColor: [253, 254, 257]},
		 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
		 		 			        headerStyles: {fillColor: [99, 184, 275]}
		 		 			    });		 					  
		 					  if(acceptevent.length<3)
		 						  {
									    yHeight=parseInt(acceptevent.length)*50+yHeight;
		 						  }else if(acceptevent.length>=3)
		 							  {
		 							 	yHeight=parseInt(acceptevent.length)*20+yHeight;
		 							  }
		 					  
		 					
		 				}
		   
		 			    
              //rejected
                   	                	
               	  for(var i in res.rejectEventList)
               		  {                   	                             	
               		rejectevent.push({
               		serialno : parseInt(i)+1,
               		firstName : res.rejectEventList[i].fullName,         		
               		
               	});
              
               		  }
                   	  
                   	doc.setFontSize(16);
    			    doc.setFont("helvetica");
    			    doc.setFontType("bold");
    			    doc.setTextColor(50,83,168);
    			    doc.text(10,yHeight+10,"Status : Rejected ");
    			    doc.setTextColor(0,0,0);
			    
    			    var columns = [
    			                   {title: "S.No", dataKey: "serialno"},
    			                   {title: "Name", dataKey: "firstName"},			                   
    			               ];
    			    
		 			if(rejectevent.length>0)
		 				{
		 					
		 					  doc.autoTable(columns,rejectevent, {
		 		 			        theme: 'grid',
		 		 			        startY: parseInt(yHeight)+parseInt(20),
		 		 			        margin: {horizontal: 10},
		 		 			        styles: {overflow: 'linebreak'},
		 		 			        bodyStyles: {valign: 'top'},
		 		 			        alternateRowStyles: {fillColor: [253, 254, 257]},
		 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
		 		 			        headerStyles: {fillColor: [99, 184, 275]}
		 		 			    });	
		 				
		 					  
		 					  if(rejectevent.length<3)
		 						  {
									    yHeight=parseInt(rejectevent.length)*50+yHeight;
		 						  }else if(rejectevent.length>=3)
		 							  {
		 							 	yHeight=parseInt(rejectevent.length)*20+yHeight;
		 							  } 					
		 				}
		 			
                 	  
                 	  
                 //may be
		 			 for(var i in res.maybeEventList)
             		  {	
             	console.log("=================>i"+i);
             	maybeevent.push({
             		serialno : parseInt(i)+1,
             		firstName : res.maybeEventList[i].fullName,    		
             		});
                    } 
                 	  
                 	 doc.setFontSize(16);
     			    doc.setFont("helvetica");
     			    doc.setFontType("bold");
     			    doc.setTextColor(50,83,168);
     			    doc.text(10,yHeight+10,"Status : May Be ");
     			    doc.setTextColor(0,0,0);
 			    
     			    var columns = [
     			                   {title: "S.No", dataKey: "serialno"},
     			                   {title: "Name", dataKey: "firstName"},			                   
     			               ];
     			
 		 			if(maybeevent.length>0)
 		 				{
 		 					
 		 					  doc.autoTable(columns,maybeevent, {
 		 		 			        theme: 'grid',
 		 		 			        startY: parseInt(yHeight)+parseInt(20),
 		 		 			        margin: {horizontal: 10},
 		 		 			        styles: {overflow: 'linebreak'},
 		 		 			        bodyStyles: {valign: 'top'},
 		 		 			        alternateRowStyles: {fillColor: [253, 254, 257]},
 		 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
 		 		 			        headerStyles: {fillColor: [99, 184, 275]}
 		 		 			    });	
 		 				
 		 					  
 		 					  if(maybeevent.length<3)
 		 						  {
 									    yHeight=parseInt(maybeevent.length)*50+yHeight;
 		 						  }else if(maybeevent.length>=3)
 		 							  {
 		 							 	yHeight=parseInt(maybeevent.length)*20+yHeight;
 		 							  } 					
 		 				}
 		 		                  	
                  	 
			    
			    doc.save('1.pdf');	
					},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
}




function eventoption(eid,aid,ele)
{
	
	
	
		var datainfo={
				eventId : eid,	
				eventInfoId : aid 	
		};	
		var postinfo=JSON.stringify(datainfo);	
		$.ajax({
			type : "POST",
			url :ctx+"/eventOtionSelection",
			dataType: "json",
	        contentType: "application/json; charset=utf-8",
	        data : postinfo,
			success : function(res) {
				var htm="";	
				console.log(' value------> '+res);
				console.log(res);
				if(res.length>0)
					{
					
					}
				
				ele.disabled = true;
				
				document.getElementById('inviteReject'+eid).disabled = true;
				document.getElementById('inviteMaybe'+eid).disabled = true;
				document.getElementById('inviteAccept'+eid).disabled = true;
				
			},
			error:function(response){
				console.log("Your request failed due to some service problem"+JSON.stringify(response));
			},
		
		});
		
		
		

}

function eventoption2(eid,aid,ele,countid)
{
	
	
	
		var datainfo={
				eventId : eid,	
				status : aid 	
		};	
		var postinfo=JSON.stringify(datainfo);	
		$.ajax({
			type : "POST",
			url :ctx+"/eventOtionSelection",
			dataType: "json",
	        contentType: "application/json; charset=utf-8",
	        data : postinfo,
			success : function(res) {
				var htm="";	
				console.log(' value------> '+JSON.stringify(res));
				console.log(res);
				var count=0;
				if(res!=null)
					{
						count=res.eventCount;
					}
				
				ele.disabled = true;
				
				if(aid == 'ACCEPT')
					{
					document.getElementById('inviteReject'+eid).disabled = false;
					document.getElementById('inviteMaybe'+eid).disabled = false;
					document.getElementById('inviteAccept'+eid).disabled = true;
					}else if(aid == 'MAYBE'){
						document.getElementById('inviteReject'+eid).disabled = false;
						document.getElementById('inviteMaybe'+eid).disabled = true;
						document.getElementById('inviteAccept'+eid).disabled = false;
					}
					else{
						document.getElementById('inviteReject'+eid).disabled = true;
						document.getElementById('inviteMaybe'+eid).disabled = false;
						document.getElementById('inviteAccept'+eid).disabled = false;
					}
				
				/*document.getElementById('inviteReject'+eid).disabled = true;
				document.getElementById('inviteMaybe'+eid).disabled = true;
				document.getElementById('inviteAccept'+eid).disabled = true;*/
				
					   document.getElementById('invitationrejectcountdisp'+eid).text='Accepted : '+res.acceptedCount;
					
						document.getElementById('invitationmaybecountdisp'+eid).text='May Be : '+res.maybeCount;
				
						document.getElementById('invitationacceptcountdisp'+eid).text='Rejected : '+res.rejectedCount;
				
				
			},
			error:function(response){
				console.log("Your request failed due to some service problem"+JSON.stringify(response));
			},
		
		});
		
		
		

}

function showRateUmpireList(id)
{
	//alert('ok'+id);
	
	var datainfo={
			schedualId : id	
			
	};	
	var postinfo=JSON.stringify(datainfo);
	console.log(postinfo);
	$.ajax({
		type : "POST",
		url :ctx+"/matcheUmpireList",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			console.log(res);			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
	
	
}



function showRateUmpireForm(tournmentName,id,teamId,tournamentId,gameDate)
{

	

	//private String captainId
	var userId=$('#BuddyID').val();
	var datainfo={
			schedualId : id,
			captainId : userId
			
	};	
	var postinfo=JSON.stringify(datainfo);
	console.log(postinfo);
	$.ajax({
		type : "POST",
		url :ctx+"/matcheUmpireList",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			console.log(res);
			
			if(res.length>0)
				{
				var htm="";	
					//document.getElementById("umpireName").value="";
				
				
				htm +="<option value=''>Select Umpire</option>";
					for(var i in res)
						{
						 htm +="<option value='"+res[i].userId+"'>"+res[i].firstName+"</option>";
						 
						}
				
					document.getElementById("tournmentName").value=tournmentName;
					document.getElementById("umpireComment").value="";
					document.getElementById("matchId").value=id;
					document.getElementById("teamId").value=teamId;
					document.getElementById("tournamentId").value=tournamentId;
					document.getElementById('matchDate').value=gameDate;
					$('#umpireRatting').text('');
					$('#umpireNameselect').text('Select Umpire');
					$('.star').removeClass("fullStar");
					$('#umpireName').html(htm);
					$('#umpireRattingFromPopup').show();
				
				}else{
					displaynotification('You already given umpire rating', 1500);
				}
			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
	
	
}

function hideUmpireRatingForm()
{
	$('#umpireRattingFromPopup').hide();
}

function umpireRatting(rate)
{
	$('#umpireRatting').text(rate);
}

function umpireSelect()
{
	var umpireName= document.getElementById('umpireName').value;
	$('#umpireNameerror').text('');
	if(umpireName!="")
		{
			return true;
		}else{
			$('#umpireNameerror').text('Please select umpire');
			return false;
		}
}

function commentVal()
{
	var umpireComment2=document.getElementById("umpireComment").value;
	var umpireComment=umpireComment2.trim();
	$('#umpireCommenterror').text('');
	if(umpireComment!=null)
		{
			if(umpireComment.length>10)
				{
					return true;
				}else{
					$('#umpireCommenterror').text('Please enter minmum 10 characters');
					return false;
				}
		}else{
			
			$('#umpireCommenterror').text('Please enter your comment');
			return false;
		}

}

function umpireRatingVal()
{
	var umpireRate = $('#umpireRatting').text();
	$('#umpireCommenterror').text('');
	if(umpireRate!='')
		{
			return true;
		}else{
			$('#umpireRattingerror').text('Please select ratting');
			return false;
		}
}

function umpireInitialValidation()
{
	if(umpireSelect()==true && commentVal()==true && umpireRatingVal()==true)
		{
			umpireValidation();
		}else{
			
		}

}
function umpireValidation()
{
	
	var umpireComment=document.getElementById("umpireComment").value;
	var matchId=document.getElementById("matchId").value;
	var teamId=document.getElementById("teamId").value;
	var tournamentId=document.getElementById("tournamentId").value;
	var matchDate=document.getElementById('matchDate').value;
	var umpireName= document.getElementById('umpireName').value;
	//alert("umpireComment---> "+umpireComment);
//	alert("matchId---> "+matchId);
	//alert("teamId---> "+teamId);
//	alert("tournamentId---> "+tournamentId);
	//alert('umpireName - '+umpireName);
	//alert("matchDate---> "+matchDate);
	var umpireRate = $('#umpireRatting').text();
	//alert('rating value : '+umpireRate);
//	var userId = document.getElementById('teamCaptainId');
	var datainfo={
			comments : umpireComment,
			matchId : matchId,
			teamId : teamId,
			tournamentId : tournamentId,
			matchDate : matchDate,
			rating : umpireRate,
		//	teamCaptainId : userId,
			umpireId  : umpireName
			
	};	
	var postinfo=JSON.stringify(datainfo);
	console.log(postinfo);
	
	
	$.ajax({
		type : "POST",
		url :ctx+"/umpireRating",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			console.log(res);
			hideUmpireRatingForm();
			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
	
	
	
}


function showAssignScorerForm(id)
{

	clean();
	 document.getElementById('hiddenSchedulerId').value=id;
	 var bean =  {
			 tournamentSchedulerId : id,
	 };
	 $.ajax({
		type:"Post",
		url:ctx+"/showScorerListInAssignUmpire",
		data:JSON.stringify(bean),
		contentType :"application/json;charset=utf-8",
		success :function(res){
			var htm="";
			console.log('scorar response----> '+res);
			console.log(res);
			htm +="<table style='width: 500px;' id='myTable'>";
			htm +="<thead>";
			htm +="<tr>";
			htm +="<th style='display: none;'>Scorer</th>";		
			htm +="<th style='display: none;'>Scorer</th>";		
			htm +="</tr>";
			htm +="</thead>";
			htm +="<tbody>";
					if(res!=null && res.length>0){
					
						for(var i in res){
							var sn = parseInt(i)+parseInt(1);
						htm +="<tr>";
						htm +="<td style='text-align: center;'>"+sn+"</td>";	
						htm +="<td style='text-align: left;'>"+res[i].scorerName+"</td>";	
						htm +="</tr>";	
					}
				
				}else{
					
				}
			htm +="</tbody></table>";
			
			$('#scorarTable').html(htm);
			$('#scorarPopupDIV').show();
		},
		error:function (err){
			console.log(err);
		}
		 
	 });
	
	
}


function hideAssignScorerForm()
{
	$('#scorarPopupDIV').hide();
}
function clean()
{
	
	$('#addMemberNameDIV').val('');
	
	$('#hiddenSchedulerId').val('');
	$('#addMemberIDDIV').val('');
	$('#addMemberautoCompleteDIV').text('');
}
function getBuddiesAutoComplete(elem,divId,hiddenId){
	
 	var key=$(elem).val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	if(key.length>1) {
 			    $.ajax({
 						type : "POST",
 						url : ctx+"/UmpireCreationNameSearch",
 						dataType: "json",
 			        contentType: "application/json; charset=utf-8",
 			        data : key,					            
 						success : function(res) {
 							console.log(res);	
 							var html="";
 							
 							if(res != null){
 								var users=res.userSearchBean;
 								console.log(JSON.stringify(users));
 								html+="<ul>";
 								
 								if(users!= null && users.length >0){
 									for(var i in users){
 										var name=users[i].name;
 								
 								
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
 	   }
   
 } 
function getBuddiesAutoComplete2(elem,divId,hiddenId){
   	var team=$(elem).val();
   	var textBoxId=$(elem).attr('id');
   	console.log('value : '+team);
   	console.log('textBoxId : '+textBoxId);
   	if(team.length>2) {
   			    $.ajax({
   						type : "GET",
   					//	url : ctx+"/buddySearch",
   					    url : ctx+"/boardSearchInCreateTournament?term="+team,
   						dataType: "json",
   			        contentType: "application/json; charset=utf-8",
   			      /*   data :{
   			        	term : term					            
   			        }, */
   						success : function(res) {
   							console.log(res);	
   							var html="";
   							
   							if(res != null){
   							///	var users=res.userList;
   								console.log(JSON.stringify(res));
   								html+="<ul style='width: 651px;'>";
   								
   								if(res.length >0){
   									for(var i in res){
   										//var name=res[i].firstName+" "+res[i].lastName;
   										var name=res[i].boardName;
   										console.log(name);
       									//html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')>"+name+"</li>";
   										html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+res[i].boardId+"','"+hiddenId+"')>";
   			                            html+="<div class='media'>";
   			                                 html+=" <div class='media-left'>";
   			                                   html+=" <a href='#'>";
   			                                    html+="  <img id='teamsearch"+res[i].boardId+"' src='"+res[i].boardImageURL+"' class='nav-avatar'>";
   			                                   html+=" </a>";
   			                                  html+="</div>";
   			                                  html+="<div class='media-body'>";
   			                                    html+="<h4 class='media-heading' > "+name+"<br>";
   			                                 //  html+=" <span>"+users[i].city+" </span>";
   			                                   html+=" </h4>";                                  
   			                                  html+="</div>";
   			                               html+=" </div>";
   			                        html+="</li>";
       								}
   								}else{
   									html+="<li>No results found...</li>";
   								}
   								console.log("in if"+html);
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
   	   }
     
   } 
   
function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
		//$('#'+textBox).val($('#teamsearch'+userId).text());
		var img = document.getElementById('teamsearch'+userId);
	//	alert(img.src);
		$('#'+textBox).val($(elem).text());
		$('#'+divId).hide();	
		$('#'+hiddenId).val(userId);	
		
} 

function addScorer(){
	
	 var scorerId = $("#addMemberIDDIV").val();
	 var schedulerId = $("#hiddenSchedulerId").val();
	 
	 if(scorerId ==''){
		 $("#Scorarerror").text("Please choose scorer name");
		 $('#Scorarerror').show();		
		 $("#Scorarerror").fadeOut(3000);
	 }else{
	 var bean = {
			 userId : scorerId,
			 tournamentSchedulerId:schedulerId,
	 };
	 $.ajax({
			
		 type:"post",
		 url:ctx+"/addScorerFromAssignPage",
		 data:JSON.stringify(bean),
		 contentType:"application/json; charset=utf-8",
		 success : function(res){
			 
			 hideAssignScorerForm();
		 },
		 error:function(err){
			 console.log(err);
		 }
	 
	 });
	 }
}

function editEvent(id)
{
	alert(id);
	window.location=ctx+'/editEvent/'+id;
}
//'${schedual.eventMatchMapId}','${schedual.rosterId}','${schedual.playerId}','${event.tournamentSchedulerId}'

function schedualStatus(status,id,rosterid,userid,matchid,acceptCountid,mayBeCountId,rejectCountId)
{
	
	var datainfo={	
			eventMatchMapId : id,
			matchId : matchid,
			playerId :userid,
			rosterId : rosterid,
			status : status
	};
	var eid=id;
	var aid=status;
	var postinfo=JSON.stringify(datainfo);
	console.log(postinfo);
	$.ajax({
		type : "POST",
		url :ctx+"/schedualEventOtionSelection",
		dataType: "json",
        contentType: "application/json; charset=utf-8",
        data : postinfo,
		success : function(res) {
			var htm="";	
			console.log(' value------> '+res);
			console.log(res);
			var count=0;
			if(res!=null)
				{
					count=res.eventCount;
				}
			
			//ele.disabled = true;
			console.log("event id's-->>>"+res.eventCount);
			
			if(aid=='196')
				{
				document.getElementById('inviteReject'+eid).disabled = false;
				document.getElementById('inviteMaybe'+eid).disabled = false;
				document.getElementById('inviteAccept'+eid).disabled = true;
				}else if(aid=='197'){
					document.getElementById('inviteReject'+eid).disabled = false;
					document.getElementById('inviteMaybe'+eid).disabled = true;
					document.getElementById('inviteAccept'+eid).disabled = false;
				}else{
					document.getElementById('inviteReject'+eid).disabled = true;
					document.getElementById('inviteMaybe'+eid).disabled = false;
					document.getElementById('inviteAccept'+eid).disabled = false;
				}
			//alert("accepted-"+res.acceptedCount+" Maybe Count"+res.maybeCount+" Rejected Count"+res.rejectedCount);
			document.getElementById(rejectCountId).text='Accepted : '+res.acceptedCount;
			document.getElementById(mayBeCountId).text='May Be : '+res.maybeCount;
			document.getElementById(acceptCountid).text='Rejected : '+res.rejectedCount;
			
		},
		error:function(response){
			console.log("Your request failed due to some service problem"+JSON.stringify(response));
		},
	
	});
	
	
}


