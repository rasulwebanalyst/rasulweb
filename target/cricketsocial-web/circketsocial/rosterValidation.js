/**
 * New node file
 */


 		function formValidation()
 		{
 			//coatchval();captain();voiceCaptain();
 			leatMember();captain();
 			//if(nameValidation()==true && coatchval()==true && captain()==true && voiceCaptain()==true)
 				if(nameValidation()==true  && captain()==true && leatMember()==true)
 				{
 					var teamid=[];
 					for(var i=0;i<arrayMemberList.length;i++)
 						{
 						teamid.push(arrayMemberList[i].id);
 						}
 					var roasterid=$("#rosterId").val();
 			//		alert("teamid-- " + teamid);
 					
 					var roaster={
 						teamUserId : teamid,
 						rosterId :roasterid,
 						
 					};
 					
 					$.ajax({
 						type :"post",
 						url :ctx+"/updateroastercheck",
 						data:JSON.stringify(roaster),
 						/*async:false,*/
 	 					 contentType:"application/json",
 	 					 success:function(res){
 					   // 	alert(JSON.stringify(res));
 					    	
 					    	
 					    	if(res!=null){
								if(res.requestStatus == 0){
									var results=res.results;
									if(results != null){
										var playerrestrictionobj=results.playesrRestriction;
										var affiliated=playerrestrictionobj.isAffiliated;
										if(affiliated == "Yes"){
										var playerrestriction=playerrestrictionobj.restrictedPlayers;
										var name="";
										var teamname="";
										for(var i=0;i<playerrestriction.length;i++)
											{
											/*if(i==0)
												{
												name+="<li><span>"+playerrestriction[i].username+"</span><span>-</span><span>"+playerrestriction[i].boardName+"</span></li>";
												teamname=playerrestriction[i].leagueName;
												}else{name+=" , "+playerrestriction[i].username+" "+playerrestriction[i].boardName;}*/
											name+="<li><span>"+playerrestriction[i].username+"</span><span>-</span><span>"+playerrestriction[i].boardName+"</span></li>";
											teamname=playerrestriction[i].leagueName;
											}
										if(playerrestriction.length !=0){
											//displaynotification("Sorry! "+name+" has already been playing in a team for "+teamname ,3000);
											/*var name1="Sorry! "+name+" has already been playing in a team for "+teamname;*/
											/*var name1="Sorry! following players already playing in "+teamname+" for following team "+name;
											$("#RoasterPopupText").text(name1);*/
											var html="";
											html+="<p>Sorry! below players already playing in "+teamname+" and the details are.</p>";
											html+="<ol type='number' class='roa-ol'>"+name+"</ol>";
											$("#RoasterPopupText").html(html).trigger('create');
											$("#RoasterPopup").show();
										}else{
											$("#rosterForm").submit();
										
										}
										}else{$("#rosterForm").submit();}
										
									}else{
										displaynotification("Service has been interupted due to some reasons",1000);
									}
									
								}else{
									showNotification("Service has been interupted due to some reasons",1000);							}
							}else{
								showNotification("Service has been interupted due to some reasons",1000);	}					}
						
 					    	
 					})
 					
 				}else{
 					///displaynotification('Please add alteast',2000);
 					return false;
 				}
 		}
 		
 		function formValidation1()
 		{
 			//coatchval();captain();voiceCaptain();
 			leatMember();captain();
 			//if(nameValidation()==true && coatchval()==true && captain()==true && voiceCaptain()==true)
 				if(nameValidation()==true  && captain()==true && leatMember()==true)
 				{
 					return true;
 					
 				}else{
 					///displaynotification('Please add alteast',2000);
 					return false;
 				}
 		}
 		function leatMember(){
 			$('#addMemberError').text('');
 			if(arrayMemberList.length>0)
				{
					return true;
				}else{
					//displaynotification('Please add alteast',2000);
					$('#addMemberError').text('Please add member');
					return false;
				}
 		}
 		function coatchval(){
 			var coatch=$('#coachSelectDIV').val();
 			$('#coachSelectvalDIVERR').text('');
 			if(coatch.length>2)
 				{
 					return true;
 				}else{
 					$('#coachSelectvalDIVERR').text('Please select coach');
 					return false;
 				}
 			
 		}
 		function captain(){
 			var coatch=$('#captainSelectDiv').val();
 			$('#captainSelectDivERR').text('');
 			if(coatch.length>2)
 				{
 					return true;
 				}else{
 					$('#captainSelectDivERR').text('Please select captain');
 					return false;
 				}
 		}
 		
 		function voiceCaptain(){
 			var coatch=$('#viceCaptainSelectDIV').val();
 			$('#viceCaptainSelectDIVERR').text('');
 			if(coatch.length>2)
 				{
 					return true;
 				}else{
 					$('#viceCaptainSelectDIVERR').text('Please select voice captain');
 					return false;
 				}
 		}
 		function membersValidation()
 		{
 			
 			if(arrayMemberList.length>0)
 				{
 					return true;
 				}else{
 					displaynotification('Please one member',2000);
 					return false;
 				}
 		}
 		
 		function nameValidation()
 		{
 			var name=$('#rosterName').val();
 			var message='';
 			$('#rosterNameMessage').html(message);
 			if(name!='')
 				{
	 				if(name.length>2)
	 					{
		 					/* if(alphanumericWithspecialChar(name))
			 				{
		 						$('#rosterNameMessage').text(message);
		 						//aleart('ok');
			 					return true;
			 				}else{
			 					message='Invalid name';
			 					console.log('formate else --> '+message);
			 						//$('#rosterNameMessage').test('');
			 						$('#rosterNameMessage').text(message);
			 					return false;
			 				} */
			 				return true;
	 					}else{
	 						message='Please enter more than 2 charactors';
	 						console.log('length --- else --> '+message);
	 						$('#rosterNameMessage').text(message);
	 						return false;
	 					}
 				}else{
		 					message='Please enter roster name';
		 					console.log('else --> '+message);
		 					$('#rosterNameMessage').text(message);
		 					return false;
 				}
 		  	$('#rosterNameMessage').text(message);
 		}
  
 		