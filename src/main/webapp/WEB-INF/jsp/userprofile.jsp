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

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">
    
    <!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    
    <!--Date picker-->
    <link href="css/datepicker.css" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

 <%@ include file="Header.jsp" %>

    
    <section class="middleContentBlock">
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        <form action="${pageContext.request.contextPath}/profileUpdate.htm" name="userprofileupdateform" id="userprofileupdateform" method="post">
                    <div class="col-md-2 profileLogo"><img src="images/profileIcon.png" id="profileimg"><br>
                    	<input id="upload" type="file" onchange="readURL(this)" name="upload" />
                        <a href="#" id="upload_link">Add profile photo</a>
                    </div>
						
                     <div class="col-md-10 whiteBox">
                     	<h1 class="pageHead noBorder">Complete your profile</h1>
                        
                        <div class="col-md-4 progressBlock">
                                <label>Profile Strength 50%</label>
                                <div class="progress"><div class="progress-bar progress-bar-default" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div></div>
                        </div>
                      </div>
                      
                      
                       <div class="col-md-10 whiteBox">
                    
                            <h2 class="noBorder">Basic information</h2>
                           
                            <div class="form-group col-md-12 noPadding profileForm">
                              <div class="col-md-4"><label for="email"><span>*</span>First Name</label> <input type="text" class="form-control" placeholder="" id="firstName" name="firstName" value="${UserProfileOBJ.firstName}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>Last Name</label> <input type="text" class="form-control" placeholder="" id="lastName" name="lastName" value="${UserProfileOBJ.lastName}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>Date of birth</label> <input type="text" class="form-control datepicker" placeholder="" id="bod" name="bod" value=""> 
                              	<i class="fa fa-calendar calIcon"></i>
                              </div>
                               <input type="hidden" name="userId" id="userId" value="${UserProfileOBJ.userId}">
                              <div class="col-md-12">
                              	<input type="radio" checked id="Male" name="gender" value="Male">
                                <label for="Male"><span></span>Male</label>
                                
                                <input type="radio" checked id="female" name="gender" value="Female">
                                <label for="female"><span></span>Female</label>
                              </div>

                              <div class="col-md-4"><label for="email"><span>*</span>Email</label> <input type="text" class="form-control" placeholder="" id="emailAddress" name="emailAddress" readonly value="${UserProfileOBJ.emailAddress}"></div>
                              <div class="col-md-4"><label for="email"><span>*</span>Phone Number</label> <input type="text" class="form-control" placeholder="" id="phoneNumber" name="phoneNumber"></div>
                              <div class="col-md-4"><label for="email">Landline</label> <input type="text" class="form-control" placeholder="" id="landLineNumber" name="landLineNumber"></div>
                              
                              <div class="col-md-4"><label for="email">Languages known</label> <input type="text" class="form-control" placeholder="" id="userLanguageMapString" name="userLanguageMapString"></div>
                              <div class="col-md-4"><label for="email">Places Lived</label> <input type="text" class="form-control" placeholder="" id="placesMapString" name="placesMapString"></div>
                              <div class="col-md-4"><label for="email">Place Living</label> 
                              
                              
                              <!-- <input type="text" class="form-control" placeholder="" id=""> -->
                              
                              <div id="locationField">
      <input class="form-control" id="autocomplete" placeholder="Enter your address"
             onFocus="geolocate()" type="text"></input>
    </div>
    	<input type="hidden" id="latlang" name="latLang" value="">
                              
                 </div>
                              
                              <div class="col-md-4"><label for="email"><span>*</span>Address 1</label> <input type="text" class="form-control" placeholder="" id="address1" name="address1" value="${UserProfileOBJ.address1}"></div>
                              <div class="col-md-4"><label for="email">Address 2</label> <input type="text" class="form-control" placeholder="" id="address2" name="address2" value="${UserProfileOBJ.address2}"></div>
                              <div class="col-md-4"><label for="email">Zipcode</label> <input type="text" class="form-control" placeholder="" id="zipcode" name="zipcode"  value=""></div>
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
                            </div>
                        </div>
                        
                       <!--  <div class="col-md-10 whiteBox pull-right">
                            <h2 class="noBorder">Do you want to link your cricket social accounts with social networking account?</h2>
                            <div class="form-group col-md-12 noPadding profileForm socialBLock">
                              <div class="col-md-4"><i class="fa fa-facebook-square tboxIocn"></i> <input type="text" class="form-control" placeholder="Facebook" id=""></div>
                              <div class="col-md-4"><i class="fa fa-twitter-square tboxIocn"></i> <input type="text" class="form-control" placeholder="Twitter" id=""></div>
                              <div class="col-md-4"><i class="fa fa-linkedin-square tboxIocn"></i> <input type="text" class="form-control" placeholder="Linkedin" id=""></div>
                            </div>
                        </div> -->
                        
                        
                        <div class="col-md-10 whiteBox pull-right cboxBtnBlock">
                            <h2 class="noBorder">Please choose your player profile and cricket profile</h2>
                            <div class="form-group col-md-12 noPadding profileForm">
                              <div class="col-md-12">
                              
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
                              </div>
                              
                              <div class="col-md-12 cboxBtnBlockLeft">
                              		<h3 class="noBorder">Player Profile</h3>
                                 <c:forEach var="sub1" items="${SubCAT1}">
                                 <script> 
                                    var ie='ee';
                                    </script>
                                 <div class="col-md-12 noPadding div${sub1.role_id}" id="div${sub1.role_id}" style="display: none">
                                 <div class="col-md-3 noPadding">    
                                <input type="checkbox" class="cboxBtnLeft"  value="${sub1.sub_role_level_one_id},${sub1.role_id}" id="${sub1.sub_role_level_one_id}" name="subtest" onclick="getsubcattwo('${sub1.sub_role_level_one_id}')">
                                <label for="${sub1.sub_role_level_one_id}"><span></span>${sub1.sub_role_level_one}</label>
                                </div>
                                 
                                 <div class="col-md-4" id="i${sub1.sub_role_level_one_id}"  style="display: none">
                                 		<div class="selectdiv">
                                 		
                                    <select class="selectboxdiv" name="test" >
                                   
                                     <c:forEach var="sub2" items="${SubCAT2}">
                                      <c:if test="${sub1.sub_role_level_one_id eq sub2.sub_role_level_one_id}">                                       
                                       
                                      <option value="${sub2.sub_role_level_two_id},${sub2.sub_role_level_one_id},${sub2.role_id}">${sub2.sub_role_level_two}</option>
                                     		<script>
                                     			ie='dd';
                                     		</script>
  									    </c:if> 
  									      <c:choose>
      										<c:when test="${sub1.sub_role_level_one_id eq sub2.sub_role_level_one_id}">
     					 								
      										</c:when>

   										<c:otherwise>
   													
    									  </c:otherwise>
  									  </c:choose>
                                        </c:forEach>
                                        
                                    </select>
                                   
                                    <div class="out" id="di${sub1.sub_role_level_one_id}" ></div>    
                                </div>
                                
                                 </div>
                                 
                                </div>
                                 <script>
                                     			//ie='dd';
                                     			if(ie=='ee')
                                     				{
                                     				var hem='';
                                     				//alert();
                                     					//$('#i${sub1.sub_role_level_one_id}').html('');
                                     				//	$( "#i${sub1.sub_role_level_one_id}" ).html(hem);
                                     				//	$( "#di${sub1.sub_role_level_one_id}" ).html(hem);
                                     				}else{
                                     					
                                     				}
                                     		</script>
                                </c:forEach>
                                
                              </div>
                            
                            </div>
                        </div>
                        
                        
                         <div class="col-md-10 whiteBox pull-right">
                            <div class="form-group col-md-12 noPadding profileForm">
                              <div class="col-md-12"><input type="text" class="form-control" placeholder="Cricket Teams Board" id=""></div>
                              <div class="col-md-12"><input type="text" class="form-control" placeholder="Cricket Leagues Board" id=""></div>
                              <div class="col-md-12">
                              	<div class="selectdiv">
                                    <select class="selectboxdiv">
                                        <option>Ball Preference</option>
                                        <option>Ball Preference 1 </option>
                                        <option>Ball Preference 2</option>
                                        <option>Ball Preference 3</option>
                                        <option>Ball Preference 4</option>
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
						
				$('.div'+id).show();
			}else{
				$('.div'+id).hide();
			}
		
	}
	
	function getsubcattwo(id)
	{
	//	alert(document.getElementById('i'+id).checked);
		$('#i'+id).show();
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
		
		alert('id : '+id);
	//	alert(document.getElementById('i'+id).checked);
		//var ro='div'+id;
		// document.getElementById(ro).style.display = 'block';
		//$('#i'+id).show();
		
		if(document.getElementById('i'+id).checked)
			{				
				
				if(id!='133296f4-ccbf-43be-8831-2b351120612d')
					{
						
						$('#i'+id).hide();
					}else{
						$('#i'+id).show();
					}
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
   	         			 maxlength : 20
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
   	              bod : {
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
	                     minlength : 2,
	         			 maxlength : 20
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
   	             		 maxlength : "first name should be below 20 character's"
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
   	              bod : {
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
	                     minlength :"Enter at least 2 character",
	             		 maxlength : "Max 50 character's only"
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

	<!--Date picker-->
    <script src="js/bootstrap-datepicker.js"></script>


	<!--File Upload-->
	<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
			
			$('.datepicker').datepicker();
			
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
	  }

	  if(addressType == 'administrative_area_level_1') {
	   document.getElementById('state').value = val;
  		}
	  if(addressType == 'country')
		  {
		   document.getElementById('country').value = val;
		  }
	  
    }
  }
}
// [END region_fillform]

// [START region_geolocation]
// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
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
// [END region_geolocation]

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBrgGqKmxNG-xG7AstscoIdC7h4vFbUT2s&signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
</body>

</html>
