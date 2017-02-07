<!DOCTYPE html>
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
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">
<script type="text/javascript">


</script>

</head>
<body onclick="datehasbeenchoosenornot()">
<%@ include file="CSCommon.jsp" %>
  
<%@ include file="BuddyHeader.jsp" %>


<%-- 	<%@ include file="BoardHeader.jsp" % --%>


 <section class="middleContentBlock">
<%-- <div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div> --%>
<%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        <%@ include file="BuddySideMenu.jsp" %>


      
                  
            <div class="col-md-10 pull-right">
          <script type="text/javascript">

 $(document).ready(function (){
		
		$('.datepicker').datepicker({
			dateFormat: "yyyy-MM-dd", 
			startDate: new Date(),
			 autoclose: true,
		});
		
		/* $('.datepicker').on('changeDate', function(ev){
			$(this).datepicker('hide');
		}); */
		
	});

 var giveAMPMTO24 = function(argument) {
		var time = argument;
		var hours = Number(time.match(/^(\d+)/)[1]);
		var minutes = Number(time.match(/:(\d+)/)[1]);
		var AMPM = time.match(/\s(.*)$/)[1];
		if (AMPM == "PM" && hours < 12) hours = hours + 12;
		if (AMPM == "AM" && hours == 12) hours = hours - 12;
		var sHours = hours.toString();
		var sMinutes = minutes.toString();
		if (hours < 10) sHours = "0" + sHours;
		if (minutes < 10) sMinutes = "0" + sMinutes;
		return sHours + sMinutes;
	};
	/*var aTime = "10:00 AM";

	console.log(giveAMPMTO24(aTime))*/
	var formatAMPMTime = function(date) {
	  var hours = date.getHours();
	  console.log(hours)
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  var strTime = hours + ':' + minutes + ' ' + ampm;
	  return strTime;
	};
	
	function timeValidation(){
		$("#timeValidation").hide();
		var time=$("#strTime").val();
		var date=$("#strDate").val();
		if(time!='' && date!=''){
			

			 var selectedDateAndTime =  $("#strDate").val()+" "+$("#strTime").val().replace(
						"AM", " AM").replace("PM", " PM");
				if (new Date(selectedDateAndTime).getTime() < new Date().getTime()) {
					$("#timeValidation").show();
					return;
	}
			
			
		}
		
	}
 function submitForm(){
	 //store fomr object	 
	 $("#timeValidation").hide();
	 
	 timeFunction();
	 
	 var selectedTime=$("#strTime").val().replace("AM"," AM").replace("PM"," PM");
	 if($('#createEventForm').validate({
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
	        			 maxlength : 50
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
	                    required: "Please enter the event name",   	                 	                     
	                    minlength :"Type event at least 2 character",
	            		 maxlength : "Event name should be below 50 character's"
	                },
	              
	                eventDescription : {
	                    required: "Please enter the event description",   	                 	                     
	                    minlength :"Type description at least 2 character",
	            		 maxlength : "Description should be below 100 character's"
	                },
	                strTime: {
		                     required: "Please choose the event time"   	                 	                     
		                    
		                 },
		                 strDate : {
	                    required: "Please choose the event date"   	                 	                     
	                   
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
				
			    }).form()){

		/*  if(giveAMPMTO24(formatAMPMTime(new Date()))>giveAMPMTO24(selectedTime)){
			alert("inside this");
			$("#timeValidation").show();
			return;
		 } */
		 var selectedDateAndTime =  $("#strDate").val()+" "+$("#strTime").val().replace(
					"AM", " AM").replace("PM", " PM");
			if (new Date(selectedDateAndTime).getTime() < new Date().getTime()) {
				$("#timeValidation").show();
				return;
}
			
			if(document.getElementById('buddy').checked)
				{
				if(arruserid.length==0)
                     {
					 $("#buddyvalidation").show(); 
					return;
					}else
						{
						$("#buddyvalidation").hide();
						}
				
				
				}
			/* if(checkboxchecked){
				if(textContains==""){
					$(#"")
				}
			} */
	 var pushingEventInArray = function(){
		 var twentyMinutesLater = new Date();
		 twentyMinutesLater.setMinutes(twentyMinutesLater.getMinutes() + 2);
		 return {
			 EventName:$("#eventName").val(),
			 EventDescription:$("#eventDescription").val(),
			 EvenVenue:$("#venue").val(),
			 EventDate:new Date($("#strDate").val()).getDate(),
			 EventDay:["Sun","Mon","Tue","Wed","Thu","Fri","Sat"][new Date($("#strDate").val()).getDay()],
			 CreatedName:"James Bond 007",
			 DateAndTime:$("#strDate").val()+" "+$("#strTime").val(),
			 CokkieTimeStamp:twentyMinutesLater.getTime()
		 }
	 };
	 if(typeof localStorage.createdEvents5 !== "string"){
		 var temp=[];
		 temp.push(pushingEventInArray());
		 localStorage.createdEvents5=JSON.stringify(temp);
	 }else{
		 var temp=JSON.parse(localStorage.createdEvents5);
		 temp.push(pushingEventInArray());
		 localStorage.createdEvents5=JSON.stringify(temp);
		
	 }
	 //alert("after pushing "+JSON.stringify(localStorage.createdEvents5));
	 $("#createEventForm").submit();
	 }
 }
