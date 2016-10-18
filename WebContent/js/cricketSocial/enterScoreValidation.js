/**
 * enter socre validation
 */

$(function(){

	$.validator.addMethod("overValidation",function(value,element)
			{
				return overValidation(value); 
			},"Invalid overs");

});

function inningSelection(){
	var homeTeamName=$('#homeTeamName').val();
	var awayTeamName=$('#awayTeamName').val();
	if(homeTeamName!='0'&& awayTeamName!='0'){
		return true;
	}else{
		return false;
	}
}

function winpointAutoPopulate(){
	
	
	
	console.log("home team"+$("#result").val()+"-->>>"+$("#homeTeamName").val());
	console.log("result "+$("#result").val()+"-->>>"+$("#awayTeamName").val());
	if($("#result").val() == "00"){
		$("#winTeamPoints").val(0);	
		$("#loseTeamPoints").val(0);
	}else if($("#result").val() == "tie"){
		var tiepoint = winTeamPoint/2;
		$("#winTeamPoints").val(tiepoint);	
		$("#loseTeamPoints").val(tiepoint);
		
		//vignesh changes
		 console.log("First innings :"+$("#homeTeamName").val() +" hometeam "+homeTeamId);
		 console.log($("#homeTeamName").val() == homeTeamId);
		/*if($("#homeTeamName").val() == $("#hiddenHomeId").val())
		{
		    $("#WinTeamdetails").val('first');
		}else{
			$("#WinTeamdetails").val('second');
		}*/
		
		
		
		
	}else if($("#result").val() == firstTeamPlayersId[0].boardId){		
		
		$("#winTeamPoints").val(winTeamPoint);	
		$("#loseTeamPoints").val(0);
		
	}else {
		
		$("#winTeamPoints").val(0);	
		$("#loseTeamPoints").val(winTeamPoint);
	}
	
	
	
	if($("#result").val() == "tie"){
	
	if($("#homeTeamName").val() == homeTeamId)
	{
	    $("#WinTeamdetails").val('first');
	}else{
		$("#WinTeamdetails").val('second');
	}
	
	}	
	else if($("#result").val() == $("#homeTeamName").val())
	
    {		
		
		$("#WinTeamdetails").val('first');
	}else {
		
		
		$("#WinTeamdetails").val('second');
	}
	
	
	
	
	/*if($("#result").val() == "00"){
		$("#loseTeamPoints").val(0);
		$("#winTeamPoints").val(0);
	}else if($("#homeTeamName").val() == $("#result").val()){	
		alert("1");
		$("#loseTeamPoints").val(0);
		$("#winTeamPoints").val(winTeamPoint);		
	}else if($("#result").val() == "tie"){
		var tiepoint = winTeamPoint/2;
		$("#loseTeamPoints").val(tiepoint);
		$("#winTeamPoints").val(tiepoint);		    
	}else{
		
		if($("#awayTeamName").val() == $("#result").val()){
			alert("3");
			$("#loseTeamPoints").val(winTeamPoint);
			$("#winTeamPoints").val(0);
			}else{
			alert("4");	
	    	$("#loseTeamPoints").val(0);
		   $("#winTeamPoints").val(winTeamPoint);
			}
	} */
}
function firstInningsTotalOversChange(){
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){	
	    $("#loseTeamOvers").val($("#firstBattingTotalOvers").val());
	}else{
		$("#winTeamOvers").val($("#firstBattingTotalOvers").val());
	}
}
function secondInningsTotalOversChange(){
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){	
	
	    $("#winTeamOvers").val($("#secondBattingTotalOvers").val());
	}else{
		$("#loseTeamOvers").val($("#secondBattingTotalOvers").val());
	}
}
function matchStart(homeTeamId,awayTeamId){
	
	 
	if(inningSelection()){
		$("#tournament").prop('disabled', 'disabled');
		$("#scheduler").prop('disabled', 'disabled');
		$("#homeTeamName").prop('disabled', 'disabled');
		$("#awayTeamName").prop('disabled', 'disabled');
		$("#enterscoreStartbtn").prop('disabled', 'disabled');
		$("#firstInningsId").html($("#homeTeamName option:selected").text());
		$("#secondInningsId").html($("#awayTeamName option:selected").text());
		$('#entescoreMainDIV').show();
		
		
			//	alert("val"+firstTeamPlayersId[0].boardId);
		
		if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){
			//alert("if");
			var htmlContent='';
			var htmlContent1='';
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				console.log("asa"+firstTeamPlayersId[i]);
				htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent1 += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			$("#firInnPlayerName").html(htmlContent1).trigger('create');
			$("#firInnBowlerName").html(htmlContent).trigger('create');						
			$("#firInnFielderName").html(htmlContent).trigger('create');
			$("#firInnBowlingName").html(htmlContent).trigger('create');
			
			// second innings 
			$("#secInnPlayerName").html(htmlContent).trigger('create');			
			$("#secInnBowlerName").html(htmlContent1).trigger('create');
			$("#secInnFielderName").html(htmlContent1).trigger('create');
			$("#secInnBowlingName").html(htmlContent1).trigger('create');
			
		}else{
			//alert("else");
			var htmlContent='';
			var htmlContent1='';
			htmlContent +='<option value="0">Select Player</option>';
			htmlContent1 +='<option value="0">Select Player</option>';
			for(var i =0;i<firstTeamPlayersId.length;i++ ){
				//console.log("asa"+firstTeamPlayersId[i]);
				htmlContent += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			for(var i =0;i<sceondTeamPlayersId.length;i++ ){
				htmlContent1 += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
			}
			
			$("#firInnPlayerName").html(htmlContent).trigger('create');
			$("#firInnBowlerName").html(htmlContent1).trigger('create');						
			$("#firInnFielderName").html(htmlContent1).trigger('create');
			$("#firInnBowlingName").html(htmlContent1).trigger('create');
			
			// second innings
			$("#secInnPlayerName").html(htmlContent1).trigger('create');			
			$("#secInnBowlerName").html(htmlContent).trigger('create');
			$("#secInnFielderName").html(htmlContent).trigger('create');
			$("#secInnBowlingName").html(htmlContent).trigger('create');
		}
	     	
		var playerOftheMatch = '';
		playerOftheMatch +='<option value="0">Select Man Of the Match Player</option>';
		for(var i =0;i<firstTeamPlayersId.length;i++ ){
			//console.log("asa"+firstTeamPlayersId[i]);
			playerOftheMatch += '<option value="'+firstTeamPlayersId[i].userId+'">'+firstTeamPlayersId[i].userProfile.fullName+'</option>';
		}
		
		for(var i =0;i<sceondTeamPlayersId.length;i++ ){
			playerOftheMatch += '<option value="'+sceondTeamPlayersId[i].userId+'">'+sceondTeamPlayersId[i].userProfile.fullName+'</option>';
		}
		$("#PlayerOfTheMatch").html(playerOftheMatch).trigger('create');
		
		setDonotBatPlayersFirstInnings();
		setDonotBatPlayersSecondInnings();
		
	}else{
		displaynotification("Please select inning details",1000);
	}
	
}
function manOfTheMatchPlayerSelection(){
	
	if($("#PlayerOfTheMatch").val() != 0){
		$("#addMemberIDDIVPlayerOfMatch").val($("#PlayerOfTheMatch").val());
	}else{
		$("#addMemberIDDIVPlayerOfMatch").val("");
	}
}
function firstIningsbattingPlayerOnchange(elem,hiddenId,action){
	
	 var slectedPlayerId=$(elem).val();
	     if(slectedPlayerId != 0){
	     $("#"+hiddenId).val(slectedPlayerId);
	     var str = "";
             str = $(elem).find(":selected").text();
             $(elem).next(".out").text(str);
  	     var userId=$(elem).val();
  	     var textBoxId=$(elem).attr('id');
  	     console.log('textBoxId : '+textBoxId);
  
  	     //alert("vales userId<>-"+userId+" textBoxId<>-"+textBoxId+" hiddenId<>-"+hiddenId+" action<>-"+action);
  	    setValueToTextBoxVal(elem,textBoxId,userId,hiddenId,action);
     
	      }else{
		   $("#"+hiddenId).val("");
		   if(action == "FistInningBatting"){
		      setDonotBatPlayersFirstInnings();
		    }else if(action == "SecondInningBatting"){
		    	setDonotBatPlayersSecondInnings();
		    }
	      }
}
function firstIningsbattingPlayerOnchange1(elem,hiddenId){
	
	 var slectedPlayerId=$(elem).val();
	     if(slectedPlayerId != 0){
	     $("#"+hiddenId).val(slectedPlayerId);
	     var str = "";
            str = $(elem).find(":selected").text();
            $(elem).next(".out").text(str);
 	     var userId=$(elem).val();
 	     var textBoxId=$(elem).attr('id');
 	     console.log('textBoxId : '+textBoxId);
 
 	     //alert("vales userId<>-"+userId+" textBoxId<>-"+textBoxId+" hiddenId<>-"+hiddenId);
 	    //setValueToTextBoxVal(elem,textBoxId,divId,userId,hiddenId,action);
    
	      }else{
		   $("#"+hiddenId).val("");
	      }
}



