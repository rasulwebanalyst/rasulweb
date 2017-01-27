
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
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-clockpicker.min.css">
  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" />
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jstz-1.0.4.min.js"></script>
    
   
    
</head>
<body>
<%@ include file="CSCommon.jsp" %>
  
<%@ include file="BuddyHeader.jsp" %>
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
		  return strTime;
		};
	
	var formatDate = function(date) {
		  var hours = date.getHours();
		  console.log(hours);
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

<%-- 	<%@ include file="BoardHeader.jsp" % --%>


 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
          <%@ include file="BuddySideMenu.jsp" %>

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
                   <form action="${pageContext.request.contextPath}/updateuserevent"  id="createEventForm" method="post"  enctype="multipart/form-data" name="createEventForm" onsubmit="return eventValidation()">
                    	
                             
                    
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
                          
                              <input type="hidden" name="createdBy" id="createdBy" value="${USRID}">
                              <input type="hidden" name="modifiedBy" id="modifiedBy" value="${USRID}"> 
                              <input type="hidden" name="eventCreatedFrom" id="eventCreatedFrom" value="Buddy">                          
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
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Date</label>
                            <!-- <input type="text" placeholder="" class="form-control tbox fomtexbox datepicker" id="" > -->
                            
                            <%--  <div id="datetimepicker3" class="input-append">
                                    <input data-format="yyyy-MM-dd" type="text" class="form-control fomtexbox" name="strDate" readonly id="strDate" value="<fmt:formatDate pattern="YYYY-M-d" value="${EditEventObj.eventDateAndTime}" />">
                                    <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span>
                                  </div> --%>
                                  <div class="input-append">
                                    <input data-format="yyyy-MM-dd" placeholder="Choose event date" readonly type="text" class="form-control fomtexbox datepicker calIconImg" name="strDate" id="strDate" value="">
                                   <!--  <span class="add-on datetime">
                                      <i class="fa fa-calendar eve_calIcon" data-time-icon="icon-time" data-date-icon="icon-calendar">
                                      </i>
                                    </span> -->
                                  </div>
                            
                            
                          </div>
                         
                          
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Time</label>
                            <!-- <input type="text" placeholder="" class="form-control tbox fomtexbox" id=""> -->
                            
                            <%-- <div id="datetimepicker4" class="input-append">
                                    <input data-format="hh:mm:ss" type="text" class="form-control fomtexbox" id="strTime" name="strTime" value="<fmt:formatDate pattern="HH:mm:ss" value="${EditEventObj.eventDateAndTime}" />">
                                    <span class="add-on datetime">
                                      <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="fa fa-clock-o eve_calIcon" >
                                      </i>
                                    </span>
                                  </div> --%>
                                  <div class="input-group clockpicker">
                                <input type="text" placeholder="Choose event time"  class="form-control fomtexbox clockIconImg"  id="strTime" name="strTime" readonly value="">
                                <!-- <span class="add-on datetime">
                                      <i data-time-icon="icon-time" data-date-icon="icon-calendar" class="fa fa-clock-o eve_calIcon" >
                                      </i>
                                    </span> -->
                                
                            </div>
                            <span id="timeValidation" class="error" style="color: red;"></span>
                          </div>
                          
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span class="mandatory">*</span>Venue</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="venue" name="venue" value="${EditEventObj.venue}">
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
                          
                          <%--  <c:choose>
                          	<c:when test="${f:contains('Roster',SelectCheck)}">
                          	
                          	 <input type="checkbox" class="cboxBtnLeft" id="Roaster" checked name="createdBycheck" value="Roster" onclick="buddiesList()">
                          <label for="Roaster"><span></span>Roster</label>
                          	</c:when>
                          	<c:otherwise>
                          		<input type="checkbox" class="cboxBtnLeft" id="Roaster" name="createdBycheck" value="Roster" onclick="buddiesList()">
                          <label for="Roaster"><span></span>Roster</label>
                          	</c:otherwise>
                          </c:choose>
                           --%>
                          
                          </div>
                          
                           <div style="color: red;margin-left: 239px;margin-bottom: 10px" id="createdBycheckError">
                         
                          </div>
                     
                     
                     
                     <div class="form-group" id="buddiesListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Buddies</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="buddysearchfield" name="buddysearchfield">
                          	
                          	  <span id="buddyvalidation" class="error" style="color: red; float: left;"></span> 
                          	<input type="hidden" name="arrayUserids" id="arrayUserids">
                                <div>                                	
                                </div>
                    </div>
                   <!--  <div class="form-group" id="roasterListDiv" style="display: none;">
                              <label class="fomlabel" for="r1">Roster</label>
                            <input type="text" placeholder="search buddies" class="form-control tbox fomtexbox" id="roastersearchfield" name="roastersearchfield">
                          	<input type="hidden" name="arrayRoasterIds" id="arrayRoasterIds">
                                <div>                                	
                                </div>
                    </div>  -->
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
	
	if($('#createEventForm').valid()){
		console.log('------------------------------ event validation function---------------------------------------------------------');
		$("#timeValidation").text('');
		var selectedDateAndTime =  $("#strDate").val()+" "+$("#strTime").val().replace("AM", " AM").replace("PM", " PM");
		if (new Date(selectedDateAndTime).getTime() < new Date().getTime()) {
			$("#timeValidation").text('Please enter valid time');
			console.log('------------------------------ event validation function true------------- new Date(selectedDateAndTime).getTime() < new Date().getTime()  --------------------------------------------');
			return false;
			}else{
				console.log('------------------------------ event validation function-  false;--------------------------------------------------------');
				
			}
		//return true;
	}
	 $("#buddyvalidation").text(''); 
	if(document.getElementById('buddy').checked)
	{
		
	if(arruserid.length==0)
         {
		 $("#buddyvalidation").text('Please select the buddies.'); 
		return false ;
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
<script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script> 
        
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
			
  </script>


</body>
</html>