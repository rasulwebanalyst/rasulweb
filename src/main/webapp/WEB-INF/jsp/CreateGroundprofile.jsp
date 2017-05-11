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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places"></script>


 <%--   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" /> --%>

<script>var ctx="${pageContext.request.contextPath}";</script>

<script>
var map;
var marker;
var markers = [];
function initialize() {
	//alert("loading initialize function");
	var mapCanvas = document.getElementById('map_canvas');
	var mapOptions = {
		center : new google.maps.LatLng(24.819304, 77.138900),
		zoom : 2,
		mapTypeId : google.maps.MapTypeId.ROADMAP,
		disableDefaultUI : true,
		zoomControl : true,
		 zoomControlOptions: {
	            style: google.maps.ZoomControlStyle.DEFAULT,
	            position: google.maps.ControlPosition.TOP_LEFT
	        }
	};
	map = new google.maps.Map(mapCanvas, mapOptions);
	/*  map.addListener('click', function(e) {
	    placeMarkerAndPanTo(e.latLng, map);
	  });  */
	var input = document.getElementById('pac-input');
	console.log("input " + input);
	var searchBox = new google.maps.places.SearchBox((input));
	google.maps.event.addListener(
					searchBox,
					'places_changed',
					function() {
					var places = searchBox.getPlaces();
					console.log("places " + places);
					console.log("pac-input " + $("#pac-input").val().length);
						if (places.length == 0) {
							return;
						}
					for (var i = 0, marker; marker = markers[i]; i++) {
							marker.setMap(null);
						}
						markers = [];
							
						var bounds = new google.maps.LatLngBounds();
						var image = {
							url : 'https://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png',
							size : new google.maps.Size(71, 71),
							origin : new google.maps.Point(0, 0),
							anchor : new google.maps.Point(17, 34),
							scaledSize : new google.maps.Size(25, 25)
						};

						marker = new google.maps.Marker({
							map : map,
							icon : image,
							title : places[0].name,
							position : places[0].geometry.location,
							animation : google.maps.Animation.DROP
						});
						markers.push(marker);
						bounds.extend(places[0].geometry.location);
						map.fitBounds(bounds);
						map.setZoom(13);
						getAddress(places[0].geometry.location);				
					});   

	 

}
google.maps.event.addDomListener(window, 'load', function() {
	initialize();
		});
		
function placeMarkerAndPanTo(latLng, map) {
	for (var i = 0, marker; marker = markers[i]; i++) {
		marker.setMap(null);
	}
	markers = [];
	var image = {
			url : 'https://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png',
			size : new google.maps.Size(71, 71),
			origin : new google.maps.Point(0, 0),
			anchor : new google.maps.Point(17, 34),
			scaledSize : new google.maps.Size(25, 25)
		};
	  var marker = new google.maps.Marker({
	    position: latLng,
	    icon : image,
	    map: map
	  });
	    markers.push(marker);
		map.setZoom(13);
		getAddress(latLng);	
	    map.panTo(latLng);
	}

function getAddress(e)
{
	//alert("get address function");
	var add = document.getElementById('pac-input').value;

	document.getElementById("hiddenLatLang").value = e;
	console.log(e.lat()+", "+e.lat());
	 var geocoder = geocoder = new google.maps.Geocoder();
     geocoder.geocode({ 'latLng': e }, function (results, status) {
         if (status == google.maps.GeocoderStatus.OK) {
        	 var result = results[0];
	            var city = "";
	            var state = "";
	            var zipcode = "";
	            var address = "";
	            var country = "";
	            for(var i=0, len=result.address_components.length; i<len; i++) {
	            	var ac = result.address_components[i];
	              	if(ac.types.indexOf("locality") >= 0) city = ac.long_name;
	            	if(ac.types.indexOf("administrative_area_level_1") >= 0) state = ac.long_name;
	            	if(ac.types.indexOf("postal_code") >= 0) zipcode = ac.long_name;
	            	if(ac.types.indexOf("sublocality") >= 0) address = ac.long_name;
	            	if(ac.types.indexOf("country") >= 0) country = ac.long_name;
	            	
	            }
	            
	           /*  document.getElementById("city").value = city;
	             if(address != ""){
	            	 if(address.toLowerCase() == city.toLowerCase()){
		 	            	document.getElementById("address1").value = city;	
		 	            }else{
		 	            	document.getElementById("address1").value =  address;
		 	            }
		            	
	            }else{
	            	  document.getElementById("address1").value = city;
	            }  */
	            
	            var numbers = /^[0-9]+$/; 
		  		  if(numbers.test(zipcode)){
		  			  document.getElementById('zipcode').value = zipcode;
		  		  }else{
		  			document.getElementById('zipcode').value = '';
		  		  }
	          // document.getElementById("zipcode").value = zipcode;
	            document.getElementById("state").value = state;
	            document.getElementById("country").value = country;
	            document.getElementById("autocomplete").value = add;
	            document.getElementById("city").value = city;
	            
        	 console.log("city :"+city+ " state :"+state +" zipcode :"+zipcode+" address :"+address+ " country :"+country);
            
         }
     });
	}
		

