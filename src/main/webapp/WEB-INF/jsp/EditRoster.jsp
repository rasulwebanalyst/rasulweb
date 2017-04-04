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
     <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<script>var ctx="${pageContext.request.contextPath}";</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/rosterValidation.js"></script>
<script type="text/javascript">

var arrayMemberList=[];
var sequencNumber2=[];
var sequencNumber=0;
</script>
</head>




<style>
.media.tool-list {
	overflow: visible;
}
.tool-list .media-body {
	overflow: visible;
}
.tool-list .media-body .tooltiptext1 {
	height: auto;
	
} 
.tooltip {
position: unset;
display: inline-block;
border-bottom: 1px dotted black;
color: #4c9fe1;
opacity: 1;
font-weight: 600;
}

.tooltip .tooltiptext {
display: none;
   visibility: hidden;
width: 200px;
background-color: #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 0;
position: absolute;
z-index: 1;
top: auto;
right: -205px;
opacity: 0;
transition: opacity 1s;
margin-top: -15px;
}

.tooltip .tooltiptext::after {
    content: "";
position: absolute;
top: 7px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
    display: block;
}



.tooltip1 {
   
    float: right;
   
}

.tooltip1 .tooltiptext1 {
display: none;
   visibility: hidden;
width: 200px;
background-color:  #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 0;
position: absolute;
z-index: 1;
right: -177px;
margin-top: -10px;
opacity: 0;
transition: opacity 1s;
box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
}

