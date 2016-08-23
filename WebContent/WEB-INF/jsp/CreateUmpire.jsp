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
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
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
        
        <%-- <div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><img src="${pageContext.request.contextPath}/images/teamLogo4.png">
                        	 Kent Cricket Board
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	<!--<li><a href="#"><i class="fa imgIcon"><img src="images/MyScore.png"></i>Score</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/IAmFanOf.png"></i>Fan Of</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBuddyList.png"></i>Roster</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBoard.png"></i>My Board</a></li>-->
                            	<li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a>
								
                                <div class="leftMenu2">
                                    	<ul>
                                            <li class="head"><a href="#">Umpire Co-ordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${boardId}" class="active"><i class="fa fa-angle-right"></i> Create Umpire</a></li>
                                            <li><a href="${pageContext.request.contextPath}/UmpireList/boardId/${boardId}"><i class="fa fa-angle-right"></i> Umpire List</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Ground coordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateGround/boardId/${boardId}"><i class="fa fa-angle-right"></i> Create Ground</a></li>
                                            <li><a href="${pageContext.request.contextPath}/GroundList/boardId/${boardId}"><i class="fa fa-angle-right"></i> Ground List</a></li>
                                                                
                                            <li class="head"><a href="#">Schedule Co-ordinator</a></li>
                                             <li><a href="${pageContext.request.contextPath}/CreateTrophy/boardId/${boardId}"><i class="fa fa-angle-right"></i> Create Trophy</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${boardId}"><i class="fa fa-angle-right"></i> Create Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Amend Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Assign Umpire to Schedule </a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Assign Scorer to Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Schedule List</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Cancel Game by date</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Cancel Tournment</a></li>
                                                                                    
                                            <li class="head"><a href="#">Team Details</a></li>
                                            
                                            <li><a href="${pageContext.request.contextPath}/LeaguePoints/${boardId}">Point Table</a></li>
                                            <li><a href="#">Centuries</a></li>
                                            <li><a href="#">Half Centuries</a></li>
                                            <li><a href="#">5 Wickets</a></li>
                                            <li><a href="#">Top Batsmen</a></li>
                                            <li><a href="#">Top Bowlers</a></li>
                                            <li><a href="#">Top Umpires</a></li>
            
                                            <li class="head"><a href="#">Dispute Managements</a></li>
                                                                
                                        </ul>
                                                </div>
            
                                </li>
                            </ul>
                        
                        
                    </div> --%>
 <%@ include file="LeaugeManagementSideMenu.jsp" %>

      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Create Umpire</h1>
          	
                      	<div class="form-group col-md-12 noPadding profileForm">
                        <form id="umpireForm" onsubmit="return cancelFormSubmit();">
                        		<div class="form-group col-md-12 noPadding">
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>Umpire Name</label> <input type="text" class="form-control" placeholder="" id="umpireName" name="umpireName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
                                   <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div> 
                                  <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
                                  </div>
                                 
                                  <div class="col-md-4">
                                 	 <label for="email"><span>*</span>Address Line 1</label> <input type="text" class="form-control" placeholder="" id="address1" name="address1">
                                  </div>
                                 
                                  <div class="col-md-4">
                                  	<label for="email">Address Line 2</label> <input type="text" class="form-control" placeholder="" id="address2" name="address2">
                                  </div>
                                  </div>
                                  
                                 <div class="form-group col-md-12 noPadding">
                                  <div class="col-md-4">
                                 	 <label for="email"><span>*</span>City</label> <input type="text" class="form-control" placeholder="" id="city" name="city">
                                  </div>
                                  
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>State</label> <input type="text" class="form-control" placeholder="" id="state" name="state">
                                  </div>
                                  
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>Country</label> <input type="text" class="form-control" placeholder="" id="country" name="country">
                                  </div>
                                  </div>
                                  
                                  
                                  <div class="form-group col-md-12 noPadding">
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>Zip Code</label> <input type="text" class="form-control" placeholder="" id="zipcode" name="zipcode">
                                  </div>
                                  
                                  <div class="col-md-4 HomePhone">
                                  	<label for="email" style="width:100%;">Home Phone</label>
                                    	<input type="text" class="form-control tcol1 number" placeholder="" id="countryCodeHome" name="countryCodeHome">
                                        <input type="text" class="form-control tcol2 number" placeholder="" id="areaCodeHome" name="areaCodeHome">
                                        <input type="text" class="form-control tcol3 number" placeholder="" id="homePhone" name="homePhone">
                                  </div>
                                  
                                  <div class="col-md-4 HomePhone">
                                 	 <label for="email"  style="width:100%;">Work Phone</label> 
                                     <input type="text" class="form-control tcol1 number" placeholder="" id="countryCodeWork" name="countryCodeWork">
                                        <input type="text" class="form-control tcol2 number" placeholder="" id="areaCodeWork" name="areaCodeWork">
                                        <input type="text" class="form-control tcol3 number" placeholder="" id="workPhone" name="workPhone">
                                  </div>
                                  </div>
                                  
                                  <div class="form-group col-md-12 noPadding">
                                  <div class="col-md-4 HomePhone" >
                                 	 <label for="email"  style="width:100%;">Cell Phone</label> 
                                   <!--   <input type="text" class="form-control tcol1 number" placeholder="" id="areaCodeCell" name="areaCodeCell"> -->
                                   <select  id="areaCodeCell" name="areaCodeCell" class="form-control tcol1 number" style="width: 46%; font-size: 10px; padding: 6px 5px;">                           
                                        <option value="">Country Code</option>                                                     
                                        <c:forEach var="codes" items="${countryCodes}" varStatus="i">
                                         <option value="${codes.countryCode}">${codes.countryName} +${codes.countryCode}</option>
                                          </c:forEach>
                                   </select>
                                        <input type="text" class="form-control tcol3 number" style="width:54%" placeholder="" id="cellPhone" name="cellPhone">
                                     <span id="error" style="color:red" id="fadeId"></span>
                                      <span id="error1" style="color:red" ></span>
                                      <label for="cellPhone" generated="true" class="error" id="cellPhoneError"></label>
                                  </div>
                                  
                                  <div class="col-md-8">
                                	  <label for="email"><span>*</span>E-mail ID</label> <input type="text" class="form-control" placeholder="" id="emailId" name="emailId">
                                  </div>
                                  </div>
                                  
                                  <div class="form-group col-md-12 centerbtns">
                          <input type="button" class="btn btn-default dBtn" onclick="FormSubmitFunction()" value="Submit">
                       </div>
                                </form>  
                    		
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
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>

 <script>
 function FormSubmitFunction(){
	 $('#error1').html('');
	 
	 if($("#umpireForm").validate({
		 errorPlacement : function(error, element){
			 error.insertAfter(element);
		 },
		 rules:{
			umpireName : {
				required : true,
			},
			address1 :{
				required : true,
			},
			city :  {
				required : true,
			},
			state : {
				required: true,
			},
			country : {
				required: true,
			},
			countryCodeHome:{
				number : true,
			},
		    areaCodeHome:{
		    	number:true,
		    },
		     homePhone:{
		    	number:true,
		    }, 
		    countryCodeWork:{
		    	number:true,
		    },
		    areaCodeWork : {
		    	number:true,
		    },
		    workPhone :{
		    	number : true,
		    },
			 /* areaCodeCell:{
				required: true,
				maxlength:2,
			},  */
			/*  cellPhone :{
				required : true,
				maxlength : 10,
				minlength : 10,
			},  */
			emailId : {
				required : true,
				email : true,
			},
			zipcode: {
				required : true,
				maxlength : 10,
				minlength : 5,
				number : true,
			}
		 },
		 messages :{
			 umpireName : {
				 required : "Please enter the umpire name",
			 },
			 address1 : {
					 required : "Please enter the address line1",
				 },
		     city:{
		    	 required : "Please enter the city name",
		     },
		     state : {
					required: "Please enter the State name",
				},
			country : {
					required: "Please enter the Country name",
				},
			countryCodeHome:{
					number : "Please enter numbers only",
				},
			 areaCodeHome:{
			    	number: "Please enter numbers only",
			    },
			  homePhone:{
			    	number:"Please enter numbers only",
			    }, 
			 countryCodeWork:{
			    	number:"Please enter numbers only",
			    },
			 areaCodeWork : {
			    	number:"Please enter numbers only",
			    },
			 workPhone :{
			    	number : "Please enter numbers only",
			    },
		       /* areaCodeCell:{
					required: "Area Code is required",
					maxlength:"Please give valid area code",
				}, */ 
		    /*  cellPhone : {
		    	 required : "Please enter the cell phone number",
				 maxlength :"Please enter valid number",
				 minlength:"Please enter valid number",
		     }, */
		     emailId:{
		    	 required : "Please enter the E-mail ID",
		    	 email : "Please enter a valid E-mail ID"
		     },
		     zipcode: {
		    	 required : "Please enter the zip code",
	            	  minlength : "Please enter minimum 5 numbers",
	            	  maxlength : "Zip code should be maximum of 10 numbers ",
	            	  number : "Please enter numbers only"
		     }
		     
			 
			 
		 },
	 }).form()){
		 var num = $("#areaCodeCell").val();
		/*  if($("#areaCodeCell").val() == "" || $("#areaCodeCell").val() == null){
			 document.getElementById("cellPhoneError").innerHTML = "Please enter code number";
			 //$("#error").append("Please enter code Number");
			 //$("#error").fadeOut(2000);
		 }else if(num.length > 2){
			 
			 //document.getElementById("error1").innerHTML = "Please enter valid number";
			 $('#').html('');
			 document.getElementById("error").innerHTML = "";
			 //$("#error1").append("Please enter valid Number");
			// $("#error1").fadeOut(2000);
			 
			
		 } */
		 
		 if(zipcodeValidate()==true){
		
			 document.getElementById("error").innerHTML = "";
			 document.getElementById("error1").innerHTML = "";
		
		 var umpire = $("#umpireName").val();
		 var address1 = $("#address1").val();
		 var address2 = $("#address2").val();
		 var city = $("#city").val();
		 var state = $("#state").val();
		 var country = $("#country").val();
		 var zip = $("#zipcode").val();
		 var homeCountry = $("#countryCodeHome").val();
		 var homeAreaCode = $("#areaCodeHome").val();
		 var home= $("#homePhone").val();
		 var homePhone = "";
		 if(home != "" && homeCountry != "" && homeAreaCode != "" ){
		  homePhone = homeCountry+"-"+homeAreaCode+"-"+home;
		 }else{
			 homePhone = "";
		 }
		 var workCountry = $("#countryCodeWork").val();
		 var workAreaCode = $("#areaCodeWork").val();
		 var work= $("#workPhone").val();
		 var workPhone= "";
		 if(work != "" && workCountry != "" && workAreaCode != ""){
			  workPhone = workCountry+"-"+workAreaCode+"-"+work;
		 }else{
			 workPhone ="";
		 }
		
		 
		 var cellPhoneArea = $("#areaCodeCell").val();
		 var cell = $("#cellPhone").val();
		 var cellPhone  = cellPhoneArea+"-"+cell;
		 var mailId = $("#emailId").val();
		 var umpireId = $("#addMemberIDDIV").val();
		var boardId = "${boardId}";
		 
		  var Umpirebean = {
			umpireName : umpire,
			addressLine1 : address1,
			addressLine2:address2,
			city:city,
			state:state,
			country:country,
			zipcode:zip,
			homePhone:homePhone,
			workPhone:workPhone,
			cellPhone : cellPhone,
			emailId:mailId,
			umpireId : umpireId,
			boardId : boardId,
		 }
		  //alert(JSON.stringify(Umpirebean));
		  $("#loading").show();
		  $.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/insertUmpireDetails",
			data:JSON.stringify(Umpirebean),
			contentType :"application/json; charset=utf-8",
			success:function(res){
				//$("#loading").hide();
				//alert(res);
				window.location.href = "${pageContext.request.contextPath}/UmpireList/boardId/"+boardId;
			},
			error:function(err){
				alert(err);
			}
		  
		  });
		  
		  
		 }else{
			 
		 }
		 
	 }
 }
 
 
 
 function zipcodeValidate()
 {
	  var code=document.getElementById('areaCodeCell').value;
	  /* if(code!='')
		{
		  if(code.length>=2){
			  if(code.length<5){
				  return true;
			  }else{
					$('#error1').html("Please enter maximum 4 digit's");
					document.getElementById("areaCodeCell").focus();
				  return false;
			  }
		  }else{
				$('#error1').html("Please enter minimum 2 digit's");
				document.getElementById("areaCodeCell").focus();
			  return false;
		  }
		}else{
			var phone=$('#cellPhone').val();
			if(phone.length>=10){
				$('#error1').html('Please enter the country code');
				document.getElementById("areaCodeCell").focus();
			}
			return false;
		} */
		return true;
 }
 
 