function GetLocation() {
//	alert("get location function");
    var geocoder = new google.maps.Geocoder();
    var address = document.getElementById("hiddenAddressCity").value;
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var latitude = results[0].geometry.location.lat();
            var longitude = results[0].geometry.location.lng();
            var latlng = new google.maps.LatLng(latitude, longitude);
            
            var mapCanvas = document.getElementById('map_canvas');
        	var mapOptions = {
        		center : latlng,
        		zoom : 2,
        		mapTypeId : google.maps.MapTypeId.ROADMAP,
        		disableDefaultUI : true,
        		zoomControl : true,
        		 zoomControlOptions: {
        	            style: google.maps.ZoomControlStyle.DEFAULT,
        	            position: google.maps.ControlPosition.TOP_LEFT
        	        }
        	};
        	map = new google.maps.Map(mapCanvas, mapOptions);
        	
        					for (var i = 0, marker; marker = markers[i]; i++) {
        							marker.setMap(null);
        						}
        						markers = [];
        							
        						var bounds = new google.maps.LatLngBounds();
        						var image = {
        							url : 'https://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png',
        							size : new google.maps.Size(71, 71),
        							origin : new google.maps.Point(0, 0),
        							anchor : new google.maps.Point(17, 34),
        							scaledSize : new google.maps.Size(25, 25)
        						};

        						markers = [];
        						marker = new google.maps.Marker({
        							map : map,
        							icon : image,
        							title : "marker",
        							position : latlng,
        							animation : google.maps.Animation.DROP
        						});
        						markers.push(marker);
        						bounds.extend(latlng);
        						map.fitBounds(bounds);
        						map.setZoom(13);
        						getAddress1(latlng,address);				
        					 
        						map.addListener('click', function(e) {
        						    placeMarkerAndPanTo(e.latLng, map);
        						  });
          
           
            
        } else {
            console.log("Request failed.")
        }
    });
};

function getAddress1(e,addr)
{
//	alert("get address1 function");
	var address = document.getElementById("autocomplete").value;
	
	document.getElementById("hiddenLatLang").value = e;
	 var geocoder = geocoder = new google.maps.Geocoder();
     geocoder.geocode({ 'latLng': e }, function (results, status) {
         if (status == google.maps.GeocoderStatus.OK) {
        	 var result = results[0];
	            var city = "";
	            var state = "";
	            var zipcode = "";
	            var address = "";
	            var country = "";
	            var street = "";
	            console.log(result.formatted_address);
	            
	            for(var i=0, len=result.address_components.length; i<len; i++) {
	            	var ac = result.address_components[i];
	            	
	              	if(ac.types.indexOf("locality") >= 0) city = ac.long_name;
	            	if(ac.types.indexOf("administrative_area_level_1") >= 0) state = ac.long_name;
	            	if(ac.types.indexOf("postal_code") >= 0) zipcode = ac.long_name;
	            	if(ac.types.indexOf("sublocality") >= 0) address = ac.long_name;
	            	if(ac.types.indexOf("country") >= 0) country = ac.long_name;
	            	if(ac.types.indexOf("street_address") >= 0) street = ac.long_name;
	            	
	            }
	            console.log(addr);
	            console.log(city);
	            
	            /* if(addr != ""){
	            	
	            	 if(addr.toLowerCase() == city.toLowerCase()){
	 	            	document.getElementById("address1").value = city;	
	 	            }else{
	 	            	document.getElementById("address1").value =  address;
	 	            }
	            	
	            }else{
	            	document.getElementById("address1").value = city;	
	            } */
	            
	            var numbers = /^[0-9]+$/; 
		  		  if(numbers.test(zipcode)){
		  			  document.getElementById('zipcode').value = zipcode;
		  		  }else{
		  			document.getElementById('zipcode').value = '';
		  		  }
	            //document.getElementById("zipcode").value = zipcode;
	            document.getElementById("state").value = state;
	            document.getElementById("country").value = country;
	           // document.getElementById("autocomplete").value = address;
	            document.getElementById("city").value = city;
	            
	            
        	 console.log("city :"+city+ " state :"+state +" zipcode :"+zipcode+" address :"+address+ " country :"+country+" street :"+street);
            
         }
     });
	}
	
	
