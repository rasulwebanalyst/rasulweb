/**
 * New node file
 */

function eventfun(){
	htm +='<div class="col-md-12 noPadding leag-Acc">';
	htm +='<div class="col-md-1 noPadding N-btn">';
	htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
	htm +='</div>';
	htm +='<div class="col-md-11 borderleft">';	
	htm +='<div class="col-md-12 noPadding eventUserDetails">';
	htm +='<img src="${USRIMG}" class="nav-avatar" onerror="userErrorDefaultImg(this)">  ${USRFNA}';		
	htm +='<a href="${pageContext.request.contextPath}/editEvent/${event.eventId}"><i class="fa fa-pencil" title="Edit Event"></i></a>';
	htm +='</div>';
	htm +='<div class="col-md-6 Leag-Img">';
	htm +='<h4>${event.eventName}</h4>';
	htm +='<p><fmt:formatDate pattern="d/M/YYYY hh:mm a" value="${event.eventDate}" /></p>';
	htm +='<p>${event.venue}</p>';
	htm +='</div>';
	htm +='<div class="col-md-6 threebtn">';
	htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br>';
	htm +='<a href="javascript:gettingEventAcceptedPeopleList(,,143)">Rejected : </a></p>';
	htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br>';
	htm +='<a href="javascript:gettingEventAcceptedPeopleList(,,152)">May Be : </a></p>';
	htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br>';
	htm +='<a href="javascript:gettingEventAcceptedPeopleList(,,151)">Accepted :   </a></p>';
	htm +='</div>';
	htm +='</div>';
	htm +='<div id="reject${event.eventId}" class="col-md-12 accbox eventoption" style="display: none;">';
	htm +='<h1 class="noBorder">Accepted Guys</h1>';
	htm +='<div class=" col-md-12 accptguybg">';
	htm +='<p>1 Govind</p>';
	htm +='<img class="pull-right" src="images/userImg3.jpg">';
	htm +='</div>';
	htm +='</div>';
	htm +='</div>';
}

