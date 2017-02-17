
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://example.com/functions" prefix="f" %>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>
</head>
<body>
<%@ include file="CSCommon.jsp" %>
  
<%@ include file="BoardHeader.jsp" %>


<%-- 	<%@ include file="BoardHeader.jsp" % --%>


 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        <%@ include file="BoardSideMenu.jsp" %>

<script>

$(document).ready(function(){
	var formatAMPMTime = function(date) {
		  var hours = date.getHours();
		  console.log(hours)
		  var minutes = date.getMinutes();
		  var ampm = hours >= 12 ? 'PM' : 'AM';
		  hours = hours % 12;
		  hours = hours ? hours : 12; // the hour '0' should be '12'
		  minutes = minutes < 10 ? '0'+minutes : minutes;
		  hours = hours < 10 ? '0'+hours : hours ;
		  var strTime = hours + ':' + minutes + ampm;
		  
		  
 // set value //
		  
		  $("#hourValue").val(hours);
		  $("#minuteValue").val(minutes);
		  $("#timeMode").val(ampm);
		  
		  
		  return strTime;
		}
	
	var formatDate = function(date) {
		  var hours = date.getHours();
		  console.log(hours)
		  var minutes = date.getMinutes();
		  var ampm = hours >= 12 ? 'PM' : 'AM';
		  hours = hours % 12;
		  hours = hours ? hours : 12; // the hour '0' should be '12'
		  minutes = minutes < 10 ? '0'+minutes : minutes;
		  hours = hours < 10 ? '0'+hours : hours ;
		  var strTime = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear();
		  return strTime;
		};
	
			var date = "${eventTime}";
			//alert(date);
		    var offset = new Date().getTimezoneOffset() * 60 * 1000;
		var gettingFromServer= new Date(date);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		var timeToSend = formatAMPMTime(gettingFromServer);
		var dateToSend = formatDate(gettingFromServer);
		//alert(dateToSend);
		$("#strTime").val(timeToSend);
		$("#strDate").val(dateToSend);
		
});


</script>

<script type="text/javascript">

$(document).ready(function (){
	
	$('.datepicker').datepicker();
	
	$('.datepicker').on('changeDate', function(ev){
		$(this).datepicker('hide');
	});
	
	var buddyDiv="${BuddyDiv}";
	
	if(buddyDiv=='true')
		{
			$('#buddiesListDiv').show();
			//alert('buddy div '+buddyDiv);
		}
	var rosterdiv="${RosterDiv}";
	if(rosterdiv=='true')
	{
		$('#roasterListDiv').show();
	}
	
});