</script>

<script>
	/* function geolocate() {
		  if (navigator.geolocation) {
		    navigator.geolocation.getCurrentPosition(function(position) {
		      alert("latitude : "+position.coords.latitude);
		      alert("longitude : "+position.coords.longitude);
		    });
		  }
		} */
	
		
	</script>

</head>
<body>



 <%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
       
                     <%@ include file="publicLeaugeManagementSideMenu.jsp" %>
                    

      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Create Ground</h1>
                  
                  
                  <div class="form-group col-md-12 noPadding profileForm">
                  
                  <div class="form-group col-md-12 noPadding profileForm">
                  <form id="createGroundForm" onsubmit="return cancelFunction()">
                                  
                                  
                                  <div class="col-md-12 noPadding">	
                                  
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>Ground Name</label> <input type="text" class="form-control" placeholder="" id="groundName" name="groundName">
                                  </div>
                                 
                                  <div class="col-md-4">
                                 	 <label for="email"><span>*</span>Place of Ground</label> 
                                 	 <div id="locationField">
     							 <input class="form-control" id="autocomplete" name="autocomplete" placeholder="" onFocus="geolocate()" type="text" onkeyup="checkValidation()" onblur="checkValidation()"></input>
   							 </div>
                                 	 
                                 	<!--  <input type="text" class="form-control" placeholder="" id="address1" name="address1" onblur="newGeoLocation()"> -->
                                  </div>
                                 
                                  <div class="col-md-4">
                                  	<label for="email">Address Line 1</label> <input type="text" class="form-control" placeholder="" id="address2" name="address2">
                                  </div>
                                  </div>
                                  
                                 
                                 <div class="col-md-12 noPadding">	
                                 
                                  <div class="col-md-4">
                                 	 <label for="email"><span>*</span>City</label> 
                                 	<!--  
                                 	 <div id="locationField">
     							 <input class="form-control" id="autocomplete" name="autocomplete" placeholder="" onFocus="geolocate()" type="text" onkeyup="checkValidation()" onblur="checkValidation()"></input>
   							 </div> -->
                                 	  <input type="text" class="form-control" placeholder="" id="city" name="city">
                                  </div>
                                  
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>State</label> <input type="text" class="form-control" placeholder="" id="state" name="state">
                                  </div>
                                  
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>Country</label> <input type="text" class="form-control" placeholder="" id="country" name="country">
                                  </div>
                                  </div>
                                  
                                  
                                  <div class="col-md-12 noPadding">	
                                  <div class="col-md-4">
                                  	<label for="email"><span>*</span>Zip Code</label> <input type="text" class="form-control" placeholder="" id="zipcode" name="zipcode">
                                  </div>
                                  
                                  <div class="col-md-4 ">
                              <label for="email">Landmark</label> <input  type="textarea" class="form-control" placeholder="" id="landMark" name="landMark">
                              </div>
                              
                              <div class="col-md-4 ">
                              <label for="email">Home Team for the Ground </label> <input type="text" class="form-control" placeholder="" id="teamName" name="teamName" onkeyup="getTeamAutoComplete(this,'addTeamautoCompleteDIV','addTeamIDDIV')">
                             <div class="autoComplete" id="addTeamautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li></li>
			                                        </ul>                                  	
			                                  </div>  
                                  <input type="hidden" class="form-control" placeholder="" id="addTeamIDDIV" name="">
                                  </div> 
                                  
                                  </div>
                                  
                                  
                                  <div class="col-md-12 noPadding">	
                                  <div class="col-md-4">
                                  	<label for="email">Additional Direction</label> <textarea type="text" class="form-control" style="height: 100px;" id="directionsToGround" name="directionsToGround"></textarea>
                                  </div>
                                  
                                  <div class="col-md-4 ">
                              <label for="email">Ground Facilities</label> <textarea  type="text" class="form-control" style="height: 100px;" id="groundFacilities" name="groundFacilities"></textarea>
                              </div>
                              
                                  <div class="col-md-4 ">
                              <label for="email">Pitch Description</label> <textarea  type="text" class="form-control" style="height: 100px;" id="pitchDescription" name="pitchDescription"></textarea>
                              </div>
                                  </div>
                                  
                                   <div class="col-md-12 noPadding">	
                                  <div class="col-md-4">
                                  	<label for="email">Wicket Type</label> 
                                  	<!-- <textarea type="text" class="form-control" style="height: 100px;" id="directionsToGround" name="directionsToGround"></textarea> -->
                                  	<select id="wickettype" class="form-control">
                              <option value="Regular Turf">Regular Turf</option>
                              <option value="Astro Turf">Astro Turf</option>
                              <option value="Mat turf">Mat</option>
                              
                              </select>
                                  </div>
                                  
                              
                                  
                                  </div>
                             
                              </form>   
                            </div>

                    <div class="col-md-12">
                              <div id="googleMap">
                              <%-- <iframe src="https://www.google.com/maps?q=+${lat}+,+${lang}+&hl=es;z=14&amp;output=embed" frameborder="0" style="border:0" allowfullscreen></iframe> --%>
                             
                              </div>
                            </div>
                             <input type="text" class="form-control" id="pac-input"
								placeholder="Search Places" style="width: 800px"> 
                             <div id="map_canvas" style="width:800px;height:380px;"></div> 
                            
                              <div class="col-md-12 centerbtns">
                              <input id="Submitfunction1" type="button" class="btn btn-default dBtn" onclick="submitFunction()" value="Submit">
                              </div>
                    </div>
                </div>
            
          	
          </div>    
      </div>
              <input type="hidden" id="hiddenLatLang" name="hiddenLatLang" value="">
           <input type = "hidden" id="hiddenAddressCity" name="hiddenAddressCity">
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
function getTeamAutoComplete(elem,divId,hiddenId){
	
 	var key=$(elem).val();
 	var textBoxId=$(elem).attr('id');
 	console.log('value : '+key);
 	console.log('textBoxId : '+textBoxId);
 	if(key.length>2) {
 			    $.ajax({
 						type : "POST",
 						url : "${pageContext.request.contextPath}/teamSearch",
 						headers : {'Name' : HeaderName},
 						dataType: "json",
 			        contentType: "application/json; charset=utf-8",
 			        data : key,					            
 						success : function(res) {
 							console.log(res);	
 							var html="";
 							
 							if(res != null){
 								var boards=res.boardProfileList;
 								console.log(JSON.stringify(boards));
 								html+="<ul style='width: 277px;'>";
 								
 								if(boards!= null && boards.length >0){
 									for(var i in boards){
 										var name=boards[i].boardName;
     									html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+boards[i].boardId+"','"+hiddenId+"')>"+name+"</li>";
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
		$('#'+textBox).val($(elem).text());
		$('#'+divId).hide();	
		$('#'+hiddenId).val(userId);	
		
 }


function cancelFunction(){
	return false;
}

function submitFunction(){
	//alert("hi");
	if($("#createGroundForm").validate({
		 errorPlacement : function(error, element){
			 error.insertAfter(element);
		 },
		rules:{
			groundName : {
				required : true,
			},
			address1 : {
				required : true,
			},
			city : {
				required : true,
			},
			state : {
				required : true,
			},
			country : {
				required : true,
			},
			/* teamName:{
				required : true,
			}, */
			zipcode : {
				required : true,
	            	  minlength : 5,
	            	   maxlength : 10,
	            	   number : true
			},
			autocomplete : {
				required : true
			}
			
		},
		messages : {
			groundName : {
				required : "Please enter the Ground name",
			},
			address1 : {
				required : "Please enter the Address",
			},
			city:{
				required : "Please enter the City name",
			},
			state : {
				required : "Please enter the State name",
			},
			country : {
				required : "Please enter the Country name",
			},
			/* teamName : {
				required : "Home Team name is required",
			}, */
			zipcode : {
				 required : "Please enter the zip code",
	            	  minlength : "Please enter minimum 5 numbers",
	            	  maxlength : "Zip code should be maximum of 10 numbers ",
	            	  number : "Please enter numbers only"
			},
			autocomplete : {
				required : "Please enter the Place of ground"
			}
		},
	}).form()){
		
		$("#Submitfunction1").prop('disabled', true);
		
		var groundName = $("#groundName").val();
		var address1 = $("#autocomplete").val();
		var address2 = $("#address2").val();
		var city = $("#city").val();
		var state = $("#state").val();
		var country = $("#country").val();
		var zipcode = $("#zipcode").val();
		var landmark = $("#landMark").val();
		var teamName = $("#teamName").val();
		var teamId = $("#addTeamIDDIV").val();
		var boardId = "${boardId}";
		var latLang = $("#hiddenLatLang").val();
		var groundfacilities=$("#groundFacilities").val();
		var grounddirection=$("#directionsToGround").val();
		var pitchdescription=$("#pitchDescription").val();
        var landmark=$("#landMark").val();
        var wickettype=$("#wickettype").val();
	//	alert(boardId);
		//alert(JSON.strigify());
		var groundBean = {
				groundName : groundName,
				address1 : address1,
				address2: address2,
				city : city,
				state: state,
				country:country,
				zipcode:zipcode,
				createdBy : boardId,
				homeTeamId : teamId,
				modifiedBy : boardId,
				latLang :latLang.replace(/[^a-zA-Z0-9\.,]/g, ""),
				groundFacilities : groundfacilities,
				directionsToGround : grounddirection,
				pitchDescription : pitchdescription,
				landmark : landmark,
				wicketType : wickettype
		}
		//alert(JSON.stringify(groundBean));
		$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/insertGroundDetails",
		data:JSON.stringify(groundBean),
		contentType :"application/json; charset=utf-8",
		success:function(res){
			//alert(res);
			window.location.href = "${pageContext.request.contextPath}/ground-list/"+boardId;
		},
		error:function(err){
			alert(err);
		}
		
			
		})
		
	}
	
}


/* New GeoLocation */
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

	  var address = $("#autocomplete").val();
	  var city = $("#city").val();
	  
	  var address1 = address+","+city;
	  
	  $("#hiddenAddressCity").val(address);
	  
	  if(addressType == 'administrative_area_level_1') {
	   document.getElementById('state').value = val;
		}
	  if(addressType == 'country')
		  {
		   document.getElementById('country').value = val;
		   $('.label.error').text('');
		  }
	  
	  if(addressType == 'postal_code')
	  {
	   /* document.getElementById('zipcode').value = val;
	   $('.label.error').text(''); */
	   
		  var numbers = /^[0-9]+$/; 
		  if(numbers.test(val)){
			  document.getElementById('zipcode').value = val;
			   $('.label.error').text('');
		  }else{
		  }
	  }
	  
	  if(address != ''){
		  GetLocation();
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

function newGeoLocation(){
	
	for (var i = 0, marker; marker = markers[i]; i++) {
		marker.setMap(null);
	}
	var address = $("#autocomplete").val();
	var city = $("#autocomplete").val();
	var addresscity = address+","+city;
	//$("#city").val(addresscity);
	if(address != '' && city != ''){
		GetLocation();
	}
}

function checkValidation(){
	var cityVal = $("#autocomplete").val();
	if(cityVal == ''){
		for (var i = 0, marker; marker = markers[i]; i++) {
			marker.setMap(null);
		}
		$("#state").val("");
		$("#country").val("");
		$("#city").val("");
		$("#zipcode").val("");
	}
}
	
</script>
   
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4eJlFHh6Wm9BWa8x-H-cBUjCcdlEplT0&signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
   
</body>
</html>
