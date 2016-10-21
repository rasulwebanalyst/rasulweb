<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>


	<!--Date picker-->
    <link href="${pageContext.request.contextPath}/css/datepicker.css" rel="stylesheet">
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<%--  <%@ include file="Header.jsp" %>
 --%>
 <%@ include file="BuddyHeader.jsp" %>
    
    
    
    <section class="middleContentBlock">
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        <form action="${pageContext.request.contextPath}/profileUpdate.htm" name="userprofileupdateform" id="userprofileupdateform"  enctype="multipart/form-data"  method="post">
                   
                    <!-- <div class="col-md-2 profileLogo pLUpdatedImg editProImg"><img src="images/profileIcon.png" id="profileimg"><br>
                    	<input id="upload" type="file" onchange="readURL(this)" name="userimgfile" />
                        <a href="#" id="upload_link">Add profile photo</a>
                    </div> -->
                    
                    <div class="col-md-2 profileLogo">
                    	<span class="pLUpdatedImg">
                    	<img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" id="profileimg">
                        
                         <input id="upload" type="file" onchange="readURL(this)" name="userimgfile" />
                        		<a href="#" id="upload_link">Add profile photo</a>
                        	
                        </span>
                   
                    </div>
						
                     <div class="col-md-10 whiteBox">
                     	<h1 class="pageHead noBorder">Complete your profile</h1>
                        
                        <div class="col-md-4 progressBlock">
                                <label>Profile Strength 20%</label>
                                <div class="progress"><div class="progress-bar progress-bar-default" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div></div>
                        </div>
                      </div>
                      
                      <input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}">
                       <div class="col-md-10 whiteBox">
                    
                            <h2 class="noBorder">Basic information</h2>
                           
                            <div class="form-group col-md-12 noPadding profileForm">
                            
                            <div class="col-md-12 noPadding">
                              <div class="col-md-4"><label for="email"><span>*</span>First Name</label> <input type="text" class="form-control" placeholder="" id="firstName" name="firstName" value="${UserProfileOBJ.firstName}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>Last Name</label> <input type="text" class="form-control" placeholder="" id="lastName" name="lastName" value="${UserProfileOBJ.lastName}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>Date of birth</label> <input type="text" class="form-control datepicker" placeholder="" id="dateOfBirth" name="dateOfBirth" value=""> 
                              	<i class="fa fa-calendar calIcon"></i>
                              </div>
                               <input type="hidden" name="userId" id="userId" value="${UserProfileOBJ.userId}">
                              </div>
                              
                              <div class="col-md-12">
                              <label for="email"><span>*</span>Gender  </label>
                              
                              	<input type="radio" checked id="Male" name="gender" value="Male">
                                <label for="Male"><span></span>Male</label>
                                
                                <input type="radio" id="female" name="gender" value="Female">
                                <label for="female"><span></span>Female</label>
                                
                              </div>


							<div class="col-md-12 noPadding">	
                              <div class="col-md-4"><label for="email"><span>*</span>Email</label> <input type="text" class="form-control" placeholder="" id="emailAddress" name="emailAddress" readonly value="${UserProfileOBJ.emailAddress}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>Phone Number</label> <input type="text" class="form-control" placeholder="" id="phoneNumber" name="phoneNumber"></div>
                              <div class="col-md-4"><label for="email">Landline</label> <input type="text" class="form-control" placeholder="" id="landLineNumber" name="landLineNumber"></div>
                            </div>
                            
                            <div class="col-md-12 noPadding">
                              <div class="col-md-4"><label for="email">Languages known</label> <input type="text" class="form-control" placeholder="" id="userLanguageMapString" name="userLanguageMapString"></div>
                              <!-- <div class="col-md-4"><label for="email">Places Lived</label> <input type="text" class="form-control" placeholder="" onfocus="geolocate()" id="placesMapString" name="placesMapString"></div> -->
                              <div class="col-md-4"><label for="email">Place Living</label> 
							                          
                              
                              <!-- <input type="text" class="form-control" placeholder="" id=""> -->
                            
                              <div id="locationField">
     							 <input class="form-control" id="autocomplete" placeholder="" onFocus="geolocate()" type="text"></input>
   							 </div>
    						<input type="hidden" id="latlang" name="latLang" value="">
                              
                 </div>
                 <div class="col-md-4"><label for="email"><span>*</span>Address 1</label> <input type="text" class="form-control" placeholder="" id="address1" name="address1" value="${UserProfileOBJ.address1}"></div>
                 </div>    
                              
                             <div class="col-md-12 noPadding">  
                              
                              <div class="col-md-4"><label for="email">Address 2</label> <input type="text" class="form-control" placeholder="" id="address2" name="address2" value="${UserProfileOBJ.address2}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>City</label>
                              	<div class="selectdiv">
                                      	<input type="text" class="form-control" placeholder="" id="city" name="city" value="${UserProfileOBJ.city}">
                                   <!--  <select class="selectboxdiv">
                                        <option>Chennai</option>
                                        <option>Madurai </option>
                                    </select> 
                                    <div class="out"></div>   -->
                                    
                                </div>
                              </div>
                               <div class="col-md-4"><label for="email"><span>*</span>State</label> <input type="text" class="form-control" placeholder="" id="state" name="state" value="${UserProfileOBJ.state}"></div>
                              
                              
                              </div>
                              
                               <div class="col-md-12 noPadding">
                              
                             
                              <div class="col-md-4"><label for="email">Country</label>
                              	<div class="selectdiv">
                                    <!-- <select class="selectboxdiv">
                                        <option>India</option>
                                        <option>USA </option>
                                    </select>
                                    <div class="out"></div> -->
                                    <input type="text" class="form-control" placeholder="" id="country" name="country" value="${UserProfileOBJ.country}">    
                                </div>
                              </div>
                              <div class="col-md-4"><label for="email">Zipcode</label> <input type="text" class="form-control" placeholder="" id="zipcode" name="zipcode"  value=""></div>
                              
                              </div>
                            </div>
                        </div>
                        
                     
                        <div class="col-md-10 whiteBox pull-right cboxBtnBlock">
                            <h2 class="noBorder">Please choose your player profile and cricket profile</h2>
                            <div class="form-group col-md-12 noPadding profileForm">
                              <div class="col-md-12 grayBG">
                              	 <c:forEach var="role" items="${RoleList}">
                              	 
                              <!-- 	<input type="checkbox" class="cboxBtn" id="Fan" name="rr">
                                <label for="Fan"><span></span>Fan</label> -->
                                 <c:choose>
      										<c:when test="${role.role_id eq '93bb8d82-c0e9-4d46-a231-ddaf6c5a709c'}">
     					 							<input type="checkbox" class="cboxBtn" id="${role.role_id}" name="userRoleMapString" value="${role.role_id}" onclick="getsubcategoryone(this.value)" checked>	
      										</c:when>

   										<c:otherwise>
   													<input type="checkbox" class="cboxBtn" id="${role.role_id}" name="userRoleMapString" value="${role.role_id}" onclick="getsubcategoryone(this.value)">
    									  </c:otherwise>
  									  </c:choose>
                                <label for="${role.role_id}"><span></span>${role.role}</label>
                                </c:forEach>
                                <!-- <input type="checkbox" class="cboxBtn" id="Player" name="rr">
                                <label for="Player"><span></span>Player</label>
                                
                                
                                <input type="checkbox" class="cboxBtn" id="Umpire" name="rr">
                                <label for="Umpire"><span></span>Umpire</label>
                                
                                <input type="checkbox" class="cboxBtn" id="Coach" name="rr">
                                <label for="Coach"><span></span>Coach</label>
                                
                                <input type="checkbox" class="cboxBtn" id="Merchandise" name="rr">
                                <label for="Merchandise"><span></span>Merchandise</label> -->
                                
                              </div>
                              
                              <div class="col-md-12 cboxBtnBlockLeft">
                              		<h3 class="noBorder">Player Profile</h3>
                               
                                 <div class="col-md-12 noPadding"  >
                                  
	                                 <div class="col-md-3 noPadding" id="divbe37583f-7df6-45f8-8e8a-d549197d99b6" style="display: none;"> 
	                                    
	                                    	<c:forEach var="sub1" items="${SubCAT1}">
	                                    		<input type="radio" class="cboxBtnLeft" id="${sub1.sub_role_level_one_id}" name="subcat1" value="${sub1.sub_role_level_one_id},${sub1.role_id}">
		                                   		<label for="${sub1.sub_role_level_one_id}"><span class="cboxImg"> <img src="https://thamaramurthy.s3.amazonaws.com/cricketsocial-images/subcat1/${sub1.sub_role_level_one_id}.png">  </span>${sub1.sub_role_level_one}</label>
		
	                               		 </c:forEach>
	                                </div>
                                
                                <div class="col-md-9" >
                               		
	                                    <div class="BatsmanOptions sub2chk" style="display:none;" id="sub2DIV707e510b-c018-4305-b4d2-6864bf85958c" >
	                                     <c:forEach var="sub2" items="${SubCAT2}">
	                                    	<c:if test="${sub2.sub_role_level_one_id=='707e510b-c018-4305-b4d2-6864bf85958c'}">
			                                    <input type="checkbox" class="cboxBtn" id="sub2${sub2.sub_role_level_two_id}" name="subcat2" value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id},${sub2.role_id}">
			                                    <label for="sub2${sub2.sub_role_level_two_id}"><span></span>${sub2.sub_role_level_two}</label>
			    
			                                  
			                                </c:if>
			                                </c:forEach>
	                                    </div>
									
									
                                    <div class="BowlerOptions sub2chk"  style="display:none" id="sub2DIV18d09d29-aaef-46d6-8785-b587e9ed5c22">
                                    	<c:forEach var="sub2" items="${SubCAT2}">
                                    	<c:if test="${sub2.sub_role_level_one_id=='18d09d29-aaef-46d6-8785-b587e9ed5c22'}">
                                       		 <input type="radio" class="cboxBtn" id="sub2${sub2.sub_role_level_two_id}" name="subcat2" value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id}">
                                     		 <label for="sub2${sub2.sub_role_level_two_id}"><span></span>${sub2.sub_role_level_two}</label><br>
                                        </c:if>
    									</c:forEach>
                                       <!--  <input type="checkbox" class="cboxBtn" id="Right" name="rr">
                                        <label for="Right"><span></span>Right</label> -->
                                    </div>
                                    
                                    <div class="BowlerOptions sub3chk" style="display:none" id="sub3DIV98235f69-e381-482f-8a41-d8699cf91100">
                                    <c:forEach var="sub3" items="${SubCAT3}">
                                    	<c:if test="${sub3.subRoleLevelTwoId=='98235f69-e381-482f-8a41-d8699cf91100'}">
                                        <input type="radio" class="cboxBtn" id="sub3${sub3.subRoleLevelThreeId}" name="subcat3" value="${sub3.subRoleLevelThreeId},${sub3.subRoleLevelTwoId}">
                                        <label for="sub3${sub3.subRoleLevelThreeId}"><span></span>${sub3.subRoleLevelThree}</label><br>
    
                                      
                                        </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="BowlerOptions sub3chk" id="sub3DIV0ffb49b5-0e30-4627-8855-049c866f0e50" style="display:none">
                                    <c:forEach var="sub3" items="${SubCAT3}">
                                    	<c:if test="${sub3.subRoleLevelTwoId=='0ffb49b5-0e30-4627-8855-049c866f0e50'}">
                                        <input type="radio" class="cboxBtn" id="sub3${sub3.subRoleLevelThreeId}" name="subcat3" value="${sub3.subRoleLevelThreeId},${sub3.subRoleLevelTwoId}">
                                        <label for="sub3${sub3.subRoleLevelThreeId}"><span></span>${sub3.subRoleLevelThree}</label><br>
    
                                        </c:if>
                                        </c:forEach>
                                    </div>

                                    <div class="BowlerOptions sub4chk" style="display:none" id="sub4DIV366c09a6-b5f4-4da9-a3c4-ee465077e30b">
                                    	  <c:forEach var="sub4" items="${SubCAT4}">
                                    	<c:if test="${sub4.subRoleLevelThreeId=='366c09a6-b5f4-4da9-a3c4-ee465077e30b'}">
                                        <input type="radio" class="cboxBtn" id="sub4${sub4.subRoleLevelFourId}" name="subcat4" value="${sub4.subRoleLevelFourId},${sub4.subRoleLevelThreeId}">
                                        <label for="sub4${sub4.subRoleLevelFourId}"><span></span>${sub4.subRoleLevelFour}</label><br>
                                           </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="BowlerOptions sub4chk" style="display:none" id="sub4DIV4400f0cb-5095-4279-815f-6a70651dd508">
                                    	  <c:forEach var="sub4" items="${SubCAT4}">
                                    	<c:if test="${sub4.subRoleLevelThreeId=='4400f0cb-5095-4279-815f-6a70651dd508'}">
                                        <input type="radio" class="cboxBtn" id="sub4${sub4.subRoleLevelFourId}" name="subcat4" value="${sub4.subRoleLevelFourId},${sub4.subRoleLevelThreeId}">
                                        <label for="sub4${sub4.subRoleLevelFourId}"><span></span>${sub4.subRoleLevelFour}</label><br>
                                           </c:if>
                                        </c:forEach>
                                    </div>
                                    
                                      <div class="AllrounderOptions sub2chk" id="sub2DIV49e872c0-6858-4c55-be4e-276c1a8fe337" style="display:none">
                                      <c:forEach var="sub2" items="${SubCAT2}">
	                                    	<c:if test="${sub2.sub_role_level_one_id=='49e872c0-6858-4c55-be4e-276c1a8fe337'}">
		                                        <input type="radio" class="cboxBtn" id="sub2${sub2.sub_role_level_two_id}" name="subcat2" value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id}">
		                                        <label for="sub2${sub2.sub_role_level_two_id}"><span></span>${sub2.sub_role_level_two}</label>	    
	                                        </c:if>
                                        </c:forEach>
                                    </div>
                                    


                                </div>
                                   
                             </div>
                               
                              </div>
                            
                            </div>
                        </div>
                        
                         <div class="col-md-10 whiteBox pull-right">
                            <div class="form-group col-md-12 noPadding profileForm">
                              <div class="col-md-12">
                               <label for="email">Cricket Teams Board</label>
                              
                               <input type="text" class="form-control" placeholder="Cricket Teams Board" name="teamBoard" id="teamAutoCompleteTextBoxId" onkeypress="boardAutocomplete(this,'Team','ctAutoComplateDiv')"/>
                              <div class="autoComplete" id="ctAutoComplateDiv" style="display:none;">
										<!-- <ul>
                                        	<li>Kumar</li>
                                        	<li>Lakshith</li>
                                        	<li>Govindaraj</li>
                                        	<li>Sathish</li>
                                        	<li>Vikki</li>
                                        </ul>          -->                         	
                                  </div>
                            
                          
                                </div>
                              <div class="col-md-12">
                               <label for="email">Cricket Teams Board</label>
                              
                               <input type="text" class="form-control" placeholder="Cricket Leagues Board" name="leagueBoard" id="leagueAutoCompleteTextBoxId" onkeypress="boardAutocomplete(this,'League','clAutoComplateDiv')"/>
                              <div class="autoComplete" id="clAutoComplateDiv" style="display:none;">
										<!-- <ul>
                                        	<li>Kumar</li>
                                        	<li>Lakshith</li>
                                        	<li>Govindaraj</li>
                                        	<li>Sathish</li>
                                        	<li>Vikki</li>
                                        </ul>    -->                               	
                                  </div>
                            
                          
                                </div>
                              <div class="col-md-12">
                              	<div class="selectdiv">
                                    <select class="selectboxdiv" name="ballPreference">
                                    
                                      <c:forEach items="${BallPreferences}" var="bp">
                                        <option value="${bp.ball_id}">${bp.ball_type}</option>
                                       </c:forEach>  
                                    </select>
                                    <div class="out"></div>    
                                </div>
                                        
                              </div>
                            </div>
                        </div>
                        
                        
                       <div class="form-group col-md-10 centerbtns pull-right">
                          <button type="submit" class="btn btn-default dBtn">Finish</button>
                         <!--  <button type="submit" class="btn btn-default blueBtn">Cancel</button> -->
                       </div>
                                   
                            
                       
                  </form>
                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            

            
            
        </div>
    </div>
 </section>
    
    
    
    
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

 	<!--Select Box-->
	<script>
	function userprofile(e){
		
		//alert("inside the function login validation----");
		
		e.preventDefault();
		 if($('#login_auth').validate({
		    	
			 rules: {
		         	
				 firstName : {
	                     required: true,
	                     regx: /^[a-zA-Z0-9]$/,
	                     minlength : 2,
	         			 maxlength : 20
	                 },
	            
	                 emailAddress: {
	                	 required: true,
	     				 minlength: 4,
	     				 maxlength : 100,
	     				 email:true
	                 } 
	                 
	                 
	                 
	             },
	             messages: {
	            	
	            	 firstName: {
	                     required: "Please enter your password",
	                     regx : "Invalid name",
	                     minlength :"Type password at least 2 character",
	             		 maxlength : "password should be below 20 character's"
	                 },              
	                 emailAddress: {
	                 	required: "Please enter email",
	                 	 minlength: "Invalid email",
	                 	maxlength : "Email should be below 100 character's",
	                     email:"Invalid email"
	                 }
	                
	             }        
			
		    }).form()) { 
			      
			
		    	document.getElementById("").submit();
			
		    };
		    return false;

	}
	function  getsubcategoryone(id)
	{
		
		//alert('id : '+id);
		var ro='div'+id;
		// document.getElementById(ro).style.display = 'block';
		
		if(document.getElementById(''+id).checked)
			{
						
				$('#div'+id).show();
			}else{
				$('#div'+id).hide();
			}
		
	}
	
	function getsubcattwo(id)
	{
		//alert(document.getElementById(''+id).checked);
		//$('#i'+id).show();
		if(document.getElementById(''+id).checked)
		{				
			
			if(id!='133296f4-ccbf-43be-8831-2b351120612d')
				{
				$('#i'+id).show();
					
				}else{
					$('#i'+id).hide();
				}
		}else{
			
			$('#i'+id).hide();
			
		}
	}
	
	function  getsubcategorytwo(id)
	{
		
		//alert('id : '+id);
	//	alert(document.getElementById('i'+id).checked);
		//var ro='div'+id;
		// document.getElementById(ro).style.display = 'block';
		//$('.sub2chk').show();
		var chk=document.getElementById('i'+id).value;
		var archk=chk.split(",");
		
		if(document.getElementById('i'+id).checked)
			{				
				
				/* if(id!='133296f4-ccbf-43be-8831-2b351120612d')
					{
						
						$('#i'+id).hide();
					}else{
						$('#i'+id).show();
					} */
			$('#i'+id).show();
					
			}else{
				
				$('#i'+id).hide();
				
			}
		
	}
	
	function readURL(input) {
		//alert("alert");
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	console.log(e);
	        	 //alert("e.target.result"+e.target.result);
	            $('#profileimg').attr('src', e.target.result);
	        };
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
        
        
        $(document).ready(function(){
        	
        	
        	/* jQuery.validator.addMethod("accept", function(value, element, param) {
        		 // return value.match(new RegExp(param));
        		alert(param.test(value));	
        		 return param.test(value);
        		}); */
        	 
        	$('#userprofileupdateform').validate({
		    	
   			 rules: {
   		         	
   				 firstName : {
   	                     required: true,   	                  
   	                     minlength : 2,
   	         			 maxlength : 100
   	                 },
   	              address1 : {
	                     required: true,   	                  
	                     minlength : 2,
	         			 maxlength : 100
	                 },
	              
   	              city : {
	                     required: true,   	                  
	                     minlength : 2,
	         			 maxlength : 50
	                 },
	                 country : {
   	                     required: true,   	                  
   	                     minlength : 2,
   	         			 maxlength : 50
   	                 },
   	              dateOfBirth : {
	                     required: true,  	                  
	                     
	                 },
	                
   	              lastName : {
	                     required: true,   	                  
	                     minlength : 2,
	         			 maxlength : 100
	                 },
	                 password : {
   	                     required: true,   	                  
   	                     minlength : 2,
   	         			 maxlength : 20
   	                 },
   	              phoneNumber : {
	                     required: true,   	                  
	                     minlength :10,
	         			 maxlength : 10,
	         			 numeric:true
	                 },
	               
	                 userRoleMapString: {
	                	 required : true
	                 },
   	                 emailAddress: {
   	                	 required: true,    	                	 
   	                	 minlength: 4,
   	     				 maxlength : 100,
   	     				 email:true
   	                 } 
   	                 
   	                 
   	                 
   	             },
   	             messages: {
   	            	
   	            	 firstName: {
   	                     required: "Please enter your first name",   	                 	                     
   	                     minlength :"Type first name at least 2 character",
   	             		 maxlength : "first name should be below 100 character's"
   	                 },
   	              address1: {
	                     required: "Please enter your address1",   	                 	                     
	                     minlength :"Type address1 at least 2 character",
	             		 maxlength : "address1 should be below 100 character's"
	                 },
	               
   	              city: {
	                     required: "Please enter your city",   	                 	                     
	                     minlength :"Type city at least 2 character",
	             		 maxlength : "city should be below 50 character's"
	                 },
	                 country: {
   	                     required: "Please enter your country",   	                 	                     
   	                     minlength :"Type country at least 2 character",
   	             		 maxlength : "country should be below 50 character's"
   	                 },
   	              dateOfBirth : {
	                     required: "Please chose date"   	                 	                     
	                    
	                 },
	                
   	              lastName : {
	                     required: "Please enter your lastName",   	                 	                     
	                     minlength :"Type lastName at least 2 character",
	             		 maxlength : "lastName should be below 100 character's"
	                 },
	                 password: {
   	                     required: "Please enter your password",   	                 	                     
   	                     minlength :"Type password at least 2 character",
   	             		 maxlength : "password should be below 20 character's"
   	                 },
   	              phoneNumber : {
	                     required: "Please enter your contact",   	                 	                     
	                     minlength :"Please enter valid phone number",
	             		 maxlength : "Please enter valid phone number",
	             		numeric : "Please enter valid phone number",
	                 },
	               
	                 userRoleMapString : {
	                	 required : "Please choose any one option"
	                 },
   	                 emailAddress: {
   	                 	required: "Please enter email",
   	                 	 minlength: "Invalid email",
   	                 	maxlength : "Email should be below 100 character's",
   	                     email:"Invalid email"
   	                 }
   	                
   	             }        
   			
   		    });
        	
        });
        
    </script>
	<!--Select Box-->





	<!--File Upload-->
	<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
			
	
	//	$('.datepicker').datepicker();
		
		 
       	
       	
		});
       
   </script>  

 <script>
