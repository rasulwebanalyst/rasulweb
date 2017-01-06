<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="author" content="">
 
     <!-- Responsive CSS -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
    
<title>Insert title here</title>
</head>
<body>

<div class="notification" id="notificationPopupDiv" style="display:none;"  >
	<span class="insideBlock noti_arrow" id="notificationPopupMessageDIV"></span>
	
</div>
<!-- loding icon -->
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

<div id="deleteFeedConfromBox" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Delete</span>
               <span class="close_btn" onclick="cancelDeleteFeed()"> <i class="fa fa-close"></i> </span>

               <div class="popupContentDiv popcontent">
					<b>Do you want delete this delivery ?</b> 
                    
                    <div class="centerbtns popcenterbtns"><button type="button" class="btn btn-default blueBtn popbtn" onclick="feedDeleteConfrom()">Ok</button><button type="button" class="btn btn-default blueBtn" onclick="cancelDeleteFeed()">Cancel</button></div>
                     <input type="hidden" value="" id="deleteFeedId" name="deleteFeedId">
                     <input type="hidden" value="${USRID}" id="feedDeletedBy" name="feedDeletedBy">                  
               </div>
           </div>

        </div>
        
        <div id="reportSpamFeedConfromBox" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Report spam</span>
               <span class="close_btn" onclick="cancelReportFeed()"> <i class="fa fa-close"></i> </span>

               <div class="popupContentDiv popcontent">
					<b>Do you want to report this delivery ?</b> 
                    
                    <div class="centerbtns popcenterbtns"><button type="button" class="btn btn-default blueBtn popbtn" onclick="reportSpamFeed()">Ok</button><button type="button" class="btn btn-default blueBtn" onclick="cancelReportFeed()">Cancel</button></div>
                     <input type="hidden" value="" id="reportFeedId" name="reportFeedId">
                     <input type="hidden" value="${USRID}" id="reportFeedBy" name="reportFeedBy">                  
               </div>
           </div>

        </div>
        
<script type="text/javascript">

function hide_notificationpoup(sec)
{
		 setTimeout(function() {$("#notificationPopupDiv").fadeOut(sec); }, sec);
}
function displaynotification(message,sec)
{
			 $('#notificationPopupMessageDIV').text(message);
			 $("#notificationPopupDiv").show();
		 	setTimeout(function() {$("#notificationPopupDiv").fadeOut(sec); }, sec);
}

function showfun(sec)
{
		 setTimeout(function() {$("#notificationPopupDiv").fadeIn(sec); }, sec);
}


function showDiv(message,sec,id,id2)
{
			 $('#'+id2).text(message);
			 $("#"+id).show();
		 	setTimeout(function() {$("#"+id).fadeOut(sec); }, sec);
}

function hideImgTag(ele)
{
	$(ele).hide();
	
}


function timeConversion(millisec,feeddate) {

    var seconds1 = (millisec / 1000);
    var seconds = Math.round(seconds1);

    var minutes1 = (millisec / (1000 * 60));
    var minutes = Math.round(minutes1);

    var hours1 = (millisec / (1000 * 60 * 60));
	var hours = Math.round(hours1);
    
    var days1 = (millisec / (1000 * 60 * 60 * 24));
	var days = Math.round(days1);

	//alert("seconds :"+seconds+" minutes :"+minutes);
	
    if (seconds < 60) {
    	if (seconds > 0) {
    		console.log(seconds);
    	    // Do Something
    		return seconds + " secs";
    	}else{
    		console.log("few seconds ago");
    		 return "Just now";
    	}
    	
    } else if (minutes < 60) {
        return minutes + " mins";
    } else if (hours <= 24) {
        return hours + " hours";
    } else {
    	
    	var date = new Date(feeddate);
        var offset = new Date().getTimezoneOffset() * 60 * 1000;
        var date2= new Date(date);
        date2 = new Date(date2.valueOf() - offset);
    	 
    	 var monthNames = ["January", "February", "March", "April", "May", "June",
    	                   "July", "August", "September", "October", "November", "December"
    	                 ];
    		var monthNme= monthNames[date2.getMonth()];
    		return result=date2.getDate()+' '+monthNme+' '+date2.getFullYear()+' at '+date2.getHours()+':'+date2.getMinutes();
    	
       // return days + " days";
    }
}

function feedDisplayDate(feeddate)
{
	var date = new Date(feeddate);
    var offset = new Date().getTimezoneOffset() * 60 * 1000;
    var date1= new Date(date);
    date1 = new Date(date1.valueOf() - offset);
	
     var date2 = new Date();
	
	  console.log("date2 )))))))))))))))))))))))))"+date2);
	  
	  var diff = date2.valueOf() - date1.valueOf();
	 
	  var returnValue = timeConversion(diff,feeddate);
    
	  console.log("returnValue inside if :"+returnValue);
		
	 return timeConversion(diff,feeddate); 
  
}

