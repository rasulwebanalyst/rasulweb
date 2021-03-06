<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://example.com/functions" prefix="f" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
  
 <link href="${pageContext.request.contextPath}/css/datepicker.css" rel="stylesheet">
     <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
 <style type="text/css">
/*  #ctAutoComplateDiv ul{
 width: 98%
 }
 #clAutoComplateDiv ul{
 width: 98%
 }
  */
 </style>
</head>

<body>
<script type="text/javascript">
var imageValidate=1;
</script>
 <%@ include file="CSCommon.jsp" %>
 <%@ include file="BuddyHeader.jsp" %>
   
    <section class="middleContentBlock">
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <form action="${pageContext.request.contextPath}/updateUserDetail.htm" name="userprofileupdateform" id="userprofileupdateform"  enctype="multipart/form-data"  method="post" onsubmit="return createProfileValidation(this);">
                 <div class="col-md-12 noPadding">
                    
                      <div class="col-md-2 profileLogo">
                    	<span class="pLUpdatedImg">
                    	<img src="${pageContext.request.contextPath}/images/profileIcon.png" id="profileimg">
                        
                         <input id="upload1" type="file" onchange="readURL(this)" style="visibility:hidden;height:0;width:0;overflow:hidden" name="userimgfile"  />
                        		<a href="#" id="upload_link1">Add profile photo</a>
                        	
                        </span>
                   		<div style="display: none;">
                   			<img alt="" src="" id="profileimg2">
                   		</div>
                   		
                    </div>
                    

                      <div class="col-md-10 whiteBox">
                     	<h1 class="pageHead noBorder">Complete your profile</h1>
                        
                        <div class="col-md-4 progressBlock">
                                <label>Profile Strength 20%</label>
                                <div class="progress"><div class="progress-bar progress-bar-default" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div></div>
                                
                        </div>
                        <input type="hidden" value="20" id="profileStrength" name="profileStrength"> 
                      </div>
                       <input type="hidden" name="projectURL" id="projectURL" value="${pageContext.request.contextPath}">
                      
                       <div class="col-md-10 whiteBox">
                    
                            <h2 class="noBorder">Basic information</h2>
                           
                            <div class="form-group col-md-12 noPadding profileForm">
                            
                            <div class="col-md-12 noPadding">
                              <div class="col-md-3"><label for="email"><span>*</span>First Name</label> <input type="text" class="form-control" placeholder="" id="firstName" name="firstName" value="${UserProfileOBJ.firstName}"></div>
                              <div class="col-md-3 padding-left"><label for="email"><span>*</span>Last Name</label>
                                <c:choose>
                              	<c:when test="${!empty UserProfileOBJ.lastName}">
                              			<input type="text" class="form-control" placeholder="" id="lastName" name="lastName" value="${UserProfileOBJ.lastName}"> 
                              	</c:when>
                              	<c:otherwise>
                              				<input type="text" class="form-control" placeholder="" id="lastName" name="lastName" value=""> 
                              	</c:otherwise>
                              </c:choose> 
                              
                               </div>
                             <!--  <div class="col-md-4"><label for="email"><span>*</span>Date of Birth</label>  -->
                              				
                             <input type="hidden" id="oldFname" name="oldFname" value="${UserProfileOBJ.firstName}">
                              <input type="hidden" id="oldLname" name="oldLname" value="${UserProfileOBJ.lastName}">
                              
                              
                                <div class="col-md-6 padding-right">
                                <div class="col-md-4 padding-left">
          <label for="email"><span>*</span>Date of Birth</label> 
	       <select class="log-dt-holder" id="dobMonth" name="dobMonth">
	       <option value="01">Jan</option>
	       <option value="02">Feb</option>
	       <option value="03">Mar</option>
	       <option value="04">Apr</option>
	       <option value="05">May</option>
	       <option value="06">Jun</option>
	       <option value="07">Jul</option>
	       <option value="08">Aug</option>
	       <option value="09">Sep</option>
	       <option value="10">Oct</option>
	       <option value="11">Nov</option>
	       <option value="12">Dec</option>
	       </select>
          
	        
	       	       <input type="hidden" class="form-control datepicker" id="dateOfBirth" name="dateOfBirth" readonly value="<fmt:formatDate pattern="MM/dd/yyyy" value="${UserProfileOBJ.dob}" />"> 
	       </div><!-- col end -->
	       <div class="col-md-4">
	       <label class="log-dt-lab" for=""> <span style="color:red"></span></label>
            <input class="log-dt-holder" type="text" style="margin-top: 5px;" placeholder="Date(dd)" id="dobDate" name="dobDate" onfocus="numberCheckDobDate(this)" onblur="numberCheckDobDate(this)" value='${date}'>
	             
	       </div>
	       <div class="col-md-4 padding-right">
	       <label class="log-dt-lab" for=""><span style="color:red"></span></label>
            <input class="log-dt-holder" style="margin-top: 5px;" type="text" placeholder="Year(yyyy)" id="dobYear" name="dobYear" onfocus="numberCheckDobYear(this)" onblur="numberCheckDobYear(this)" value='${year}'>	            
	       </div>
	        
	         <input type="hidden" id="oldDob" name="oldDob" value="">	
	       <input type="hidden" class="form-control datepicker" id="dateOfBirth" name="dateOfBirth" readonly value="<fmt:formatDate pattern="MM/dd/yyyy" value="${UserProfileOBJ.dob}" />">
                    <span style="color: red;font-size:13px;display: none;" id="bodError">Invalid
		Date Format</span> <span style="color: red;font-size:13px; display: none;"
		id="bodError1">Please choose date of birth</span> <span
		style="color: red;font-size:13px;display: none;" id="bodError2">Please enter valid date format(dd/yyyy)</span>
       </div><!-- col end -->
                     <input type="hidden" name="userId" id="userId" value="${UserProfileOBJ.userId}"> 

       </div><!-- col end -->             
                    <div class="col-md-12">
                    <label for="email"><span>*</span>Gender  </label>
                    
                  	<input type="radio" checked id="Male" name="gender" value="Male">
                      <label for="Male"><span></span>Male</label>
                      
                      <input type="radio" id="female" name="gender" value="Female">
                      <label for="female"><span></span>Female</label>
                      
                    </div>


							<div class="col-md-12 noPadding">	
                              <div class="col-md-4">
                              <label for="email"><span>*</span>E-mail</label> <input type="text" class="form-control" placeholder="" id="emailAddress" name="emailAddress" readonly value="${UserProfileOBJ.emailAddress}"></div>
                              
                              <div class="col-md-4 PhoneNumber"><label for="email">Country Code & Mobile Number</label> 
                              <!-- <input type="text" class="form-control" placeholder="" id="phoneNumber" name="phoneNumber"> -->
                               
                               <div style="float: left;" class="PhoneNumberT">
                               
                               <!-- <input type="text" class="form-control tcol1 number" placeholder="" id="countryCode" name="countryCode"> -->
                               <select  name="countryCode" id="countryCode" class="form-control tcol1 number" style="width: 46%; font-size: 10px; padding: 6px 5px;">                           
                                <option value="">Country Code</option>                                                     
                             <c:forEach var="codes" items="${countryCodes}" varStatus="i">
                                <option value="${codes.countryCode}">${codes.countryName} +${codes.countryCode}</option>
                             </c:forEach>
                             </select>
                                        <input type="text" class="form-control tcol3 number" style="width:54%" placeholder="" id="phoneNumber" name="phoneNumber">
                                      <!--   <label for="phoneNumber" generated="true" class="error"></label> -->
                              <div style="color: red;" id="errorcountryCode"></div>
                              </div>
                              </div>
                              <!-- <div class="col-md-4 Landline"><label for="email">Landline</label> 
                               <div style="float: left;" class="LandlineT">
                              <input type="text" class="form-control" placeholder="" id="landLineNumber" name="landLineNumber">
                              <input type="text" class="form-control tcol1 number" placeholder="" id="landLineContry" name="landLineCountrycode">
                                        <input type="text" class="form-control tcol2 number" placeholder="" id="landLineSTDcode" name="landLineSTDcode">
                                        <input type="text" class="form-control tcol3 number" placeholder="" id="landLineNumber" name="landLineNumber">
                              </div></div> -->
                              <div class="col-md-4"><label for="email"><span></span>Place Of Birth</label> 
							
							    <div id="locationField">
     							 <input class="form-control" id="placeOfBirth" name="placeOfBirth" placeholder="" onFocus="geolocate()" type="text" value="${UserProfileOBJ.placeOfBirth}"></input>
   							 </div>
    						<input type="hidden" id="latlang" name="latLang" value="">
                              
                            </div>
                            </div>
                            
                            <div class="col-md-12 noPadding">
                                 <!-- <div class="col-md-4"><label for="email">Languages known</label> <input type="text" class="form-control" placeholder="" id="userLanguageMapString" name="userLanguageMapString"></div> -->
                              <div class="col-md-4"><label for="email"><span>*</span>Place Living</label> 
							    <div id="locationField">
     							 <input class="form-control" id="autocomplete" name="autocomplete" placeholder="" onFocus="geolocate()" type="text"></input>
   							 </div>
    						<input type="hidden" id="latlang" name="latLang" value="">
                              
                 </div>
                 <div class="col-md-4"><label for="email">
                 Address 1</label> <input type="text" class="form-control" placeholder="" id="address1" name="address1" value="${UserProfileOBJ.address1}"></div>
                 <div class="col-md-4"><label for="email">Address 2</label> <input type="text" class="form-control" placeholder="" id="address2" name="address2" value="${UserProfileOBJ.address2}"></div>
                 
                 </div>    
                              
                             <div class="col-md-12 noPadding">  
                              
                              <%-- <div class="col-md-4"><label for="email">Address 2</label> <input type="text" class="form-control" placeholder="" id="address2" name="address2" value="${UserProfileOBJ.address2}"></div> --%>
                              <div class="col-md-4"><label for="email"><span>*</span>City</label>
                              	<div class="selectdiv">
                                      	<input type="text" class="form-control" placeholder="" id="city" name="city" value="${UserProfileOBJ.city}">
                               
                                    
                                </div>
                              </div>
                               <div class="col-md-4"><label for="email"><span>*</span>State</label> <input type="text" class="form-control" placeholder="" id="state" name="state" value="${UserProfileOBJ.state}" readonly></div>
                               <div class="col-md-4"><label for="email"><span>*</span>Country</label>
                              	<div class="selectdiv">
                                <input type="text" class="form-control" placeholder="" id="country" name="country" value="${UserProfileOBJ.country}" readonly>    
                                </div>
                              </div>
                              </div>
                              
                               <div class="col-md-12 noPadding">
                              
                             
                           <%--  <div class="col-md-4"><label for="email"><span>*</span>Country</label>
                              	<div class="selectdiv">
                                <input type="text" class="form-control" placeholder="" id="country" name="country" value="${UserProfileOBJ.country}" readonly>    
                                </div>
                              </div> --%>
                              <div class="col-md-4"><label for="email"><span>*</span>Zip Code</label> <input type="text" class="form-control" placeholder="" id="zipcode" name="zipcode"  value=""></div>
                             
