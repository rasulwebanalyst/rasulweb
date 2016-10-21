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
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>
    
</head>
<body onclick="datehasbeenchoosenornot()">
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
	//$(".datepicker").datepicker({ dateFormat: "yy-mm-dd" }).val()
	//$( ".datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd"  );
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
                	<h1 class="">Create Event</h1>
                    <div class="col-md-12 createEvent">
                    
                  <!--   <form  id="createEventForm" name="createEventForm" action="saveevent" method="post"> -->
                   <form action="${pageContext.request.contextPath}/saveevent"  id="createEventForm" method="post"  enctype="multipart/form-data" name="createEventForm">
                    	
                             
                    
                          <div class="form-group">
				            <label class="fomlabel" for="r1">Event Type</label>
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
                          
                              <input type="hidden" name="createdBy" id="createdBy" value="${BoradInfo.boardId}">
                              <input type="hidden" name="modifiedBy" id="modifiedBy" value="${BoradInfo.boardId}"> 
                              <input type="hidden" name="eventCreatedFrom" id="eventCreatedFrom" value="Board"> 
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
                            
                             <!-- <div class="input-append">
                                    <input type="text" placeholder="Choose event date" readonly class="form-control fomtexbox datepicker" name="strDate" id="strDate">
                                    <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span>
                                  </div> -->
                                  <div class="input-append" id="strdateselecter">
                                    <input data-format="yyyy-MM-dd" placeholder="Choose event date " readonly type="text" class="form-control fomtexbox datepicker calIconImg" name="strDate" id="strDate">
                                   <!--  <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span> -->
                                  </div>
                            
                            
                          </div>
                          <!-- <div class="form-group">
				            <label class="fomlabel" for="r1">Date2</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox datepicker" id="" >
                            
                             <div id="testdatepicker" class="input-append">
                                    <input data-format="yyyy-MM-dd" type="text" class="form-control fomtexbox" name="strDate" id="strDate">
                                    <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span>
                                  </div>
                            
                            
                          </div> -->
                          
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Time</label>
                            <!-- <input type="text" placeholder="" class="form-control tbox fomtexbox" id=""> -->
                            
                           <!--  <div id="datetimepicker4" class="input-append">
                                    <input data-format="hh:mm:ss" type="text" placeholder="Choose event time" readonly class="form-control fomtexbox" id="strTime" name="strTime">
                                    <span class="add-on datetime">
                                      <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="fa fa-clock-o eve_calIcon" >
                                      </i>
                                    </span>
                                  </div> -->
                                  
                                  <div class="input-group clockpicker" id="strtimeselecter">
                                		<input type="text" placeholder="Choose event time" readonly class="form-control fomtexbox clockIconImg" value="" id="strTime" name="strTime" onfocus="timeValidation()">
                                		<div  id="timeValidation" class="error" style="display: none;color: red;">Please enter valid time</div>
                                		                              
                            </div>
                                  
                            
                          </div>
                          
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Venue</label>
                            <input type="text" placeholder="Include a place or address" class="form-control tbox fomtexbox" id="venue" name="venue">
                          </div>
                          
                          <div class="form-group">
                          
                           <label class="fomlabel" for="r1"><span class="mandatory">*</span>Invitees</label>
                          
                           <input type="checkbox" class="cboxBtnLeft" id="public" name="createdBycheck" value="Public" onclick="buddiesList()">
                          <label for="public"><span></span>Fan</label>
                          
                          
                           <input type="checkbox" class="cboxBtnLeft" id="buddy" name="createdBycheck" value="Buddy" onclick="buddiesList()">
                          <label for="buddy"><span></span>Buddy</label>
                          
                          <input type="checkbox" class="cboxBtnLeft" id="Roaster" name="createdBycheck" value="Roster" onclick="buddiesList()">
                          <label for="Roaster"><span></span>Roster</label>
                          
                          </div>
                          
                           <div style="color: red;margin-left: 239px;margin-bottom: 10px" id="createdBycheckError">
                         
                          </div>
                     
                     
                     
                     <div class="form-group multiSelect" id="buddiesListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Buddies</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="buddysearchfield" name="buddysearchfield">
                          	<label  id="buddyvalidation" class="error" style="display: none">Please select the buddies.</label>
                          	<input type="hidden" name="arrayUserids" id="arrayUserids">
                                <div>                                	
                                </div>
                    </div>
                    <div class="form-group multiSelect" id="roasterListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Roster</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="roastersearchfield" name="roastersearchfield">
                          	<input type="hidden" name="arrayRoasterIds" id="arrayRoasterIds">
                                <div>                                	
                                </div>
                    </div> 
                        <label class="fomlabel " for="r1"></label>
                     <button type="button" class="btn dBtn" onclick="submiitingForm()">Send Invite</button>   
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
	<!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>

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

var createdEvents = JSON.parse(localStorage.createdEvents4);
if(createdEvents.length){
for(var i=0;i<createdEvents.length;i++){
	if(createdEvents[i].CokkieTimeStamp <= new Date().getTime()){
		createdEvents.splice(i,1);
		break;
	}
	if(getParameterByName("EventVenue",window.location.href) == createdEvents[i].EvenVenue && getParameterByName("EventName",window.location.href) == createdEvents[i].EventName){
		createdEvents[i].EventID= getParameterByName("EventID",window.location.href);
	}
}
localStorage.createdEvents4=JSON.stringify(createdEvents);
//alert(localStorage.createdEvents4);
}

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
				$("#buddyvalidation").hide();
				}
	    		
	    		
	    	},
	    	preventDuplicates: true,
	    	onDelete: function (item) {
	        	var index = arruserid.indexOf(item.id);
				if (index >= 0) {
					arruserid.splice( index, 1 );
				}else{
    				displaynotification('Already exist',2000);
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

function submiitingForm(){
	$("#timeValidation").hide();
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
	                     required: ""  	                 	                     
	                    
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
                   minlength :"Type venu at least 2 character",
           		 maxlength : "Venue details should be below 100 character's"
               },
               createdBycheck: {
	                     required: "Please choose event invitees"   	                 	                     
	                   
	                 }
	                
	             }        
			
		    }).form()){
		var selectedDateAndTime =  $("#strDate").val()+" "+$("#strTime").val().replace(
				"AM", " AM").replace("PM", " PM");
		if (new Date(selectedDateAndTime).getTime() < new Date().getTime()) {
			$("#timeValidation").show();
			console.log('--------------------------------- date validtion ---------------------------------------- > ');
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
		 if(typeof localStorage.createdEvents4 !== "string"){
			 var temp=[];
			 temp.push(pushingEventInArray());
			 localStorage.createdEvents4=JSON.stringify(temp);
		 }else{
			 var temp=JSON.parse(localStorage.createdEvents4);
			 temp.push(pushingEventInArray());
			 localStorage.createdEvents4=JSON.stringify(temp);
			
		 }
		 $("#createEventForm").submit();
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
	                     required: ""  	                 	                     
	                    
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
                    minlength :"Type venu at least 2 character",
            		 maxlength : "Venue details should be below 100 character's"
                },
                createdBycheck: {
	                     required: "Please choose event invitees"   	                 	                     
	                   
	                 }
	                
	             }        
			
		    });
});


</script>

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
</script>
 <script>
  		var timeZone = jstz.determine().name();
  		$("#timeZone").val(timeZone);
  	//	alert($("#timeZone").val());
			
  </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tokeninput.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script> 
</body>
</html>