</script>  		
      			<div class="col-md-12 whiteBox">
                	<h1 class="">Create Event</h1>
                    <div class="col-md-12 createEvent">
                    
                    <c:choose>
            		
	            			<c:when test="${!empty message}">
		            				<div style="color: red;">
		            						${message}
		            				</div>
	            			</c:when>
            				<c:otherwise>
            						
            				</c:otherwise>
            		</c:choose>
                    <script>
                    //alert("${message1}");
                    </script>
                  <!--   <form  id="createEventForm" name="createEventForm" action="saveevent" method="post"> -->
                   <form action="${pageContext.request.contextPath}/saveBuddyevent"  id="createEventForm" method="post"  enctype="multipart/form-data" name="createEventForm" >
                    	
                             
                    
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Event Type</label>
                           <!--  <input type="text" placeholder="" class="form-control tbox fomtexbox" id=""> -->
                           
                           <div class="fomtexbox ">
                           	<div class="selectdiv">
                           <select name="eventTypeId" id="eventTypeId" class="selectboxdiv">
                           			<!-- <option value="General">General</option> -->
                           			<!-- <option value="">Select event type</option> -->
                           			<c:forEach items="${EventType}" var="eve">
                           				<option value="${eve.eventTypeName}">${eve.eventTypeName}</option>
                           			</c:forEach>
                           </select>
                            <div class="out"></div> 
                           </div>
                           </div>
                           
                          </div>
                          
                              <input type="hidden" name="createdBy" id="createdBy" value="${USRID}">
                              <input type="hidden" name="modifiedBy" id="modifiedBy" value="${USRID}"> 
                              <input type="hidden" name="eventCreatedFrom" id="eventCreatedFrom" value="Buddy">                          
                          <input type="hidden" id="timeZone" name="timeZone" value="">
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Event Name</label>
                            <input type="text" placeholder="Add a short, clear name" class="form-control tbox fomtexbox" id="eventName" name="eventName">
                          </div>
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Event Description</label>
                            <input type="text" placeholder="Tell people more about the event" class="form-control tbox fomtexbox" id="eventDescription" name="eventDescription">
                          </div>
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Date</label>
                            <!-- <input type="text" placeholder="" class="form-control tbox fomtexbox datepicker" id="" > -->
                            
                            
                            
                            
                            
                             	<div class="input-append" id="strdateselecter">
                                    <input data-format="yyyy-MM-dd" placeholder="Choose event date " readonly type="text" class="form-control fomtexbox datepicker calIconImg" name="strDate" id="strDate">
                                   <!--  <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span> -->
                                  </div>
                            
                            
                          </div>
                          
                          
                          <div class="form-group" >
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Time</label>
                            <!-- <input type="text" placeholder="" class="form-control tbox fomtexbox" id=""> -->
                            
                            <!-- <div id="datetimepicker4" class="input-append">
                                    <input data-format="hh:mm:ss" type="text" placeholder="Choose event time" readonly class="form-control fomtexbox" id="strTime" name="strTime">
                                    <span class="add-on datetime">
                                      <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="fa fa-clock-o eve_calIcon" >
                                      </i>
                                    </span>
                                  </div> -->
                                  
                                 <!--  <div class="input-group clockpicker" id="strtimeselecter">
                                <input type="text" placeholder="Choose event time"  class="form-control fomtexbox clockIconImg" value="" id="strTime" name="strTime" readonly onfocus="timeValidation()">
                               <div  id="timeValidation" class="error" style="display: none;color: red;">Please enter valid time</div> 
                                
                            </div> -->
                            
                            <div class="input-group" style="width: 65%;">
                             
                             <div class="col-md-5 noLeftPad">
                              <input type="text" id="hourValue" name="hourValue" placeholder="Hour" class="form-control" onblur="validateHourInput()"  style="border-radius: 4px;"/>
                              </div>
                              <div class="col-md-5">
                              <input type="text" id="minuteValue" name="minuteValue" placeholder="Minutes" class="form-control" onblur="validateMinuteInput()"  style="border-radius: 4px;"/>
                              </div>
                              <div class="col-md-2 noRightPad">
                               <select id="timeMode" style="width: 100%; height: 34px; border: 1px solid #ccc; border-radius: 4px;">
                              <option value="AM">AM</option>
                              <option value="PM">PM</option>
                              </select>
                              </div>
                              <div  id="timeValidation" class="error" style="display: none;color: red;">Please enter valid time</div>
                              
                              <input type="hidden"  value="" id="strTime" name="strTime">
                              
                              </div>
                                  
                            
                          </div>
                          
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Venue</label>
                            <input type="text" placeholder="Include a place or address" class="form-control tbox fomtexbox" onFocus="geolocate()" id="venue" name="venue">
                          </div>
                          
                          <div class="form-group">
                          
                           <label class="fomlabel" for="r1"><span class="mandatory">*</span>Invitees</label>
                          
                           <input type="checkbox" class="cboxBtnLeft" id="public" name="createdBycheck" value="Public" onclick="buddiesList()">
                          <label for="public"><span></span>Fan</label>
                          
                          
                           <input type="checkbox" class="cboxBtnLeft" id="buddy" name="createdBycheck" value="Buddy" onclick="buddiesList()">
                          <label for="buddy"><span></span>Buddy</label>
                          </div>
                          <div style="color: red;margin-left: 265px;margin-bottom: 10px; clear: both;" id="createdBycheckError">
                         	<label for="createdBycheck" generated="true" class="error" style="display: inline-block;margin-left: -1px;"></label>
                          </div>
                           
                     
                     
                     
                     <div class="form-group" id="buddiesListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Buddies</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="buddysearchfield" name="buddysearchfield">
                          	 <label  id="buddyvalidation" class="error" style="display: none">Please select the buddies.</label>
                          	<input type="hidden" name="arrayUserids" id="arrayUserids">
                                <div>                                	
                                </div>
                    </div> 
                        <label class="fomlabel" for="r1"></label>
                     <button type="button"  onclick="submitForm()" class="btn dBtn">Send Invite</button> 
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

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