</script>
      
                  
            <div class="col-md-10 pull-right">
            		<c:choose>
            		
	            			<c:when test="${!empty message}">
		            				<div style="color: red;">
		            						${message}
		            				</div>
	            			</c:when>
            				<c:otherwise>
            				
            				</c:otherwise>
            		</c:choose>
      			<div class="col-md-12 whiteBox">
                	<h1 class="">Edit Event</h1>
                    <div class="col-md-12 createEvent">
                    
                  <!--   <form  id="createEventForm" name="createEventForm" action="saveevent" method="post"> -->
                   <form action="${pageContext.request.contextPath}/updateboardevent"  id="createEventForm" method="post"  enctype="multipart/form-data" name="createEventForm" onsubmit="return eventValidation()">
                    	
                             
                    
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Event Type</label>
                           <!--  <input type="text" placeholder="" class="form-control tbox fomtexbox" id=""> -->
                           
                           <div class="fomtexbox ">
                           	<div class="selectdiv">
                           <select name="eventTypeId" id="eventTypeId" class="selectboxdiv">
                           			<!-- <option value="General">General</option> -->
                           			<!-- <option value="">Select event type</option> -->
                           			<c:forEach items="${EventType}" var="eve">
                           					
                           					 <c:choose>
                           							<c:when test="${eve.eventTypeName eq EditEventObj.eventTypeId }">
                           									<option selected="selected"  value="${eve.eventTypeName}">${eve.eventTypeName}</option>
                           							</c:when>
                           							<c:otherwise>
                           									<option value="${eve.eventTypeName}">${eve.eventTypeName}</option>
                           							</c:otherwise>
                           					</c:choose>                           			
                           				
                           			
                           			
                           			</c:forEach>
                           </select>
                            <div class="out"></div> 
                           </div>
                           </div>
                           
                          </div>
                          
                              <input type="hidden" name="createdBy" id="createdBy" value="${BoradInfo.boardId}">
                              <input type="hidden" name="modifiedBy" id="modifiedBy" value="${BoradInfo.boardId}"> 
                              <input type="hidden" name="eventCreatedFrom" id="eventCreatedFrom" value="Board">                          
                          	<input type="hidden" name="eventId" id="eventId" value="${EditEventObj.eventId}">
                          	<input type="hidden" id="timeZone" name="timeZone" value="">
                          	
                          	
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Event Name</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="eventName" name="eventName" value="${EditEventObj.eventName}">
                          </div>
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Event Description</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="eventDescription" name="eventDescription" value="${EditEventObj.eventDescription}">
                          </div>
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Date&Time</label>
                            <!-- <input type="text" placeholder="" class="form-control tbox fomtexbox datepicker" id="" > -->
                            
                            <%--  <div id="datetimepicker3" class="input-append">
                                    <input data-format="yyyy-MM-dd" type="text" class="form-control fomtexbox" name="strDate" id="strDate" value="<fmt:formatDate pattern="YYYY-M-d" value="${EditEventObj.eventDateAndTime}" />">
                                    <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span>
                                  </div> --%>
                                  <div class="input-group " style="width: 65%;">
                                  <div class="col-md-5 noLeftPad">
                                   <div class="input-append">
                                    <input data-format="yyyy-MM-dd" placeholder="Choose event date" readonly type="text" class="form-control fomtexbox datepicker calIconImg" name="strDate" id="strDate" value="">
                                   <!--  <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span> -->
                                  </div>
                                  </div>
                                  
                                  
                                   <div class="col-md-3 ">
                              <input type="text" id="hourValue" name="hourValue" placeholder="Hour" class="form-control" onblur="validateHourInput()" style="border-radius: 4px;" />
                             </div>
                             <div class="col-md-3">
                              <input type="text" id="minuteValue" name="minuteValue" placeholder="Minutes" class="form-control" onblur="validateMinuteInput()" style="border-radius: 4px; margin-left: -7px;" />
                               </div>
                               <div class="col-md-1 noRightPad">
                               <select id="timeMode" style="width: 140%; height: 34px; border: 1px solid #ccc; border-radius: 4px; margin-left: -15px;">
                              <option value="AM">AM</option>
                              <option value="PM">PM</option>
                              </select>
                              </div>
                              <!-- <div  id="timeValidation" class="error" style="display: none;color: red;">Please enter valid time</div> -->
                              <span id="timeValidation" class="error" style="color: red;"></span>
                              
                              <input type="hidden"  value="" id="strTime" name="strTime">
                                  
                                  
                                  
                            </div>
                            
                          </div>
                         
                          
                          
                          <!-- <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Time</label>
                            
                            
                            <div class="input-group " style="width: 65%;">
                             <div class="col-md-5 noLeftPad">
                              <input type="text" id="hourValue" name="hourValue" placeholder="Hour" class="form-control" onblur="validateHourInput()" style="border-radius: 4px;" />
                             </div>
                             <div class="col-md-5">
                              <input type="text" id="minuteValue" name="minuteValue" placeholder="Minutes" class="form-control" onblur="validateMinuteInput()" style="border-radius: 4px;" />
                               </div>
                               <div class="col-md-2 noRightPad">
                               <select id="timeMode" style="width: 100%; height: 34px; border: 1px solid #ccc; border-radius: 4px;">
                              <option value="AM">AM</option>
                              <option value="PM">PM</option>
                              </select>
                              </div>
                              <div  id="timeValidation" class="error" style="display: none;color: red;">Please enter valid time</div>
                              <span id="timeValidation" class="error" style="color: red;"></span>
                              
                              <input type="hidden"  value="" id="strTime" name="strTime">
                              
                              </div>
                            
                            
                          </div> -->
                          
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Venue</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="venue" name="venue" onFocus="geolocate()" value="${EditEventObj.venue}">
                          </div>
                          
                          <div class="form-group">
                          
                           <label class="fomlabel" for="r1"><span class="mandatory">*</span>Invitees</label>
                          <c:choose>
                          	<c:when test="${f:contains('Public',SelectCheck)}">
                          	
                          	<input type="checkbox" class="cboxBtnLeft" id="public" checked name="createdBycheck" value="Public" onclick="buddiesList()">
                          <label for="public"><span></span>Fan</label>
                          	</c:when>
                          	<c:otherwise>
                          		<input type="checkbox" class="cboxBtnLeft" id="public" name="createdBycheck" value="Public" onclick="buddiesList()">
                          <label for="public"><span></span>Fan</label>
                          	</c:otherwise>
                          </c:choose>
                           
                          
                          <c:choose>
                          	<c:when test="${f:contains('Buddy',SelectCheck)}">
                          	
                          	 <input type="checkbox" class="cboxBtnLeft" id="buddy" checked="checked" name="createdBycheck" value="Buddy" onclick="buddiesList()">
                          <label for="buddy"><span></span>Buddy</label>
                          
                          	</c:when>
                          	<c:otherwise>
                          		 <input type="checkbox" class="cboxBtnLeft" id="buddy" name="createdBycheck" value="Buddy" onclick="buddiesList()">
                          <label for="buddy"><span></span>Buddy</label>
                          
                          	</c:otherwise>
                          </c:choose>
                          
                           <c:choose>
                          	<c:when test="${f:contains('Roster',SelectCheck)}">
                          	
                          	 <input type="checkbox" class="cboxBtnLeft" id="Roaster" checked name="createdBycheck" value="Roster" onclick="buddiesList()">
                          <label for="Roaster"><span></span>Roster</label>
                          	</c:when>
                          	<c:otherwise>
                          		<input type="checkbox" class="cboxBtnLeft" id="Roaster" name="createdBycheck" value="Roster" onclick="buddiesList()">
                          <label for="Roaster"><span></span>Roster</label>
                          	</c:otherwise>
                          </c:choose>
                          
                          
                          </div>
                          
                           <div style="color: red;margin-left: 239px;margin-bottom: 10px" id="createdBycheckError">
                         
                          </div>
                     
                     
                     
                     <div class="form-group" id="buddiesListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Buddies</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="buddysearchfield" name="buddysearchfield">
                          	<input type="hidden" name="arrayUserids" id="arrayUserids">
                          	
                          	<span id="buddyvalidation" class="error" style="color: red; float: left;"></span> 
                          	
                                <div>                                	
                                </div>
                    </div>
                    <div class="form-group" id="roasterListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Roster</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="roastersearchfield" name="roastersearchfield">
                          	<input type="hidden" name="arrayRoasterIds" id="arrayRoasterIds">
                                <div>                                	
                                </div>
                    </div> 
                        <label class="fomlabel" for="r1"></label>
                     <button type="submit" class="btn dBtn">Send Invite</button>   
                   </form>
                 </div>
                
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
<%@ include file="Footer.jsp" %>

