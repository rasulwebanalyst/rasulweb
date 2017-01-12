<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

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
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">

<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    

 <!-- jQuery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
<script type="text/javascript">
var populateList=[];
var arrayMemberList=[];
var teamboardid=[];
var sequencNumber=0;
</script>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" />


</head>
<body>

 <%@ include file="CSCommon.jsp" %>
 <%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
                     <%@ include file="publicLeaugeManagementSideMenu.jsp" %>
                     
                     
                     
                     <c:forEach items="${teamList}" var="teammember">
                     <script type="text/javascript">
                     var name="${teammember.boardName}";
                     var userid="${teammember.boardId}";
                     var status="${teammember.matchStatus}";
                     populateList.push({
    	    	       	 name : name,
    	    	       	 id : userid,
    	    	       	matchStatus :status
    	    	        });
                     
                     </script>
                     
                     </c:forEach>
                    

      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Edit Tournament / Trophy</h1>
                  
                  <div class="form-group col-md-12 noPadding profileForm"><br>
                  <form id="tournamentForm"  action="${pageContext.request.contextPath}/EditTournamentDetails.htm" method="POST">
                                  <div class="col-md-6">
                                  	<label for="email"><span>*</span> Create Tournament / Trophy</label> <input type="text" class="form-control" placeholder="" id="tournamentName" name="tournamentName" onblur="tournamentNameValidation()" value="${tournamentName}" readonly="readonly">
                                  </div>
                                 
                                  <div class="col-md-6" style="display: none;">
                                 	 <label for="email"><span>*</span> Add Team Board Name</label> <input type="text" class="form-control" placeholder="" id="boardName" name="boardName">
                                 
                                  <span id="error"></span>
                                  </div>
                                 
                                  <div class="col-md-6">
                                  	<label for="email"><span>*</span> Win Points for the Match</label> <input type="text" class="form-control number" placeholder="" id="winpoints" name="winpoints" value="${winPoints}" readonly="readonly">
                                  </div>
                                   <input type="hidden" id="hiddenID" name="hiddenID">
                                  <input type="hidden" id="boardId"  name="boardId" value="${boardId}">
                                  
                                  <!--    -->
                                  <div class="col-md-12 ">
                             
                                
	                                 
	                                 	 <label for="email" id="memberMainDIV" style="width:100%;"><span>*</span>Team Board</label>  <br>
								                                
		                                
			                                 <div class="col-md-6" style="padding-left: 0; margin-right: 10px; margin-bottom: 0;"> <input type="text" class="form-control" value=""placeholder="" id="addMemberNameDIV" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
			                                 <label for="hiddenID" generated="true" class="error" id="addbtnError"></label>
			                                 </div>
			                                 			 
			                                 			 <button style="width: 80px;" type="button" class="btn btn-default dBtn"  onclick="addmemberToRoster()">Add</button>
			                                 			<div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;margin-top: 2px;">
																<ul>
						                                        	<li>murthy</li>
						                                        </ul>                                  	
						                                  </div>
						                                  
						                                  <span style="color: red;" id="teamboardErrorDiv"></span> 
			                                 
			                               	   <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
		                               
                                
                              </div>
                                  
                                  
                                  <div class="col-md-12 radioBox"><br>
                                    
                                   <input type="radio" class="radio" id="r1" name="rr" value="1">
                                   <label for="r1"><span></span>Umpire to the tournament can only be assigned from the umpire list</label>
                                   
                                   <input type="radio" class="" id="r2" name="rr" value="0">
                                   <label for="r2"><span></span>A buddy in cricket social can be assigned as an umpire for the games in the tournament</label>
                              		<br><span id="error1"></span>
                              		<label for="rr" generated="true" class="error"></label>
                                 </div>
                                 
                                 <div class="col-md-12 Create">
                                    <input type="button" class="btn btn-default dBtn" onclick="submitFunction()" value="Update Tournament">
                                    <input type="button" class="btn btn-default blueBtn" onclick="cancelFunction();" value="Cancel">
                          	     </div>
                          	     </form>
                          	     
                            </div>
                	</div>
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file ="Footer.jsp" %>

     

   <!--Gallery-->
   
   <script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>

   <script>
   
   $(document).ready(function(){
	 	
	 	
	 	$.validator.addMethod("maxPoints",function(value,element)
	 			{
	 			return maxPoints(value); 
	 			},"Win point should be below 10");
	 	
	 	$.validator.addMethod("minPoints",function(value,element)
	 			{
	 			return minPoints(value); 
	 			},"Please enter valid points");
	 	$.validator.addMethod("TeamValidate",function(value,element)
	 			{
	 			return teamnumValidation(); 
	 			},"Please select atleast 2 teams");
	 	//teamboardid
	 	
	 	function teamnumValidation(){
	 		if(teamboardid.length>=2){
	 			return true;
	 		}else{
	 			return false;
	 		}
	 	}
	 	function maxPoints(point){
	 		
	 		if(point<=10){
	 			return true;
	 		}else{
	 			return false;
	 		}
	 	}
        function minPoints(point){
	 		
	 		if(point>0){
	 			return true;
	 		}else{
	 			return false;
	 		}
	 	}
	 	
	 });
   
   function submitFunction(){
	   
	   if($("#tournamentForm").validate({
		   
		   errorPlacement : function(error,element){
			  
			   if(element.attr("name")=='hiddenID'){
				   $('#teamboardErrorDiv').html("");
				   $('#addMemberautoCompleteDIV').hide();
				   error.appendTo('#teamboardErrorDiv');
				   
			   }else{
				   error.insertAfter(element);
			   }
				   
			   
		   },
		   rules:{
			 tournamentName : {
				 required : true,
				  minlength : 2,
                  maxlength : 250,
			 },
			 winpoints : {
				 required : true,
				 maxPoints : true,
				 minPoints : true
			 },
			 hiddenID :{
				 required : true,
				 TeamValidate : true,
			 },
			 rr : {
				 required :  true
			 }
		   },
		   messages : {
			   tournamentName : {
				   required :"Please enter the tournament name",
				   minlength :"Name should be at least 2 characters",
            		maxlength : "Name should be below 250 characters",
			   },
			   winpoints : {
				   required : "Please enter win points for the match",
			   },
			   hiddenID :{
				   required :"Please enter the team board name",
			   }, 
			   rr: {
				   required : "Please select any one option"
			   }
		   },
		   
	   }).form()){
		   
		  
		   var check = $('input[name="rr"]:checked').val();
		   var ids = $("#hiddenID").val();

		   if($('input[name=rr]:checked').length<=0)
		   {
			   document.getElementById("error1").innerHTML = "Please select any one option";
			 /*   $("#error1").append("Please select any one from radio button");
			   $("#error1").fadeOut(2000); */
			   return false;
		   }else{
			   document.getElementById("error1").innerHTML = "";
			   $("#loading").show();
			  /*  $("#tournamentForm").submit();
			   return true; */
			   
			   var radiovalue = $('input[name="rr"]:checked').val();
			   
			   var idlist=[];
			   
			   
			   for(var i in arrayMemberList)
			   {
			   var userid =arrayMemberList[i].id;
			   idlist.push(userid);
			   }
			   
			   var request={
					   tournamentId : "${tournamentId}",
					   tournamentName : "${tournamentName}",
					   winPoints : "${winPoints}",
					   umpireCheck : radiovalue,
					   teamboardstrlist :idlist,
					   active : 0,
					   scheduleCoordinator : false,
			   }
			   
			   
			   console.log(JSON.stringify(request));
			   
			   $.ajax({
				   type : "POST",
				   url  : "${pageContext.request.contextPath}/EditTournamentDetails",
				   contentType : "application/json; charset=utf-8",
				   data : JSON.stringify(request),
				   success : function(response)
               	{
					   $("#loading").hide();
					   displaynotification('Tournament updated successfully',2000);
					   var bId = "${boardId}";
					   window.location.href = "${pageContext.request.contextPath}/CancelTournamentPublicProfile/boardId/"+bId;
               
               	}
				  
			  })  
			   
			   return false;
			   
		   }

	   }
	   
   }
  
   function cancelSubmit(){
	   return false;
   }
   
   $(document).ready(function(){
	   var teamArray=[];
	   $("#boardName").tokenInput(ctx+"/boardSearchInCreateTournament",{
		
		propertyToSearch: 'boardName', 
	   	theme: "facebook", 
	   	preventDuplicates: true,
	   	onAdd: function (item) {
	   		teamArray.push(item.boardId);
	   		$('#hiddenID').val(teamArray);
	   	},
	   	onDelete: function (item) {
	       	var index = teamArray.indexOf(item.boardId);
	   		if (index >= 0) {
	   			teamArray.splice( index, 1 );
	   		}
	   		$('#hiddenID').val(teamArray);
	   },onResult: function (item) {
	       if($.isEmptyObject(item)){
	           return [{id:'0',name: "No results found" }];
	     }else{
	           return item;
	     }
	   }
	   });
	   });

   function  cancel(){
	   return false;
   }
   function cancelFunction(){
	   var boardId = "${boardId}";
	   window.location.href = "${pageContext.request.contextPath}/CancelTournament/boardId/"+boardId;
   }
   
   
   
   function getBuddiesAutoComplete(elem,divId,hiddenId){
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
   								html+="<ul style='width: 48%;'>";
   								
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
  		//alert(img.src);
  		$('#'+textBox).val($(elem).text());
  		$('#'+divId).hide();	
  		$('#'+hiddenId).val(userId);	
  	  $('#addbtnError').text('');
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
   function setValueToTextBoxAndArray(elem,textBox,divId,userId,hiddenId,name)
   {
   	
  		//var i=checkMemberExistbyId(userId);
  			var i = arrayMemberList.indexOf(userId);
  			var i2=teamboardid.indexOf();
  			if(i2!=-1){
  				teamboardid.push(userId);
  				$('#hiddenID').val(teamboardid);
  			}
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
       var userid =$('#addMemberIDDIV').val();
       var name=$('#addMemberNameDIV').val();
     
   	if(userid!='')
   		{
   		 //  var i=checkMemberExistbyId(userid);
   		 	var i = teamboardid.indexOf(userid);
   			 $('#addbtnError').text('');
	    		if(i!=-1)
	    		{
	    			displaynotification('Already board has been selected',2000);
	    		}else{
	    			
	    		 	arrayMemberList.push({
	    	       	 name : name,
	    	       	 id : userid,
	    	       	 member : "Member"
	    	        });
	    			teamboardid.push(userid);
	    			sequencNumber=parseInt(sequencNumber)+parseInt(1);
					$('#hiddenID').val(teamboardid);
	    	        var htm="";
	    	    	htm +="<div class='col-md-12 noPadding' id='memberListDIV"+userid+"'>";	 
	    	    	htm +="<span class='palyerCount' id='sequenc"+userid+"'>"+teamboardid.length+"</span>";
	    	        htm +="<input type='text' class='form-control' style='width:44%; float:left;' readonly value='"+name.trim()+"' placeholder='' id='member"+userid+"'>";
	    	        htm +="<button type='button' class='btn btn-default ' style='width:80px; float:left;margin-left: 17px;' onclick=removeFromList('"+userid+"')>Remove</button>";
	    	        htm +="<input type='hidden' class='form-control' placeholder='' id='memberHiddeb"+userid+"' name='teamUserId' value='"+userid+"'>";
	    	        htm +="</div>";
	    	        $('#memberMainDIV').append(htm);
	    	       $('#addMemberIDDIV').val('');
	    	       $('#addMemberNameDIV').val('');
	    		
	    	    
	    		}
   		}else{
   			displaynotification('Choose any board to add',2000);
   		}
       
      
      
       
      
      
   }
   
   function removeFromList(id)
   {
   	//removingMemberById(id);
   		//	var i = arrayMemberList.indexOf(id);
   			var i=checkMemberExistbyId(id);
	    		if(i!=-1)
	    		{
	    			arrayMemberList.splice(i, 1);
	    			$("#memberListDIV"+id).remove();
	    			var i2 = teamboardid.indexOf(id);
		    		if(i2!=-1)
		    			{
		    				teamboardid.splice(i, 1);
							$('#hiddenID').val(teamboardid);
							
		    			}
		    		setsequenc();
	    		}
	    		
	    		
   	
   	
   }
   
   function setsequenc()
   {
   	for(var i in teamboardid)
   		{
   			$('#sequenc'+teamboardid[i]).html(parseInt(i)+parseInt(1));
   		}
   }
   
   
   function tournamentNameValidation(){
	   var name = $("#tournamentName").val();
	   var prename="${tournamentName}";
	   if(name == prename)
		   {
		   console.log("Both are same name");
		   return false;
		   }
	   var boardId = "${boardId}";
	   
	   var checkNameBean = {
			   createdBy : boardId,
			   tournamentName : name
	   }
	   
	   $.ajax({

		   type:"post",
		   url:"${pageContext.request.contextPath}/tournamentNameValidation",
		   data:JSON.stringify(checkNameBean),
		   contentType : "application/json",
		   success : function(res){
			   if(res == 'matched'){
				   displaynotification('Tournament name is already exists',2000);
				   $("#tournamentName").val("");
				   $("#tournamentName").focus();
			   }
		   },
		   error : function (err){
			   console.log(err);
		   }
		   
	   })
	   
	   
   }
   </script>
   
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
   
   <script type="text/javascript">
   
   $(document).ready(function(){
	   
	   var umpire="${umpireCheck}";
	   
	   for(var i in populateList)
		   {
		   var name =populateList[i].name;
		   var userid =populateList[i].id;
		   var status=populateList[i].matchStatus;
		   
		   arrayMemberList.push({
  	       	 name : name,
  	       	 id : userid,
  	       	 member : "Member"
  	        });
		   
		   
				teamboardid.push(userid);
				sequencNumber=parseInt(sequencNumber)+parseInt(1);
				$('#hiddenID').val(teamboardid);
		        var htm="";
		    	htm +="<div class='col-md-12 noPadding' id='memberListDIV"+userid+"'>";	 
		    	htm +="<span class='palyerCount' id='sequenc"+userid+"'>"+teamboardid.length+"</span>";
		        htm +="<input type='text' class='form-control' style='width:44%; float:left;' readonly value='"+name.trim()+"' placeholder='' id='member"+userid+"'>";
		        
		        if(status == "NotCreated"){
		        htm +="<button type='button' class='btn btn-default ' style='width:80px; float:left;margin-left: 17px;' onclick=removeFromList('"+userid+"')>Remove</button>";
		        }else{
		        	
		        	htm +="<button type='button' class='btn btn-default ' style='width:80px; float:left;margin-left: 17px;' onclick=removeFrompopup('"+name.replace(/ /g,"-")+"')>Remove</button>";
		        }
		        
		        htm +="<input type='hidden' class='form-control' placeholder='' id='memberHiddeb"+userid+"' name='teamUserId' value='"+userid+"'>";
		        htm +="</div>";
		        $('#memberMainDIV').append(htm); 
		   
		   
		   }
	   
	   console.log("Umpire value :"+umpire);
	   $("input[name=rr][value=" + umpire + "]").attr('checked', 'checked');
	   
   })
   
   
   
   function removeFrompopup(name)
   {
	   var show=name.replace(/-/g," ");
	   displaynotification(show+' already played match in this tournament',2000);
   }
   
   </script>
   
   
</body>
</html>