// This example displays an address form, using the autocomplete feature
// of the Google Places API to help users fill in the information.

var placeSearch, autocomplete;
var componentForm = {
  street_number: 'short_name',
  route : 'long_name',
  locality : 'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
      {types: ['geocode']});

  // When the user selects an address from the dropdown, populate the address
  // fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}

// [START region_fillform]
function fillInAddress() {
  // Get the place details from the autocomplete object.
  var place = autocomplete.getPlace();

 /*  for (var component in componentForm) {
    document.getElementById(component).value = '';
    document.getElementById(component).disabled = false;
  } */
console.log(JSON.stringify(place));

console.log(JSON.stringify(place.geometry.location));
var geoAttributes=place.geometry.location;
$('#latlang').val(geoAttributes.lat()+","+geoAttributes.lng());
console.log(place.geometry.location.lat());
console.log(place.geometry.location.lng());

  // Get each component of the address from the place details
  // and fill the corresponding field on the form.
  for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      
      if(addressType == 'locality'){
	        document.getElementById('city').value = val;
	        $('.label.error').text('');
	  }

	  if(addressType == 'administrative_area_level_1') {
	   document.getElementById('state').value = val;
  		}
	  if(addressType == 'country')
		  {
		   document.getElementById('country').value = val;
		   $('.label.error').text('');
		  }
	  
    }
  }
}