<script type="text/javascript">

function buddiesList()
{
	
	if(document.getElementById('buddy').checked)
		{
			//alert('checked');
			$('#buddiesListDiv').show();
		}else{
			//alert('un checked');
			$('#buddiesListDiv').hide();
		}
	
	if(document.getElementById('Roaster').checked)
	{
		//alert('checked');
		$('#roasterListDiv').show();
	}else{
		//alert('un checked');
		$('#roasterListDiv').hide();
	}
	
	
	}
</script>
<script type="text/javascript">
var arruserid=[];
var arrroaster=[];
var board=$('#createdBy').val();
$(function(){
	 $("#buddysearchfield").tokenInput("${pageContext.request.contextPath}/buddySearchForMultipleSelection/",{
	    	theme: "facebook",   
	    	onAdd: function (item) {
	    		var index = arruserid.indexOf(item.id);
	    		if(index==-1)
	    			{
	    				arruserid.push(item.id);
		    			$('#arrayUserids').val(arruserid);
	    			}else{
	    				displaynotification('already exist',2000);
	    			}
	    		if(arruserid.length!=0)
                {
	    			$("#buddyvalidation").text('');
				}
	    		
	    		
	    	},
	    	preventDuplicates: true,
	    	onDelete: function (item) {
	        	var index = arruserid.indexOf(item.id);
				if (index >= 0) {
					arruserid.splice( index, 1 );
				}
				$('#arrayUserids').val(arruserid);
	    },
	    resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"}
	    /* onResult: function (item) {
	        if($.isEmptyObject(item)){
	            return [{id:'0',name: "No results found"}];
	      }else{
	            return item;
	      }
	    } */
	   });
	// boardId, String searchQuery
	 $("#roastersearchfield").tokenInput("${pageContext.request.contextPath}/roasterEventSearch?boardId="+board,{
	    	theme: "facebook",   
	    	onAdd: function (item) {
	    		var index = arrroaster.indexOf(item.id);
	    		if(index==-1)
	    			{
	    			arrroaster.push(item.id);
		    			$('#arrayRoasterIds').val(arrroaster);
	    			}else{
	    				displaynotification('Already exist',2000);
	    			}
	    		
	    		
	    	},
	    	preventDuplicates: true,
	    	onDelete: function (item) {
	        	var index = arrroaster.indexOf(item.id);
				if (index >= 0) {
					arrroaster.splice( index, 1 );
				}
				$('#arrayRoasterIds').val(arrroaster);
	    },
	  //  resultsFormatter: function(item){ return "<li>" + "<img src='" + item.userImageUrl + "' title='" + item.name +"' height='50px' width='50px' onerror=errorImageset(this)/>" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.name + "</div></div></li>"}
	    onResult: function (item) {
	        if($.isEmptyObject(item)){
	            return [{id:'0',name: "No results found"}];
	      }else{
	            return item;
	      }
	    }
	   });
	 
});