function setValueToTextBoxVal(elem,textBox,userId,hiddenId, location){
	
	//alert('loction ------> '+location);
	if(location=='FistInningBatting'){
		//$('#'+textBox).val($(elem).text());
		 
		 var i= firstInninBattingArrayList.indexOf(userId);
		 
	/*	if(i==-1){
			//$('#'+textBox).attr("readonly", true);
			$('#'+textBox).val($(elem).text());
			$('#'+divId).hide();	
			$('#'+hiddenId).val(userId);
			firstInninBattingArrayList.push(userId);
			var userInfo={
					userId : userId,
					filed : textBox
			};
			firstInninBattingArrayObjectList.push(userInfo);
		}else{
			displaynotification("Already choosen",1000);
		}*/
		 
		 console.log('------------------------set value ---------------- ------------------------------');
		 console.log(firstInninBattingArrayObjectList);
		 var list=firstInninBattingArrayObjectList;
		 console.log('checkFieldUserExist(firstInninBattingArrayObjectList, textBox,userId)------->  '+checkFieldUserExist(firstInninBattingArrayObjectList, textBox,userId));
		 console.log('checkUserExist(firstInninBattingArrayObjectList, textBox,userId)---> '+checkUserExist(firstInninBattingArrayObjectList, textBox,userId));
		 console.log('checkFieldExist(firstInninBattingArrayObjectList, textBox,userId)---> '+checkFieldExist(firstInninBattingArrayObjectList, textBox,userId));
		if(checkFieldUserExist(firstInninBattingArrayObjectList, textBox,userId)!=-1){
				console.log('-------------------------   already exist   ----------------------------');
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				$('#'+hiddenId).val(userId);
				setDonotBatPlayersFirstInnings();
				
			}else if(checkUserExist(firstInninBattingArrayObjectList, textBox,userId)!=-1){
				console.log('------------------------- user already exist ------------------------------------------');
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text("");
	            $(elem).val(0);
				displaynotification("Already choosen",1000);
				
			}else if(checkFieldExist(firstInninBattingArrayObjectList, textBox,userId)!=-1){
				console.log('---------------------------- field already exist  ----------------------------------------------');
				for(var i in firstInninBattingArrayObjectList){
					if(textBox==firstInninBattingArrayObjectList[i].filed){
						result=i;
						firstInninBattingArrayObjectList.splice(i, 1);
						break;
					}
				}
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				firstInninBattingArrayObjectList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				$('#'+hiddenId).val(userId);
				setDonotBatPlayersFirstInnings();
			}else {
				console.log('--------------------------- add to list ------------------------------------------------');
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				firstInninBattingArrayObjectList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				$('#'+hiddenId).val(userId);
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				
	            setDonotBatPlayersFirstInnings();
				
				
			}
		 
	}else if(location=='FirstInningBowling'){
	
		 
		 var i= firstInninBowlingArrayList.indexOf(userId);

		 console.log('------------------------set value ---------------- ------------------------------');
		 console.log(firstInninBowlingArrayList);
		 var list=firstInninBowlingArrayList;
		 console.log('checkFieldUserExist(firstInninBattingArrayObjectList, textBox,userId)------->  '+checkFieldUserExist(firstInninBowlingArrayList, textBox,userId));
		 console.log('checkUserExist(firstInninBattingArrayObjectList, textBox,userId)---> '+checkUserExist(firstInninBowlingArrayList, textBox,userId));
		 console.log('checkFieldExist(firstInninBattingArrayObjectList, textBox,userId)---> '+checkFieldExist(firstInninBowlingArrayList, textBox,userId));
		if(checkFieldUserExist(firstInninBowlingArrayList, textBox,userId)!=-1){
				console.log('-------------------------   already exist   ----------------------------');
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				$('#'+hiddenId).val(userId);
				
				
			}else if(checkUserExist(firstInninBowlingArrayList, textBox,userId)!=-1){
				console.log('------------------------- user already exist ------------------------------------------');
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text("");
	            $(elem).val(0);
				displaynotification("Already choosen",1000);
				
			}else if(checkFieldExist(firstInninBowlingArrayList, textBox,userId)!=-1){
				console.log('---------------------------- field already exist  ----------------------------------------------');
				for(var i in firstInninBowlingArrayList){
					if(textBox==firstInninBowlingArrayList[i].filed){
						result=i;
						firstInninBowlingArrayList.splice(i, 1);
						break;
					}
				}
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				firstInninBowlingArrayList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				$('#'+hiddenId).val(userId);
				
			}else {
				console.log('--------------------------- add to list ------------------------------------------------');
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				firstInninBowlingArrayList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				$('#'+hiddenId).val(userId);
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				
			}
		 
	} else if (location=='SecondInningBatting'){
		

		 var i= firstInninBowlingArrayList.indexOf(userId);
		/*if(i==-1){
			//$('#'+textBox).attr("readonly", true);
			$('#'+textBox).val($(elem).text());
			$('#'+divId).hide();	
			$('#'+hiddenId).val(userId);
			firstInninBowlingArrayList.push(userId);
			
		}else{
			displaynotification("Already choosen",1000);
		}*/
		 
		 console.log('------------------------set value ---------------- ------------------------------');
		 console.log(secondInninBattingArrayObjectList);
		 var list=secondInninBattingArrayObjectList;
		 console.log('checkFieldUserExist(secondInninBattingArrayObjectList, textBox,userId)-------> '+checkFieldUserExist(secondInninBattingArrayObjectList, textBox,userId));
		console.log('checkUserExist(secondInninBattingArrayObjectList, textBox,userId)---> '+checkUserExist(secondInninBattingArrayObjectList, textBox,userId));
		console.log('checkFieldExist(secondInninBattingArrayObjectList, textBox,userId)---> '+checkFieldExist(secondInninBattingArrayObjectList, textBox,userId));
		if(checkFieldUserExist(secondInninBattingArrayObjectList, textBox,userId)!=-1){
				console.log('-------------------------   already exist   ----------------------------');
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				$('#'+hiddenId).val(userId);
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
	            setDonotBatPlayersSecondInnings();
				
			}else if(checkUserExist(secondInninBattingArrayObjectList, textBox,userId)!=-1){
				console.log('------------------------- user already exist ------------------------------------------');
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text("");
	            $(elem).val(0);
				displaynotification("Already choosen",1000);
				
			}else if(checkFieldExist(secondInninBattingArrayObjectList, textBox,userId)!=-1){
				console.log('---------------------------- field already exist  ----------------------------------------------');
				for(var i in secondInninBattingArrayObjectList){
					if(textBox==secondInninBattingArrayObjectList[i].filed){
						result=i;
						secondInninBattingArrayObjectList.splice(i, 1);
						break;
					}
				}
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				secondInninBattingArrayObjectList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
	            $(elem).val(0);
				$('#'+hiddenId).val(userId);
				setDonotBatPlayersSecondInnings();
			}else {
				console.log('--------------------------- add to list ------------------------------------------------');
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				secondInninBattingArrayObjectList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				$('#'+hiddenId).val(userId);
				
				
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
	            setDonotBatPlayersSecondInnings();
				
			}
		 
	
		
		
	}else if (location=='SecondInningBowling'){
		
		

		var i= secondInninBowlingArrayObjectList.indexOf(userId);

		 console.log('------------------------set value ---------------- ------------------------------');
		 console.log(secondInninBowlingArrayObjectList);
		 var list=secondInninBowlingArrayObjectList;
		 console.log('checkFieldUserExist(firstInninBattingArrayObjectList, textBox,userId)------->  '+checkFieldUserExist(secondInninBowlingArrayObjectList, textBox,userId));
		 console.log('checkUserExist(firstInninBattingArrayObjectList, textBox,userId)---> '+checkUserExist(secondInninBowlingArrayObjectList, textBox,userId));
		 console.log('checkFieldExist(firstInninBattingArrayObjectList, textBox,userId)---> '+checkFieldExist(secondInninBowlingArrayObjectList, textBox,userId));
		if(checkFieldUserExist(secondInninBowlingArrayObjectList, textBox,userId)!=-1){
				console.log('-------------------------   already exist   ----------------------------');
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				$('#'+hiddenId).val(userId);
				
				
			}else if(checkUserExist(secondInninBowlingArrayObjectList, textBox,userId)!=-1){
				console.log('------------------------- user already exist ------------------------------------------');
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text("");
	            $(elem).val(0);
				displaynotification("Already choosen",1000);
				
			}else if(checkFieldExist(secondInninBowlingArrayObjectList, textBox,userId)!=-1){
				console.log('---------------------------- field already exist  ----------------------------------------------');
				for(var i in secondInninBowlingArrayObjectList){
					if(textBox==secondInninBowlingArrayObjectList[i].filed){
						result=i;
						secondInninBowlingArrayObjectList.splice(i, 1);
						break;
					}
				}
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				secondInninBowlingArrayObjectList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				$('#'+hiddenId).val(userId);
				
			}else {
				console.log('--------------------------- add to list ------------------------------------------------');
				
				var userInfo={
						userId : userId,
						filed : textBox
				};
				secondInninBowlingArrayObjectList.push(userInfo);
				//$('#'+textBox).val($(elem).text());
				//$('#'+divId).hide();	
				$('#'+hiddenId).val(userId);
				var str = "";
	            str = $(elem).find(":selected").text();
	            $(elem).next(".out").text(str);
				
			}
	
		
	}
	
}