.tooltip1 .tooltiptext1::after {
 content: "";
position: absolute;
top: 11px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip1:hover .tooltiptext1 {
    visibility: visible;
    opacity: 1;
    display: block;
}


.tooltiptext1 div li:last-child {
border: none !important;
}





.tooltiptext div li,.tooltiptext1 div li  {
text-align: left;
}

.autoSearchBlcok {
width: 460px !important;
z-index: 9999999 ;
}
.autoSearchBlcok .media-heading {
width: 100% !important;
}

.autoSearchBlcok .media {
margin-bottom: 0px !important;
}

.autoSearchBlcok h4 span {
font-size: 13px !important;
}

.autoSearchBlcok .media-left {
margin-bottom: 0px !important;
}

.sponser-Flow{
text-overflow: ellipsis;
    overflow: hidden;
    width: 67%;
    display: inline-block;
    white-space: nowrap;
}
span.sponser-Flow {
	float: none!important;
	color: #555!important;
}

</style>


<body>
 	<div id="RoasterPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        <div id="RoasterPopupText">
        <p id="RoasterPopupText">Sorry! below players already playing in UnitedStates and details are.</p>
        <ol type="number" class="roa-ol">
        	<!-- <li><span>Name</span><span>-</span><span>QWERWER</span></li>
        	<li><span>Name</span><span>-</span><span>QWERWER</span></li>
        	<li><span>Name</span><span>-</span><span>QWERWER</span></li> -->
        </ol>
        </div>
      </div>
      <div class="modal-footer action">
      <button type="button" onclick="RoasterPopup()" class="btn btn-default ok">OK</button>
       </div>
    </div>

  </div>
</div>  
 	
 	
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
      		<form action="updateRostor" method="post" id="rosterForm" name="rosterForm">
      				<div class="col-md-12 whiteBox">
          
		          <h1 class="">Edit Squad</h1>
          	
                        
                    <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding rosName">
                	<div class=" col-md-2 PG-Visi">
                    <h6>Squad Name</h6>
                  </div>
                  <div class="col-md-10 own">
                  	<input type="text" class="form-control" value="${RoasterResponseById.rosterDetails.rosterName}" placeholder="" id="rosterName" name="rosterName" readonly>
                  <input type="hidden" value="${RoasterResponseById.rosterDetails.boardId}" id="boardId" name="boardId">
                  <input type="hidden" value="${RoasterResponseById.rosterDetails.rosterId}" id="rosterId" name="rosterId">
                  
                  </div>
                  
                </div>
              </div>
          </div>  
          
          
          <div class="col-md-12 whiteBox">
                    
                            <h2 style="padding-left:0">Add Member <a href="#" class="pull-right"></a></h2>
                            
                            <div class="form-group col-md-12 noPadding profileForm">
                             
                                
                                 <div class="col-md-12 noPadding" id="memberMainDIV">
                                  <label for="email" style="width:100%;">Members</label>
                                <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i">
	                                <%-- <c:if test="${rosterMember.rosterRole eq 'Member'}"> --%>
		                               <div class="col-md-12 noPadding" id="memberListDIV${rosterMember.userId}">
		                               <span class='palyerCount' id='sequenc${rosterMember.userId}'>${i.count}</span>
		                                  <input type="text" class="form-control player-entry" readonly style="width:73%; float:left;" value="${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}" placeholder="" id="member${rosterMember.userId}" onkeyup="getBuddiesAutoComplete(this,'memberautoCompleteDIV${i.count}','memberHiddeb${i.count}')">
			                                 <div class="autoSearchBlcok" id="memberautoCompleteDIV${i.count}" style="display:none;margin-top: 37px; margin-left: 0!important;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div> 
		                                  <button type="button" class="btn btn-default " style="width:18%; float:right;" onclick="removeFromList('${rosterMember.userId}')">Remove</button>
		                                   <input type="hidden" class="form-control" placeholder="" id="memberHiddeb${rosterMember.userId}" name="teamUserId" value="${rosterMember.userId}">
		                               </div>
                                
                               <%--  </c:if> --%>
                               
                                <script>
                                
                                 arrayMemberList.push({
                                	 name : "${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}",
                                	 id : "${rosterMember.userId}",
                                	 member : "${rosterMember.rosterRole}"
                                 });
                                 sequencNumber=parseInt(sequencNumber)+parseInt(1);
                                 sequencNumber2.push("${rosterMember.userId}");
                                </script>
                              
							</c:forEach>
							</div>                                
                                <div class="col-md-12 noPadding">
                                  <input type="text" class="form-control" value="" style="width:80%; float:left;" placeholder="" id="addMemberNameDIV" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
                                 <button type="button" class="btn btn-default dBtn" style="width:18%; float:right;" onclick="addmemberToRoster()">Add</button>
                                 <div class="autoSearchBlcok" id="addMemberautoCompleteDIV" style="display:none;margin-top: 37px; margin-left: 0!important;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div> 
                                  
                               	   <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
                                </div>
                                
                              </div>
                            
                            
                            <div class="col-md-12 noPadding">
                              	<label for="email">Captain</label>
                              	<div class="selectdiv">
                                    <select class="selectboxdiv" id="captainSelectDiv" name="captain" onchange="memberCoachCaptainValue('captain')">
                                       <option value="">Select Captain</option>                                     
                                          <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i"> 
	                                        <c:choose>
	                               				<c:when test="${rosterMember.rosterRole eq 'Captain'}">
	                               					<option selected="selected" value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>	                               				
	                               				</c:when>
	                               				<c:otherwise>	                               					
	                               					<option value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>
	                               				</c:otherwise>
	                               			</c:choose>
                               			</c:forEach>
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
                                          <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i"> 
	                                        <c:choose>
	                               				<c:when test="${rosterMember.rosterRole eq 'vice_Captain'}">
	                               					<option selected="selected" value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName} </option>	                               				
	                               				</c:when>
	                               				<c:otherwise>	                               					
	                               					<option value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>
	                               				</c:otherwise>
	                               			</c:choose>
                               			</c:forEach>
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
                                          <c:forEach var="rosterMember" items="${RoasterResponseById.rosterMembers}" varStatus="i"> 
	                                        <c:choose>
	                               				<c:when test="${rosterMember.rosterRole eq 'Coach'}">
	                               					<option selected="selected" value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>	                               				
	                               				</c:when>
	                               				<c:otherwise>	                               					
	                               					<option value="${rosterMember.userId}">${rosterMember.userProfile.firstName} ${rosterMember.userProfile.lastName}</option>
	                               				</c:otherwise>
	                               			</c:choose>
                               			</c:forEach>
                                    </select>
                                    <div class="out" id="coachSelectvalDIV"></div>    
                                </div>
                                 <div id="coachSelectvalDIVERR" style="color: red;"></div>  
                                        
                              </div>
                                
                        </div>
                        
                        
                        <div class="form-group col-md-12 centerbtns pull-right">
                          <button type="button" class="btn btn-default dBtn" onclick="return formValidation()">Save</button>
                          <!-- <button type="button" class="btn btn-default blueBtn"> --><a href="${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}" class="btn btn-default blueBtn">Cancel</a><!-- </button> -->
                       </div>
                        
          </form>
            
      </div>
					
                     

                     <!--Right Block-->
                     	
                	
                
                     <!--/Right Block End-->
     <%@ include file="EventSideMenu.jsp" %>
                        
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
    						//url : ctx+"/buddySearch",
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
    								html+="<ul style='overflow: auto; max-height: 275px;'>";
    								
    								if(users!= null && users.length >0){
    									for(var i in users){
    									//	var name=users[i].firstName+" "+users[i].lastName;
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
    										
    										
    										
    										
    										
    										if(users[i].teamboardlist.length > 0)
  				                          {
  				                        	  
  				                        	  html +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
  			                        		  html +="<div id=showtool"+i+" class='tooltiptext1'>";
  			                        		  

  			                          		html +="<div id='dropdown"+users[i].userId+"' class='' >";
  					                         
  					                          for(var j in users[i].teamboardlist){
  					                        	  
  					                          var teamlist=users[i].teamboardlist[j];
  					              
  					                          html +="<li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
  					                          
  					                          var leagueboardlist=users[i].teamboardlist[j].leagueBoardList;
  					                          
  					                          
  					                          if(leagueboardlist!=null && leagueboardlist.length > 0){
  					                        	 
  					                        		/*   htm +=" afflicated to "; */
  					                        		  
  					                        		  
  					                        		  html +=" <div class='tooltip'>Leagues";
  					                        		  html +="<span class='tooltiptext'><ul>";
  					                        		  for(var k in leagueboardlist){
  					                        			  html +="<li>"+leagueboardlist[k].boardName+"</li>";
  					                        		  
  					                        		  }
  					                        			  html +="</ul></span>";
  					                        		  html +="</div>";
  					                          }
  					                          
  					                          html +="</li>";
  					                          
  					                          }
  					                          html +="</div>";
  					                          
  					                          html +="</div>";
  			                        		  html +="</div>";
  					                          
  				                          }else{
  				                        	  
  				                          // no record
  				                        	  html +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
  			                        		  html +="<div id=showtool"+i+" class='tooltiptext1'>";
  			                          		html +="<div id='dropdown"+users[i].userId+"' class='' >";
  					                          html +="<li style='text-align: center;'>No Details</li>";
  					                         
  					                          html +="</div>";
  					                          
  					                          html +="</div>";
  			                        		  html +="</div>";
  				                          
  				                          }
    										
    										
    										
    										
    										
    										
    									html +="</h4><div class='headRight' id=''></div></div></div></li>";
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
   		//$('#'+textBox).val($(elem).text());
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
			displaynotification('User already exist', 2000);
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
	    	        htm +="<input type='text' class='form-control player-entry' style='width:73%; float:left;' readonly value='"+name+"' placeholder='' id='member"+userid+"'>";
	    	        htm +="<button type='button' class='btn btn-default ' style='width:18%; float:right;' onclick=removeFromList('"+userid+"')>Remove</button>";
	    	        htm +="<input type='hidden' class='form-control' placeholder='' id='memberHiddeb"+userid+"' name='teamUserId' value='"+userid+"'>";
	    	        htm +="</div>";
	    	        $('#memberMainDIV').append(htm);
	    	       $('#addMemberIDDIV').val('');
	    	       $('#addMemberNameDIV').val('');
	    		
	    	       var htm2="";
	    	       
	    	       //htm2 +="<select class='selectboxdiv'>";  
	    	       var n="";
	    	       htm2 +="<option  value=''>select coach</option>";
	    	       var selectCoach =  $("#coachSelectDIV option:selected").val();
                   for(var j in arrayMemberList)
                	   {
                	   		if(arrayMemberList[j].id==selectCoach)
                	   			{
                	   		 		htm2 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
                	   		 		n=arrayMemberList[j].name;
                	   			}else{
                	   				htm2 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";				
                	   				}                	   	  	          					
                	   }
  					
                   
                   
                   
 				// htm2 +=" </select>";
  				// htm2 +="<div class='out'>"+n+"</div>";   
	    	      $('#coachSelectDIV').html(htm2);
	    	      var htm3="";
	    	      htm3 +="<option value=''>Select Vice Captain</option>";
	    	      var selectViceCaptin =  $("#viceCaptainSelectDIV option:selected").val();
	    	      for(var j in arrayMemberList)
           	   {
           	   		if(arrayMemberList[j].id==selectViceCaptin)
           	   			{
           	   		 		htm3 +="<option selected='selected' value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";
           	   		 		//n=arrayMemberList[j].name;
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
           	   		 		//n=arrayMemberList[j].name;
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
	       var coachorder=0;
  	       var n="";
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
     	   		 		//n=arrayMemberList[j].name;
     	   			$('#viceCaptainSelectvalDIV').html(arrayMemberList[j].name);
 	   				vicecaptainorder=parseInt(j)+parseInt(1);
 	   				p=arrayMemberList[j].name;
     	   			}else{
     	   				htm3 +="<option value='"+arrayMemberList[j].id+"'>"+arrayMemberList[j].name+"</option>";				
     	   				}                	   	  	          					
     	   }
  	      $('#viceCaptainSelectDIV').html(htm3);
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
     	   		 		//n=arrayMemberList[j].name;
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
				   				$("#captainSelectDivERR").text("");
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
function RoasterPopup()
{
	$("#RoasterPopup").hide();
}
    </script>
    
    <script type="text/javascript">
 console.log(arrayMemberList);
  
    </script>
</body>

</html>
