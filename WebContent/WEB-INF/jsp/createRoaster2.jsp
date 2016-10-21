<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
<script>var ctx="${pageContext.request.contextPath}";</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/rosterValidation.js"></script>
<script type="text/javascript">

var arrayMemberList=[];
var sequencNumber=0;
var sequencNumber2=[];
</script>
</head>

<body>
<%@ include file="CSCommon.jsp" %>
<%@ include file="BoardHeader.jsp" %>
    
    <section class="middleContentBlock">
    
    <!--<div class="profileBanner">
    	<img src="images/innerBanner.png">
    </div>-->
    
    <div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <i class="fa fa-camera changePhoto" title="Change Photo"></i>
          </div>
          
          
    	<img src="images/innerBanner.png">
        
    </div>
    
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
    
    					 <%@ include file="BoardSideMenu.jsp" %>
    
                    

			<div class="col-md-7 pageMiddleBlock">
      		<form action="saveRoaster" method="post" id="rosterForm" name="rosterForm" onsubmit="return formValidation1()">
      				<div class="col-md-12 whiteBox">
          
		          <h1 class="">Create Roster</h1>
          	
                        
                    <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding rosName">
                	<div class=" col-md-2 PG-Visi">
                    <h6>Roster Name</h6>
                  </div>
                  <div class="col-md-10 own">
                  	<input type="text" class="form-control" value="" placeholder="" id="rosterName" name="rosterName">
                  <input type="hidden" value="${BoradInfo.boardId}" id="boardId" name="boardId">
                  <input type="hidden" value="" id="rosterId" name="rosterId">
                 <div id="rosterNameMessage" style="color: red;">
                 
                 </div>
                  
                  </div>
                  
                </div>
              </div>
          </div>  
          
          
          <div class="col-md-12 whiteBox">
                    
                            <h2 style="padding-left:0">Add Member <a href="#" class="pull-right"></a></h2>
                            
                            <div class="form-group col-md-12 noPadding profileForm">
                             
                                
                                 <div class="col-md-12 noPadding" id="memberMainDIV">
                                  <label for="email" style="width:100%;">Members</label>    
                                
                         
							</div>                                
                                <div class="col-md-12 noPadding">
                                  <input type="text" class="form-control" value="" style="width:80%; float:left;" placeholder="" id="addMemberNameDIV" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
                                 <button type="button" class="btn btn-default dBtn" style="width:18%; float:right;" onclick="addmemberToRoster()">Add</button>
                                 <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;margin-top: 37px;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div> 
                                  
                               	   <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
                               	   <div id="addMemberError" style="color: red;"></div>
                                </div>
                                
                              </div>
                            
                            
                            <div class="col-md-12 noPadding">
                              	<label for="email">Captain</label>
                              	<div class="selectdiv">
                                    <select class="selectboxdiv" id="captainSelectDiv" name="captain" onchange="memberCoachCaptainValue('captain')">
                                       <option value="">Select Captain</option>                                     
                                          <%-- <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i"> 
	                                        <c:choose>
	                               				<c:when test="${rosterMember.rosterRole eq 'Captian'}">
	                               					<option selected="selected" value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>	                               				
	                               				</c:when>
	                               				<c:otherwise>	                               					
	                               					<option value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>
	                               				</c:otherwise>
	                               			</c:choose>
                               			</c:forEach> --%>
                                    </select>
                                    <div class="out" id="captainSelectvalDiv"></div>
                                        
                                </div>
                                   <div id="captainSelectDivERR" style="color: red;"></div>     
                              </div>
                               
                                
                              <div class="col-md-12 noPadding">
                              	<label for="email">Vice Captain</label>
                              	<div class="selectdiv">
                                    <select class="selectboxdiv" id="viceCaptainSelectDIV" name="vice_captian" onchange="memberCoachCaptainValue('vice_captian')">     
                                    <option value="">Select Vice Captain</option>                                    
                                          <%-- <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i"> 
	                                        <c:choose>
	                               				<c:when test="${rosterMember.rosterRole eq 'vice_Captian'}">
	                               					<option selected="selected" value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName} </option>	                               				
	                               				</c:when>
	                               				<c:otherwise>	                               					
	                               					<option value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>
	                               				</c:otherwise>
	                               			</c:choose>
                               			</c:forEach> --%>
                                    </select>
                                    <div class="out" id="viceCaptainSelectvalDIV"></div>  
                                       
                                </div>
                                      <div id="viceCaptainSelectDIVERR" style="color: red;"></div>  
                              </div>
                               
                                
                              <div class="col-md-12 noPadding">
                              	<label for="email">Coach</label>
                              	<div class="selectdiv" >
                                    <select class="selectboxdiv" id="coachSelectDIV" name="coach" onchange="memberCoachCaptainValue('coach')">
                                    	<option value="">Select Coach</option>                                       
                                         <%--  <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i"> 
	                                        <c:choose>
	                               				<c:when test="${rosterMember.rosterRole eq 'Coach'}">
	                               					<option selected="selected" value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>	                               				
	                               				</c:when>
	                               				<c:otherwise>	                               					
	                               					<option value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>
	                               				</c:otherwise>
	                               			</c:choose>
                               			</c:forEach> --%>
                                    </select>
                                    <div class="out" id="coachSelectvalDIV"></div>    
                                     
                                </div>
                                     <div id="coachSelectvalDIVERR" style="color: red;"></div>   
                              </div>
                                
                        </div>
                        
                        
                        <div class="form-group col-md-12 centerbtns pull-right">
                          <button type="submit" class="btn btn-default dBtn">Save</button>
                          <button type="button" class="btn btn-default blueBtn" onclick="window.location.href='${pageContext.request.contextPath}/roster?bid=${BoradInfo.boardId}'">Cancel</button>
                       </div>
                        
          </form>
            
      </div>
					
                     

                     <!--Right Block-->
                     	
                        <%@ include file="EventSideMenu.jsp" %>
                	
                
                     <!--/Right Block End-->

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
      <%@ include file="Footer.jsp" %>
    <script>
   
    function getBuddiesAutoComplete(elem,divId,hiddenId){
    	var key=$(elem).val();
    	var textBoxId=$(elem).attr('id');
    	console.log('value : '+key);
    	console.log('textBoxId : '+textBoxId);
    	if(key.length>2) {
    			    $.ajax({
    						type : "POST",
    						url : ctx+"/rosterBuddySearch",
    						dataType: "json",
    			        contentType: "application/json; charset=utf-8",
    			        data : key,					            
    						success : function(res) {
    							console.log(res);	
    							var html="";
    							
    							if(res != null){
    								var users=res.userList;
    								console.log(JSON.stringify(users));
    								html+="<ul style='width: 80%;'>";
    								
    								if(users!= null && users.length >0){
    									for(var i in users){
    										var name=users[i].firstName;
    										if(users[i].lastName!=null){
    											name=name+" "+users[i].lastName;
    										}
        									//html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')> <img alt='' src='"+users[i].userImageUrl+"' width='30px' height='30px'> "+name+"</li>";
    										/* html+="<li ><div onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')> <img alt='' src='"+users[i].userImageUrl+"' width='30px' height='30px'> "+name+"</div>";
    										if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
    									        html += '<p>'+users[i].city+'</p>';
    									}else{
    										html += '<p>'+users[i].city+','+users[i].state+'</p>'; 
    									}
    									html +="</li>"; */
    									
    									 html+="<li class='selection-item' onclick=setValueToTextBox('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')><div class='media'><div class='media-left'><a><img alt='' src='"+users[i].userImageUrl+"' class='nav-avatar' ></a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading'> "+name+"<br></a>";
										if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
									        html += '<span class="auto-black">'+users[i].city+'</span>';
									}else{
										html += '<span class="auto-black">'+users[i].city+','+users[i].state+'</span>'; 
									}
									html +="</h4><div class='headRight' id=''></div></div></div></li>"; 
        								}
    								}else{
    									html+="<li>No results found...</li>";
    								}
    								//console.log("in if"+html);
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
    	var name=elem.replace(/-/g," ");
   		$('#'+textBox).val(name);
   		$('#'+divId).hide();	
   		$('#'+hiddenId).val(userId);	
   		
    }
    
    function setValueToTextBoxAndArray(elem,textBox,divId,userId,hiddenId,name)
    {
    	
   		var i=checkMemberExistbyId(userId);
   		if(i!=-1)
		{		
   			arrayMemberList.push({
           	 name : name,
           	 id : userId,
           	 member : "Member"
            });
			$('#'+textBox).val($(elem).text());
	   		$('#'+divId).hide();	
	   		$('#'+hiddenId).val(userId);
			
		}else{
			displaynotification('User already exist',2000);
		}
    }
    
    function addmemberToRoster()
    {
    	/* htm +='<div class="col-md-12 noPadding">';
      //  htm +='<label for="email" style="width:100%;">Mambers</label>';
        htm +='<input type="text" class="form-control" style="width:80%; float:left;" value="Vikki" placeholder="" id="">';
        htm +='<button type="submit" class="btn btn-default " style="width:18%; float:right;">Remove</button>';
        htm +='</div>'; */
        var userid =$('#addMemberIDDIV').val();
        var name=$('#addMemberNameDIV').val();
      
    	if(userid!='')
    		{
    		   var i=checkMemberExistbyId(userid);
	    		if(i!=-1)
	    		{
	    			displaynotification('User already exist', 2000);
	    		}else{
	    			

		    		
	    		 	arrayMemberList.push({
	    	       	 name : name,
	    	       	 id : userid,
	    	       	 member : "Member"
	    	        });
	    		 	sequencNumber=parseInt(sequencNumber)+parseInt(1);
	    		 	sequencNumber2.push(userid);
	    	        var htm="";
	    	        
	    	    	htm +="<div class='col-md-12 noPadding' id='memberListDIV"+userid+"'>";	    	     
	    	        htm +="<span class='palyerCount' id='sequenc"+userid+"'>"+sequencNumber2.length+"</span>";
	    	    	htm +="<input type='text' class='form-control' style='width:73%; float:left;' readonly value='"+name+"' placeholder='' id='member"+userid+"'>";
	    	        htm +="<button type='button' class='btn btn-default ' style='width:18%; float:right;' onclick=removeFromList('"+userid+"')>Remove</button>";
	    	        htm +="<input type='hidden' class='form-control' placeholder='' id='memberHiddeb"+userid+"' name='teamUserId' value='"+userid+"'>";
	    	        htm +="</div>";
	    	        $('#memberMainDIV').append(htm);
	    	       $('#addMemberIDDIV').val('');
	    	       $('#addMemberNameDIV').val('');
	    		
	    	       var htm2="";
	    	       
	    	       //htm2 +="<select class='selectboxdiv'>";  
	    	       var n="";
	    	       htm2 +="<option value=''>select coach</option>";
	    	       var selectCoach =  $("#coachSelectDIV option:selected").val();
                   for(var j in arrayMemberList)
                	   {
                	   					
                	   	     if(arrayMemberList[j].id==selectCoach)
                	   	    	 {
                	   	    		htm2 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
                	   	    	 }else{
                	   	    		htm2 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
                	   	    	 }
                	   }  				
	    	      $('#coachSelectDIV').html(htm2);
	    	      var htm3="";
	    	      htm3 +="<option  value=''>Select Vice Captain</option>";
	    	      var vicecaptiantest=0;
	    	      var selectViceCaptin =  $("#viceCaptainSelectDIV option:selected").val();
	    	      for(var j in arrayMemberList)
           	   {
           	   		
           	   			if(arrayMemberList[j].id==selectViceCaptin)
           	   				{
           	   		        	htm3 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
           	   				}else{
           	   				    htm3 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
           	   				}
           	   								
           	   				          	   	  	          					
           	   }
	    	    
	    	      
	    	      $('#viceCaptainSelectDIV').html(htm3);
	    	      var htm4="";	    	    
	    	      htm4 +="<option value=''>Select Captin</option>";
	    	      var selectCaptin =  $("#captainSelectDiv option:selected").val();
	    	      for(var j in arrayMemberList)
           	   {
           	   		
	    	    	  if(arrayMemberList[j].id==selectCaptin)
	    	    		  {
	    	    		  	  htm4 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
	    	    		  }else{
	    	    			  htm4 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
	    	    		  }
           	   								
           	   				      	   	  	          					
           	   }
	    	      	$('#captainSelectDiv').html(htm4);
	    	      	
	    	       
	    		}
    		}else{
    			displaynotification("Please choose any player to add",2000);
    		}
        
       
       
        
       
       
    }
    function setsequenc()
    {
    	for(var i in sequencNumber2)
    		{
    			$('#sequenc'+sequencNumber2[i]).html(parseInt(i)+parseInt(1));
    		}
    }
    function removeFromList(id)
    {
    	removingMemberById(id);
   
    }
    function checkMemberExistbyId(id)
    {
    	var index=-1;
    	for(var i in arrayMemberList)
    		{
    			if(arrayMemberList[i].id==id)
    				{
    					index=i;
    					break;
    				}
    		}
    	return index;
    }
    
function removingMemberById(id)
{
	var i=checkMemberExistbyId(id);
	if(i!=-1)
		{
			arrayMemberList.splice(i, 1);
		 	$("#memberListDIV"+id).remove();
			var a = sequencNumber2.indexOf(id);
			sequencNumber2.splice(a, 1);
			setsequenc();
			// seting value 
			
	// ################################# coatch #############################################
			
			 var htm2="";
  	       	 htm2 +="<option value=''>select coach</option>";
  	 		 var coach =  $("#coachSelectDIV option:selected").val();
  	       var n="";
  	       var coachorder=0;
             for(var j in arrayMemberList)
          	   {
          	   		if(arrayMemberList[j].id==coach)
          	   			{
          	   		 		htm2 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
          	   		 		n=arrayMemberList[j].name;
          	   		 		$('#coachSelectvalDIV').html(arrayMemberList[j].name);
          	   		 		coachorder=parseInt(j)+parseInt(1);
          	   			}else{
          	   				htm2 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";				
          	   				}                	   	  	          					
          	   }
  	      $('#coachSelectDIV').html(htm2);
  	    document.getElementById("coachSelectDIV").selectedIndex = coachorder;
  	  if(coachorder==0)
  		  {
  		 	 $('#coachSelectvalDIV').html('select coach');
  		  }else{
  			 $('#coachSelectvalDIV').html(n);
  		  }
  	      
  	  //###################################   vice captain   #################################################################################### 
  	    var htm3="";
  	    htm3 +="<option value=''>select vice captain</option>";
  	  	 var vice_captian =  $("#viceCaptainSelectDIV option:selected").val();
  	    var vicecaptainorder=0;
  	    var p="";
  	      for(var j in arrayMemberList)
     	   {
     	   		if(arrayMemberList[j].id==vice_captian)
     	   			{
     	   		 		htm3 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
     	   				$('#viceCaptainSelectvalDIV').html(arrayMemberList[j].name);
     	   				vicecaptainorder=parseInt(j)+parseInt(1);
     	   				p=arrayMemberList[j].name;
     	   			}else{
     	   				htm3 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";				
     	   				}                	   	  	          					
     	   }
  	     
  	      $('#viceCaptainSelectDIV').html(htm3);
  	      
  	//    $('#coachSelectDIV').html(htm2);
  	    document.getElementById("viceCaptainSelectDIV").selectedIndex = vicecaptainorder;
  	  if(vicecaptainorder==0)
  		  {
  			$('#viceCaptainSelectvalDIV').html('select vice captain');
  		  }else{
  			 $('#viceCaptainSelectvalDIV').html(p);
  		  }
  	  
	  //###############################################  captain  ######################################################################## 
	  
  	      var htm4="";
  	   // var coach = document.getElementById("coach");
  	    htm4 +="<option value=''>select captain</option>";
  	    var captainval =  $("#captainSelectDiv option:selected").val();
  	    var captainorder=0;
  	    var q="select captain";
  	      for(var j in arrayMemberList)
     	   {
     	   		if(arrayMemberList[j].id==captainval)
     	   			{
     	   		 		htm4 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
     	   		 		q=arrayMemberList[j].name;
     	   		 		captainorder=parseInt(j)+parseInt(1);
     	   		 	$('#captainSelectvalDiv').html(arrayMemberList[j].name);
     	   			}else{
     	   					htm4 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";				
     	   				}                	   	  	          					
     	   }
  	      $('#captainSelectDiv').html(htm4);
  	      
  	    	document.getElementById("captainSelectDiv").selectedIndex = captainorder;
    	 	 if(captainorder==0)
    		  {
    		 	 $('#captainSelectvalDiv').html('select captain');
    		  }else{
    			 $('#captainSelectvalDiv').html(q);
    		  }
  	      
			return 'object removed';
		}else{
			return 'object not removed';
		}
	
}
    
    
    
    </script>
    
    <script type="text/javascript">

 	
 		function memberCoachCaptainValue(keyVal)
 		{
 			 var selectCoach =  $("#coachSelectDIV option:selected").val();
		     var selectCaptin =  $("#captainSelectDiv option:selected").val();		  
		     var selectViceCaptin =  $("#viceCaptainSelectDIV option:selected").val();
 			
 			   if(keyVal=='captain'){
 				
 				   if(selectCaptin.length>2)
 					   {
 					   		if(selectCaptin==selectViceCaptin){
 					   				displaynotification('Already selected as a vice captain',2000);
 					   			
 					   			//$('#coachSelectvalDIV').html('select coach');
 					   			document.getElementById("captainSelectDiv").selectedIndex = "0";
 					   				return false;
 					   			}else if(selectCaptin==selectCoach){
 					   			    displaynotification('Already selected as a coach',2000);
 					   			    document.getElementById("captainSelectDiv").selectedIndex = "0";
 					   				return false;
 					   			}else{
 					   				return true;
 					   			}
 					   }else{
 						  return false;
 					   }
 				   
 				}else if(keyVal=='vice_captian'){
 				
 					if(selectViceCaptin.length>2){
 						
 						if(selectViceCaptin==selectCaptin){
 							displaynotification('Already selected as a captain',2000);
 							document.getElementById("viceCaptainSelectDIV").selectedIndex = "0";
 							return false;
 						}else if(selectViceCaptin==selectCoach){
 							displaynotification('Already selected as a coach',2000);
 							document.getElementById("viceCaptainSelectDIV").selectedIndex = "0";
 							return false;
 						}else{
 							return true;
 						}
 					}else{
 						return false;
 					}
 						
 					
 				}else if(keyVal=='coach'){
 				
 					if(selectCoach.length>2){
 						if(selectCoach==selectCaptin){
 							displaynotification('Already selected as a captain',2000);
 							document.getElementById("coachSelectDIV").selectedIndex = "0";
 							return false;
 						}else if(selectCoach==selectViceCaptin){
 							displaynotification('Already selected as a vice captain',2000);
 							document.getElementById("coachSelectDIV").selectedIndex = "0";
 							return false;
 						}else{
 							return true;
 						}
 							
 					}else{
 						return false;
 					}
 						
 					
 				}
 		}
 		
    </script>
</body>

</html>