function feedDisplayDate2(feeddate)
{
	/* var date = new Date(feeddate);
    var offset = new Date().getTimezoneOffset() * 60 * 1000;
    var date1= new Date(date);
    date1 = new Date(date1.valueOf() - offset); */
    
    
       var datestr2=new Date(feeddate);
	
	   var dateNew = new Date(datestr2.getTime() + datestr2.getTimezoneOffset()*60000);
	  var offset = new Date().getTimezoneOffset() * 60 * 1000;
	  var date1= new Date(dateNew);
	  date1 = new Date(date1.valueOf() - offset);
	
	
     var date2 = new Date();
	
	  console.log("date2 )))))))))))))))))))))))))"+date2);
	  
	  var diff = date2.valueOf() - date1.valueOf();
	 
	  var returnValue = timeConversion(diff,feeddate);
    
	  console.log("returnValue inside if :"+returnValue);
		
	 return timeConversion(diff,feeddate); 
  
}


function feedDisplayDateMurthy(feeddate)
{
	//alert("feeddate"+feeddate );
//var date2= new Date(feeddate).toISOString();
//var date1= new Date();
var date2= new Date(feeddate);
	 var d1= new Date();
	 var date1= new Date(d1.getTime() + d1.getTimezoneOffset()*60000);
	// var date1=d1;
//alert(date1);
//alert(date2);
var  result;
var hours = Math.abs(date1 - date2) / 36e5;
var min=Math.abs(date1 - date2) / (60*1000);
var sec=Math.abs(date1 - date2) /(1000);
if(sec<60)
{
	result=Math.round(sec)+' sec';
	
}else if(min<60){
	result=Math.round(min)+' minutes';
}else if(hours<=24){
	result=Math.round(hours)+' hour';
}else{
	 var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
	//result=Math.round(Math.abs((d1.getTime() - date2.getTime())/(oneDay)))+' days';
	 var days=(d1.getTime() - date2.getTime())/(oneDay);
	 /* if(days<=30)
		 {
		 	result=Math.round(Math.abs(days))+' days';
		 	
		 }else{
			var differemonth=days/30; 
			 result=Math.round(Math.abs(differemonth))+' months ago';
		 } */
	 
	 var monthNames = ["January", "February", "March", "April", "May", "June",
	                   "July", "August", "September", "October", "November", "December"
	                 ];
		var monthNme= monthNames[date2.getMonth()];
		result=date2.getDate()+' '+monthNme+' '+date2.getFullYear()+' at '+date2.getHours()+':'+date2.getMinutes();
}

return result;
}

function feedDisplayDate2Murthy(feeddate)
{
	//alert("feeddate"+feeddate );
//var date2= new Date(feeddate).toISOString();
//var date1= new Date();
var date2= new Date(feeddate);
	 var d1= new Date();
	 //var date1= new Date(d1.getTime() + d1.getTimezoneOffset()*60000);
	 var date1=d1;
//alert(date1);
//alert(date2);
var  result;
var hours = Math.abs(date1 - date2) / 36e5;
var min=Math.abs(date1 - date2) / (60*1000);
var sec=Math.abs(date1 - date2) /(1000);
if(sec<60)
{
	result=Math.round(sec)+' sec';
	
}else if(min<60){
	result=Math.round(min)+' minutes';
}else if(hours<=24){
	result=Math.round(hours)+' hour';
}else{
	 var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
	//result=Math.round(Math.abs((d1.getTime() - date2.getTime())/(oneDay)))+' days';
	 var days=(d1.getTime() - date2.getTime())/(oneDay);
	 /* if(days<=30)
		 {
		 	result=Math.round(Math.abs(days))+' days';
		 	
		 }else{
			var differemonth=days/30; 
			 result=Math.round(Math.abs(differemonth))+' months ago';
		 } */
	 
	 var monthNames = ["January", "February", "March", "April", "May", "June",
	                   "July", "August", "September", "October", "November", "December"
	                 ];
		var monthNme= monthNames[date2.getMonth()];
		result=date2.getDate()+' '+monthNme+' '+date2.getFullYear()+' at '+date2.getHours()+':'+date2.getMinutes();
}

return result;
}



$(document).ready(function(){
	
	$.validator.addMethod("specilPassword",function(value,element)
			{
				return passwordValidation(value); 
			},"(Password should contain at least 1 numeric, 1 special character, 1 uppercase,1 lowercase letter)");
	
	$.validator.addMethod("alphabetsOnly",function(value,element)
			{
				return alphabetwithSpace(value); 
			},"Please enter the alphabets only");
	
	
});

function passwordValidation(value){

	//var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	 var passw = /^(?=.*[*!@,#])(?=.*[a-z])(?=.*[A-Z]).{6,20}$/; 
	if(value.match(passw)){
		return true;
	}else{
		return false;
	}
		
}

function alphabetwithSpace(value){

	var letter = /^[a-zA-Z ]*$/;  
	if(value.match(letter)){
		return true;
	}else{
		return false;
	}
		
}

</script>

</body>
</html>