function errorImageset(id)
{
	id.src="${pageContext.request.contextPath}/images/profileIcon.png";
	
}


function eventValidation(){
	//$('#userprofileupdateform').valid()
	timeFunction();
	if($('#createEventForm').valid()){
		console.log('------------------------------ event validation function---------------------------------------------------------');
		var selectedDateAndTime =  $("#strDate").val()+" "+$("#strTime").val().replace("AM", " AM").replace("PM", " PM");
		if (new Date(selectedDateAndTime).getTime() < new Date().getTime()) {
			$("#timeValidation").text('Please enter valid time');
			$("#timeValidation").show();
			console.log('------------------------------ event validation function true------------- new Date(selectedDateAndTime).getTime() < new Date().getTime()  --------------------------------------------');
			return false;
			}else{
				console.log('------------------------------ event validation function-  false;--------------------------------------------------------');
				$("#timeValidation").text('');
			}
		//return true;
	}
	
	if(document.getElementById('buddy').checked)
	{
	if(arruserid.length==0)
         {
		 $("#buddyvalidation").text('Please select the buddies.'); 
		return false;
		}else
			{
			 $("#buddyvalidation").text(''); 
			}
	
	
	}
}

</script>

<script type="text/javascript">
$(function(){
//	showfun(1000);
//	hide_notificationpoup(2000);
	$('#createEventForm').validate({
		 errorPlacement: function(error, element) {
				/*  error.insertAfter(element); */
				if (element.attr("name") == "createdBycheck")  {
					error.appendTo("#createdBycheckError");
					//createdBycheckError
					// error.insert("#createdBycheckError");
				  } else {
				     error.insertAfter(element);
				  }
},
			 rules: {
		         	
				 eventTypeId : {
	                     required: true 
	                    
	                 },
	                 eventName : {
                    required: true,   	                  
                    minlength : 2,
        			 maxlength : 100
                },
             
                eventDescription : {
                    required: true,   	                  
                    minlength : 2,
        			 maxlength : 100
                },
                strTime : {
	                     required: true   	                  
	                   
	                 },
	                 strDate : {
                    required: true  	                  
                    
                },
               
                venue : {
                    required: true,   	                  
                    minlength : 2,
        			 maxlength : 100
                },
                createdBycheck : {
	                     required: true   	                  
	                    
	                 }
	                 
	                 
	             },
	             messages: {
	            	
	            	 eventTypeId : {
	                     required: "Please enter your first name"  	                 	                     
	                    
	                 },
	                 eventName : {
                    required: "Please enter event name",   	                 	                     
                    minlength :"Type event at least 2 character",
            		 maxlength : "Event name should be below 100 character's"
                },
              
                eventDescription : {
                    required: "Please enter event description",   	                 	                     
                    minlength :"Type description at least 2 character",
            		 maxlength : "Description should be below 100 character's"
                },
                strTime: {
	                     required: "Please choose event time"   	                 	                     
	                    
	                 },
	                 strDate : {
                    required: "Please choose event date"   	                 	                     
                   
                },
               
                venue : {
                    required: "Please enter event venue",   	                 	                     
                    minlength :"Type lastName at least 2 character",
            		 maxlength : "Venue details should be below 100 character's"
                },
                createdBycheck: {
	                     required: "Please choose event invitees"   	                 	                     
	                   
	                 }
	                
	             }        
			
		    });
});