function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}


$(document).ready(function(){
   
    $('input[name=subcat1]').click(function(){
	 var checkval=$(this).attr("value");
	  var res = checkval.split(",");
             
		$('.sub2chk').hide();
		$('input[name=subcat2]').attr('checked', false);
		$('#sub2DIV'+res[0]).show();
		$('.sub3chk').hide();
   		$('input[name=subcat3]').attr('checked', false);
   		$('.sub4chk').hide();
  		$('input[name=subcat4]').attr('checked', false);
        
    });
    
    $('input[name=subcat2]').click(function(){
   	 var checkval=$(this).attr("value");
   	  var res = checkval.split(",");
                
   		$('.sub3chk').hide();
   		$('input[name=subcat3]').attr('checked', false);
   		$('#sub3DIV'+res[0]).show();
   		$('.sub4chk').hide();
  		$('input[name=subcat4]').attr('checked', false);
           
       });
    
    $('input[name=subcat3]').click(function(){
      	 var checkval=$(this).attr("value");
      	  var res = checkval.split(",");
            
      		$('.sub4chk').hide();
      		$('input[name=subcat4]').attr('checked', false);
      		$('#sub4DIV'+res[0]).show();

              
          });

});



    </script>
    
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
        	<!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	$('.datepicker').datepicker('setEndDate', '10/08/1999');
});
</script>
        
</body>

</html>