function my_Event_Page(startNode,display,pageCall,userID){
	
	alert("da");
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	
	var eventLogUserId2="'"+eventLogUserId+"'";
	var MyEventListDIV="'MyEventListDIV'";
	var myEventPageBtn="'myEventPageBtn'";
		var board={
			userId : userID,
			startNode : startNode,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(startNode)+parseInt(10);
	
	$.ajax({
		type : "POST",
		url : ctx+"/userEventsPagination",
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
					
					if(res.upcomingCreatedEventList!=null){
						var upcomingevent=res.upcomingCreatedEventList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							htm +='<div class="col-md-12 noPadding leag-Acc">';
							htm +='<div class="col-md-1 noPadding N-btn">';
							//htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							htm +='</div>';
							htm +='<div class="col-md-11 borderleft">';	
							htm +='<div class="col-md-12 noPadding eventUserDetails">';
							htm +='<img src="'+eventLogUserImg+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';		
						//	htm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							htm +='</div>';
							htm +='<div class="col-md-6 Leag-Img">';
							htm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							htm +='<p>'+dateNewObject+'</p>';
							htm +='<p>'+upcomingevent[i].venue+'</p>';
							htm +='</div>';
							
								/*htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';*/
							
							
							htm +='</div>';
							htm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							htm +='<h1 class="noBorder">Accepted Guys</h1>';
							htm +='<div class=" col-md-12 accptguybg">';
							htm +='<p>1 Govind</p>';
							htm +='<img class="pull-right" src="images/userImg3.jpg">';
							htm +='</div>';
							htm +='</div>';
							htm +='</div>';
							
							nextindicate= parseInt(nextindicate)+parseInt("1");
						}
					}
						
				
				
				}else{
				
				}
			
			if(nextindicate!=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="my_Event_Page('+page+','+MyEventListDIV+','+myEventPageBtn+','+eventLogUserId2+')">Load More</button>';
			   }else{
				   htm2 +='';
				   displaynotification('No Events',2000);
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
function my_Event_Page2(startNode,display,pageCall,userID){
	
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserId2="'"+eventLogUserId+"'";
	var MyEventListDIV="'MyEventListDIV'";
	var myEventPageBtn="'myEventPageBtn'";
		var board={
			userId : userID,
			startNode : startNode,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(startNode)+parseInt(10);
	
	$.ajax({
		type : "POST",
		url : ctx+"/userEventsPagination",
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
					
					if(res.upcomingCreatedEventList!=null){
						var upcomingevent=res.upcomingCreatedEventList;
						for(var i in upcomingevent){
							
							var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							htm +='<div class="col-md-12 noPadding leag-Acc">';
							htm +='<div class="col-md-1 noPadding N-btn">';
							//htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'</p>';
							htm +='</div>';
							htm +='<div class="col-md-11 borderleft">';	
							htm +='<div class="col-md-12 noPadding eventUserDetails">';
							htm +='<img src="'+eventLogUserImg+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';		
						//	htm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							//editboardEvent/board/${BoradInfo.boardId}/${event.eventId}
							htm +='<a href="'+ctx+'/editboardEvent/board/'+eventboardId+'/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							htm +='</div>';
							htm +='<div class="col-md-6 Leag-Img">';
							htm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
							htm +='<p>'+upcomingevent[i].venue+'</p>';
							htm +='</div>';
							
						/*	
						  
						    htm +='<div class="col-md-6 threebtn">';
							htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br>';
							htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
							htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br>';
							htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
							htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br>';
							htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
							htm +='</div>';
							
						*/
							
							htm +='</div>';
							htm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							htm +='<h1 class="noBorder">Accepted Guys</h1>';
							htm +='<div class=" col-md-12 accptguybg">';
							htm +='<p>1 Govind</p>';
							htm +='<img class="pull-right" src="images/userImg3.jpg">';
							htm +='</div>';
							htm +='</div>';
							htm +='</div>';
							
							nextindicate= parseInt(nextindicate)+parseInt(1);
						}
					}
						
				
				
				}else{
				
				}
			
			if(nextindicate!=0){
				htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="my_Event_Page2('+page+','+MyEventListDIV+','+myEventPageBtn+','+eventLogUserId2+')">Load More</button>';
			   }else{
				   htm2 +='';
				   displaynotification('No Events',2000);
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

function getDateInObjectFormate_withTimeStampInput(timestamp)
{
	
	var datestr2=new Date(timestamp);
	console.log('utc---> '+datestr2.toUTCString());
	//var date = new Date(timestamp) ;
	var date= new Date(datestr2.getTime() + datestr2.getTimezoneOffset()*60000);
	var day = date.getDate();
	var monthIndex = date.getMonth();
	var year = date.getFullYear();
	var monthNames = ["January", "February", "March","April", "May", "June", "July","August", "September", "October", "November", "December" ];
	var dayNames = ['Sun','Mon','Tue','Wed','Thur','Fri','Sat'];
	//var strVal=day + ' ' + monthNames[monthIndex] + ' ' + year;
	var dayName=dayNames[date.getDay()];
	console.log('day ---> '+date.getDay()+'         name --> '+dayName);
	var te=parseInt(monthIndex)+parseInt(1);
	var strVal=day + '/' +te + '/' + year;
	//var time=date.getHours()+":"+date.getMinutes();
	var hours="";
	var hr=date.getHours();
	if(hr>12){
		hours=hr-12;
	}else{
		//hours=hr;
		hours=hr == 0 ? 12 : hr;
	}
	var ampm = hr < 12 ? "am" : "pm";
	var min = date.getMinutes();
	if (min < 10) {
	    min = "0" + min;
	}
	
	var time=hours+":"+min+" "+ampm ;
	var dateObj={
			date : strVal,
			time : time,
			day : day,
			dateName:dayName,
			year : year,
			month : te,
			hour : hours,
			min : min
			
	};
	//dateVal.year, dateVal.month, dateVal.day, dateVal.hour, dateVal.min
	return dateObj;
}


/*function getDateInObjectUTCFormate_withTimeStampInput(timestamp)
{
	
		var datestr2=new Date(timestamp);
		
	   var dateNew = new Date(datestr2.getTime() + datestr2.getTimezoneOffset()*60000);
	  var offset = new Date().getTimezoneOffset() * 60 * 1000;
	  var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	//var gettingFromServer= new Date(dateNew);
	//gettingFromServer.setMinutes(gettingFromServer.getMinutes() + parseInt(offset.toString().replace("-","")));
	//alert("0000000000gettingFromServer"+formatAMPM(gettingFromServer)); 
	
	return formatAMPM(gettingFromServer); 
		
		//dateVal.year, dateVal.month, dateVal.day, dateVal.hour, dateVal.min
	//	return dateObj;
}


var formatAMPM = function(date) {
	  var hours = date.getHours();
	  console.log(hours)
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  hours = hours < 10 ? '0'+hours : hours ;
	  var strTime =date.getDate()+"/"+(date.getMonth()+1)+"/"+date.getFullYear()+" "+ hours + ':' + minutes + ' ' + ampm;
	  return strTime;
	}*/

function dateFunction(timestamp)
{

	var datestr2=new Date(timestamp);
	
	   var dateNew = new Date(datestr2.getTime() + datestr2.getTimezoneOffset()*60000);
	  var offset = new Date().getTimezoneOffset() * 60 * 1000;
	  var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		
		var hours = gettingFromServer.getHours();
		  console.log(hours)
		  var minutes = gettingFromServer.getMinutes();
		  var ampm = hours >= 12 ? 'PM' : 'AM';
		  hours = hours % 12;
		  hours = hours ? hours : 12; // the hour '0' should be '12'
		  minutes = minutes < 10 ? '0'+minutes : minutes;
		  hours = hours < 10 ? '0'+hours : hours ;
		
		  var day = gettingFromServer.getDate();
		  
		  var dayNames = ['Sun','Mon','Tue','Wed','Thur','Fri','Sat'];
			
			var dayName = dayNames[gettingFromServer.getDay()];
		  
		var dateObj={
				
				day : day,
				dateName:dayName
		};
	
		return dateObj;
}

function buddyCancelledEvents(){
	$('#cancelledEventListDiv').html('');
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserId2="'"+eventLogUserId+"'";
	var cancelledEventListDiv="'cancelledEventListDiv'";
	var cancelledPageBtn="'cancelledPageBtn'";
		var board={
			userId : eventLogUserId,
			startNode : 0,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/cancelledEventPagination",
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
						
						for(var i in res){var event=res[i].tournamentSchedulerObj;
						 if(event!=null){

								//var dateObj=getDateInObjectFormate_withTimeStampInput(res[i].matchDate);
							     var dateObj=dateFunction(res[i].matchDate);	
								var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].matchDate);
								
								htm+='<div class="col-md-12 noPadding leag-Acc">';
		                        htm+='<div class="col-md-1 eveDate">';		                        
		                       // htm+='<span>25<br>Thus</span>';
		                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
				 				htm+='</div>';		                    
		                    	htm+='<div class="col-md-11 borderleft">';		                         
		                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
		                        htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
		                        htm+='<div class="teamLogos">';
		                        htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
		                        htm+='</div>';		                            
		                        htm+='</div>';		                         
		                        htm+='<div class="col-md-6 Leag-Img">';
		                        htm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
		                     //   htm+='<p>date </p>';
		                       // htm +='<p>'+dateObj.date+'</p>';
		                        htm +='<p>'+dateNewObject+'</p>';
		                        htm+='<h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4><br>';
		                       if(event.groundDetails){
				                        htm+='<p>'+event.groundDetails.groundName+'<br>';
				                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
				                        htm+='</p>';
		                       }
		                        htm+='</div>';		                       
		                       // htm+='<c:if test="${!empty event.cancelReason}">';
		                        if(event.cancelReason!=null){
				                        htm+='<div class="col-md-6 Leag-Img">';
				                        htm+='<h4>Reason</h4>';
				                        htm+='<p>'+event.cancelReason+'</p>';
				                        htm+='</div>';
		                        }
		                       // htm+='</c:if>';
		                        htm+='</div>';
		                        htm+='</div>';
		                        nextindicate= parseInt(nextindicate)+parseInt(1);
							
						 }else
							 
						 {
						 
						 
						    var dateObj=dateFunction(res[i].eventDate);	
						 
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].eventDate);
							var creatorDetails=res[i].creatorDetails;

							htm+='<div class="col-md-12 noPadding leag-Acc">';
	                        htm+='<div class="col-md-1 eveDate">';		                        
	                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				htm+='</div>';		                    
	                    	htm+='<div class="col-md-11 borderleft">';		                         
	                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
	                        htm+='<a href="'+ctx+'/buddy/'+creatorDetails.fullName+'/'+creatorDetails.userId+'">';
	                        htm+='<img src="'+creatorDetails.userImageUrl+'" onerror=errorImageset1(this) class="nav-avatar">'+creatorDetails.fullName+'</a>';	                            
	                        htm+='</div>';		                         
	                        htm+='<div class="col-md-6 Leag-Img">';
	                        htm+='<h4>'+res[i].eventName+'</h4>';
	                        
	                        htm +='<p>'+dateNewObject+'</p>';
	                        
	                        if(res[i].cancelReason!=null){
		                        htm+='<div class="">';
		                        htm+='<h4>Reason :</h4>';
		                        htm+='<p>'+res[i].cancelReason+'</p>';
		                        htm+='</div>';
                        }
	                        
	                        
	                      
			                        htm+='<p>';
			                        htm+=''+res[i].venue+'';
			                        htm+='</p>';
	                      
	                        htm+='</div>';		                       
	                    
	                        htm+='</div>';
	                        htm+='</div>';
	                        nextindicate= parseInt(nextindicate)+parseInt(1);
						 
						 
						 
						 
						 
						 
						 }
						
					}				
						console.log(nextindicate);
						if(nextindicate<0){
							  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
							  htm2 +='';
							   displaynotification('No Events',2000);
						}else{
							 
							  // htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyCancelledEvent_Page(10,'+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</button>';
								htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:buddyCancelledEvent_Page(10,'+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</a>';
						   }
						
				}else{
				
				}
		
			
			
			$('#cancelledEventListDiv').append(htm);
			$('#cancelledPageBtn').html(htm2);
		
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
	
}


function errorImageset1(id)
{
	id.src=ctx+"/images/profileIcon.png";
}


function buddyCancelledEvent_Page(startNode,display,pageCall){
	
	
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserId2="'"+eventLogUserId+"'";
	var cancelledEventListDiv="'cancelledEventListDiv'";
	var cancelledPageBtn="'cancelledPageBtn'";
		var board={
			userId : eventLogUserId,
			startNode : startNode,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(startNode)+parseInt(10);
	$.ajax({
		type : "POST",
		url : ctx+"/cancelledEventPagination",
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
						
						for(var i in res){var event=res[i].tournamentSchedulerObj;
						 if(event!=null){

								//var dateObj=getDateInObjectFormate_withTimeStampInput(res[i].matchDate);
							 
							 var dateObj=dateFunction(res[i].matchDate);	
								var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(res[i].matchDate);
								htm+='<div class="col-md-12 noPadding leag-Acc">';
		                        htm+='<div class="col-md-1 eveDate">';		                        
		                       // htm+='<span>25<br>Thus</span>';
		                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
				 				htm+='</div>';		                    
		                    	htm+='<div class="col-md-11 borderleft">';		                         
		                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
		                        htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
		                        htm+='<div class="teamLogos">';
		                        htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
		                        htm+='</div>';		                            
		                        htm+='</div>';		                         
		                        htm+='<div class="col-md-6 Leag-Img">';
		                        htm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
		                     //   htm+='<p>date </p>';
		                      //  htm +='<p>'+dateObj.date+'</p>';
		                        htm +='<p>'+dateNewObject+'</p>';
		                        htm+='<h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4><br>';
		                       if(event.groundDetails){
				                        htm+='<p>'+event.groundDetails.groundName+'<br>';
				                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
				                        htm+='</p>';
		                       }
		                        htm+='</div>';		                       
		                       // htm+='<c:if test="${!empty event.cancelReason}">';
		                        if(event.cancelReason!=null){
				                        htm+='<div class="col-md-6 Leag-Img">';
				                        htm+='<h4>Reason</h4>';
				                        htm+='<p>'+event.cancelReason+'</p>';
				                        htm+='</div>';
		                        }
		                       // htm+='</c:if>';
		                        htm+='</div>';
		                        htm+='</div>';
		                        nextindicate= parseInt(nextindicate)+parseInt(1);
							
						 }
						
					}				
						console.log(nextindicate);
						if(nextindicate!=0){
							  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
							// htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyCancelledEvent_Page('+page+','+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</button>';   
							htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:buddyCancelledEvent_Page('+page+','+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</a>';
						}else{
							htm2 +='';
							   displaynotification('No Events',2000);							  
						   }
				}else{
				
				}
		
			
			
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
		
		},
		
		error:function(response){
		},
	
		
	}); 
	
}

function buddyMatchInivitation(){
	
		
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var matchInvitationListDiv="'matchInvitationListDiv'";
	var matchInvitationBTn="'matchInvitationBTn'";
		var board={
			userId : eventLogUserId,
			startNode : 0,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/buddyMatchEventPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			
			var	phtm='';
			
			var nextindicate=0;
			if(res!=null)
				{
				
				if(res.buddyMatchInvitationList!=null){
					for(var i in res.buddyMatchInvitationList){
						var event=res.buddyMatchInvitationList[i].tournamentSchedulerObj;
						if(event!=null){
							//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
							 var dateObj=dateFunction(event.gameDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
							
							htm+='<div class="col-md-12 noPadding leag-Acc">';
			                htm+='<div class="col-md-1 noPadding N-btn">';		                        
			                htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				htm+='</div>';		                    
			            	htm+='<div class="col-md-11 borderleft">';		                         
			                htm+='<div class="col-md-12 noPadding eventUserDetails">';
			                if(event.boardInfo!=null){
			                htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" onError=imgError(this) class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
			                }
			                htm+='<div class="teamLogos">';
			                htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
			                htm+='</div>';		                            
			                htm+='</div>';		                         
			                htm+='<div class="col-md-6 Leag-Img">';
			                //if(res.buddyMatchInvitationList[i].tournamentName!=null){
			                if(event.tournamentInfo!=null){
			                	  htm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
			                }
			              
			               // htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
			                htm +='<p>'+dateNewObject+'';
			                if(event.status == 'Upcoming'){
			                    htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','no')>View Score</a>";
			                    }else{
			                    	htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
			                    }
			                
			                var date="'"+dateObj.date+" "+dateObj.time+"'";
			                htm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
			               if(event.groundDetails){
			                        htm+='<p>'+event.groundDetails.groundName+'<br>';
			                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
			                        htm+='</p>';
			               }
			               
			               
			                htm+='</div>';	
			                
			                   var  eventMatchMapId="'"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   var rosterId="'"+res.buddyMatchInvitationList[i].rosterId+"'";
			            	   var tournamentSchedulerId="'"+event.tournamentSchedulerId+"'";
			            	   var invitationacceptcountdisp="'invitationacceptcountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   var invitationmaybecountdisp="'invitationmaybecountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   var invitationrejectcountdisp="'invitationrejectcountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   
			            	   var playerId="'"+res.buddyMatchInvitationList[i].playerId+"'";
			            	   var accept="'acceptingMatches"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			                
			                /*if(event.status=='Completed'){
			                	var tournamentName ="'"+event.tournamentInfo.tournamentName+"'";
			                //    var tournamentSchedulerId="'"+event.tournamentSchedulerId+"'";	                		
			                    var homeboardId="'"+event.homeTeamInfo.boardId+"'";
			                    var tournamentId="'"+event.tournamentInfo.tournamentId+"'";
				            	  htm+='<button type="submit" class="btn dBtn pull-right btnalian" onclick="showRateUmpireForm('+tournamentName+','+tournamentSchedulerId+','+homeboardId+','+tournamentId+','+date+')" >Rate Umpire</button>';
				               }else if(event.status=='Inproces'||res.buddyMatchInvitationList[i].statusId==30 ||res.buddyMatchInvitationList[i].statusId==31 ||res.buddyMatchInvitationList[i].statusId==35){*/
				            	   htm+='<div class="col-md-6 threebtn">';	   
				            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled" onclick="schedualStatus(198,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationacceptcountdisp+')" id="inviteReject'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',201)" id="invitationacceptcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Rejected :'+res.buddyMatchInvitationList[i].rejectedCount+'</a></p>';
				            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled" onclick="schedualStatus(197,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationmaybecountdisp+')" id="inviteMaybe'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',202)" id="invitationmaybecountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">May Be : '+res.buddyMatchInvitationList[i].maybeCount+'</a></p>';
				            	   htm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled" onclick="schedualStatus(196,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationrejectcountdisp+')" id="inviteAccept'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',200)" id="invitationrejectcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Accepted : '+res.buddyMatchInvitationList[i].acceptedCount+'</a></p>';
				            	   htm+='</div>';
				               /*}else if(event.status=='Upcoming' && res.buddyMatchInvitationList[i].statusId==29){
				            	   htm+='<div class="col-md-6 threebtn">';	   
				            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="schedualStatus(198,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationacceptcountdisp+')" id="inviteReject'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',201)" id="invitationacceptcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Rejected :'+res.buddyMatchInvitationList[i].rejectedCount+'</a></p>';
				            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationmaybecountdisp+')" id="inviteMaybe'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',202)" id="invitationmaybecountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">May Be : '+res.buddyMatchInvitationList[i].maybeCount+'</a></p>';
				            	   htm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationrejectcountdisp+')" id="inviteAccept'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',200)" id="invitationrejectcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Accepted : '+res.buddyMatchInvitationList[i].acceptedCount+'</a></p>';
				            	   htm+='</div>';
				               }*/
			                htm+='</div>';
			                htm+=' <div id="acceptingMatches'+res.buddyMatchInvitationList[i].eventMatchMapId+'" class="col-md-12 accbox eventoption" style="display: none;">';
			                htm+='<h1 class="noBorder">Accepted Guys</h1>';
			                htm+='</div>';  
			                htm+='</div>';
			                nextindicate= parseInt(nextindicate)+parseInt(1);
						}
					}
						
				}else{
					htm="No Event";
				}
				
				
				if(res.buddyCompletedMatchInvitationList!=null){
					for(var i in res.buddyCompletedMatchInvitationList){
						var event=res.buddyCompletedMatchInvitationList[i].tournamentSchedulerObj;
						if(event!=null){
							//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
							 var dateObj=dateFunction(event.gameDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
							
							phtm+='<div class="col-md-12 noPadding leag-Acc">';
			                phtm+='<div class="col-md-1 noPadding N-btn">';		                        
			                phtm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				phtm+='</div>';		                    
			            	phtm+='<div class="col-md-11 borderleft">';		                         
			                phtm+='<div class="col-md-12 noPadding eventUserDetails">';
			                if(event.boardInfo!=null){
			                phtm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" onError=imgError(this) class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
			                }
			                phtm+='<div class="teamLogos">';
			                phtm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
			                phtm+='</div>';		                            
			                phtm+='</div>';		                         
			                phtm+='<div class="col-md-6 Leag-Img">';
			                //if(res.buddyMatchInvitationList[i].tournamentName!=null){
			                if(event.tournamentInfo!=null){
			                	  phtm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
			                }
			              
			               // phtm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
			                phtm +='<p>'+dateNewObject+'';
			                
			                if(event.status == 'Upcoming'){
			                    phtm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress1('"+event.tournamentSchedulerId+"','no')>View Score</a>";
			                    }else{
			                    	phtm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress1('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
			                    }
			                var date="'"+dateObj.date+" "+dateObj.time+"'";
			                phtm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
			               if(event.groundDetails){
			                        phtm+='<p>'+event.groundDetails.groundName+'<br>';
			                        phtm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
			                        phtm+='</p>';
			               }
			               
			               
			                phtm+='</div>';	
			                
			                  /* var  eventMatchMapId="'"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   var rosterId="'"+res.buddyMatchInvitationList[i].rosterId+"'";
			            	   var tournamentSchedulerId="'"+event.tournamentSchedulerId+"'";
			            	   var invitationacceptcountdisp="'invitationacceptcountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   var invitationmaybecountdisp="'invitationmaybecountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   var invitationrejectcountdisp="'invitationrejectcountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			            	   
			            	   var playerId="'"+res.buddyMatchInvitationList[i].playerId+"'";
			            	   var accept="'acceptingMatches"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
			                
			                if(event.status=='Completed'){
			                	var tournamentName ="'"+event.tournamentInfo.tournamentName+"'";
			                //    var tournamentSchedulerId="'"+event.tournamentSchedulerId+"'";	                		
			                    var homeboardId="'"+event.homeTeamInfo.boardId+"'";
			                    var tournamentId="'"+event.tournamentInfo.tournamentId+"'";
			                    if(event.player_role == 'Captian'){
			                    	 phtm+='<button type="submit" class="btn dBtn pull-right btnalian" onclick="showRateUmpireForm('+tournamentName+','+tournamentSchedulerId+','+homeboardId+','+tournamentId+','+date+')" >Rate Umpire</button>';
			                    }
				            	 
				               }else if(event.status=='Inproces'||res.buddyMatchInvitationList[i].statusId==30 ||res.buddyMatchInvitationList[i].statusId==31 ||res.buddyMatchInvitationList[i].statusId==35){
				            	   phtm+='<div class="col-md-6 threebtn">';	   
				            	   phtm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled" onclick="schedualStatus(198,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationacceptcountdisp+')" id="inviteReject'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',201)" id="invitationacceptcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Rejected :'+res.buddyMatchInvitationList[i].rejectedCount+'</a></p>';
				            	   phtm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled" onclick="schedualStatus(197,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationmaybecountdisp+')" id="inviteMaybe'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',202)" id="invitationmaybecountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">May Be : '+res.buddyMatchInvitationList[i].maybeCount+'</a></p>';
				            	   phtm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled" onclick="schedualStatus(196,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationrejectcountdisp+')" id="inviteAccept'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',200)" id="invitationrejectcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Accepted : '+res.buddyMatchInvitationList[i].acceptedCount+'</a></p>';
				            	   phtm+='</div>';
				               }else if(event.status=='Upcoming' && res.buddyMatchInvitationList[i].statusId==29){
				            	   phtm+='<div class="col-md-6 threebtn">';	   
				            	   phtm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="schedualStatus(198,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationacceptcountdisp+')" id="inviteReject'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',201)" id="invitationacceptcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Rejected :'+res.buddyMatchInvitationList[i].rejectedCount+'</a></p>';
				            	   phtm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationmaybecountdisp+')" id="inviteMaybe'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',202)" id="invitationmaybecountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">May Be : '+res.buddyMatchInvitationList[i].maybeCount+'</a></p>';
				            	   phtm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationrejectcountdisp+')" id="inviteAccept'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',200)" id="invitationrejectcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Accepted : '+res.buddyMatchInvitationList[i].acceptedCount+'</a></p>';
				            	   phtm+='</div>';
				               }*/
			                phtm+='</div>';
			               /* phtm+=' <div id="acceptingMatches'+res.buddyMatchInvitationList[i].eventMatchMapId+'" class="col-md-12 accbox eventoption" style="display: none;">';
			                phtm+='<h1 class="noBorder">Accepted Guys</h1>';
			                phtm+='</div>';  */
			                phtm+='</div>';
			                nextindicate= parseInt(nextindicate)+parseInt(1);
						}
					}
				}else{
					phtm="No Event";
				}
				
				
				
				}else{
				
					htm='No Event';
					
				}
		
			if(nextindicate!=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				// htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyCancelledEvent_Page('+page+','+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</button>';   
				htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:buddyMatchInviation_page(10,'+matchInvitationListDiv+','+matchInvitationBTn+')">Load More</a>';
			}else{
				htm2 +='';
				   displaynotification('No Events',2000);							  
			   }
			
			$('#matchInvitationListDiv').html(htm);
			$('#matchInvitationBTn').html(htm2);
			$('#pastmatchInvitationListDiv').html(phtm);
		},
		
		error:function(response){
		},
	
		
	}); 
	
}

function buddyMatchInviation_page(pageNumber,display, pageCall){
	
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
	var board={
			userId : eventLogUserId,
			startNode : pageNumber,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(pageNumber)+parseInt(10);
	$.ajax({
		type : "POST",
		url : ctx+"/buddyMatchEventPagination",
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
				
				
				for(var i in res.buddyMatchInvitationList){
					var event=res.buddyMatchInvitationList[i].tournamentSchedulerObj;
					if(event!=null){
						//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
						 var dateObj=dateFunction(event.gameDate);	
						var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
						
						htm+='<div class="col-md-12 noPadding leag-Acc">';
		                htm+='<div class="col-md-1 noPadding N-btn">';		                        
		                htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
		 				htm+='</div>';		                    
		            	htm+='<div class="col-md-11 borderleft">';		                         
		                htm+='<div class="col-md-12 noPadding eventUserDetails">';
		                if(event.boardInfo!=null){
		                htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" onError=imgError(this) class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
		                }
		                htm+='<div class="teamLogos">';
		                htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
		                htm+='</div>';		                            
		                htm+='</div>';		                         
		                htm+='<div class="col-md-6 Leag-Img">';
		               // if(res.buddyMatchInvitationList[i].tournamentName!=null){
		                if(event.tournamentInfo!=null){
		                	  htm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
		                }
		              
		               // htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
		                htm +='<p>'+dateNewObject+'';
		                
		                if(event.status == 'Upcoming'){
	                        htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','no')>View Score</a>";
	                        }else{
	                        	htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
	                        }
		                var date="'"+dateObj.date+" "+dateObj.time+"'";
		                htm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
		               if(event.groundDetails){
		                        htm+='<p>'+event.groundDetails.groundName+'<br>';
		                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
		                        htm+='</p>';
		               }
		               
		               
		                htm+='</div>';	
		                
		                   var  eventMatchMapId="'"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
		            	   var rosterId="'"+res.buddyMatchInvitationList[i].rosterId+"'";
		            	   var tournamentSchedulerId="'"+event.tournamentSchedulerId+"'";
		            	   var invitationacceptcountdisp="'invitationacceptcountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
		            	   var invitationmaybecountdisp="'invitationmaybecountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
		            	   var invitationrejectcountdisp="'invitationrejectcountdisp"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
		            	   
		            	   var playerId="'"+res.buddyMatchInvitationList[i].playerId+"'";
		            	   var accept="'acceptingMatches"+res.buddyMatchInvitationList[i].eventMatchMapId+"'";
		                
		               /* if(event.status=='Completed'){
		                	var tournamentName ="'"+event.tournamentInfo.tournamentName+"'";
		                //    var tournamentSchedulerId="'"+event.tournamentSchedulerId+"'";	                		
		                    var homeboardId="'"+event.homeTeamInfo.boardId+"'";
		                    var tournamentId="'"+event.tournamentInfo.tournamentId+"'";
			            	  htm+='<button type="submit" class="btn dBtn pull-right btnalian" onclick="showRateUmpireForm('+tournamentName+','+tournamentSchedulerId+','+homeboardId+','+tournamentId+','+date+')" >Rate Umpire</button>';
			               }else if(event.status=='Inproces'||res.buddyMatchInvitationList[i].statusId==30 ||res.buddyMatchInvitationList[i].statusId==31 ||res.buddyMatchInvitationList[i].statusId==35){*/
			            	   htm+='<div class="col-md-6 threebtn">';	   
			            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled" onclick="schedualStatus(198,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationacceptcountdisp+')" id="inviteReject'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',201)" id="invitationacceptcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Rejected :'+res.buddyMatchInvitationList[i].rejectedCount+'</a></p>';
			            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled" onclick="schedualStatus(197,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationmaybecountdisp+')" id="inviteMaybe'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',202)" id="invitationmaybecountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">May Be : '+res.buddyMatchInvitationList[i].maybeCount+'</a></p>';
			            	   htm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled" onclick="schedualStatus(196,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationrejectcountdisp+')" id="inviteAccept'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',200)" id="invitationrejectcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Accepted : '+res.buddyMatchInvitationList[i].acceptedCount+'</a></p>';
			            	   htm+='</div>';
			             /*  }else if(event.status=='Upcoming' && res.buddyMatchInvitationList[i].statusId==29){
			            	   htm+='<div class="col-md-6 threebtn">';	   
			            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="schedualStatus(198,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationacceptcountdisp+')" id="inviteReject'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',201)" id="invitationacceptcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Rejected :'+res.buddyMatchInvitationList[i].rejectedCount+'</a></p>';
			            	   htm+=' <p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="schedualStatus(197,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationmaybecountdisp+')" id="inviteMaybe'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',202)" id="invitationmaybecountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">May Be : '+res.buddyMatchInvitationList[i].maybeCount+'</a></p>';
			            	   htm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="schedualStatus(196,'+eventMatchMapId+','+rosterId+','+playerId+','+tournamentSchedulerId+','+invitationrejectcountdisp+')" id="inviteAccept'+res.buddyMatchInvitationList[i].eventMatchMapId+'"><br><a href="javascript:gettingmatchAcceptedPeopleList('+eventMatchMapId+','+tournamentSchedulerId+','+rosterId+','+accept+',200)" id="invitationrejectcountdisp'+res.buddyMatchInvitationList[i].eventMatchMapId+'">Accepted : '+res.buddyMatchInvitationList[i].acceptedCount+'</a></p>';
			            	   htm+='</div>';
			               }*/
		                htm+='</div>';
		                htm+=' <div id="acceptingMatches'+res.buddyMatchInvitationList[i].eventMatchMapId+'" class="col-md-12 accbox eventoption" style="display: none;">';
		                htm+='<h1 class="noBorder">Accepted Guys</h1>';
		                htm+='</div>';  
		                htm+='</div>';
		                nextindicate= parseInt(nextindicate)+parseInt(1);
					}
				}
					
				}else{
				
				}
		
			if(nextindicate!=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				// htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyCancelledEvent_Page('+page+','+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</button>';   
				htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:buddyMatchInviation_page('+page+','+display2+','+pageCall2+')">Load More</a>';
			}else{
				htm2 +='';
				   displaynotification('No Events',2000);							  
			   }
			
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
			
		},
		
		error:function(response){
		},
	
		
	}); 
}
function buddy(){
	alert();
	
}

function buddyInvitation_Events(){
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	
	var eventLogUserId2="'"+eventLogUserId+"'";
	var buddyInvitationEventList="'buddyInvitationEventList'";
	var buddyInviationPaginationDIV="'buddyInviationPaginationDIV'";
		var board={
			userId : eventLogUserId,
			startNode : 0,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(0)+parseInt(10);
	
	$.ajax({
		type : "POST",
		url : ctx+"/buddyInvitationPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var htm2='';
			var phtm ='';
			var nextindicate=0;
			var pastindicate=0;
			if(res!=null)
				{
					
					if(res.buddyEventInvitationList!=null){
						var upcomingevent=res.buddyEventInvitationList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							htm +='<div class="col-md-12 noPadding leag-Acc">';
							htm +='<div class="col-md-1 noPadding N-btn">';
							//htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							htm +='</div>';
							htm +='<div class="col-md-11 borderleft">';	
							htm +='<div class="col-md-12 noPadding eventUserDetails">';
							/*if(upcomingevent[i].boardInfo!=null){
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';	
							}else {
								htm +='<img src="'+upcomingevent[i].usersInfo+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';
							}*/
							if(upcomingevent[i].usersInfo!=null){
								htm+='<a href="'+ctx+'/buddy/'+upcomingevent[i].usersInfo.firstName+'/'+upcomingevent[i].usersInfo.userId+'">';
								htm +='<img src="'+upcomingevent[i].usersInfo.userImageUrl+'?" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+upcomingevent[i].usersInfo.firstName+'';	
								htm +='</a>';	
							}else if(upcomingevent[i].boardInfo!=null) {
								///board/
								htm+='<a href="'+ctx+''+upcomingevent[i].boardInfo.boardName+'/board/'+upcomingevent[i].boardInfo.boardId+'">';
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'?" class="nav-avatar" onerror="imgError(this)">';
								if(upcomingevent[i].boardInfo.boardName!=null){
									htm +=''+upcomingevent[i].boardInfo.boardName;
								}
								htm +='</a>';	
							}else{
								
							}
									
							//htm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							htm +='</div>';
							htm +='<div class="col-md-6 Leag-Img">';
							htm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							htm +='<p>'+dateNewObject+'</p>';
							htm +='<p>'+upcomingevent[i].venue+'</p>';
							htm +='</div>';
						
							/*if(upcomingevent[i].statusId==28){
								acceptdiv="'invitationacceptcountdisp"+upcomingevent[i].eventId+"'";
								rejectiv="'invitationrejectcountdisp"+upcomingevent[i].eventId+"'";
								maybediv="'invitationmaybecountdisp"+upcomingevent[i].eventId+"'";
								
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="eventoption2('+eventid+',73,this,'+acceptdiv+')" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)" id="invitationacceptcountdisp'+upcomingevent[i].eventId+'">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('+eventid+',72,this,'+maybediv+')" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)" id="invitationmaybecountdisp'+upcomingevent[i].eventId+'">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted"  onclick="eventoption2('+eventid+',71,this,'+rejectiv+')" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)" id="invitationrejectcountdisp'+upcomingevent[i].eventId+'">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}else{
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}*/
							htm +='</div>';
							htm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							htm +='<h1 class="noBorder">Accepted Guys</h1>';
							htm +='<div class=" col-md-12 accptguybg">';
							htm +='<p>1 Govind</p>';
							htm +='<img class="pull-right" src="images/userImg3.jpg">';
							htm +='</div>';
							htm +='</div>';
							htm +='</div>';
							
							nextindicate= parseInt(nextindicate)+parseInt("1");
						}
					}
					
					if(res.rosterEventInvitationList!=null){

						var upcomingevent=res.rosterEventInvitationList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							htm +='<div class="col-md-12 noPadding leag-Acc">';
							htm +='<div class="col-md-1 noPadding N-btn">';
							//htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							htm +='</div>';
							htm +='<div class="col-md-11 borderleft">';	
							htm +='<div class="col-md-12 noPadding eventUserDetails">';
							/*if(upcomingevent[i].boardInfo!=null){
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';	
							}else {
								htm +='<img src="'+upcomingevent[i].usersInfo+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';
							}*/
							if(upcomingevent[i].usersInfo!=null){
								htm+='<a href="'+ctx+'/buddy/'+upcomingevent[i].usersInfo.firstName+'/'+upcomingevent[i].usersInfo.userId+'">';
								htm +='<img src="'+upcomingevent[i].usersInfo.userImageUrl+'?" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+upcomingevent[i].usersInfo.firstName+'';	
								htm +='</a>';	
							}else if(upcomingevent[i].boardInfo!=null) {
								htm+='<a href="'+ctx+''+upcomingevent[i].boardInfo.boardName+'/board/'+upcomingevent[i].boardInfo.boardId+'">';
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'?" class="nav-avatar" onerror="imgError(this)">';
								if(upcomingevent[i].boardInfo.boardName!=null){
									htm +=''+upcomingevent[i].boardInfo.boardName;
								}
								htm +='</a>';
							}else{
								
							}
							
									
							//htm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							htm +='</div>';
							htm +='<div class="col-md-6 Leag-Img">';
							htm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							htm +='<p>'+dateNewObject+'</p>';
							htm +='<p>'+upcomingevent[i].venue+'</p>';
							htm +='</div>';						

							/*if(upcomingevent[i].statusId==28){
								
								acceptdiv="'invitationacceptcountdisp"+upcomingevent[i].eventId+"'";
								rejectiv="'invitationrejectcountdisp"+upcomingevent[i].eventId+"'";
								maybediv="'invitationmaybecountdisp"+upcomingevent[i].eventId+"'";
								
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="eventoption2('+eventid+',73,this,'+acceptdiv+')" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)" id="invitationacceptcountdisp'+upcomingevent[i].eventId+'">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('+eventid+',72,this,'+maybediv+')" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)" id="invitationmaybecountdisp'+upcomingevent[i].eventId+'">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted"  onclick="eventoption2('+eventid+',71,this,'+rejectiv+')" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)" id="invitationrejectcountdisp'+upcomingevent[i].eventId+'">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}else{
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}*/
							htm +='</div>';
							htm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							htm +='<h1 class="noBorder">Accepted Guys</h1>';
							htm +='<div class=" col-md-12 accptguybg">';
							htm +='<p>1 Govind</p>';
							htm +='<img class="pull-right" src="images/userImg3.jpg">';
							htm +='</div>';
							htm +='</div>';
							htm +='</div>';
							
							nextindicate= parseInt(nextindicate)+parseInt("1");
						}
					
					}
				
				
					if(res.buddyCompletedInvitationList!=null){
						var upcomingevent=res.buddyCompletedInvitationList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							phtm +='<div class="col-md-12 noPadding leag-Acc">';
							phtm +='<div class="col-md-1 noPadding N-btn">';
							//phtm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							phtm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							phtm +='</div>';
							phtm +='<div class="col-md-11 borderleft">';	
							phtm +='<div class="col-md-12 noPadding eventUserDetails">';
							/*if(upcomingevent[i].boardInfo!=null){
								phtm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';	
							}else {
								phtm +='<img src="'+upcomingevent[i].usersInfo+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';
							}*/
							
							if(upcomingevent[i].usersInfo!=null){
								phtm+='<a href="'+ctx+'/buddy/'+upcomingevent[i].usersInfo.firstName+'/'+upcomingevent[i].usersInfo.userId+'">';
								phtm +='<img src="'+upcomingevent[i].usersInfo.userImageUrl+'?" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+upcomingevent[i].usersInfo.firstName+'';	
								phtm +='</a>';	
							}else if(upcomingevent[i].boardInfo!=null) {
								phtm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'?" class="nav-avatar" onerror="imgError(this)">';
								if(upcomingevent[i].boardInfo.boardName!=null){
									phtm +=''+upcomingevent[i].boardInfo.boardName;
								}
							}else{
								
							}
									
							//phtm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							phtm +='</div>';
							phtm +='<div class="col-md-6 Leag-Img">';
							phtm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							phtm +='<p>'+dateNewObject+'</p>';
							phtm +='<p>'+upcomingevent[i].venue+'</p>';
							phtm +='</div>';
						
							/*if(upcomingevent[i].statusId==28){
							var acceptdiv="'invitationacceptcountdisp"+upcomingevent[i].eventId+"'";
							var	rejectiv="'invitationrejectcountdisp"+upcomingevent[i].eventId+"'";
							var	maybediv="'invitationmaybecountdisp"+upcomingevent[i].eventId+"'";
								
								phtm +='<div class="col-md-6 threebtn">';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('+eventid+',73,this,'+acceptdiv+')" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)" id="invitationacceptcountdisp'+upcomingevent[i].eventId+'">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('+eventid+',72,this,'+maybediv+')" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)" id="invitationmaybecountdisp'+upcomingevent[i].eventId+'">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								phtm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"  onclick="eventoption2('+eventid+',71,this,'+rejectiv+')" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)" id="invitationrejectcountdisp'+upcomingevent[i].eventId+'">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								phtm +='</div>';
							}else{
								phtm +='<div class="col-md-6 threebtn">';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								phtm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								phtm +='</div>';
							}*/
							phtm +='</div>';
							phtm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							phtm +='<h1 class="noBorder">Accepted Guys</h1>';
							phtm +='<div class=" col-md-12 accptguybg">';
							phtm +='<p>1 Govind</p>';
							phtm +='<img class="pull-right" src="images/userImg3.jpg">';
							phtm +='</div>';
							phtm +='</div>';
							phtm +='</div>';
							
							
						}
						pastindicate= parseInt(pastindicate)+parseInt("1");
					}
					
					if(res.rosterCompletedInvitationList!=null){

						var upcomingevent=res.rosterCompletedInvitationList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							phtm +='<div class="col-md-12 noPadding leag-Acc">';
							phtm +='<div class="col-md-1 noPadding N-btn">';
							//phtm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							phtm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							phtm +='</div>';
							phtm +='<div class="col-md-11 borderleft">';	
							phtm +='<div class="col-md-12 noPadding eventUserDetails">';
							/*if(upcomingevent[i].boardInfo!=null){
								phtm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';	
							}else {
								phtm +='<img src="'+upcomingevent[i].usersInfo+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';
							}*/
							
							if(upcomingevent[i].usersInfo!=null){
								phtm+='<a href="'+ctx+'/buddy/'+upcomingevent[i].usersInfo.firstName+'/'+upcomingevent[i].usersInfo.userId+'">';
								phtm +='<img src="'+upcomingevent[i].usersInfo.userImageUrl+'?" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+upcomingevent[i].usersInfo.firstName+'';	
								phtm +='</a>';	
							}else if(upcomingevent[i].boardInfo!=null) {
								phtm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'?" class="nav-avatar" onerror="imgError(this)">';
								if(upcomingevent[i].boardInfo.boardName!=null){
									phtm +=''+upcomingevent[i].boardInfo.boardName;
								}
							}else{
								
							}
									
							//phtm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							phtm +='</div>';
							phtm +='<div class="col-md-6 Leag-Img">';
							phtm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							phtm +='<p>'+dateNewObject+'</p>';
							phtm +='<p>'+upcomingevent[i].venue+'</p>';
							phtm +='</div>';						

							/*if(upcomingevent[i].statusId==28){
								
								acceptdiv="'invitationacceptcountdisp"+upcomingevent[i].eventId+"'";
								rejectiv="'invitationrejectcountdisp"+upcomingevent[i].eventId+"'";
								maybediv="'invitationmaybecountdisp"+upcomingevent[i].eventId+"'";
								
								phtm +='<div class="col-md-6 threebtn">';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="eventoption2('+eventid+',73,this,'+acceptdiv+')" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)" id="invitationacceptcountdisp'+upcomingevent[i].eventId+'">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('+eventid+',72,this,'+maybediv+')" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)" id="invitationmaybecountdisp'+upcomingevent[i].eventId+'">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								phtm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept"  onclick="eventoption2('+eventid+',71,this,'+rejectiv+')" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)" id="invitationrejectcountdisp'+upcomingevent[i].eventId+'">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								phtm +='</div>';
							}else{
								phtm +='<div class="col-md-6 threebtn">';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" disabled="disabled"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								phtm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								phtm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" disabled="disabled"><br>';
								phtm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								phtm +='</div>';
							}*/
							phtm +='</div>';
							phtm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							phtm +='<h1 class="noBorder">Accepted Guys</h1>';
							phtm +='<div class=" col-md-12 accptguybg">';
							phtm +='<p>1 Govind</p>';
							phtm +='<img class="pull-right" src="images/userImg3.jpg">';
							phtm +='</div>';
							phtm +='</div>';
							phtm +='</div>';
							
						}
						
						pastindicate= parseInt(pastindicate)+parseInt("1");
					}
				
				
					
					
					
					
				}else{
				
				}
			
			if(nextindicate!=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyInvitationEvents_page('+page+','+buddyInvitationEventList+','+buddyInviationPaginationDIV+')">Load More</button>';
			   }else{
				   htm2 +='';
				   displaynotification('No Events',2000);
			   }
			
			$('#buddyInvitationEventList').html(htm);
			$('#buddyInviationPaginationDIV').html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
	
}

function buddyInvitationEvents_page(pagr, display,pageCall){

	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	
	var eventLogUserId2="'"+eventLogUserId+"'";
	var buddyInvitationEventList="'buddyInvitationEventList'";
	var buddyInviationPaginationDIV="'buddyInviationPaginationDIV'";
		var board={
			userId : eventLogUserId,
			startNode : pagr,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(pagr)+parseInt(10);
	
	$.ajax({
		type : "POST",
		url : ctx+"/buddyInvitationPagination",
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
					
					if(res.buddyEventInvitationList!=null){
						var upcomingevent=res.buddyEventInvitationList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							htm +='<div class="col-md-12 noPadding leag-Acc">';
							htm +='<div class="col-md-1 noPadding N-btn">';
							//htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							htm +='</div>';
							htm +='<div class="col-md-11 borderleft">';	
							htm +='<div class="col-md-12 noPadding eventUserDetails">';
							/*if(upcomingevent[i].boardInfo!=null){
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';	
							}else {
								htm +='<img src="'+upcomingevent[i].usersInfo+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';
							}*/
							
							if(upcomingevent[i].usersInfo!=null){
								htm+='<a href="'+ctx+'/buddy/'+upcomingevent[i].usersInfo.firstName+'/'+upcomingevent[i].usersInfo.userId+'">';
								htm +='<img src="'+upcomingevent[i].usersInfo.userImageUrl+'?" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+upcomingevent[i].usersInfo.firstName+'';	
								htm +='</a>';	
							}else if(upcomingevent[i].boardInfo!=null) {
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'?" class="nav-avatar" onerror="imgError(this)">';
								if(upcomingevent[i].boardInfo.boardName!=null){
									htm +=''+upcomingevent[i].boardInfo.boardName;
								}
							}else{
								
							}
							
									
							//htm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							htm +='</div>';
							htm +='<div class="col-md-6 Leag-Img">';
							htm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							htm +='<p>'+dateNewObject+'</p>';
							htm +='<p>'+upcomingevent[i].venue+'</p>';
							htm +='</div>';
						
							/*if(upcomingevent[i].statusId==28){
								acceptdiv="'invitationacceptcountdisp"+upcomingevent[i].eventId+"'";
								rejectiv="'invitationrejectcountdisp"+upcomingevent[i].eventId+"'";
								maybediv="'invitationmaybecountdisp"+upcomingevent[i].eventId+"'";
								
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="eventoption2('+eventid+',73,this,'+acceptdiv+')" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)" id="invitationacceptcountdisp'+upcomingevent[i].eventId+'">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('+eventid+',72,this,'+maybediv+')" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)" id="invitationmaybecountdisp'+upcomingevent[i].eventId+'">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted"  onclick="eventoption2('+eventid+',71,this,'+rejectiv+')" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)" id="invitationrejectcountdisp'+upcomingevent[i].eventId+'">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}else{
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}*/
							htm +='</div>';
							htm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							htm +='<h1 class="noBorder">Accepted Guys</h1>';
							htm +='<div class=" col-md-12 accptguybg">';
							htm +='<p>1 Govind</p>';
							htm +='<img class="pull-right" src="images/userImg3.jpg">';
							htm +='</div>';
							htm +='</div>';
							htm +='</div>';
							
							nextindicate= parseInt(nextindicate)+parseInt("1");
						}
					}
					
					if(res.rosterEventInvitationList!=null){

						var upcomingevent=res.rosterEventInvitationList;
						for(var i in upcomingevent){
							
							//var dateObj=getDateInObjectFormate_withTimeStampInput(upcomingevent[i].eventDate);
							 var dateObj=dateFunction(upcomingevent[i].eventDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(upcomingevent[i].eventDate);
							
							var reject="'preject"+upcomingevent[i].eventId+"'";
							var eventid="'"+upcomingevent[i].eventId+"'";
							htm +='<div class="col-md-12 noPadding leag-Acc">';
							htm +='<div class="col-md-1 noPadding N-btn">';
							//htm +='<p><fmt:formatDate pattern="d" value="${event.eventDate}" /><br><fmt:formatDate pattern="E" value="${event.eventDate}" /></p>';
							htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
							htm +='</div>';
							htm +='<div class="col-md-11 borderleft">';	
							htm +='<div class="col-md-12 noPadding eventUserDetails">';
							/*if(upcomingevent[i].boardInfo!=null){
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';	
							}else {
								htm +='<img src="'+upcomingevent[i].usersInfo+'" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+eventLogUserName+'';
							}*/
							if(upcomingevent[i].usersInfo!=null){
								htm+='<a href="'+ctx+'/buddy/'+upcomingevent[i].usersInfo.firstName+'/'+upcomingevent[i].usersInfo.userId+'">';
								htm +='<img src="'+upcomingevent[i].usersInfo.userImageUrl+'?" class="nav-avatar" onerror="userErrorDefaultImg(this)"> '+upcomingevent[i].usersInfo.firstName+'';	
								htm +='</a>';	
							}else if(upcomingevent[i].boardInfo!=null) {
								htm +='<img src="'+upcomingevent[i].boardInfo.boardImageURL+'?" class="nav-avatar" onerror="imgError(this)">';
								if(upcomingevent[i].boardInfo.boardName!=null){
									htm +=''+upcomingevent[i].boardInfo.boardName;
								}
							}else{
								
							}
									
							//htm +='<a href="'+ctx+'/editEvent/'+upcomingevent[i].eventId+'"><i class="fa fa-pencil" title="Edit Event"></i></a>';
							htm +='</div>';
							htm +='<div class="col-md-6 Leag-Img">';
							htm +='<h4>'+upcomingevent[i].eventName+'</h4>';
							htm +='<p>'+dateNewObject+'</p>';
							htm +='<p>'+upcomingevent[i].venue+'</p>';
							htm +='</div>';						

							/*if(upcomingevent[i].statusId==28){
								
								acceptdiv="'invitationacceptcountdisp"+upcomingevent[i].eventId+"'";
								rejectiv="'invitationrejectcountdisp"+upcomingevent[i].eventId+"'";
								maybediv="'invitationmaybecountdisp"+upcomingevent[i].eventId+"'";
								
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" onclick="eventoption2('+eventid+',73,this,'+acceptdiv+')" id="inviteReject'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)" id="invitationacceptcountdisp'+upcomingevent[i].eventId+'">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="eventoption2('+eventid+',72,this,'+maybediv+')" id="inviteMaybe'+upcomingevent[i].eventId+'" ><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)" id="invitationmaybecountdisp'+upcomingevent[i].eventId+'">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted"  onclick="eventoption2('+eventid+',71,this,'+rejectiv+')" id="inviteAccept'+upcomingevent[i].eventId+'"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)" id="invitationrejectcountdisp'+upcomingevent[i].eventId+'">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}else{
								htm +='<div class="col-md-6 threebtn">';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Rejected" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',143)">Rejected :'+upcomingevent[i].rejectedCount+' </a></p>';
								htm +='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',152)">May Be : '+upcomingevent[i].maybeCount+'</a></p>';
								htm +='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accepted" disabled="disabled"><br>';
								htm +='<a href="javascript:gettingEventAcceptedPeopleList('+eventid+','+reject+',151)">Accepted :  '+upcomingevent[i].acceptedCount+' </a></p>';
								htm +='</div>';
							}*/
							htm +='</div>';
							htm +='<div id="preject'+upcomingevent[i].eventId+'" class="col-md-12 accbox eventoption" style="display: none;">';
							htm +='<h1 class="noBorder">Accepted Guys</h1>';
							htm +='<div class=" col-md-12 accptguybg">';
							htm +='<p>1 Govind</p>';
							htm +='<img class="pull-right" src="images/userImg3.jpg">';
							htm +='</div>';
							htm +='</div>';
							htm +='</div>';
							
							nextindicate= parseInt(nextindicate)+parseInt("1");
						}
					
					}
				
				
				}else{
				
				}
			
			if(nextindicate!=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyInvitationEvents_page('+page+','+buddyInvitationEventList+','+buddyInviationPaginationDIV+')">Load More</button>';
			   }else{
				   htm2 +='';
				   displaynotification('No Events',2000);
			   }
			
			$('#buddyInvitationEventList').append(htm);
			$('#buddyInviationPaginationDIV').html(htm2);
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
	

	
}

//***********************************************************************************************************************
function boardCancelEvent(){
	
	$('#boardCancelledEventDIV').html('');
	var eventLogUserId=$('#eventLogUserId').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserId2="'"+eventLogUserId+"'";
	var cancelledEventListDiv="'boardCancelledEventDIV'";
	var cancelledPageBtn="'cancelledPageBtn'";
		var board={
			userId : eventLogUserId,
			boardId : eventboardId,
			startNode : 0,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/boardCancelledEventPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(response) {
			console.log(response);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(response!=null)
				{
				
				if(response.leagueBoardCancelledMatches!=null){

					var res=response.leagueBoardCancelledMatches;
					for(var i in res){
						
						var event=res[i].tournamentSchedulerObj;
						if(event!=null){
							//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
							 var dateObj=dateFunction(event.gameDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
							
							htm+='<div class="col-md-12 noPadding leag-Acc">';
	                        htm+='<div class="col-md-1 noPadding N-btn">';		                        
	                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				htm+='</div>';		                    
	                    	htm+='<div class="col-md-11 borderleft">';		                         
	                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
	                        htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
	                        htm+='<div class="teamLogos">';
	                        htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
	                        htm+='</div>';		                            
	                        htm+='</div>';		                         
	                        htm+='<div class="col-md-6 Leag-Img">';
	                        htm+='<h4>'+res[i].tournamentName+'</h4>';
	                        htm +='<p>'+dateNewObject+'</p>';
	                       // htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
	                        htm+='<h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
	                       if(event.groundDetails){
			                        htm+='<p>'+event.groundDetails.groundName+'<br>';
			                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
			                        htm+='</p>';
	                       }
	                        htm+='</div>';		                       
	                        if(event.cancelReason!=null){
			                        htm+='<div class="col-md-6 Leag-Img">';
			                        htm+='<h4>Reason</h4>';
			                        htm+='<p>'+event.cancelReason+'</p>';
			                        htm+='</div>';
	                        }
	                        htm+='</div>';
	                        htm+='</div>';
	                        nextindicate= parseInt(nextindicate)+parseInt(1);
						}//event null checking
					}				
					
				}	
				if(response.teamBoardCancelledMatches!=null){

					var res=response.teamBoardCancelledMatches;
				var event=res;
						for(var j in event){
							//var dateObj=getDateInObjectFormate_withTimeStampInput(event[j].gameDate);
							
							 var dateObj=dateFunction(event[j].gameDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event[j].gameDate);
							
							htm+='<div class="col-md-12 noPadding leag-Acc">';
	                        htm+='<div class="col-md-1 noPadding N-btn">';		                        
	                       // htm+='<span>25<br>Thus</span>';
	                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				htm+='</div>';		                    
	                    	htm+='<div class="col-md-11 borderleft">';		                         
	                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
	                        htm+='<a href="'+ctx+'/'+event[j].boardInfo.boardName+'/board/'+event[j].boardInfo.boardId+'"><img src="'+event[j].boardInfo.boardImageURL+'" class="nav-avatar">'+event[j].boardInfo.boardName+'</a>';	                            
	                        htm+='<div class="teamLogos">';
	                        htm+='<a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'"><img src="'+event[j].homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'"><img src="'+event[j].awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
	                        htm+='</div>';		                            
	                        htm+='</div>';		                         
	                        htm+='<div class="col-md-6 Leag-Img">';
	                        if(event[j].tournamentInfo!=null){
	                        	  htm+='<h4>'+event[j].tournamentInfo.tournamentName+'</h4>';
	                        }
	                      
	                     //   htm+='<p>date </p>';
	                      //  htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
	                        htm +='<p>'+dateNewObject+'</p>';
	                        htm+='<h4><a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'">'+event[j].homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'">'+event[j].awayTeamInfo.boardName+'</a></h4>';//<br>';
	                       if(event[j].groundDetails){
			                        htm+='<p>'+event[j].groundDetails.groundName+'<br>';
			                        htm+=''+event[j].groundDetails.address1+','+event[j].groundDetails.city+'';
			                        htm+='</p>';
	                       }
	                        htm+='</div>';		                       
	                       // htm+='<c:if test="${!empty event.cancelReason}">';
	                        if(event[j].cancelReason!=null){
			                        htm+='<div class="col-md-6 Leag-Img">';
			                        htm+='<h4>Reason</h4>';
			                        htm+='<p>'+event[j].cancelReason+'</p>';
			                        htm+='</div>';
	                        }
	                       // htm+='</c:if>';
	                        htm+='</div>';
	                        htm+='</div>';
	                        nextindicate= parseInt(nextindicate)+parseInt(1);
						}
									
					
				}	
		
				
				}else{
				
				}
			console.log(nextindicate);
			if(nextindicate<=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				  htm2 +='';
				   displaynotification('No Events',2000);
			}else{
				 
				  // htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyCancelledEvent_Page(10,'+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</button>';
					htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:boardCancelEvent_Page(10,'+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</a>';
			   }
			
			
			
			$('#boardCancelledEventDIV').append(htm);
			$('#cancelledPageBtn').html(htm2);
		
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
	
	
}
function boardCancelEvent_Page(startNode,display,pageCall){
	
	
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserId2="'"+eventLogUserId+"'";
	var cancelledEventListDiv="'"+display+"'";
	var cancelledPageBtn="'cancelledPageBtn'";
		var board={
			userId : eventLogUserId,
			boardId : eventboardId,
			startNode : startNode,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(startNode)+parseInt(10);
	$.ajax({
		type : "POST",
		url : ctx+"/boardCancelledEventPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(response) {
			console.log(response);	
			var htm='';
			var htm2='';
			var nextindicate=0;
			if(response!=null)
				{
				
				if(response.leagueBoardCancelledMatches!=null){

					var res=response.leagueBoardCancelledMatches;
					for(var i in res){
						
						var event=res[i].tournamentScheduler;
						for(var j in event){
							//var dateObj=getDateInObjectFormate_withTimeStampInput(event[j].gameDate);
							 var dateObj=dateFunction(event[j].gameDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event[j].gameDate);
							htm+='<div class="col-md-12 noPadding leag-Acc">';
	                        htm+='<div class="col-md-1 noPadding N-btn">';		                        
	                       // htm+='<span>25<br>Thus</span>';
	                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				htm+='</div>';		                    
	                    	htm+='<div class="col-md-11 borderleft">';		                         
	                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
	                        htm+='<a href="'+ctx+'/'+event[j].boardInfo.boardName+'/board/'+event[j].boardInfo.boardId+'"><img src="'+event[j].boardInfo.boardImageURL+'" class="nav-avatar">'+event[j].boardInfo.boardName+'</a>';	                            
	                        htm+='<div class="teamLogos">';
	                        htm+='<a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'"><img src="'+event[j].homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'"><img src="'+event[j].awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
	                        htm+='</div>';		                            
	                        htm+='</div>';		                         
	                        htm+='<div class="col-md-6 Leag-Img">';
	                        htm+='<h4>'+event[j].tournamentInfo.tournamentName+'</h4>';
	                     //   htm+='<p>date </p>';
	                       // htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
	                        htm +='<p>'+dateNewObject+'</p>';
	                        htm+='<h4><a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'">'+event[j].homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'">'+event[j].awayTeamInfo.boardName+'</a></h4>';//<br>';
	                       if(event[j].groundDetails){
			                        htm+='<p>'+event[j].groundDetails.groundName+'<br>';
			                        htm+=''+event[j].groundDetails.address1+','+event[j].groundDetails.city+'';
			                        htm+='</p>';
	                       }
	                        htm+='</div>';		                       
	                       // htm+='<c:if test="${!empty event.cancelReason}">';
	                        if(event[j].cancelReason!=null){
			                        htm+='<div class="col-md-6 Leag-Img">';
			                        htm+='<h4>Reason</h4>';
			                        htm+='<p>'+event[j].cancelReason+'</p>';
			                        htm+='</div>';
	                        }
	                       // htm+='</c:if>';
	                        htm+='</div>';
	                        htm+='</div>';
	                        nextindicate= parseInt(nextindicate)+parseInt(1);
						}
					}				
					
				}	
				if(response.teamBoardCancelledMatches!=null){

					var res=response.teamBoardCancelledMatches;
				var event=res;
						for(var j in event){
							//var dateObj=getDateInObjectFormate_withTimeStampInput(event[j].gameDate);
							 var dateObj=dateFunction(event[j].gameDate);	
							var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event[j].gameDate);
							htm+='<div class="col-md-12 noPadding leag-Acc">';
	                        htm+='<div class="col-md-1 noPadding N-btn">';		                        
	                       // htm+='<span>25<br>Thus</span>';
	                        htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
			 				htm+='</div>';		                    
	                    	htm+='<div class="col-md-11 borderleft">';		                         
	                        htm+='<div class="col-md-12 noPadding eventUserDetails">';
	                        htm+='<a href="'+ctx+'/'+event[j].boardInfo.boardName+'/board/'+event[j].boardInfo.boardId+'"><img src="'+event[j].boardInfo.boardImageURL+'" class="nav-avatar">'+event[j].boardInfo.boardName+'</a>';	                            
	                        htm+='<div class="teamLogos">';
	                        htm+='<a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'"><img src="'+event[j].homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'"><img src="'+event[j].awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
	                        htm+='</div>';		                            
	                        htm+='</div>';		                         
	                        htm+='<div class="col-md-6 Leag-Img">';
	                        if(event[j].tournamentInfo!=null){
	                        	  htm+='<h4>'+event[j].tournamentInfo.tournamentName+'</h4>';
	                        }
	                      
	                     //   htm+='<p>date </p>';
	                       // htm +='<p>'+dateObj.date+' '+dateObj.time+' </p>';
	                        htm +='<p>'+dateNewObject+'</p>';
	                        htm+='<h4><a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'">'+event[j].homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'">'+event[j].awayTeamInfo.boardName+'</a></h4>';//<br>';
	                       if(event[j].groundDetails){
			                        htm+='<p>'+event[j].groundDetails.groundName+'<br>';
			                        htm+=''+event[j].groundDetails.address1+','+event[j].groundDetails.city+'';
			                        htm+='</p>';
	                       }
	                        htm+='</div>';		                       
	                       // htm+='<c:if test="${!empty event.cancelReason}">';
	                        if(event[j].cancelReason!=null){
			                        htm+='<div class="col-md-6 Leag-Img">';
			                        htm+='<h4>Reason</h4>';
			                        htm+='<p>'+event[j].cancelReason+'</p>';
			                        htm+='</div>';
	                        }
	                       // htm+='</c:if>';
	                        htm+='</div>';
	                        htm+='</div>';
	                        nextindicate= parseInt(nextindicate)+parseInt(1);
						}
									
					
				}	
		
				
				}else{
				
				}
			console.log(nextindicate);
			if(nextindicate<=0){
				  htm2 +='';
				   displaynotification('No Events',2000);
			}else{
				 
					htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:boardCancelEvent_Page('+page+','+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</a>';
			   }
			
			
			console.log('locatin--> '+display);
			$('#'+display).append(htm);
			$('#'+pageCall).html(htm2);
		
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
}


function boardMatchEvent(){
	
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var matchUpcommingMatches="'matchUpcommingMatches'";
	var matchUpcommingPagebtn="'matchUpcommingPagebtn'";
		var board={
			userId : eventLogUserId,
			boardId : eventboardId,
			startNode : 0,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/boardMatchEventPagination",
		dataType: "json",
     contentType: "application/json; charset=utf-8",
     data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			var phtm='';
			var htm2='';
			var nextindicate=0;
			if(res!=null)
				{
				var mat=res.upcomingBoardMatchList;
				
				var mat2=res.completedBoardMatchList;
				for(var i in mat){
				
				var event=mat[i].tournamentSchedulerObj;
				//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
				 var dateObj=dateFunction(event.gameDate);	
				var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
				
				htm+='<div class="col-md-12 noPadding leag-Acc">';
                htm+='<div class="col-md-1 noPadding N-btn">';		                        
                htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
 				htm+='</div>';		                    
            	htm+='<div class="col-md-11 borderleft">';		                         
                htm+='<div class="col-md-12 noPadding eventUserDetails">';
                htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
                htm+='<div class="teamLogos">';
                htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
                htm+='</div>';		                            
                htm+='</div>';		                         
                htm+='<div class="col-md-6 Leag-Img">';
                htm+='<h4>'+mat[i].tournamentName+'</h4>';
              // htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
                htm +='<p>'+dateNewObject+'';
                
                if(event.status == 'Upcoming'){
                    htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','no')>View Score</a>";
                    }else{
                    	htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
                    }
                
                htm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
               if(event.groundDetails){
                        htm+='<p>'+event.groundDetails.groundName+'<br>';
                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
                        htm+='</p>';
               }
                htm+='</div>';		                       
                htm+='</div>';
                htm+='</div>';
                nextindicate= parseInt(nextindicate)+parseInt(1);
			}				
					
				
				
				var mat3=res.upcomingTeamBoardMatchList;
				for(var k in mat3){
						var event=mat3[k];
					//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
						 var dateObj=dateFunction(event.gameDate);	
					var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
					
					htm+='<div class="col-md-12 noPadding leag-Acc">';
	                htm+='<div class="col-md-1 noPadding N-btn">';		                        
	                htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
	 				htm+='</div>';		                    
	            	htm+='<div class="col-md-11 borderleft">';		                         
	                htm+='<div class="col-md-12 noPadding eventUserDetails">';
	                if(event.boardInfo!=null){
	                htm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" onError=imgError(this) class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
	                }
	                htm+='<div class="teamLogos">';
	                htm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
	                htm+='</div>';		                            
	                htm+='</div>';		                         
	                htm+='<div class="col-md-6 Leag-Img">';
	                if(event.tournamentInfo!=null){
	                	  htm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
	                }
	              
	                //htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
	                htm +='<p>'+dateNewObject+'';
	                
	                if(event.status == 'Upcoming'){
	                    htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','no')>View Score</a>";
	                    }else{
	                    	htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
	                    }
	              //  var date="'"+dateObj.date+" "+dateObj.time+"'";
	                htm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
	               if(event.groundDetails){
	                        htm+='<p>'+event.groundDetails.groundName+'<br>';
	                        htm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
	                        htm+='</p>';
	               }
	               
	                htm+='</div>';	
	                
	                
	                var scheduleID="'"+event.tournamentSchedulerId+"'";
	                var roster="'"+event.rosterId+"'";
	                var te="'test"+event.tournamentSchedulerId+"'";
	                htm+='<div class="col-md-6 threebtn">';
                    
	                	htm+='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="" id="inviteReject'+event.tournamentSchedulerId+'" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('+scheduleID+','+scheduleID+','+roster+','+te+',201)" id="invitationacceptcountdisp'+event.tournamentSchedulerId+'" >Rejected :'+event.rejectedCount+'</a></p>';
	                	htm+='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="" id="inviteMaybe'+event.tournamentSchedulerId+'" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('+scheduleID+','+scheduleID+','+roster+','+te+',202)" id="invitationmaybecountdisp'+event.tournamentSchedulerId+'">May Be : '+event.maybeCount+'</a></p>';
	                	htm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="" id="inviteAccept'+event.tournamentSchedulerId+'" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('+scheduleID+','+scheduleID+','+roster+','+te+',200)" id="invitationacceptcountdisp'+event.tournamentSchedulerId+'">Accepted : '+event.acceptedCount+'</a></p>';
	                	htm+='</div>';
	                	
	                htm+='</div>';

	               

	                
	                htm+=' <div id="test'+event.tournamentSchedulerId+'" class="col-md-12 accbox eventoption" style="display: none;">';
	                htm+='<h1 class="noBorder">Accepted Guys</h1>';
	                htm+='</div>';  
	                htm+='</div>';
	                nextindicate= parseInt(nextindicate)+parseInt(1);
				
				}
				
				
				
			
//************************************************************************************************************
				
				var past=0;
				for(var i in mat2){
					
					var event=mat2[i].tournamentSchedulerObj;
					/*for(var j in event){*/
					//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
					 var dateObj=dateFunction(event.gameDate);	
					var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
					
					phtm+='<div class="col-md-12 noPadding leag-Acc">';
					phtm+='<div class="col-md-1 noPadding N-btn">';		                        
					phtm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
					phtm+='</div>';		                    
					phtm+='<div class="col-md-11 borderleft">';		                         
					phtm+='<div class="col-md-12 noPadding eventUserDetails">';
					phtm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
					phtm+='<div class="teamLogos">';
					phtm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
					phtm+='</div>';		                            
					phtm+='</div>';		                         
					phtm+='<div class="col-md-6 Leag-Img">';
					phtm+='<h4>'+mat2[i].tournamentName+'</h4>';
					phtm +='<p>'+dateNewObject+'';
					//phtm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
					
					if(event.status == 'Upcoming'){
	                    phtm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress1('"+event.tournamentSchedulerId+"','no')>View Score</a>";
	                    }else{
	                    	phtm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress1('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
	                    }
					
					phtm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
                   if(event.groundDetails){
                	   phtm+='<p>'+event.groundDetails.groundName+'<br>';
                	   phtm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
                	   phtm+='</p>';
                   }
                    phtm+='</div>';		                       
                    if(event.cancelReason!=null){
                    	phtm+='<div class="col-md-6 Leag-Img">';
                    	phtm+='<h4>Reason</h4>';
                    	phtm+='<p>'+event.cancelReason+'</p>';
                    	phtm+='</div>';
                    }
                    phtm+='</div>';
                    phtm+='</div>';
                    nextindicate= parseInt(nextindicate)+parseInt(1);
                    past= parseInt(past)+parseInt(1);
					//}
				}				
						
				
				var mat4=res.completedTeamBoardMatchList;
				for(var k in mat4){
						var event=mat4[k];
					//var dateObj=getDateInObjectFormate_withTimeStampInput(event.gameDate);
						 var dateObj=dateFunction(event.gameDate);	
					var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event.gameDate);
					
					phtm+='<div class="col-md-12 noPadding leag-Acc">';
	                phtm+='<div class="col-md-1 noPadding N-btn">';		                        
	                phtm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
	 				phtm+='</div>';		                    
	            	phtm+='<div class="col-md-11 borderleft">';		                         
	                phtm+='<div class="col-md-12 noPadding eventUserDetails">';
	                if(event.boardInfo!=null){
	                phtm+='<a href="'+ctx+'/'+event.boardInfo.boardName+'/board/'+event.boardInfo.boardId+'"><img src="'+event.boardInfo.boardImageURL+'" onError=imgError(this) class="nav-avatar">'+event.boardInfo.boardName+'</a>';	                            
	                }
	                phtm+='<div class="teamLogos">';
	                phtm+='<a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'"><img src="'+event.homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'"><img src="'+event.awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
	                phtm+='</div>';		                            
	                phtm+='</div>';		                         
	                phtm+='<div class="col-md-6 Leag-Img">';
	                if(event.tournamentInfo!=null){
	                	  phtm+='<h4>'+event.tournamentInfo.tournamentName+'</h4>';
	                }
	              
	                phtm +='<p>'+dateNewObject+'';
	              //  phtm+='<p>'+dateObj.date+' '+dateObj.time+'</p>';
	                
	                if(event.status == 'Upcoming'){
	                    phtm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress1('"+event.tournamentSchedulerId+"','no')>View Score</a>";
	                    }else{
	                    	phtm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress1('"+event.tournamentSchedulerId+"','"+event.boardInfo.boardId+"')>View Score</a>";
	                    }
	                var date="'"+dateObj.date+" "+dateObj.time+"'";
	                phtm+='</p><h4><a href="'+ctx+'/'+event.homeTeamInfo.boardName+'/board/'+event.homeTeamInfo.boardId+'">'+event.homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event.awayTeamInfo.boardName+'/board/'+event.awayTeamInfo.boardId+'">'+event.awayTeamInfo.boardName+'</a></h4>';//<br>';
	               if(event.groundDetails){
	                        phtm+='<p>'+event.groundDetails.groundName+'<br>';
	                        phtm+=''+event.groundDetails.address1+','+event.groundDetails.city+'';
	                        phtm+='</p>';
	               }
	               
	                phtm+='</div></div>';	
	                
	                
	             /*   var scheduleID="'"+event.tournamentSchedulerId+"'";
	                var roster="'"+event.rosterId+"'";
	                var te="'test"+event.tournamentSchedulerId+"'";
	                phtm+='<div class="col-md-6 threebtn">';
                    
	                	phtm+='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Reject" onclick="" id="inviteReject'+event.tournamentSchedulerId+'" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('+scheduleID+','+scheduleID+','+roster+','+te+',201)" id="invitationacceptcountdisp'+event.tournamentSchedulerId+'" >Rejected :'+event.rejectedCount+'</a></p>';
	                	phtm+='<p><input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="May Be" onclick="" id="inviteMaybe'+event.tournamentSchedulerId+'" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('+scheduleID+','+scheduleID+','+roster+','+te+',202)" id="invitationmaybecountdisp'+event.tournamentSchedulerId+'">May Be : '+event.maybeCount+'</a></p>';
	                	phtm+='<p> <input src="" type="button" class="btn dBtn btn-sm pull-right btnalian1" value="Accept" onclick="" id="inviteAccept'+event.tournamentSchedulerId+'" disabled><br><a href="javascript:gettingmatchAcceptedPeopleList('+scheduleID+','+scheduleID+','+roster+','+te+',200)" id="invitationacceptcountdisp'+event.tournamentSchedulerId+'">Accepted : '+event.acceptedCount+'</a></p>';
	                	phtm+='</div>';
	                	
	                phtm+='</div>';
*/
	               

	                
	                phtm+=' <div id="test'+event.tournamentSchedulerId+'" class="col-md-12 accbox eventoption" style="display: none;">';
	                phtm+='<h1 class="noBorder">Accepted Guys</h1>';
	                phtm+='</div>';  
	                phtm+='</div>';
	                nextindicate= parseInt(nextindicate)+parseInt(1);
	                past= parseInt(past)+parseInt(1);
				}
				
				
				
				
				
				
			
			}else{
				
				}
			
			console.log(nextindicate);
			if(nextindicate<=0){
				  // htm2 ='<a class="btn btn-default dBtn pull-right lodbtn" href="javascript:getallFanlistPagination('+category2+','+page+','+display2+','+pageCall2+')">Load more</a>';
				  htm2 +='';
				   displaynotification('No Events',2000);
			}else{
				 
				  // htm2 +='<button class="btn dBtn pull-right btnalian1" type="button" onclick="buddyCancelledEvent_Page(10,'+cancelledEventListDiv+','+cancelledPageBtn+')">Load More</button>';
					htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:boardMatchEvent_Page(10,'+matchUpcommingMatches+','+matchUpcommingPagebtn+')">Load More</a>';
			   }
			
			$('#matchUpcommingMatches').html(htm);
			$('#matchUpcommingPagebtn').html(htm2);
			$('#matchpastEventList').html(phtm);
			
		
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
	
	
}

function boardMatchEvent_Page(startNode,display,pageCall){
	
	
	var eventLogUserId=$('#eventLogUserId').val();
	var eventLogUserImg=$('#eventLogUserImg').val();
	var eventLogUserName=$('#eventLogUserName').val();
	var eventboardId=$('#eventboardId').val();
	var eventLogUserId2="'"+eventLogUserId+"'";
	var display2="'"+display+"'";
	var pageCall2="'"+pageCall+"'";
		var board={
			userId : eventLogUserId,
			startNode : startNode,
			endNode : 10
			
	};
	var postinfo=JSON.stringify(board);
	var page=parseInt(startNode)+parseInt(10);
	$.ajax({
		type : "POST",
		url : ctx+"/boardMatchEventPagination",
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
				var mat=res.upcomingBoardMatchList;
				var mat2=res.completedBoardMatchList;
				for(var i in mat){
				
				var event=mat[i].tournamentScheduler;
				for(var j in event){
					//var dateObj=getDateInObjectFormate_withTimeStampInput(event[j].gameDate);
					 var dateObj=dateFunction(event[j].gameDate);	
					var dateNewObject = getDateInObjectUTCFormate_withTimeStampInput(event[j].gameDate);
					htm+='<div class="col-md-12 noPadding leag-Acc">';
                    htm+='<div class="col-md-1 noPadding N-btn">';		                        
                    htm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
	 				htm+='</div>';		                    
                	htm+='<div class="col-md-11 borderleft">';		                         
                    htm+='<div class="col-md-12 noPadding eventUserDetails">';
                    htm+='<a href="'+ctx+'/'+event[j].boardInfo.boardName+'/board/'+event[j].boardInfo.boardId+'"><img src="'+event[j].boardInfo.boardImageURL+'" class="nav-avatar">'+event[j].boardInfo.boardName+'</a>';	                            
                    htm+='<div class="teamLogos">';
                    htm+='<a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'"><img src="'+event[j].homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'"><img src="'+event[j].awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
                    htm+='</div>';		                            
                    htm+='</div>';		                         
                    htm+='<div class="col-md-6 Leag-Img">';
                    htm+='<h4>'+mat[i].tournamentName+'</h4>';
                    //htm +='<p>'+dateObj.date+' '+dateObj.time+'</p>';
                    htm +='<p>'+dateNewObject+'';
                    
                    if(event.status == 'Upcoming'){
                        htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event[j].tournamentSchedulerId+"','no')>View Score</a>";
                        }else{
                        	htm+="<a class='vw-score' href=javascript:void(0); onclick=showScoreCardInProgress('"+event[j].tournamentSchedulerId+"','"+event[j].boardInfo.boardId+"')>View Score</a>";
                        }
                    
                    htm+='</p><h4><a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'">'+event[j].homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'">'+event[j].awayTeamInfo.boardName+'</a></h4>';//<br>';
                   if(event[j].groundDetails){
	                        htm+='<p>'+event[j].groundDetails.groundName+'<br>';
	                        htm+=''+event[j].groundDetails.address1+','+event[j].groundDetails.city+'';
	                        htm+='</p>';
                   }
                    htm+='</div>';		                       
                    htm+='</div>';
                    htm+='</div>';
                    nextindicate= parseInt(nextindicate)+parseInt(1);
				}
			}				
					
			
//************************************************************************************************************
				
				/*for(var i in mat2){
					
					var event=mat2[i].tournamentScheduler;
					for(var j in event){
						var dateObj=getDateInObjectFormate_withTimeStampInput(event[j].gameDate);
						phtm+='<div class="col-md-12 noPadding leag-Acc">';
						phtm+='<div class="col-md-1 noPadding N-btn">';		                        
						phtm +='<p>'+dateObj.day+'<br>'+dateObj.dateName+'';
						phtm+='</div>';		                    
						phtm+='<div class="col-md-11 borderleft">';		                         
						phtm+='<div class="col-md-12 noPadding eventUserDetails">';
						phtm+='<a href="'+ctx+'/'+event[j].boardInfo.boardName+'/board/'+event[j].boardInfo.boardId+'"><img src="'+event[j].boardInfo.boardImageURL+'" class="nav-avatar">'+event[j].boardInfo.boardName+'</a>';	                            
						phtm+='<div class="teamLogos">';
						phtm+='<a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'"><img src="'+event[j].homeTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a> <b>VS</b> <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'"><img src="'+event[j].awayTeamInfo.boardImageURL+'" class="teamLogo" onError=imgError(this)></a>';
						phtm+='</div>';		                            
						phtm+='</div>';		                         
						phtm+='<div class="col-md-6 Leag-Img">';
						phtm+='<h4>'+mat2[i].tournamentName+'</h4>';
						phtm +='<p>'+dateObj.date+'</p>';
						phtm+='<h4><a href="'+ctx+'/'+event[j].homeTeamInfo.boardName+'/board/'+event[j].homeTeamInfo.boardId+'">'+event[j].homeTeamInfo.boardName+'</a> Vs <a href="'+ctx+'/'+event[j].awayTeamInfo.boardName+'/board/'+event[j].awayTeamInfo.boardId+'">'+event[j].awayTeamInfo.boardName+'</a></h4>';//<br>';
                       if(event[j].groundDetails){
                    	   phtm+='<p>'+event[j].groundDetails.groundName+'<br>';
                    	   phtm+=''+event[j].groundDetails.address1+','+event[j].groundDetails.city+'';
                    	   phtm+='</p>';
                       }
                        phtm+='</div>';		                       
                        if(event[j].cancelReason!=null){
                        	phtm+='<div class="col-md-6 Leag-Img">';
                        	phtm+='<h4>Reason</h4>';
                        	phtm+='<p>'+event[j].cancelReason+'</p>';
                        	phtm+='</div>';
                        }
                        phtm+='</div>';
                        phtm+='</div>';
                        nextindicate= parseInt(nextindicate)+parseInt(1);
					}
				}				*/
						
				
				console.log(nextindicate);
				if(nextindicate<=0){
						htm2 +='';
					    displaynotification('No Events',2000);
				}else{
					 
						htm2 +='<a class="btn dBtn pull-right btnalian1" href="javascript:boardMatchEvent_Page('+page+','+display2+','+pageCall2+')">Load More</a>';
				   }
				
				
				}else{
				
				}
			
			$('#matchUpcommingMatches').append(htm);
			$('#matchUpcommingPagebtn').html(htm2);
		
		},
		
		error:function(response){
		//alert("Error message"+JSON.stringify(response));
		//return null;
		},
	
		
	}); 
	
}

//**********************************************************************************************************************
