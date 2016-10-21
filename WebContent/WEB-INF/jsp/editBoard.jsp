<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cricket Social</title>
   <link rel="stylesheet" href="css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="css/token-input-facebook.css" type="text/css" />

<script>var ctx="${pageContext.request.contextPath}";</script>
</head>
<body>
<div>
<div id="loading" style="display: block;">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <div class="object" id="object_one"></div>
            <div class="object" id="object_two"></div>
            <div class="object" id="object_three"></div>
            <div class="object" id="object_four"></div>
        </div>
    </div>
</div>
	<%@ include file="BoardHeader.jsp" %>
<section class="middleContentBlock">
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                   <form action="updateBoardProfile"  id="boardFormId" method="post"  enctype="multipart/form-data" >
             		 <div class="col-md-2 profileLogo">
                        <span class="pLUpdatedImg">
                    	<img src="${BoradInfo.boardImageURL}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';" id="profileimg">
                         <input id="upload" type="file" onchange="readURL(this)" name="boardImagefile" />
                         <a href="#" id="upload_link">Add profile photo</a>
                        </span>
                    </div>
                  
                    <div class="col-md-10 whiteBox">
                     	<h1 class="pageHead noBorder">Create Board</h1>
                      </div>
                      
                      
                       <div class="col-md-10 whiteBox">
                    
                            <h2 class="noBorder">Basic Information</h2>
                            
                            <div class="form-group col-md-12 noPadding profileForm">
                                
                                <div class="col-md-12 noPadding" style="margin-bottom:0">
                                <div class="col-md-4">
                                  <label for="email"><span>*</span>Board Name</label>
                                  <input type="text" class="form-control" placeholder="" id="boardName" name="boardName" value="${BoradInfo.boardName}" readonly>
                                </div>
                                <div class="col-md-4">
                                  <label for="email">Short Description</label>
                                  <input type="text" class="form-control" placeholder="" id="shortDescription" name="shortDescription" value="${BoradInfo.shortDescription}">
                                </div>
                                <div class="col-md-4">
                                  <label for="email">Long Description</label>
                                  <input type="text" class="form-control" placeholder="" id="longDescription" name="longDescription" value="${BoradInfo.longDescription}">
                                </div>
                                </div>
                                
                                 <div class="col-md-12 noPadding" style="margin-bottom:0">
                                <div class="col-md-4">
                                  <label for	="email"><span>*</span>E-mail Id</label>
                                  <input type="text" class="form-control" placeholder="" id="emailId" name="emailId" value="${BoradInfo.emailId}">
                                </div>
                                <div class="col-md-4">
                                  <label for="email">Website</label>
                                  <input type="text" class="form-control" placeholder="" id="websiteId" name="website" value="${BoradInfo.website}">
                                </div>
                                <div class="col-md-4"> <span>*</span><label for="email">Board Location</label> 
                                   <div id="locationField">
     								 <input class="form-control" id="autocomplete" name="autocomplete" placeholder="" onFocus="geolocate()" type="text" value="${BoradInfo.city}"></input>
   								 </div>
    								<input type="hidden" id="latlang" name="latLang" >
    								<input type="hidden" value="${BoradInfo.latlang}" id="oldlatLang" name="oldlatLang">
                                </div>
                                
                                </div>
                                
                                  <div class="col-md-12 noPadding" style="margin-bottom:0">
                                <div class="col-md-4">
                                  <label for="email">Address 1</label>
                                  <input type="text" class="form-control" placeholder="" id="address1" name="address1" value="${BoradInfo.address1}">
                                </div>
                                
                                <div class="col-md-4">
                                  <label for="email">Address 2</label>
                                  <input type="text" class="form-control" placeholder=" " id="address2" name="address2" value="${BoradInfo.address2}">
                                </div>
                                
                                 
                             
                                <div class="col-md-4">
                                  <label for="email"><span>*</span>City</label>
                                  <input type="text" class="form-control" placeholder="" id="cityId" name="city" value="${BoradInfo.city}">
                                </div>
                                
                               
                                </div>
                                
                                  <div class="col-md-12 noPadding" style="margin-bottom:0">
                                  
                                   <div class="col-md-4">
                                  <label for="email"><span>*</span>State</label>
                                  <input type="text" class="form-control" placeholder="" id="stateId" name="state" value="${BoradInfo.state}" readonly>
                                </div>
                                  
                                  
                                <div class="col-md-4">
                                  <label for="email"><span>*</span>Country</label>
                                  <input type="text" class="form-control" placeholder="" id="countryId" name="country" value="${BoradInfo.country}" readonly>
                                </div>
                                
                                <div class="col-md-4">
                                  <label for="email"><span>*</span>Zip Code</label>
                                  <input type="text" class="form-control" placeholder="" id="zipcode" name="zipcode" value="${BoradInfo.zipcode}">
                                </div>
                              </div>

							<div class="col-md-12 noPadding" style="margin-bottom: 0">
								<div class="col-md-4 PhoneNumber">
									<label for="email">Phone number 1</label>

									<div style="float: left;" class="PhoneNumberT">

												<select name="countryCode1" id="countryCode1"
													class="form-control tcol1 number"
													style="width: 46%; font-size: 10px; padding: 6px 5px;">
													<option value="">Country Code</option>
													<c:forEach var="codes" items="${countryCodes}"
														varStatus="i">
														<option value="${codes.countryCode}">${codes.countryName}
															+${codes.countryCode}</option>
													</c:forEach>
												</select>
												<c:choose>
											<c:when test="${BoradInfo.phoneNumber1 ne 0}">
												<input type="text" class="form-control tcol3 number"
													style="width: 54%" placeholder="" id="phoneNumber1"
													name="phoneNumber1" value="${BoradInfo.phoneNumber1}">
											</c:when>
											<c:otherwise>
												<input type="text" class="form-control tcol3 number"
													style="width: 54%" placeholder="" id="phoneNumber1"
													name="phoneNumber1" value="">
											</c:otherwise>
										</c:choose>
									</div>
								</div>


							<div class="col-md-4 PhoneNumber">
								<label for="email">Phone number 2</label>

								<div style="float: left;" class="PhoneNumberT">
							<select name="countryCode2" id="countryCode2"
								class="form-control tcol1 number"
								style="width: 46%; font-size: 10px; padding: 6px 5px;">
								<option value="">Country Code</option>
								<c:forEach var="codes" items="${countryCodes}"
									varStatus="i">
									<option value="${codes.countryCode}">${codes.countryName}
										+${codes.countryCode}</option>
								</c:forEach>
							</select>
									<c:choose>
										<c:when test="${BoradInfo.phoneNumber2 ne 0}">

											<input type="text" class="form-control tcol3 number"
												style="width: 54%" placeholder="" id="phoneNumber2"
												name="phoneNumber2" value="${BoradInfo.phoneNumber2}">
										</c:when>
										<c:otherwise>
											<input type="text" class="form-control tcol3 number"
												style="width: 54%" placeholder="" id="phoneNumber2"
												name="phoneNumber2" value="">
										</c:otherwise>
									</c:choose>
								</div>
							</div>

							</div>

						</div>
                            
    
                        </div>
                        <input type="hidden" value="${BoradInfo.createdBy}" id="createdBy" name="createdBy" >
                        <input type="hidden" value="${BoradInfo.boardId}" id="boardId" name="boardId" >
                        
                        
                        
                        <div class="col-md-10 whiteBox pull-right noPadding visibilityContainer" >
                    
              <div class="col-md-12 visibility">
              
              
                <div class="col-md-6 noPadding PageVisi">
                  <div class=" col-md-3 PG-Visi">
                    <h6>Page Visibility</h6>
                  </div>
                  
                  <c:forEach var="PageVisibility" items="${ BoardFormAttributes.page_visibility}" varStatus="loop">
                   
                   
                   	<c:choose>
                   			<c:when test="${PageVisibility.codeId eq BoradInfo.pageVisibility}">
                   					<input type="radio" checked class="cboxBtnLeft" id="pv${loop.index}" name="pageVisibility" value="${PageVisibility.codeId }">
                   			</c:when>
                   			<c:otherwise>
                   					<input type="radio" class="cboxBtnLeft" id="pv${loop.index}" name="pageVisibility" value="${PageVisibility.codeId }">
                   			</c:otherwise>
                   	</c:choose>                    
                    <label for="pv${loop.index}"><span></span>${PageVisibility.codeDesc }</label>
                  </c:forEach>
                </div>
                
                
                <div class="col-md-6 noPadding PageVisi1">
                  <div class=" col-md-3 PG-Visi" style="display: table; min-height: 83px;">
                    <h6 style="min-height: 50px; display: table-cell;  vertical-align: middle;">classification</h6>
                  </div>
                      <c:forEach items="${BallPreferences}" var="ball" varStatus="loop">              
                  <c:choose>
                  		<c:when test="${ball.ball_type eq BoradInfo.classification}">
                  					 <input type="radio" checked class="cboxBtnLeft" id="r3${loop.index}" name="classification" value="${ball.ball_type}">
                  		</c:when>
                  		<c:otherwise>
                  					 <input type="radio" class="cboxBtnLeft" id="r3${loop.index}" name="classification" value="${ball.ball_type}">
                  		</c:otherwise>
                  
                  </c:choose>
                  	 <label for="r3${loop.index}"><span></span>${ball.ball_type}</label>
                    <!-- <input type="radio" class="cboxBtnLeft" id="r3" name="classification" value="Cricket Ball">
                    <label for="r3"><span></span>Cricket Ball</label>
                 
                
                    <input type="radio" class="cboxBtnLeft" id="r4" name="classification" value="Tennis Ball">
                    <label for="r4"><span></span>Tennis Ball</label> -->
                 </c:forEach>
                </div>
              </div>
              
              
              <div class="col-md-12 pageVisi1">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-2 PG-Visi width">
                    <h6>Category</h6>
                  </div>
                  
                   <%-- <c:forEach var="Category" items="${ BoardFormAttributes.category}" varStatus="loop">
                   		<c:choose>
                   				<c:when test="${Category.codeDesc eq BoradInfo.category}">
                   						<input type="radio" class="cboxBtnLeft" id="c${loop.index }"  checked name="category" value="${Category.codeDesc }" onchange="enableCoOrdinatorDiv(${Category.codeId });">
                   							${Category.codeDesc }		
                   				</c:when>
                   				<c:otherwise>
                   						<input type="radio" class="cboxBtnLeft" id="c${loop.index }" name="category" value="${Category.codeDesc }" onchange="enableCoOrdinatorDiv(${Category.codeId });">
                   				</c:otherwise>
                   				
                   		</c:choose>
                   
                  	
                    
                  	
                  </c:forEach> --%>
              		<label for=""><span></span>${BoradInfo.category}</label>
                </div>
              </div>
              <div class="col-md-12 pageVisi1">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-2 PG-Visi width">
                    <h6>Page Ability</h6>
                  </div>
                  
                   <c:forEach var="PageAbility" items="${BoardFormAttributes.posting_ability}" varStatus="loop">
	                   <div class=" col-md-5  noPadding PG-radio2">
	                   	<c:choose>
	                   		<c:when test="${PageAbility.codeId eq BoradInfo.postingAbility}">
	                   				<input type="radio" class="cboxBtnLeft" checked id="pa${loop.index }" name="postingAbility" value="${PageAbility.codeId }">		
	                   		</c:when>
	                   		<c:otherwise>
	                   				<input type="radio" class="cboxBtnLeft" id="pa${loop.index }" name="postingAbility" value="${PageAbility.codeId }">
	                   		</c:otherwise>
	                   		
	                   	</c:choose>
	                   
	                    
	                    <label for="pa${loop.index }"><span></span>${PageAbility.codeDesc }</label>
	                  </div>
                   </c:forEach>
              
                </div>
              </div>
              <div class="col-md-12 pageVisi1">
              	<div class="col-md-12 noPadding abil" id="notificationsId">
                	<div class=" col-md-2 PG-Visi width1" style="height:90px">
                    <h6 style="padding-top:20px;">Notifications</h6>
                  </div>
                   <c:forEach var="Notification" items="${ BoardFormAttributes.notification}" varStatus="loop">
	                   <div class=" col-md-8  noPadding PG-radio2">
                    		 <c:choose>
                    				<c:when test="${Notification.codeId eq BoradInfo.notification}">
                    							<input type="radio" checked class="cboxBtnLeft" id="n${loop.index }" name="notification" value="${Notification.codeId }">
                    				</c:when>
                    				<c:otherwise>
                    							<input type="radio" class="cboxBtnLeft" id="n${loop.index }" name="notification" value="${Notification.codeId }">
                    				</c:otherwise>
                    				
                    		
                    		</c:choose> 
                    		<%-- <input type="radio" class="cboxBtnLeft" id="n${loop.index }" name="notification" value="${Notification.codeId }"> --%>
                    		<label for="n${loop.index }"><span></span>${Notification.codeDesc }</label>
                  	</div>
                   </c:forEach>
              </div>
              <div class="col-md-12 visibility">
                <div class="col-md-6 noPadding PageVisi adjHei">
                  <div class=" col-md-3 PG-Visi">
                    <h6>Owner</h6>
                  </div>
                  <div class="col-md-9 own">
                  	 <input type="text" class="form-control" name="boardOwner" placeholder="A buddy who creating this page" id="boardOwnerId" value="${BoradInfo.user.firstName}" readonly>
                  </div>
                  <script type="text/javascript">
                  		var arrayPrepapulateCoOwner=[];
                  		var coOwenersArray=[];
                  		var schedulerArray=[];
                  		var umpireArray=[];
                  		var groundCoOrdinatorArray=[];
                  </script>
                  <c:forEach items="${BoardCoOwnerList}" var="coowner">
                  			<script type="text/javascript">
                  			coOwenersArray.push("${coowner.coOwnerId}");
                    		
                  			
                  			arrayPrepapulateCoOwner.push( {
                  				id : "${coowner.coOwnerId}",
                  				name : "${coowner.user.firstName}"
                  			});
                  			
                  			//{id: 9000, name: "Kriss Akabusi"}
                  			</script>
                  </c:forEach>
                  	<script type="text/javascript">
                  		                	
                  	</script>
                </div>
                <div class="col-md-6 noPadding PageVisi adjHei" style="margin-right:0 !important; float:right;">
                  <div class=" col-md-3 PG-Visi" style="display: table; min-height: 74px;">
                    <h6 style="display: table-cell; vertical-align: middle;">Co-Owner</h6>
                  </div>
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="A buddy who creating this page" id="coOwnerId" value="">
                  </div>
                </div>
                <input type="hidden" id="boardCoOwnershiddenId" name="boardCoOwners"/>
              </div>
                
                
                <script type="text/javascript">
                  		var arrayBoardCoordinatorList=[];
                  		var arrayBoardScheduleCoordinatorList=[];
                  		var arrayBoardUmpireCoordinatorList=[];
                  		
                  </script>
                  <c:forEach items="${BoardCoordinatorList}" var="coordinator">
                  			<c:if test="${coordinator.coOrdinatorTypeId eq '14'}">
                  				<script type="text/javascript">
                  				var va = '${coordinator.user.firstName}';
                  				 schedulerArray.push("${coordinator.coOrdinatorId}");
                  				 
                  				arrayBoardScheduleCoordinatorList.push( {
                  				id : "${coordinator.coOrdinatorId}",
                  				name : "${coordinator.user.firstName}"
                  			});
                  			
                  			//{id: 9000, name: "Kriss Akabusi"}
                  			</script>
                  			</c:if>
                  			<c:if test="${coordinator.coOrdinatorTypeId eq '15'}">
                  				<script type="text/javascript">
                  			
                  				umpireArray.push("${coordinator.coOrdinatorId}");
                  				arrayBoardUmpireCoordinatorList.push( {
                  				id : "${coordinator.coOrdinatorId}",
                  				name : "${coordinator.user.firstName}"
                  			});
                  			
                  			//{id: 9000, name: "Kriss Akabusi"}
                  			</script>
                  			</c:if>
                  			<c:if test="${coordinator.coOrdinatorTypeId eq '28'}">
                  				<script type="text/javascript">
                  			
                  				groundCoOrdinatorArray.push("${coordinator.coOrdinatorId}");
                  				arrayBoardCoordinatorList.push( {
                  				id : "${coordinator.coOrdinatorId}",
                  				name : "${coordinator.user.firstName}"
                  			});
                  			
                  			//{id: 9000, name: "Kriss Akabusi"}
                  			</script>
                  			</c:if>
                  			
                  </c:forEach>
                
                
                
               <div id="coOrdinator" style="display:${BoradInfo.category eq 'League'?'block':'none'};">  
                
                
                
                <script type="text/javascript">
                	
               
        		
                </script>
                <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-3 PG-Visi wid2">
                    <h6>Schedule Co-Ordinator</h6>
                  </div>
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="" id="schedulerId" name="scheduler" value="Thamaramurthy">
                  </div>
                   
                  
                </div>
              </div>
              <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-3 PG-Visi wid2">
                    <h6>Umpire Co-Ordinator</h6>
                  </div>
                  
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="" id="umpireId" name="umpire1">
                  </div>
                  
                </div>
              </div>
              <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-3 PG-Visi wid2">
                    <h6>Ground Co-Ordinator</h6>
                  </div>
                  
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="" id="groundCordinatorId" name="groundCoOrdinator">
                  </div>
                 
                  
                </div>
              </div>
           </div> 
           <input type="hidden" id="scheduerHiddenId" name="schedulerHidden"/>
            <input type="hidden" id="umpireHiddenId" name="umpireHidden"/>
           <input type="hidden" id="groundCordinatorHiddenId" name="groundCordinatorHidden"/>
           <!---------------------------------- Academy Board details --------------------------------------->
           
           <div id="coOrdinator" style="display:${BoradInfo.category eq 'Academy'?'block':'none'};">  
                
                
                
                <script type="text/javascript">
                	
               
        		
                </script>
                <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-3 PG-Visi wid2">
                    <h6>Schedule Co-Ordinator</h6>
                  </div>
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="" id="schedulerId1" name="scheduler1" value="Thamaramurthy">
                  </div>
                   
                  
                </div>
              </div>
              <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-3 PG-Visi wid2">
                    <h6>Umpire Co-Ordinator</h6>
                  </div>
                  
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="" id="umpireId1" name="umpire1">
                  </div>
                   
                </div>
              </div>
              <div class="col-md-12 pageVisi1 adjust">
              	<div class="col-md-12 noPadding abil">
                	<div class=" col-md-3 PG-Visi wid2">
                    <h6>Ground Co-Ordinator</h6>
                  </div>
                  
                  <div class="col-md-9 own">
                  	<input type="text" class="form-control" placeholder="" id="groundCordinatorId1" name="groundCoOrdinator1">
                  </div>
                
                  
                </div>
              </div>
           </div>
           
           <!---------------------------------------------- / Academy board details end ---------------------------------------------->
           
           
           
           </div>
         </div>
         
         
          <div class="col-md-10 whiteBox pull-right cs-org">
            <div class="panel-group">
		    <div class="panel panel-default">
		      <div class="panel-heading">
		        <h4 class="panel-title">
		          <span>Additional Information </span>
		          <div class="clearfix"></div>
		        </h4>
		      </div>
		      <div id="" class="panel-collapse">
		        <div class="panel-body">
		        	<div class="form-group col-md-12 noPadding centerbtns">
		        	<a href="${pageContext.request.contextPath}/aboutOrganization/${BoradInfo.boardId}" >About Organization</a>
		        	<a href="${pageContext.request.contextPath}/Directors/${BoradInfo.boardId}" >Directors</a>
		        	<a href="${pageContext.request.contextPath}/aboutHistory/${BoradInfo.boardId}" >History</a>
		        	<a href="${pageContext.request.contextPath}/aboutRulesRegulation/${BoradInfo.boardId}" >Rules & Regulations</a>
		        	<a href="${pageContext.request.contextPath}/Sponser/${BoradInfo.boardId}" >Sponsors</a>
		        	<a href="${pageContext.request.contextPath}/aboutAwardhonor/${BoradInfo.boardId}" >Awards & Honors</a>
		        	<a href="${pageContext.request.contextPath}/aboutFaq/${BoradInfo.boardId}" >FAQ</a>
		        	
		        	
		        	<!-- 	<input type="button" class="btn btn-default dBtn" onclick="aboutOrganization()" value="About Organization"></button>
		        		<input type="button" class="btn btn-default dBtn" value="Directors" onclick="Directors()"></button>
		        		<input type="button" class="btn btn-default dBtn" onclick="aboutHistory()" value="History"></button>
		        		<input type="button" class="btn btn-default dBtn" onclick="aboutRulesRegulation()" value="Rules & Regulations"></button>
		        		<input type="button" class="btn btn-default dBtn" value="Sponser" onclick="Sponser()"></button>
		        		<input type="button" class="btn btn-default dBtn" onclick="aboutawardhonor()"value="Award & Honor" ></button>
		        		<input type="button" class="btn btn-default dBtn" onclick="aboutfaq()" value="FAQ" ></button> -->

		        	</div><!-- form-group -->
		        </div><!-- panel-body -->
		      </div><!-- panel heading -->
		    </div><!-- panel end -->
		  </div><!-- panel group end-->
      </div><!-- col md 10 whitebox end -->
      
      
           <div class="form-group col-md-10 centerbtns pull-right">
              <button  onclick="validateBoardForm(event)" class="btn btn-default dBtn" >Finish</button>
              <button type="button" class="btn btn-default blueBtn" onclick="window.location.href='${pageContext.request.contextPath}/board?bid=${BoradInfo.boardId}'">Cancel</button>
           </div>
      </form>
                        
     </div>
    </div>
        	<!--/Content Block-->
  </div>
 </div>