</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tokeninput.js"></script>
<!-- <script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>  -->
        <!--Clock JS-->

<script type="text/javascript"  src="${pageContext.request.contextPath}/js/bootstrap-clockpicker.min.js"></script>

<script type="text/javascript">
$('.clockpicker').clockpicker({
	donetext: 'Done',
	twelvehour:true
	
	});
</script>

 <script>
  		var timeZone = jstz.determine().name();
  		$("#timeZone").val(timeZone);
  		function timeValidation(){
  			$("#timeValidation").hide();
  			var time=$("#strTime").val();
  			var date=$("#strDate").val();
  			$("#timeValidation").text('');
  			if(time!='' && date!=''){
  				

  				 var selectedDateAndTime =  $("#strDate").val()+" "+$("#strTime").val().replace(
  							"AM", " AM").replace("PM", " PM");
  					if (new Date(selectedDateAndTime).getTime() < new Date().getTime()) {
  						$("#timeValidation").text('Please enter valid time');
  						$("#timeValidation").show();
  						return;
  		}else{
  			$("#timeValidation").text('');
  		}
  				
  				
  			}
  			
  		}		
  </script>
  
  <script type="text/javascript">
  
  
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
        /** @type {!HTMLInputElement} */(document.getElementById('venue')),
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
  
  
  <script type="text/javascript">
  
  function validateHourInput(){
		
		var hour = parseInt($("#hourValue").val());
		var max = 12;
		//alert("Invalid"+hour);
		var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
		if(hour > max){
		//alert("Invalid");
		$("#timeError").text("Please enter valid game time");
		}else if(numberRegex.test($("#hourValue").val()) != true){
		$("#timeError").text("Please enter valid game time");
		}else{
		//alert("valid");
		$("#timeError").text("");
		}
		
		
		}
	   function validateMinuteInput(){
	   var minute = parseInt($("#minuteValue").val());
	   var max = 60;
	   var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
	   //alert("Invalid"+min);
		if(minute > max){
		//alert("Invalid Minute");
		$("#timeError").text("Please enter valid game time");
		}else if(numberRegex.test($("#minuteValue").val()) != true){
		$("#timeError").text("Please enter valid game time");
		}else{
		//alert("valid Minute");
		$("#timeError").text("");
		}
		
		if(numberRegex.test($("#hourValue").val()) != true){
		$("#timeError").text("Please enter valid game time");
		}
	   }
	   
	   
	   
	   
	   function timeFunction(){
			//var date  = $("#time").val();
			
			var date = $("#hourValue").val();
			var minute = $("#minuteValue").val();
			var max = 12;
			var maxMinute = 60;
			var hour = parseInt(date);
			var minuteValue = parseInt(minute);
			var numberRegex = /^[+-]?\d+(\.\d+)?([eE][+-]?\d+)?$/;
			console.log("time value--->>"+date);
		if(date == null || date == "" || typeof date == 'undefined' || date == '00' || date == '0'){
			return false;
		}else if(minute == null || minute == "" || typeof minute == 'undefined' || minute == '0'){
			return false;
		}else if(hour > max || minuteValue > maxMinute ){
			return false;
		}else if(numberRegex.test(date) != true || numberRegex.test(minute) != true){
			return false;
		}else{
			
			var hour = $("#hourValue").val();
	         var min = $("#minuteValue").val();
	         var timeMode = $("#timeMode").val();
	         $("#strTime").val(hour+":"+min+""+timeMode);
	         
			return true;
		}
			}
	   
	   
  
  </script>
  
  
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4eJlFHh6Wm9BWa8x-H-cBUjCcdlEplT0&signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script> 
</body>
</html>