function checkUserExist(list, field,userid){
	var result=-1;
	console.log('kekekekeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
	console.log(list);
	for(var i in list){
		console.log('-------list ------------------------ '+list[i].userId+' -------  userid ------- '+userid);
		if(list[i].userId==userid){
			result=i;
			break;
		}
		
	}
	return result;
}
function checkFieldExist(list, field,userid){
	var result=-1;
	for(var i in list){
		if(field==list[i].filed){
			result=i;
			break;
		}
		
	}
	return result;
}
function checkFieldUserExist(list, field,userid){
	var result=-1;
	for(var i in list){
		console.log("field-->>>"+field+"-list-->"+list[i].filed);
		console.log("user id ->>"+userid+"- User id--->"+list[i].userId);
		if(field==list[i].filed && userid==list[i].userId){
			result=i;
			break;
		}
		
	}
	return result;
}
function checkFieldUserExistBowl(list, field,userid){
	var result=-1;
	for(var i in list){
		console.log("field-->>>"+field+"-list-->"+list[i].filed);
		console.log("user id ->>"+userid+"- User id--->"+list[i].userId);
		if(userid==list[i].userId){
			console.log("inside first12");
			if(field == list[i].filed){
				console.log("inside second12");	
			result=i;
			break;
			}
			
		}
		
	}
	return result;
}

function addFieldUserExist(list, field,userid){
	
	//checkFieldUserExist(list, field,userid)
	
}

function getBuddiesAutoCompleteFirstInning(elem,hiddenId,action){
	
	alert("hi");
 	var userId=$(elem).val();
	var homeId = $("#hiddenHomeId").val();
 	var textBoxId=$(elem).attr('id');
 	//console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 
 	alert("vales userId<>-"+key+" textBoxId<>-"+textBoxId+" hiddenId<>-"+hiddenId+" action<>-"+action);
 	//setValueToTextBoxVal(this,textBoxId,divId,userId,hiddenId,action);
 	
 	/* 
 	  	var searchBean = {
 			homeTeam : homeId,
 			awayTeam : key,
 	};
 	 if(key.length>2) {
 			    $.ajax({
 						type : "POST",
 						url : ctx+"/playerSearchOfBoard",
 						dataType: "json",
 			        contentType: "application/json; charset=utf-8",
 			        data : JSON.stringify(searchBean),					            
 						success : function(res) {
 							console.log(res);	
 							var html="";
 							
 							if(res != null){
 								var users=res.userList;
 								console.log(JSON.stringify(users));
 								html+="<ul>";
 								
 								if(users!= null && users.length >0){
 									for(var i in users){
 										var name=users[i].firstName;
 								
 								
 								html +="<li onclick=setValueToTextBoxVal(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"','FistInningBatting')><div class='media'><div class='media-left'>";
		                            
		                          
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
 		   $('#'+hiddenId).val('');
 		  conlose.log(firstInninBattingArrayObjectList);
 			for(var i in firstInninBattingArrayObjectList){
				if(textBoxId==firstInninBattingArrayObjectList[i].filed){
					result=i;
					firstInninBattingArrayObjectList.splice(i, 1);
					break;
				}
			}
 			conlose.log(firstInninBattingArrayObjectList);
 	   }*/
   
 } 



function getBuddiesAutoCompleteSecondBowling(elem,divId,hiddenId){
	
 	var key=$(elem).val();
	var homeId = $("#hiddenHomeId").val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	var searchBean = {
 			homeTeam : homeId,
 			awayTeam : key,
 	};
 	if(key.length>2) {
 			    $.ajax({
 						type : "POST",
 						url : ctx+"/playerSearchOfBoard",
 						dataType: "json",
 			        contentType: "application/json; charset=utf-8",
 			        data : JSON.stringify(searchBean),					            
 						success : function(res) {
 							console.log(res);	
 							var html="";
 							
 							if(res != null){
 								var users=res.userList;
 								console.log(JSON.stringify(users));
 								html+="<ul>";
 								
 								if(users!= null && users.length >0){
 									for(var i in users){
 										var name=users[i].firstName;
 								
 								
 								html +="<li onclick=setValueToTextBoxVal(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"','SecondInningBowling')><div class='media'><div class='media-left'>";
		                            
		                          
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


function getBuddiesAutoCompleteSecondInning(elem,divId,hiddenId){
	
 	var key=$(elem).val();
 	var homeId = $("#hiddenAwayId").val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	var searchBean = {
 			homeTeam : homeId,
 			awayTeam : key,
 	};
 	
 	if(key.length>2) {
		    $.ajax({
					type : "POST",
					url : ctx+"/playerSearchOfBoard",
					dataType: "json",
		        contentType: "application/json; charset=utf-8",
		        data : JSON.stringify(searchBean),					            
					success : function(res) {
						console.log(res);	
						var html="";
						
						if(res != null){
							var users=res.userList;
							console.log(JSON.stringify(users));
							html+="<ul>";
							
							if(users!= null && users.length >0){
								for(var i in users){
									var name=users[i].firstName;
							
							
							html +="<li onclick=setValueToTextBoxVal(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"','SecondInningBatting')><div class='media'><div class='media-left'>";
                            
                          
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

function getBuddiesAutoCompleteFirstBowling(elem,divId,hiddenId){
	
 	var key=$(elem).val();
 	var homeId = $("#hiddenAwayId").val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	var searchBean = {
 			homeTeam : homeId,
 			awayTeam : key,
 	}
 	
 	if(key.length>2) {
		    $.ajax({
					type : "POST",
					url : ctx+"/playerSearchOfBoard",
					dataType: "json",
		        contentType: "application/json; charset=utf-8",
		        data : JSON.stringify(searchBean),					            
					success : function(res) {
						console.log(res);	
						var html="";
						
						if(res != null){
							var users=res.userList;
							console.log(JSON.stringify(users));
							html+="<ul>";
							
							if(users!= null && users.length >0){
								for(var i in users){
									var name=users[i].firstName;
							
							
							html +="<li onclick=setValueToTextBoxVal(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"','FirstInningBowling')><div class='media'><div class='media-left'>";
                            
                          
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

/*function cancelValues(){
	window.location.reload();
}*/


function teamValidation(){
	///alert(firstInningBattingValidation());
//	firstInningBowlingValidation();
	//secondInningBattingValidation();
	if(firstInningBattingValidation()==true && firstInningBowlingValidation()==true && secondInningBattingValidation()==true && secodingInnigBowlingValidation()==true){

		if($("#enterScoreform").validate({
			 errorPlacement : function(error, element){
				 error.insertAfter(element);
			 },
			rules:{
				gameId : {
					required : true,
				},
				//addMemberIDDIVPlayerOfMatch : {
				//	required : true,
				//},
				hiddenUmpireId : {
					required : true,
				},
				winTeamOvers : {
					required : true,
					overValidation : true
				},
				winTeamPoints : {
					required : true,
					numeric : true
				},
				winTeamRuns : {
					required : true,
					numeric : true
				},
				winTeamWickets : {
					required : true,
					numeric : true
				},
				loseTeamOvers : {
					required : true,
					overValidation : true
				},
				loseTeamRuns  : {
					required : true,
					numeric  : true
				},
				loseTeamPoints : {
					required : true,
					numeric : true
				},
				loseTeamWickets : {
					required : true,
					numeric : true
				},
				totalOver : {
					required : true,
					numeric : true
				}
			},
			messages : {
				gameId : {
					required : "Please ente the game date",
				},
				//addMemberIDDIVPlayerOfMatch : {
					//required : "Please enter the player name",
				//},
				hiddenUmpireId:{
					required : "Please enter the umpire name",
				},
				winTeamOvers : {
					required : "Please enter the overs",
					
				},
				winTeamPoints : {
					required : "Please enter the points",
					numeric : "Invalid points",
				},
				winTeamRuns : {
					required : "Please enter the runs",
						numeric : "Invalid runs",
				},
				winTeamWickets : {
					required : "Please enter the number of wickets",
					numeric : "Invalid wickets"
				},
				loseTeamOvers : {
					required :  "Please enter the overs",
				},
				loseTeamRuns : {
					required : "Please enter the runs",
					numeric : "Invalid runs"
				},
				loseTeamPoints : {
					required : "Please enter the points",
					numeric : "Invalid points"
				},
				loseTeamWickets : {
					required : "Please enter the number of wickets",
					numeric : "Invalid wickets"
				},
				totalOver : {
					required : "Please enter Total over per side",
					numeric : "Invalid wickets"
				}
				
			},
		}).form()){
			
			if($("#result").val() == "00"){
				displaynotification("Please select wining team",1500);
			}else{
				saveFunction();
			console.log('ok');
			}
		}
	}
}

function oversVal(ele){

	var val=ele.value;
	if(val!=''){
		if(overValidation(val)){
			
		}else{
			 displaynotification("Invalid overs",1500);
		}
	}
	
}
function firstInningsTotalScore(runs){
	
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){		
		$("#loseTeamRuns").val(runs);	
	}else{		
		 $("#winTeamRuns").val(runs);
	}
}
function firstInningsWickets(wicket){
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){
	$("#loseTeamWickets").val(wicket);
	}else{
	$("#winTeamWickets").val(wicket);
	}
}
function secondInningsWickets(wicket){
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){
		$("#winTeamWickets").val(wicket);
	}else{
	    $("#loseTeamWickets").val(wicket);
	}
}
function secondInningsTotalScore(runs){
	if(	$("#awayTeamName").val() == firstTeamPlayersId[0].boardId){		
		 $("#winTeamRuns").val(runs);
	}else{		
	    $("#loseTeamRuns").val(runs);	
	}
}
function calculateStrikerate(runId,ballId,strikeId){
	var runVal = $("#"+runId).val();
	var ballVal = $("#"+ballId).val();
	
	if(runVal != "" && ballVal !=""){
	var StrikeRate = (runVal/ballVal)*(100);
    if(isFinite(StrikeRate)){
	$("#"+strikeId).val(StrikeRate.toFixed(2));
    }else{
    	/*displaynotification("Please Enter valid Runs and Balls",2000);
    	 $("#"+runId).val("");
    	 $("#"+ballId).val("");*/
    	$("#"+strikeId).val(0);
    }
	}else{
		$("#"+strikeId).val("");
	}
}
function calculateBowlingEconamic(bowlerGivenRunsId,bowledBallsId,economiId,totalBallsId){	
	var bowlerGivenRunsVal = $("#"+bowlerGivenRunsId).val();
	var bowlerBowledBallsVal =$("#"+bowledBallsId).val();
	//alert("val"+bowlerGivenRunsVal+" , "+bowlerBowledBallsVal);
	if(bowlerGivenRunsVal != "" && bowlerBowledBallsVal != ""){
		var bowlerEconomicVal
		var oversAndBalls = bowlerBowledBallsVal.split(".");
		if(oversAndBalls.length == 1){
		 bowlerEconomicVal = bowlerGivenRunsVal/bowlerBowledBallsVal;
		 $("#"+totalBallsId).val(bowlerBowledBallsVal*6);
		}else if(oversAndBalls.length == 2){
			var over = oversAndBalls[0];
			var balls = oversAndBalls[1];
			var totalBalls = parseInt((over*6))+parseInt(balls);
			//alert("bal--"+totalBalls+" div 6 ="+(totalBalls/6)+" tot "+bowlerGivenRunsVal/(totalBalls/6));
			bowlerEconomicVal = bowlerGivenRunsVal/(totalBalls/6);
			 $("#"+totalBallsId).val(totalBalls);
		}
		//alert("value"+bowlerEconomicVal);
		if(isFinite(bowlerEconomicVal)){
		$("#"+economiId).val(bowlerEconomicVal.toFixed(2));
		 }else{
			/*displaynotification("Please Enter valid Runs and Balls",2000);
	    	 $("#"+bowlerGivenRunsId).val("");
	    	 $("#"+bowledBallsId).val("");*/
			 $("#"+economiId).val(0);
		}
	}else{
		$("#"+economiId).val("");
	}
	
}
function firstInningBattingValidation(){
	
	var validation=[];
	var validationResult=[];
	$('#firInnBattingTable tbody tr').each(function (i, row) {
		validation.push(1);
		
        var $row = $(row), $input = $row.find('input');
        var count=0;
        $input.each(function (i) {
         
            if(i==0){
            	//firstInningsBattingObj.playerId=this.value;
            	console.log('--------------playerId----------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            	
            }
            if(i==2){
            	//firstInningsBattingObj.battingWicketTakenBy = this.value;
            	console.log('------------------------------------');
            }
           /* if(i==3){
            	//firstInningsBattingObj.fielderId=this.value;
            	console.log('------------------------------------');
            }*/
            if(i==3){
            	//firstInningsBattingObj.dismissalType=this.value;
            	console.log('-----------dismissalType-------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==4){
            	//firstInningsBattingObj.battingRuns = this.value;
            	console.log('---------------batting runs---------------------');
            	var id=this.value;
            	if(id!=''){
            		if(numbersOnly(id)){
            			count=parseInt(count)+parseInt(1);
            		}
            		
            	}
            	
            }
            if(i==6){
            	///firstInningsBattingObj.minutes = this.value;
            	console.log('---------------batting balls---------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            		if(numbersOnly(id)){
            			count=parseInt(count)+parseInt(1);
            		}else{
            			count=parseInt(count)-parseInt(1);
            		}
            	}else{
            		this.value=0;
            	}
            }
            /*if(i==10){
            	//firstInningsBattingObj.battingBallnumber = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		if(numbersOnly(id)){
            			//count=parseInt(count)+parseInt(1);
            		}else{
            			count=parseInt(count)-parseInt(1);
            		}
            		count=parseInt(count)+parseInt(1);
            	}
            }*/
            if(i==9){
            	//firstInningsBattingObj.battingFours = this.value;
            	console.log('-------------------strike rate-----------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
           /* if(i==11){
            	//firstInningsBattingObj.battingSix = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==12){
            	//firstInningsBattingObj.battingStrikeRating = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==13){
            	//firstInningsBattingObj.battingOvers = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }*/
            
        });
        if(count>4){
        	validationResult.push(1);
        }
        
    });
	
	console.log('---------'+validation.length+"-----"+validationResult.length);
	if(validation.length==validationResult.length){
		return true;
	}else{
		displaynotification("First innings batting details not completed",1500);
		 //displaynotification("not completed",1500);
		return false;
	}
	
}
function firstInningBowlingValidation(){
	var validation=[];
	var validationResult=[];
	  $('#firInnBowlingTable tbody tr').each(function (i, row) {
		  validation.push(1);
		  var count=0;
		  var $row = $(row), $input = $row.find('input');
	        $input.each(function (i) {
	            
	            if(i==0){
	            	//firstInningsBowlingObj.bowlerId=this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		count=parseInt(count)+parseInt(1);
	            	}
	            	
	            }
	            if(i==1){
	            	//firstInningsBowlingObj.bowlingOvers = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		if(overValidation(id)){
	            			count=parseInt(count)+parseInt(1);
	            		}else{
	            			count=parseInt(count)-parseInt(1);
	            		}
	            		
	            	}
	            }
	            if(i==2){
	            	//firstInningsBowlingObj.bowlingRuns=this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		count=parseInt(count)+parseInt(1);
	            	}
	            }
	            if(i==3){
	            	//firstInningsBowlingObj.maidenOvers=this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		//count=parseInt(count)+parseInt(1);
	            	}else{
	            		this.value=0;
	            	}
	            }
	            if(i==4){
	            	//firstInningsBowlingObj.wickets = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		count=parseInt(count)+parseInt(1);
	            	}else{
	            		this.value=0;
	            	}
	            }
	            if(i==5){
	            	//firstInningsBowlingObj.bowlingEconomyRate = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		count=parseInt(count)+parseInt(1);
	            	}
	            }
	            if(i==6){
	            	//firstInningsBowlingObj.bowlingZeros = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		//count=parseInt(count)+parseInt(1);
	            	}else{
	            		this.value=0;
	            	}
	            }
	            if(i==6){
	            	//firstInningsBowlingObj.bowlingFours = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		//count=parseInt(count)+parseInt(1);
	            	}else{
	            		this.value=0;
	            	}
	            }
	            if(i==7){
	            	//firstInningsBowlingObj.bowlingSix = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		//count=parseInt(count)+parseInt(1);
	            	}else{
	            		this.value=0;
	            	}
	            }
	            if(i==9){
	            	//firstInningsBowlingObj.bowlingBallNumber = this.value;
	            	console.log('------------------------------------');
	            	var id=this.value;
	            	if(id!=''){
	            		//count=parseInt(count)+parseInt(1);
	            	}else{
	            		this.value=0;
	            	}
	            }
	         
	        });
	       
	        if(count>=4){
	        	validationResult.push(1);
	        }
	        
	        
	        
	    });
	  
	  if(validation.length==validationResult.length){
			return true;
		}else{
			 displaynotification("First innings bowling details not completed",1500);
			return false;
		}
	    
}

function secondInningBattingValidation(){
	var validation=[];
	var validationResult=[];
    $('#secInnBattingTable tbody tr').each(function (i, row) {
    	 validation.push(1);
		  var count=0;
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
            
            if(i==0){
            	//secondInningsBattingObj.playerId=this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==2){
            	//secondInningsBattingObj.battingWicketTakenBy = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==3){
            	//secondInningsBattingObj.dismissalType=this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==4){
            	//secondInningsBattingObj.battingRuns=this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==5){
            	//secondInningsBattingObj.balls = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==9){
            	//secondInningsBattingObj.battingStrikeRating = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            /*if(i==9){
            	//secondInningsBattingObj.battingBallnumber = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==10){
            	//secondInningsBattingObj.battingFours = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==11){
            	//secondInningsBattingObj.battingSix = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==12){
            	//secondInningsBattingObj.battingStrikeRating = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==13){
            	//secondInningsBattingObj.battingOvers = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }*/
           
            
        });
        
        if(count>=4){
        	validationResult.push(1);
        }
        
        
    });
    
    if(validation.length==validationResult.length){
		return true;
	}else{
		 displaynotification("Secondinning battings not completed",1500);
		return false;
	}
    
}

function secodingInnigBowlingValidation(){
	var validation=[];
	var validationResult=[];
	$('#secInnBowlingTable tbody tr').each(function (i, row) {
		validation.push(1);
		  var count=0;    	    	
        var $row = $(row), $input = $row.find('input');
        $input.each(function (i) {
            
            if(i==0){
            	//secondInningsBowlingObj.bowlerId=this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==1){
            	//secondInningsBowlingObj.bowlingOvers = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		if(overValidation(id)){
            			count=parseInt(count)+parseInt(1);
            		}else{
            			count=parseInt(count)+parseInt(1);
            		}
            		//count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==2){
            	//secondInningsBowlingObj.bowlingRuns=this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==3){
            	//secondInningsBowlingObj.maidenOvers=this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==4){
            	//secondInningsBowlingObj.wickets = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==5){
            	//secondInningsBowlingObj.bowlingEconomyRate = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		count=parseInt(count)+parseInt(1);
            	}
            }
            if(i==6){
            	//secondInningsBowlingObj.bowlingZeros = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==7){
            	//secondInningsBowlingObj.bowlingFours = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==8){
            	//secondInningsBowlingObj.bowlingSix = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
            if(i==9){
            	//secondInningsBowlingObj.bowlingBallNumber = this.value;
            	console.log('------------------------------------');
            	var id=this.value;
            	if(id!=''){
            		//count=parseInt(count)+parseInt(1);
            	}else{
            		this.value=0;
            	}
            }
           
            
        });
       // secondInningsBowling.push(secondInningsBowlingObj);
        if(count>=4){
        	validationResult.push(1);
        }
    });
	
	 if(validation.length==validationResult.length){
			return true;
		}else{
			 displaynotification("Second innings bowling details not completed",1500);
			return false;
		}
	
}