</section>

</div>

<script>

$(document).ready(function(){
	 //var countrycode1 = "${BoradInfo.countryCode1}";
	 $('#countryCode1').val("${BoradInfo.countryCode1}");
	 $('#countryCode2').val("${BoradInfo.countryCode2}");


}); 

function enableCoOrdinatorDiv(id){
	if(id == 10){
		$('#coOrdinator').show();
	}else{
		$('#coOrdinator').hide();
	}
}


$(document).ready(function() {
	
	
	$("#upload_link").on('click', function(e){
		e.preventDefault();
		$("#upload:hidden").trigger('click');
	});
	
	
	
	
    $("#coOwnerId").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		coOwenersArray.push(item.id);
    		$('#boardCoOwnershiddenId').val(coOwenersArray);
    	},
    	onDelete: function (item) {
        	var index = coOwenersArray.indexOf(item.id);
			if (index >= 0) {
				coOwenersArray.splice( index, 1 );
			}
			$('#boardCoOwnershiddenId').val(coOwenersArray);
    },
    /* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: "No results found"}];
      }else{
            return item;
      }
    }, */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    prePopulate: arrayPrepapulateCoOwner
    
   });
    
    
    
    $("#schedulerId").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		schedulerArray.push(item.id);
    		$('#scheduerHiddenId').val(schedulerArray);
    	},
    	onDelete: function (item) {
        	var index = schedulerArray.indexOf(item.id);
			if (index >= 0) {
				schedulerArray.splice( index, 1 );
			}
			$('#scheduerHiddenId').val(schedulerArray);
    },/* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: $("#tester").text()}];
      }else{
            return item;
      }
    }, */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    prePopulate: arrayBoardScheduleCoordinatorList
   });
    
    
    
    $("#umpireId").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		umpireArray.push(item.id);
    		$('#umpireHiddenId').val(umpireArray);
    	},
    	onDelete: function (item) {
        	var index = umpireArray.indexOf(item.id);
			if (index >= 0) {
				umpireArray.splice( index, 1 );
			}
			$('#umpireHiddenId').val(umpireArray);
    },
    /* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: $("#tester").text()}];
      }else{
            return item;
      }
    }, */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    prePopulate: arrayBoardUmpireCoordinatorList
   });
    
    
    $("#groundCordinatorId").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		groundCoOrdinatorArray.push(item.id);
    		$('#groundCordinatorHiddenId').val(groundCoOrdinatorArray);
    	},
    	onDelete: function (item) {
        	var index = groundCoOrdinatorArray.indexOf(item.id);
			if (index >= 0) {
				groundCoOrdinatorArray.splice( index, 1 );
			}
			$('#groundCordinatorHiddenId').val(groundCoOrdinatorArray);
    },
    /* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: $("#tester").text()}];
      }else{
            return item;
      }
    } */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    
    prePopulate: arrayBoardCoordinatorList
   });
    
    // Acadamey scheduler,umpire,ground cordinator auto text search
    
    
    $("#schedulerId1").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		schedulerArray.push(item.id);
    		$('#scheduerHiddenId').val(schedulerArray);
    	},
    	onDelete: function (item) {
        	var index = schedulerArray.indexOf(item.id);
			if (index >= 0) {
				schedulerArray.splice( index, 1 );
			}
			$('#scheduerHiddenId').val(schedulerArray);
    },/* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: $("#tester").text()}];
      }else{
            return item;
      }
    }, */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    prePopulate: arrayBoardScheduleCoordinatorList
   });
    
    
    
    $("#umpireId1").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		umpireArray.push(item.id);
    		$('#umpireHiddenId').val(umpireArray);
    	},
    	onDelete: function (item) {
        	var index = umpireArray.indexOf(item.id);
			if (index >= 0) {
				umpireArray.splice( index, 1 );
			}
			$('#umpireHiddenId').val(umpireArray);
    },
    /* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: $("#tester").text()}];
      }else{
            return item;
      }
    }, */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    prePopulate: arrayBoardUmpireCoordinatorList
   });
    
    
    $("#groundCordinatorId1").tokenInput(ctx+"/buddySearchForMultipleSelection/",{
    	theme: "facebook",   
    	onAdd: function (item) {
    		groundCoOrdinatorArray.push(item.id);
    		$('#groundCordinatorHiddenId').val(groundCoOrdinatorArray);
    	},
    	onDelete: function (item) {
        	var index = groundCoOrdinatorArray.indexOf(item.id);
			if (index >= 0) {
				groundCoOrdinatorArray.splice( index, 1 );
			}
			$('#groundCordinatorHiddenId').val(groundCoOrdinatorArray);
    },
    /* onResult: function (item) {
        if($.isEmptyObject(item)){
            return [{id:'0',name: $("#tester").text()}];
      }else{
            return item;
      }
    } */
    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"},
    
    prePopulate: arrayBoardCoordinatorList
   });
    
    
    
    
    $('#boardCoOwnershiddenId').val(coOwenersArray);  
	$('#scheduerHiddenId').val(schedulerArray);        		
	
	$('#umpireHiddenId').val(umpireArray);       		
	
	$('#groundCordinatorHiddenId').val(groundCoOrdinatorArray);
    
});