var createdEvents = JSON.parse(localStorage.createdEvents5);
if(createdEvents.length){
for(var i=0;i<createdEvents.length;i++){
	if(createdEvents[i].CokkieTimeStamp <= new Date().getTime()){
		createdEvents.splice(i,1);
		break;
	}
	if(getParameterByName("EventVenue",window.location.href) == createdEvents[i].EvenVenue && getParameterByName("EventName",window.location.href) == createdEvents[i].EventName){
		//alert("condition matched");
		createdEvents[i].EventID= getParameterByName("EventID",window.location.href);
	}
}
localStorage.createdEvents5=JSON.stringify(createdEvents);
}
//alert(localStorage.createdEvents5);

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
	
	
	}

</script>
<script type="text/javascript">
var arruserid=[];
$(function(){
	 $("#buddysearchfield").tokenInput("${pageContext.request.contextPath}/buddySearchWithoutCurrentUser/",{
	    	theme: "facebook",   
	    	onAdd: function (item) {
	    		var index = arruserid.indexOf(item.id);
	    		if(index==-1)
	    			{
	    				arruserid.push(item.id);
		    			$('#arrayUserids').val(arruserid);
	    			}else{
	    				//alert('already exist');
	    			}
	    		if(arruserid.length!=0)
                {
				$("#buddyvalidation").hide();
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
	    
	   });
});


function errorImageset(id)
{
	id.src="${pageContext.request.contextPath}/images/profileIcon.png";
	
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
        			 maxlength : 50
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
            		 maxlength : "Event name should be below 50 character's"
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


/* 
function submitCreateEvent(){
	
	 if($("#createEventForm").validate({
		errorPlacement: function(error, element) {
			
			if (element.attr("name") == "createdBycheck")  {
				error.appendTo("#createdBycheckError");
				
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
			
		    }).form()){
		    	
		   var date = $("#strDate").val();
			var time = $("#strTime").val();
			var currentDate = new Date(new Date().getTime()).toLocaleDateString(); 
			
			var getTime = time.split(':');
			var getTime1 = getTime[0];
			//alert(getTime);
			if(getTime[0] == '12'){
				getTime1 = '00';
				//alert("get time 00 ");
			}else{
				getTime1 = getTime[0];
				//alert("get time 11 ");
			}
			
			var currenTime1 = getTime1+":"+getTime[1];
			alert("currenTime1 :"+currenTime1);
			
			var date1 = Date.parse(currentDate);
			var date2 = Date.parse(new Date(date).toLocaleDateString());
			
			
			
			if(date1 == date2){
				
				var now = new Date();
				var hh = now.getHours();
				var min = now.getMinutes();
						
					var ampm = (hh>=12)?'pm':'am';
						hh = hh%12;
						hh = hh?hh:12;
						hh = hh<10?'0'+hh:hh;
						min = min<10?'0'+min:min;
						
					var currentTime = hh+":"+min+""+ampm;
					//alert(currentTime);
				
				//var curDateTime = currentDate+" "+currentTime;
				//var choosenDateTime = new Date(date).toLocaleDateString()+" "+time;
					
				//alert("current time "+currentDate+" "+currentTime+" choosen time :"+ new Date(date).toLocaleDateString()+" "+time);
				
				if(currentTime == currenTime1 || currentTime >  currenTime1){
					//alert(" inside past time");
					
					displaynotification("You choose past time.",1000);
				}else{
				
					$("#createEventForm").submit();
					//alert("inside not past time");
				}
				
				
			}else{
				//alert("i am not equal");
				$("#createEventForm").submit();
			}
		 
		 
		    }
	
	
	
	

	
} */

</script>

 <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
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
	
function datehasbeenchoosenornot()
{
	var date=$('#strDate').val();
	if(date.length>0)
		{
		$('#strdateselecter label').hide();
		}
	var time=$('#strTime').val();
	if(time.length>0)
		{
		$('#strtimeselecter label').hide();
		}
	}
</script>
 <script>
  		var timeZone = jstz.determine().name();
  		$("#timeZone").val(timeZone);
			
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
        
        

</body >
</html>