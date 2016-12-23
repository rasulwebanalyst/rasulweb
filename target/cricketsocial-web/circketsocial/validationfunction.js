/**
 * 
 */


function alphanumericWithspecialChar(value)
{
	var formate=/^[ A-Za-z0-9_@.#&+-,!?%"-=+><$*)(]*$/;
	return formate.test(value);
}
// for name validation
function nameValid(value)
{
	//alert("inside name validation");
	var formate=/^[ A-Za-z0-9]*$/;
	return formate.test(value);
}
// for email address
function emailvalidation(email)
{
	//alert(email);
	var formate = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return formate.test(email);
	/*var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	var l=reg.test(email);
	return l;*/
}
// number validation

function numbervalidation(num)
{
	 var numbers = /^[0-9]+$/;  
	 return numbers.test(num);

}


function dateFunction(){
	document.getElementById("timeError").innerHTML = "";
	var date  = $("#date").val();
if(date == null || date == "" || typeof date == 'undefined'){
	document.getElementById("timeError").innerHTML = "Please enter the game date";
	return false;
}else{
	document.getElementById("timeError").innerHTML = "";
	return true;
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
	document.getElementById("timeError").innerHTML = "Please enter the game time";
	return false;
}else if(minute == null || minute == "" || typeof minute == 'undefined' || minute == '0'){
	document.getElementById("timeError").innerHTML = "Please enter the game time";
	return false;
}else if(hour > max || minuteValue > maxMinute ){
	document.getElementById("timeError").innerHTML = "Please enter valid game time";
	return false;
}else if(numberRegex.test(date) != true || numberRegex.test(minute) != true){
	document.getElementById("timeError").innerHTML = "Please enter valid game time";
	return false;
}else{
	document.getElementById("timeError").innerHTML = "";
	return true;
}
	}
function validateNumberOrNot(val){
	return val.match(/^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/);
}
function homeTeam(){
	var teamId1 = $("#teamSelectBoxDIv").val();
if(teamId1 == 0){
	document.getElementById("homeTeamError").innerHTML ="Please enter the home team name";
	return false;
}else{
	document.getElementById("homeTeamError").innerHTML ="";
	if(teamValidation()==true){
		return true;
	}else{
		return false;
	}
	
}
}

function awayTeam(){
	var teamId2 = $("#teamSelectBoxDIv1").val();
if(teamId2 == 0){
	document.getElementById("awayTeamError").innerHTML = "Please enter the away team name";
	return false;
}else{
	document.getElementById("awayTeamError").innerHTML = "";
	if(awayteamValidation()==true){
		return true;
	}else{
		return false;
	}
	//return true;
}
}

function groundFunction(){
	//if(flag){
/*	var groundId = $("#groundSelectBoxDiv1").val();
if(groundId == 0){
	document.getElementById("groundError").innerHTML = "Please enter the ground name";
	return false;
//}
}else{
	document.getElementById("groundError").innerHTML = "";
	return true;
}*/
	return true;
}

function umpireFunction(){
	/*var userId = $("#hiddenUmpireId").val();
	
if(userId == null || userId == "" || typeof userId == 'undefined'){
	document.getElementById("error").innerHTML = "Please enter the umpire name";
	return false;
}else{
	document.getElementById("error").innerHTML = "";
	return true;
}*/
	return true;
}

function scorerFunction(){
	/* var scorerId = $("#hiddenScorerId").val();
if(scorerId == null || scorerId == "" || typeof scorerId == 'undefined'){
	document.getElementById("error1").innerHTML = "Please enter the scorer name";
	return false;
}else{
	document.getElementById("error1").innerHTML = "";
	return true;
}*/
	return true;
}

function tournamentErrorFunction(){
	//if(flag){

	var tournament = $("#tournamentSelectBoxDIv").val();
	if(tournament == 0 || tournament == "" || typeof tournament == 'undefined'){
		document.getElementById("tournamentError").innerHTML = "Please enter the tournament name";
		return false;
	//}
	}else{
		document.getElementById("tournamentError").innerHTML = "";
		return true;
	}
	
	
}


function fromDateValidateFunction(){
	var fromDate = $("#fromDate").val();
	if(fromDate == null || fromDate == "" || typeof fromDate == 'undefined'){
		document.getElementById("error").innerHTML = "Please enter the from date";
		return false;
	}else{
		document.getElementById("error").innerHTML = "";
		return true;
	}
}

function toDateValidateFunction(){
	var toDate = $("#toDate").val();
	if(toDate == null || toDate == "" || typeof toDate == 'undefined'){
		document.getElementById("error1").innerHTML = "Please enter the to date";
		return false;
	}else{
		document.getElementById("error1").innerHTML = "";
		return true;
	}
}

function gameTypeErrorFunction(){
	var gameType = $("#gameType").val();
	if(gameType == 0 || gameType == "" || typeof gameType == 'undefined'){
		document.getElementById("gameTypeError").innerHTML = "Please select the game type";
		return false;
	}else{
		document.getElementById("gameTypeError").innerHTML = "";
		return true;
	}
}
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