$(document).ready(function(){
	
	$('#loading').hide();
	
	
});
function validateBoardForm(e){
	 e.preventDefault();
	 if($('#boardFormId').validate({
		 errorPlacement: function(error, element) {
			 if (element.attr("name") == "pageVisibility" || element.attr("name") == "category" || element.attr("name") == "postingAbility" || element.attr("name") == "classification")  {
					error.appendTo( element.parent() );
				  } else if(element.attr("name") === "notification" ){
					  error.appendTo( '#notificationsId' );
					  
				  }else {
				     error.insertAfter(element);
				  }
      }, 
		 rules: {
	         	
			 boardName: {
                     required: true,
                     minlength : 5,
         			 maxlength : 60
                 }, 
                /*  shortDescription: {
                     minlength : 10
                 }, */
                 /* longDescription: {
                     required: true,
                     minlength : 25
                 },  */
                 emailId: {
                	 required: true,
     				 email:true
                 },
                 website: {
                     url: true
         			 
                 }, 
                /*  address1: {
                     required: true,
                 },  */
                 
                 city: {
                     required: true,
                     minlength : 2,
                     maxlength : 26,

         			 
                 }, 
                 phoneNumber1 :{
                    	number : true,
                    	maxlength : 15
                     },
                 phoneNumber2 : {
                    	number :true,
                    	maxlength:15
                     }, 
                 state: {
                     required: true,
                     minlength : 2,
                     maxlength : 25,

         			 
                 }, 
                 country: {
                     required: true,
                     minlength : 2,
                     maxlength : 25,

         			 
                 }, 
                 zipcode: {
                     required: true,
                     minlength : 5,
                     maxlength : 10,
                    // number : true,
         			 
                 }, 
                 pageVisibility: {
                     required: true,
                    
         			 
                 }, 
                 classification: {
                     required: true,
                 }, 
                 category: {
                     required: true,
                   
         			 
                 }, 
                 pageAbility: {
                     required: true,
                   
                 }, 
                 notification: {
                     required: true,
                    
         			 
                 }, 
                 boardOwner:{
                	  required: true,
                      minlength : 2,
                      maxlength:50
                     
          			 
                 },
                 autocomplete : {
		               	  required: true
		                 }
              
             },
             messages: {
            	 boardName: {
                     required: "Please enter the board name",
                     minlength :"Name should be at least 2 character's",
             		maxlength : "Name should be below 60 character's"
                 },
                /*  shortDescription: {
                     minlength :"Please enter 10 or more characters"
                 }, */
               /*   longDescription: {
                    required: "Please enter your short description",
                     minlength :"Type longDescription at least 20 character"
                 }, */ 
                 emailId: {
                 	required: "Please enter the E-mail",
                     email:"Invalid E-mail"
                 },
                 website:	 {
                  	url: "Please enter a valid Website URL."
                  },
                  
                 /*  address1: {
                   	required: "Please enter address1",
                   	
                   }, */
                          city: {
                     	required: "Please enter the city",
                     	 minlength: "City should be at least 2 character's ",
                     	maxlength : "city should be maximum of 26 character's",
                     },
                     state: {
                      required: "Please enter the state",
                     	 minlength: "State should be at least 2 character's ",
                     	maxlength : "State should be maximum of 25 character's",
                      },
                      country: {
                       required: "Please enter  the country",
                     	 minlength: "Country should be at least 2 character's ",
                     	maxlength : "Country should be maximum of 26 character's",
                       },
                       zipcode: {
                        	required: "Please enter the zip code",
                        	 minlength: "Zip code should be at least 5 numbers ",
                        	maxlength : "Zip code should be maximum of 10 numbers ",
                        	//number :"Please enter numbers only"
                          
                        },
                        phoneNumber1:{
                        	maxlength :"Phone number should be maximum of 15 digits",
                        },
                        phoneNumber2:{
                        	
                        	maxlength :"Phone number should be maximum of 15 digits",
                        }, 
                        pageVisibility: {
                         	required: "Please choose the page visibility option",
                         	
                         },
                         classification: {
                          required: "Please choose the ball classification option",
                          },
                          category: {
                           required: "Please choose the category option",
                           },
                           pageAbility: {
                            	required: "Please choose the page ability option",
                            },
                            notification: {
                             required: "Please choose the board notification option",
                             },
							   boardOwner:{
							  required: "Please choose the board owner option",
							},
							 autocomplete : {
	   			               	  required: "Please enter the board location"
	   			                 }
             }        
		
	    }).form()){
		$('#boardFormId').submit();
		
	};

 }

	 
	
 
 