/*  function getBuddiesAutoComplete(elem,divId,hiddenId){
	
 	var key=$(elem).val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	if(key.length>1) {
 			    $.ajax({
 						type : "POST",
 						url : "${pageContext.request.contextPath}/UmpireCreationNameSearch",
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
     									html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')>"+name+"</li>";
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
   
 }  */
 
 function getBuddiesAutoComplete(elem,divId,hiddenId){
		
	 	var key=$(elem).val();
	 	var textBoxId=$(elem).attr('id');
	 	console.log('value : '+key);
	 	console.log('textBoxId : '+textBoxId);
	 	if(key.length>2) {
	 			    $.ajax({
	 						type : "POST",
	 						url : "${pageContext.request.contextPath}/UmpireCreationNameSearch",
	 						dataType: "json",
	 			        contentType: "application/json; charset=utf-8",
	 			        data : key,					            
	 						success : function(res) {
	 							console.log(res);	
	 							var html="";
	 							var name = null;
	 							if(res != null){
	 								var users=res.userSearchBean;
	 								console.log(JSON.stringify(users));
	 								html+="<ul>";
	 								
	 								if(users!= null && users.length >0){
	 									for(var i in users){
	 										if(users[i].fullName != null){
	 											 name=users[i].fullName;
	 										}
	 										
	 								
	 								
	 								//html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
			                           /*  html +="<li><div onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";

			                          
			                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img onError="userErrorDefaultImg(this)" src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	}
			                      	html += " ";
			                      	html+=""+name+"";
			                      	html+='</div></div>';
			                          html+='</div>'
			                       	 +'</div>';
			                          if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
			                        		html += '<p style = "margin:-8px 0px 0px 0px">'+users[i].city+'</p>';
			                        	}else{
			                        		html += '<p style = "margin:-8px 0px 0px 0px">'+users[i].city+','+users[i].state+'</p>'; 
			                        	}

			              			html+='</li>'; */
			              			
	 										 html +="<li class='selection-item' onclick=setValueToTextBox('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'><a>";

	 				                          
	 				                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
	 			                          		html +='<img onError="userErrorDefaultImg(this)" src="'+users[i].userImageUrl+'"  class="nav-avatar">';

	 			                          	}else{
	 			                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
	 			                          	}
	 				                      	html += "</a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading'> ";
	 				                      	html+=""+name+"<br></a>";
	 				                          if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
	 				                        		html += '<span class="auto-black">'+users[i].city+'</span>';
	 				                        	}else{
	 				                        		html += '<span class="auto-black">'+users[i].city+','+users[i].state+'</span>'; 
	 				                        	}

	 				              			html+='</h4><div class="headRight" ></div></div></div></li>';
	 									}
	 								}
	 								
	 								/* html += "<div class='media'> <div class='media-left'>";
	 								if(users!= null && users.length >0){
	 									for(var i in users){
	 										var name=users[i].name;
	     									html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')>"+name+"";
	     									if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
				                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar"></li>';

				                          	}else{
				                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
				                          	}
	 									
	 									}
	 								}else{
	 									html+="<li>No results found...</li>";
	 								}
	 								console.log("in if"+html);
										html+="</div></div>"; */
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
		checkUmpireValidation(userId,hiddenId,textBox,divId);
		//$('#'+hiddenId).val(userId);	
		
 }
 function cancelFormSubmit(){
	 return false;
 }
 
 function checkUmpireValidation(userId, hiddenId,textBox,divId){
	 var boardId = "${boardId}";
	 var umpireBean = {
			 umpireId: userId,
			 boardId : boardId
	 };
	 $.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/checkUmpireValidation",
		data : JSON.stringify(umpireBean),
		contentType : "application/json",
		success : function(res){
			if(res == "false"){
				$("#"+hiddenId).val(userId);
				//$('#'+divId).hide();	
				//$('#'+textBox).val($(elem).text());
			}else{
				$('#'+textBox).val(" ");
				$('#'+divId).hide();	
				displaynotification("This user is already created as umpire to this board",2000);
			}
			
		},
		error: function(err){
			console.log("error :"+err);
		}
		 
	 });
	 
 } 
 
 
 $(document).ready(function(){
		$("#fadeId").fadeOut(1000);
	});

 </script>
   
   
</body>
</html>
