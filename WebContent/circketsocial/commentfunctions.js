/**
 * New node file
 */
 function showNotification(message,secs){
		
		$('#notificationPopupDiv').show();
		$('#notificationPopupMessageDIV').text(message);
			setTimeout(function() { 
			
			$("#notificationPpopupDivId").fadeOut(secs); }, secs);
	}
 
 function getDateInStringFormateWithFullMonthName(date)
 {
 		var day = date.getDate();
 		var monthIndex = date.getMonth();
 		var year = date.getFullYear();
 		var monthNames = ["January", "February", "March","April", "May", "June", "July","August", "September", "October", "November", "December" ];
 		var strVal=day + ' ' + monthNames[monthIndex] + ' ' + year;
 		return strVal;
 }
 
 function getDateInStringFormateWithFullMonthName_withTimeStampInput(timestamp)
 {
		var date = new Date(timestamp);
 		var day = date.getDate();
 		var monthIndex = date.getMonth();
 		var year = date.getFullYear();
 		var monthNames = ["January", "February", "March","April", "May", "June", "July","August", "September", "October", "November", "December" ];
 		var strVal=day + ' ' + monthNames[monthIndex] + ' ' + year;
 		return strVal;
 }