function readURL(input) {
	//alert("alert");
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
        	console.log(e);
        	console.log(reader);
        	 //alert("e.target.result"+e.target.result);
            $('#profileimg').attr('src', e.target.result);
        };
        
        reader.readAsDataURL(input.files[0]);
    }
}


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

autocomplete = new google.maps.places.Autocomplete(
   (document.getElementById('autocomplete')),
   {types: ['geocode']});


autocomplete.addListener('place_changed', fillInAddress);
}

function fillInAddress() {
var place = autocomplete.getPlace();


console.log(JSON.stringify(place));

console.log(JSON.stringify(place.geometry.location));
var geoAttributes=place.geometry.location;
$('#latlang').val(geoAttributes.lat()+","+geoAttributes.lng());
console.log(place.geometry.location.lat());
console.log(place.geometry.location.lng());
document.getElementById('zipcode').value = '';
document.getElementById('cityId').value = '';
document.getElementById('countryId').value = '';
document.getElementById('stateId').value = '';
for (var i = 0; i < place.address_components.length; i++) {
 var addressType = place.address_components[i].types[0];
 if (componentForm[addressType]) {
   var val = place.address_components[i][componentForm[addressType]];
   
   if(addressType == 'locality'){
        document.getElementById('cityId').value = val;
        $('label.error').text('');
	  }

	  if(addressType == 'administrative_area_level_1') {
	   	document.getElementById('stateId').value = val;
		}
	  if(addressType == 'country')
		  {
		   document.getElementById('countryId').value = val;
		   $('label.error').text('');
		  }
	  
	  if(addressType=='postal_code'){
		 
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
	
	
function aboutOrganization()
{
	window.location.href="${pageContext.request.contextPath}/aboutOrganization/${BoradInfo.boardId}";
	}
	
function aboutHistory()
{
	window.location.href="${pageContext.request.contextPath}/aboutHistory/${BoradInfo.boardId}";
	}
function aboutRulesRegulation()
{
	window.location.href="${pageContext.request.contextPath}/aboutRulesRegulation/${BoradInfo.boardId}";
	}
function aboutawardhonor()
{
	window.location.href="${pageContext.request.contextPath}/aboutAwardhonor/${BoradInfo.boardId}";
	}
function aboutfaq()
{
	window.location.href="${pageContext.request.contextPath}/aboutFaq/${BoradInfo.boardId}";
	}
function Directors()
{
	window.location.href="${pageContext.request.contextPath}/Directors/${BoradInfo.boardId}";
	}
function Sponser()
{
	window.location.href="${pageContext.request.contextPath}/Sponser/${BoradInfo.boardId}";
	}

</script>
<script type="text/javascript" src="/cricketsocial-web/WebContent/js/cricketSocial/BoardPageFunction.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tokeninput.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
 

</body>
</html>