<!--                               <div class="col-md-4"><label for="email" style="display:block;">Contact visibility to public</label> 
 -->                               
                 <div class="col-md-8">
                 <label for="email" style="display: block;">Contact Information&nbsp;(<span style="float:none;">*</span><span style="color:#bbb;font-size:10px;float:none;">complete address should not be display to publ</span>)</label>
                                <input type="checkbox" class="cboxBtn" id="Fan" name="rr" value="phone">
                                <label for="Fan"><span></span>Phone Number</label>
                   
                                
                                 <input type="checkbox" class="cboxBtn" id="Player" name="rr" value="email">
                                <label for="Player"><span></span>E-mail</label>
                               
                             </div>
                              
                              </div>
                            </div>
                        </div>
                        </div>
                        
                        <!-- 
                        <div class="col-md-10 whiteBox pull-right">
                            <h2 class="noBorder">Do you want to link your cricket social accounts with social networking account?</h2>
                            <div class="form-group col-md-12 noPadding profileForm socialBLock grayBG">
                              <div class="col-md-4"><i class="fa fa-facebook-square tboxIocn"></i> <input type="text" class="form-control" placeholder="Facebook" id=""></div>
                              <div class="col-md-4"><i class="fa fa-twitter-square tboxIocn"></i> <input type="text" class="form-control" placeholder="Twitter" id=""></div>
                              <div class="col-md-4"><i class="fa fa-linkedin-square tboxIocn"></i> <input type="text" class="form-control" placeholder="Linkedin" id=""></div>
                            </div>
                        </div> -->
                        
                            <div class="col-md-10 whiteBox pull-right cboxBtnBlock">
                            <h2 class="noBorder">Please choose your player profile and cricket profile</h2>
                            <div class="form-group col-md-12 noPadding profileForm">
                             <div class="col-md-12 grayBG">
                              	  <c:forEach var="role" items="${RoleList}">
                           
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
                                     <div style="color: red;" id="roleErrorMessage"></div>  
                                     <label for="userRoleMapString" generated="true" class="error"></label>       
                              </div>
                              
                             <div class="col-md-12 cboxBtnBlockLeft" id="divbe37583f-7df6-45f8-8e8a-d549197d99b6" style="display:none;">
                              		<h3 class="noBorder">Player Profile</h3>
                                <div class="col-md-12 noPadding" >
                                 
                                 <div class="col-md-3 noPadding">    
                                 <c:forEach var="sub1" items="${SubCAT1}" begin="0" end="0">
	                             <input type="checkbox" class="cboxBtnLeft" id="${sub1.sub_role_level_one_id}" name="subcat1" value="${sub1.sub_role_level_one_id}">
		                         <label for="${sub1.sub_role_level_one_id}"><span class="cboxImg"> <img src="https://thamaramurthy.s3.amazonaws.com/cricketsocial-images/subcat1/${sub1.sub_role_level_one_id}.png">  </span>${sub1.sub_role_level_one}</label>
	                             </c:forEach>
                                 
                                 </div>
                                                                         
	                                  		  <div class="BatsmanOptions sub2chk" style="display:none;" id="sub2DIV707e510b-c018-4305-b4d2-6864bf85958c" >
	                                       <c:forEach var="sub2" items="${SubCAT2}">
	                                    	<c:if test="${sub2.sub_role_level_one_id=='707e510b-c018-4305-b4d2-6864bf85958c'}">
			                                    <input type="radio" class="cboxBtn sub2707e510b-c018-4305-b4d2-6864bf85958c" id="sub2${sub2.sub_role_level_two_id}" name="subcat2BatsmanOptions" value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id},${sub2.role_id}">
			                                    <label for="sub2${sub2.sub_role_level_two_id}"><span></span>${sub2.sub_role_level_two}</label>			    
			                                  
			                                </c:if>
			                                </c:forEach>
	                                    </div>
              
              
                             </div> 

                               <div class="col-md-12 noPadding"> 
                                 <div class="col-md-3 noPadding" >    
                                 <c:forEach var="sub1" items="${SubCAT1}" begin="1" end="1">
	                             <input type="checkbox" class="cboxBtnLeft" id="${sub1.sub_role_level_one_id}" name="subcat1" value="${sub1.sub_role_level_one_id}">
		                         <label for="${sub1.sub_role_level_one_id}"><span class="cboxImg"> <img src="https://thamaramurthy.s3.amazonaws.com/cricketsocial-images/subcat1/${sub1.sub_role_level_one_id}.png">  </span>${sub1.sub_role_level_one}</label>
	                             </c:forEach>
                                 
                                  </div>
                                
                                <div class="BowlerOptions sub2chk"  style="display:none" id="sub2DIV18d09d29-aaef-46d6-8785-b587e9ed5c22">
                                    		<c:forEach var="sub2" items="${SubCAT2}">
	                                    	<c:if test="${sub2.sub_role_level_one_id=='18d09d29-aaef-46d6-8785-b587e9ed5c22'}">
	                                       		 <input type="radio" class="cboxBtn sub218d09d29-aaef-46d6-8785-b587e9ed5c22" id="sub2${sub2.sub_role_level_two_id}" name="subcat2BowlerOptions" value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id}">
	                                     		 <label for="sub2${sub2.sub_role_level_two_id}"><span></span>${sub2.sub_role_level_two}</label><br>
	                                        </c:if>
    									</c:forEach>                                   
                                    </div>
                                    
                                    <div class="BowlerOptions sub3chk sub318d09d29-aaef-46d6-8785-b587e9ed5c22" style="display:none" id="sub3DIV98235f69-e381-482f-8a41-d8699cf91100">
                                   	<c:forEach var="sub3" items="${SubCAT3}">
	                                    	<c:if test="${sub3.subRoleLevelTwoId=='98235f69-e381-482f-8a41-d8699cf91100'}">
		                                        <input type="radio" class="cboxBtn sub318d09d29-aaef-46d6-8785-b587e9ed5c22" id="sub3${sub3.subRoleLevelThreeId}" name="subcat3" value="${sub3.subRoleLevelThreeId},${sub3.subRoleLevelTwoId}">
		                                        <label for="sub3${sub3.subRoleLevelThreeId}"><span></span>${sub3.subRoleLevelThree}</label><br>
	                                        </c:if>
                                        </c:forEach>
                                    </div>
                                    <div class="BowlerOptions sub3chk sub318d09d29-aaef-46d6-8785-b587e9ed5c22" id="sub3DIV0ffb49b5-0e30-4627-8855-049c866f0e50" style="display:none">
                                        <c:forEach var="sub3" items="${SubCAT3}">
                                    	<c:if test="${sub3.subRoleLevelTwoId=='0ffb49b5-0e30-4627-8855-049c866f0e50'}">
	                                        <input type="radio" class="cboxBtn sub318d09d29-aaef-46d6-8785-b587e9ed5c22" id="sub3${sub3.subRoleLevelThreeId}" name="subcat3" value="${sub3.subRoleLevelThreeId},${sub3.subRoleLevelTwoId}">
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
                                    
                                    </div>
                                    
                                 <div class="col-md-12 noPadding"> 
                                 <div class="col-md-3 noPadding">    
                                 <c:forEach var="sub1" items="${SubCAT1}" begin="2" end="2">
	                             <input type="checkbox" class="cboxBtnLeft" id="${sub1.sub_role_level_one_id}" name="subcat1" value="${sub1.sub_role_level_one_id}">
		                         <label for="${sub1.sub_role_level_one_id}"><span class="cboxImg"> <img src="https://thamaramurthy.s3.amazonaws.com/cricketsocial-images/subcat1/${sub1.sub_role_level_one_id}.png">  </span>${sub1.sub_role_level_one}</label>
	                             </c:forEach>
                                 
                                  </div>
                                 </div>
                                
                                 
                            
                                
                                
                            <div class="col-md-12 noPadding"> 
                                 <div class="col-md-3 noPadding" >    
                            <c:forEach var="sub1" items="${SubCAT1}" begin="3" end="3">
	                             <input type="checkbox" class="cboxBtnLeft" id="${sub1.sub_role_level_one_id}" name="subcat1" value="${sub1.sub_role_level_one_id}">
		                         <label for="${sub1.sub_role_level_one_id}"><span class="cboxImg"> <img src="https://thamaramurthy.s3.amazonaws.com/cricketsocial-images/subcat1/${sub1.sub_role_level_one_id}.png">  </span>${sub1.sub_role_level_one}</label>
	                             </c:forEach>   
								</div>
                                
                                 <div class="AllrounderOptions sub2chk" id="sub2DIV49e872c0-6858-4c55-be4e-276c1a8fe337" style="display:none">
                                      <c:forEach var="sub2" items="${SubCAT2}">
	                                    	<c:if test="${sub2.sub_role_level_one_id=='49e872c0-6858-4c55-be4e-276c1a8fe337'}">
		                                        <input type="radio" class="cboxBtn sub249e872c0-6858-4c55-be4e-276c1a8fe337" id="sub2${sub2.sub_role_level_two_id}" name="subcat2Allrounder" value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id}">
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
                               <label for="email">Cricket Teams Associated</label>
                              
                               <input type="text" class="form-control" placeholder="Cricket Teams Board" name="teamBoard" id="teamAutoCompleteTextBoxId" onkeyup="boardAutocomplete(this,'Team','ctAutoComplateDiv')"/>
                              <div class="autoComplete" id="ctAutoComplateDiv" style="display:none;"></div>
							                  	
                                  </div>
                                  	<input type="hidden" id="teamBoardId" name="teamBoardId">	     
                              <div class="col-md-12">
                               <label for="email">Cricket Leagues Associated</label>
                              
                               <input type="text" class="form-control" placeholder="Cricket League Board" name="leagueBoard" id="leagueAutoCompleteTextBoxId" onkeypress="boardAutocomplete(this,'League','clAutoComplateDiv')"/>
                              <div class="autoComplete" id="clAutoComplateDiv" style="display:none;">
									                            	
                                  </div>
                                  <input type="hidden" id="leagueBoardId" name="leagueBoardId">	       	
                                </div>
                              <div class="col-md-12">
                               <label for="email">Interests</label>
                              
                              		<div class="selectdiv">
                                    <select class="selectboxdiv" name="ballId">
                                    
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
                          <button id="submitbutton" type="submit" class="btn btn-default dBtn">Finish</button>                        
                       </div>
                         </form>          
                   </div>           
                       

                        
                   </div>  

                 
        	<!--/Content Block-->
            
            

            
            
        
    
 </section>
    
    
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
	                     required: "Please enter password",
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
		console.log("***id*** " + id);
		//alert('id : '+id);
		var ro='div'+id;
		// document.getElementById(ro).style.display = 'block';
		
		if(document.getElementById(''+id).checked)
			{
						
				$('#div'+id).show();
			}else{
				$('#div'+id).hide();
				if(id=='be37583f-7df6-45f8-8e8a-d549197d99b6')
					{
					$('input[name=subcat1]').attr('checked', false);
					$('.sub2chk').hide();
					$('input[name=subcat2Allrounder]').attr('checked', false);
					$('input[name=subcat2BatsmanOptions]').attr('checked', false);
					$('input[name=subcat2BowlerOptions]').attr('checked', false);
					//$('#sub2DIV'+res[0]).show();
					$('.sub3chk').hide();
			   		$('input[name=subcat3]').attr('checked', false);
			   		$('.sub4chk').hide();
			  		$('input[name=subcat4]').attr('checked', false);
					}
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
	       if(window.FileReader){
	    	   var reader = new FileReader();
		        reader.onload = function (e) {
		        	console.log(e);
		        	var result=e.target.result;
		        	 var imageType=result.substring(result.indexOf('data:')+5,result.indexOf('/'));
		                console.log(imageType);
		           
		            if(imageType=='image')
	            	{
	            		imageValidate=1;
	            		 $('#profileimg').attr('src', e.target.result);
	            		 $('#profileimg2').attr('src', e.target.result);
	            	}else{
	            		imageValidate=0;
	            		 displaynotification("Invalid image",2000);
	            	}
		        };
		        
		        reader.readAsDataURL(input.files[0]);
	       }else{
	    	   //alert('browser not supporting-----> ');
	    	   var e=document.getElementById('upload1');
	    	   $('#profileimg').attr('src', e.value);
	    	   $('#profileimg2').attr('src', e.value);
	    	   
	       }
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
        	
        	$('#loading').hide();
        	$.validator.addMethod("placeField",function(value,element)
        			{
        			return placeField(); 
        			},"Please choose place");
        });
        
        function placeField(){
        	
        	var auto=$('#autocomplete').val();
        	
        	var state=$('#state').val();
		      console.log(auto);
		      if(auto.length>0 && state.length<=0){
		    	  return false;
		      }else{
		    	return true;  
		      }
        	
        }
        
        
        
        $(document).ready(function(){
        	
        	
        	/* jQuery.validator.addMethod("accept", function(value, element, param) {
        		 // return value.match(new RegExp(param));
        		alert(param.test(value));	
        		 return param.test(value);
        		}); */
        	 
        	$('#userprofileupdateform').validate({
        		errorPlacement: function(error, element) {
    				/*  error.insertAfter(element); */
    				if (element.attr("name") == "userRoleMapString")  {
    					error.appendTo( "#roleErrorMessage");
    				  }else if(element.attr("name") == "phoneNumber"){
    					  error.appendTo( "#errorcountryCode");					  
    					  
    				  } else {
    				     error.insertAfter(element);
    				  }
          },
          
   			 rules: {
   				
   				 firstName : {
   	                     required: true,   	                  
   	                     minlength : 2,
   	         			 maxlength : 100
   	                 },
   	            /*   address1 : {
	                     required: true,   	                  
	                     minlength : 2,
	         			 maxlength : 100
	                 }, */
	                 state : {
	                	 required : true,
	                 },
	                 autocomplete : {
	                	 required : true,
	                	 placeField : true
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
   	              /* bodDate : {
	                     required: true,  	                  
	                     
	                 }, */
	                
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
   	                /* phoneNumber : {
	                     required: true,   	                  
	                     minlength :10,
	         			 maxlength : 10,
	         			// numeric : true
	                 },  */
	               
	                 userRoleMapString: {
	                	 required : true
	                 },
   	                 emailAddress: {
   	                	 required: true,    	                	 
   	                	 minlength: 4,
   	     				 maxlength : 100,
   	     				 email:true
   	                 },
   	              zipcode :{
   	            	  required : true,
   	            	  minlength : 4,
   	            	maxlength : 10,
   	            	//number : true
   	              }
   	                 
   	                 
   	                 
   	             },
   	             messages: {
   	            	
   	            	 firstName: {
   	                     required: "Please enter the first name",   	                 	                     
   	                     minlength :"Type first name at least 2 character's",
   	             		 maxlength : "First name should be below 100 character's"
   	                 },
   	             /*  address1: {
	                     required: "Please enter your address1",   	                 	                     
	                     minlength :"Type address1 at least 2 character",
	             		 maxlength : "address1 should be below 100 character's"
	                 }, */
	               state : {
	            	   required :"Please enter the state",
	               },
	               autocomplete : {
	                	 required : "Please enter the living place name",
	                 },
   	              city: {
	                     required: "Please enter the city",   	                 	                     
	                     minlength :"Type city at least 2 character's",
	             		 maxlength : "city should be below 50 character's"
	                 },
	                 country: {
   	                     required: "Please enter the country",   	                 	                     
   	                     minlength :"Type country at least 2 character's",
   	             		 maxlength : "country should be below 50 character's"
   	                 },
   	             /*  bodDate : {
	                     required: "Please choose date of birth"   	                 	                     
	                    
	                 }, */
	                
   	              lastName : {
	                     required: "Please enter the last name",   	                 	                     
	                     minlength :"Type last name at least 2 character's",
	             		 maxlength : "Last name should be below 100 character's"
	                 },
	                 password: {
   	                     required: "Please enter the password",   	                 	                     
   	                     minlength :"Type password at least 2 character's",
   	             		 maxlength : "password should be below 20 character's"
   	                 },
   	                /* phoneNumber : {
	                     required: "Please enter the phone number",   	                 	                     
	                     minlength :"Please enter valid phone number",
	             		 maxlength : "Please enter valid phone number",
	             	//	numeric : "Please enter valid phone number"
	                 }, */  
	               
	                 userRoleMapString : {
	                	 required : "Please choose any one option"
	                 },
   	                 emailAddress: {
   	                 	required: "Please enter the E-mail address",
   	                 	 minlength: "Invalid E-mail",
   	                 	maxlength : "E-mail should be below 100 character's",
   	                     email:"Invalid email"
   	                 },
   	              zipcode :{
   	            	  required : "Please enter the zip code",
   	            	  minlength : "Please enter minimum 4 numbers",
   	            	  maxlength : "Zip code should be maximum of 10 numbers ",
   	            	 // number : "Please enter numbers only"
   	              
   	                  },
   	              
   	                
   	             }        
   			
   		    });
        	
        });
     
        function zipcodeValidate()
        {
      	  var code=document.getElementById('countryCode').value;
      	  if(code!='')
    		{
      		  if(code.length>=2){
    			  if(code.length<5){
    				  return true;
    			  }else{
    					$('#errorcountryCode').text("Please enter maximum 4 character's");
    					document.getElementById("countryCode").focus();
    				  return false;
    			  }
    		  }else{
    				$('#errorcountryCode').text("Please enter minimum 2 character's");
    				document.getElementById("countryCode").focus();
    			  return false;
    		  }
    		} else{
    			var phone=$('#phoneNumber').val();
      			if(phone.length>=10){
      				$('#errorcountryCode').text('Please enter the country code');
      				document.getElementById("countryCode").focus();
      			}
    			return false;
    		}  
    		
        }
          
      
         function numberCheckDobDate(elem){
     	 	var textBoxId=$(elem).attr('id');
     		$("#"+textBoxId).keypress(function (e) {
     		     //if the letter is not digit then display error and don't type anything
     		     var val = $('#'+textBoxId).val();
     		    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 46 || val.length > 1) {
     		        //display error message
     		      $('#'+textBoxId).blur();
     		         $("#bodErrorDyn").text("Please enter valid date of birth");
     	             $("#bodErrorDyn").show();
     	              $("#dateOfBirth").val("");
     		               return false;
     		    }else{
     		    	 $("#bodErrorDyn").text("");
     	             $("#bodErrorDyn").show();
     		    }
     		   });
     	}
         function numberCheckDobYear(elem){
     	 	var textBoxId=$(elem).attr('id');
     		$("#"+textBoxId).keypress(function (e) {
     		     //if the letter is not digit then display error and don't type anything
     		     var val = $('#'+textBoxId).val();
     		    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which != 46 || val.length > 3) {
     		        //display error message
     		      $('#'+textBoxId).blur();
     		         $("#bodErrorDyn").text("Please enter valid date of birth");
     	             $("#bodErrorDyn").show();
     	              $("#dateOfBirth").val("");
     		               return false;
     		    }else{
     		    	 $("#bodErrorDyn").text("");
     	             $("#bodErrorDyn").show();
     		    }
     		   });
     	}
     	 
         function dateOfBirthValidation(){
	   		  
	   	      var dobMonth = $("#dobMonth").val();
	   	      var dobDate = $("#dobDate").val();
	   	      var dobYear = $("#dobYear").val();
	   	      var dopValue = dobMonth+"/"+dobDate+"/"+dobYear;
	   	      $("#dateOfBirth").val(dopValue);
	   		    var date = new Date();
	   		    var res = date.getFullYear() - dobYear;
	   		  
	   		    if(res<13){
	   		    	$("#bodError").hide();
  		    		$("#bodError1").hide();
  		    		$("#bodError2").hide();
	   		    	displaynotification("User age should be above 13",2000);
	   		    	return false;
	   		    }
	   		    else{
	   		    	if(dobMonth == "00" ||dobDate=="0" || dobDate =="00" || dobYear=="0000" ||dobYear=="000" ||dobYear=="00" || dobYear=="0"){
	   		    		$("#bodError").show();
	   		    		$("#bodError1").hide();
	   		    		$("#bodError2").hide();

	   		    		
	   			    	return false;
	   		    	}else if(dobDate.length==0 || dobYear.length==0){
	   		    		$("#bodError").hide();
	   		    		$("#bodError1").show();
	   		    		$("#bodError2").hide();

	   		    	}else if(dobDate.length<=1 || dobYear.length<=3){
	   		    		$("#bodError2").show();
	   		    		$("#bodError").hide();
	   		    		$("#bodError1").hide();
	   		    		return false;
	   		    	}
	   		    	
	   		    	else{
	   		    		$("#bodError2").hide();
	   		    		$("#bodError").hide();
	   		    		$("#bodError1").hide();
	   		  	      $("#dateOfBirth").val(dopValue);
	   		    		return true;
	   		    	}
	               
	   		    }
	   	       
	   	      
	   	} 
 	       
 	      
 	
        function imageValidation()
        {
      	  if(imageValidate==1)
      		  {
      		  	return true;
      		  }else{
      			  displaynotification("Please upload valide image",2000);
      			  return false;
      		  }
        }

        function createProfileValidation(ele)
        {
        	$('#errorcountryCode').text('');
        	 var date = $("#dobDate").val();
        	 var year = $("#dobYear").val();
        	
        	 if(date=="" && year==""){
         		$("#bodError1").show();

        	 }
	   	     
        	var code=document.getElementById('countryCode').value;
        	 
        	
	   	      
        	imageValidation();
        		
        	if($('#userprofileupdateform').valid())
        		{
        		
        		if(imageValidation()==true && playerCheck()==true && dateOfBirthValidation()==true)
    			{
        			$("#bodError2").hide();
            		$("#bodError1").hide();
            		$("#bodError").hide();
        			var image=$('#profileStrength').val();  
        			var vl=$('#profileimg2').attr('src');
    					var userimgfile=$('#userimgfile').val();
    					if(vl!=''){
    						console.log(userimgfile);
    					
    						
    							console.log('object having');
    						
    							
    						
    							console.log('100%');
    						$('#profileStrength').val('100');
    					}else{
    						console.log('not having');
    						console.log('70%');
    						$('#profileStrength').val('70');
    					}
    				
    				
    				return true;
    			}else{
    				return false;
    			}
        		
        		
        		}else{
        			
        		}
        	}
        	/*  //$('#userprofileupdateform').form()
        	
        	if($('#userprofileupdateform').form())      	
        		{
        		
	        		
        	} */
        
        	
        
        
        function playerCheck(){
   		 
			if(document.getElementById(''+'be37583f-7df6-45f8-8e8a-d549197d99b6').checked)
			{
				
           		 var i=0;
           		 var batsman=0;
           		 var bowler=0;
           		 var all=0;
           		 var style=0;
           		 var slow=0;
            
				if(document.getElementById('707e510b-c018-4305-b4d2-6864bf85958c').checked)
					{
					i++;
					}
				if(document.getElementById('18d09d29-aaef-46d6-8785-b587e9ed5c22').checked)
					{
					i++;
					}
				if(document.getElementById('49e872c0-6858-4c55-be4e-276c1a8fe337').checked)
				{
				i++;
				}

				if(document.getElementById('133296f4-ccbf-43be-8831-2b351120612d').checked)
				{
				i++;
				}
				
				if(i==0)
				{
					displaynotification("Please choose any one from player profile",2000);
				$("#submitbutton").blur();
					return false;
				}
				else
					{
					
					
					if(document.getElementById('707e510b-c018-4305-b4d2-6864bf85958c').checked)
					{
					
						if(document.getElementById('sub2fbab9fed-7035-4d67-b97f-eb3fb549a5fd').checked || document.getElementById('sub230a89e97-5474-4e03-994c-703ee49e4ffb').checked || document.getElementById('sub2dc3ab230-7e06-44dc-8e6c-d69cc91cd31b').checked || document.getElementById('sub26386a70c-0497-4398-b7ef-a84b6719d9e7').checked)
						{
							batsman++;
						}

						if(batsman==0)
							{
							displaynotification("Please select atleast one style from Batsman",2000);
							$("#submitbutton").blur();
							return false;
							}
					}
					
					
					if(document.getElementById('18d09d29-aaef-46d6-8785-b587e9ed5c22').checked)
					{
					
						if(document.getElementById('sub20ffb49b5-0e30-4627-8855-049c866f0e50').checked || document.getElementById('sub298235f69-e381-482f-8a41-d8699cf91100').checked)
						{
							bowler++;
						}

						if(bowler==0)
							{
							displaynotification("Please select atleast one style from Bowler",2000);
							$("#submitbutton").blur();
							return false;
							}
						else
						{
						
						//left or right
						if(document.getElementById('sub20ffb49b5-0e30-4627-8855-049c866f0e50').checked || document.getElementById('sub298235f69-e381-482f-8a41-d8699cf91100').checked)
						{
						
							if(document.getElementById('sub3acc55381-70d7-4802-9e4c-c7e60d2d6d87').checked || document.getElementById('sub34c56e13b-abdb-4ec6-8c56-1abf89d0c5ae').checked || document.getElementById('sub3366c09a6-b5f4-4da9-a3c4-ee465077e30b').checked ||document.getElementById('sub343d5369d-6878-4ee3-8c13-de6f6795d212').checked ||document.getElementById('sub3dffa0c33-23a6-41e9-ba8c-0a9971e918d5').checked ||document.getElementById('sub34400f0cb-5095-4279-815f-6a70651dd508').checked)
							{
								style++;
							}
	
							if(style==0)
								{
								displaynotification("Please select atleast one style from Bowler",2000);
								$("#submitbutton").blur();
								return false;
								}
							else
								{
								if(document.getElementById('sub3366c09a6-b5f4-4da9-a3c4-ee465077e30b').checked || document.getElementById('sub34400f0cb-5095-4279-815f-6a70651dd508').checked)
									{
									if(document.getElementById('sub42a054e15-394f-47e5-aea9-278ad4e8a867').checked || document.getElementById('sub42156e268-28de-4a5a-84f8-3a2992872f9d').checked || document.getElementById('sub412fb136d-2c5f-4f58-910a-0723425deb4d').checked ||document.getElementById('sub434b7d604-59d1-410c-8478-6a0d60016f5f').checked)
									{
										slow++;
									}
									if(slow==0)
										{
										displaynotification("Please select atleast one style from Bowler",2000);
										$("#submitbutton").blur();
										return false;
										}
									}
								
								}
								}
						}

						
						
					}
					
					
					if(document.getElementById('49e872c0-6858-4c55-be4e-276c1a8fe337').checked)
					{
					
						if(document.getElementById('sub2c5969fa2-a80f-42ad-ae5c-5b2aafda43a0').checked || document.getElementById('sub26e6d031f-f2a7-4a82-85b7-0c0566bf3b93').checked || document.getElementById('sub227192246-7d51-435b-b896-479864c9be31').checked || document.getElementById('sub26df595cc-0bd1-4238-afde-511a95578cd1').checked)
						{
							all++;
						}

						if(all==0)
							{
							displaynotification("Please select atleast one style from All Rounder",2000);
							$("#submitbutton").blur();
							return false;
							}
					}
					
					
					return true; 
					}
			}
		else
			{
			
				return true;			
			}
			
			
			
	 }
        
    </script>
	<!--Select Box-->



	<!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>


	<!--File Upload-->
	<script>
        $(document).ready(function () {
			/* $("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
			 */
			 
			 $('#upload_link1').click(function () {
					$('#upload1').trigger('click');
				});
			 
		//	$('.datepicker').datepicker();
		/* $('.datepicker').datepicker();
		$('.datepicker').on('changeDate', function(ev){
			$(this).datepicker('hide');
		}); */
			$('.datepicker').datepicker({
				 endDate: '+0d',
				 autoclose: true
				 });
		
		
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
  administrative_area_level_1: 'long_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
   autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
      {types: ['geocode']});
   autocomplete1 = new google.maps.places.Autocomplete(
	      /** @type {!HTMLInputElement} */(document.getElementById('placeOfBirth')),
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
document.getElementById('zipcode').value = '';
document.getElementById('city').value = '';
document.getElementById('state').value = '';
document.getElementById('country').value = '';
  // Get each component of the address from the place details
  // and fill the corresponding field on the form.
  for (var i = 0; i < place.address_components.length; i++) {
    var addressType = place.address_components[i].types[0];
    if (componentForm[addressType]) {
      var val = place.address_components[i][componentForm[addressType]];
      
      if(addressType == 'locality'){
	        document.getElementById('city').value = val;
	        $('label.error').text('');
	  }

	  if(addressType == 'administrative_area_level_1') {
	   document.getElementById('state').value = val;
  		}
	  if(addressType == 'country')
		  {
		   document.getElementById('country').value = val;
		   $('label.error').text('');
		  }
	  
	  if(addressType == 'postal_code')
	  {
		  
		  var numbers = /^[0-9]+$/; 
		  if(numbers.test(val)){
			  document.getElementById('zipcode').value = val;
			   $('.label.error').text('');
		  }else{
		  }
		  
	  /*  document.getElementById('zipcode').value = val;
	   $('label.error').text(''); */
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
             
		/* $('.sub2chk').hide();
		$('input[name=subcat2]').attr('checked', false);
		$('#sub2DIV'+res[0]).show();
		$('.sub3chk').hide();
   		$('input[name=subcat3]').attr('checked', false);
   		$('.sub4chk').hide();
  		$('input[name=subcat4]').attr('checked', false); */
  		console.log(checkval);
  		 if($(this).is(":checked"))
  			 {
  				$('#sub2DIV'+res[0]).show();
  				
  			 }else{
  				$('#sub2DIV'+res[0]).hide();
  				$('.sub2'+res[0]).attr('checked', false);
  				 if(checkval=='18d09d29-aaef-46d6-8785-b587e9ed5c22')
  					{
  							$('.sub3chk').hide();
  	  		   				$('input[name=subcat3]').attr('checked', false);
  	  		   				$('.sub4chk').hide();
  			  				$('input[name=subcat4]').attr('checked', false);
  					} 
  				
  			 }
  			 
        
    });
    
    $('input[name=subcat2]').click(function(){
   	 var checkval=$(this).attr("value");
   	  var res = checkval.split(",");
                
   		/*  $('.sub3chk').hide();
   		$('input[name=subcat3]').attr('checked', false);
   		
   		$('.sub4chk').hide();
  		$('input[name=subcat4]').attr('checked', false);
  		 */
  		 if('18d09d29-aaef-46d6-8785-b587e9ed5c22'==res[1])
  			 {
  				$('.sub318d09d29-aaef-46d6-8785-b587e9ed5c22').hide();
  				$('#sub3DIV'+res[0]).show();
  				$('input[name=subcat3]').attr('checked', false);
  				$('.sub4chk').hide();
  		  		$('input[name=subcat4]').attr('checked', false);
  			 } 
  		 
  		/*  if($(this).is(":checked"))
			 {
				$('#sub3DIV'+res[0]).show();
				
			 }else{
				$('#sub3DIV'+res[0]).hide();
				$('.sub3'+res[0]).attr('checked', false);		   		
			 }
				*/
           
       });
    $('input[name=subcat2BowlerOptions]').click(function(){
      	 var checkval=$(this).attr("value");
      	  var res = checkval.split(",");
                   
      		/*  $('.sub3chk').hide();
      		$('input[name=subcat3]').attr('checked', false);
      		
      		$('.sub4chk').hide();
     		$('input[name=subcat4]').attr('checked', false);
     		 */
     		 if('18d09d29-aaef-46d6-8785-b587e9ed5c22'==res[1])
     			 {
     				$('.sub318d09d29-aaef-46d6-8785-b587e9ed5c22').hide();
     				$('#sub3DIV'+res[0]).show();
     				$('input[name=subcat3]').attr('checked', false);
     				$('.sub4chk').hide();
     		  		$('input[name=subcat4]').attr('checked', false);
     			 } 
     		 
     		/*  if($(this).is(":checked"))
   			 {
   				$('#sub3DIV'+res[0]).show();
   				
   			 }else{
   				$('#sub3DIV'+res[0]).hide();
   				$('.sub3'+res[0]).attr('checked', false);		   		
   			 }
   				*/
              
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
    
<script type="text/javascript">

$(function(){
	
	$("body").click(function(){
		$("#ctAutoComplateDiv").fadeOut();
		$("#clAutoComplateDiv").fadeOut();
		});

		$("#teamAutoCompleteTextBoxId").click(function(e){
		 	e.stopPropagation();
		 	$("#clAutoComplateDiv").fadeOut();
		 
		});
		$("#leagueAutoCompleteTextBoxId").click(function(e){
		 	e.stopPropagation();
		 	$("#ctAutoComplateDiv").fadeOut();
		 
		});
	   
	
	
});
</script>
    <script>
    
    $(document).ready(function() {
    	var month1;
    	var month = '${month}';
    	//alert("length--->"+month.length);
    	if(month.length==0){
    		$("#dobMonth").val("01");
    		//alert(month);

    	}else if(month.length==1){

    		month1 = "0"+month;
    		$("#dobMonth").val(month1);
    	}else{
    		month1=month;
    		$("#dobMonth").val(month1);

    	}
    	 
    });  
    $(document).ready(function(){
    	var date = '${date}';
    	var date1;
    	if(date.length==1){
    		date1 ="0"+date;
    		 $("#dobDate").val(date1);
    	}else{
    		date1 = date;
    		 $("#dobDate").val(date1);

    	}
    	});
    
    
    $(document).ready(function(){
    	var date = '${date}';
    	var date1;
    	if(date.length==1){
    		date1 ="0"+date;
    	}else{
    		date1 = date;

    	}
    	
    	var month1;
    	var month = '${month}';
    	if(month.length==1){
    		month1 = "0"+month;
    	}else if(month.length==0){
    		month1="01";
    	}else{
    		month1 =month;
    	}
    	
    	var year='${year}';
    	if(date1 != ""){
    	$("#oldDob").val(month1+"/"+date1+"/"+year);}else
    		{
    		$("#oldDob").val("11/11/1800");
    		}
    	
    	});

    
    </script>
    
    <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
</body>

</html>