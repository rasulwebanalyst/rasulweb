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
        <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">

<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    

 <!-- jQuery -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4eJlFHh6Wm9BWa8x-H-cBUjCcdlEplT0&v=3.exp&libraries=places"></script>

<script type="text/javascript">


var map;
var marker;
var markers = [];
function initialize() {

	//alert("initialize function");
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
						map.setZoom(12);
						getAddress1(places[0].geometry.location);				
					});  
	map.addListener('click', function(e) {
	    placeMarkerAndPanTo(e.latLng, map);
	  });

}
google.maps.event.addDomListener(window, 'load', function() {
	initialize();
		});

function placeMarkerAndPanTo(latLng, map) {
	for (var i = 0, marker; marker = markers[i]; i++) {
		marker.setMap(null);
	}
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


function onload(){
	var geocoder = new google.maps.Geocoder();
     var address = document.getElementById("autocomplete").value; 
   /* var address = "Avadi, Tamil Nadu, India"; */
  
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
        						getAddress(latlng);
           
        						map.addListener('click', function(e) {
        						    placeMarkerAndPanTo(e.latLng, map);
        						  });
            
        						
        } else {
            console.log("Request failed.")
        }
    });
    } 

function getAddress(e)
{
	//alert("getaddress function");
	//var add = document.getElementById('pac-input').value;
	console.log('latlog location -----> 2----- ?>'+e);
	console.log(e);
	
//	document.getElementById("hiddenLatLang").value = e;
document.getElementById("hiddenLatLang").value = e.lat()+","+e.lng();
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
	            
	          //  document.getElementById("city").value = city;
	            /* if(address != ""){
	            	if(address.toLowerCase() == city.toLowerCase()){
	 	            	document.getElementById("address1").value = city;	
	 	            }else{
	 	            	document.getElementById("address1").value =  address;
	 	            }
	            }else{
	            	  document.getElementById("address1").value = city;
	            } */
	          //  document.getElementById("zipcode").value = zipcode;
	          //  document.getElementById("state").value = state;
	          //  document.getElementById("country").value = country;
	           // document.getElementById("autocomplete").value = add;
	          //  document.getElementById("city").value = city;
	            var numbers = /^[0-9]+$/; 
		  		  if(numbers.test(zipcode)){
		  			  document.getElementById('zipcode').value = zipcode;
		  		  }else{
		  			document.getElementById('zipcode').value = '';
		  		  }
	            
        	 console.log("city :"+city+ " state :"+state +" zipcode :"+zipcode+" address :"+address+ " country :"+country);
            
         }
     });
     
     weatherreport();
	}

function getAddress1(e,addr)
{
	  var addrress = document.getElementById("pac-input").value;
		//alert("getaddress1 function");
	console.log('latlog location -----> '+e);
	console.log(e);
	//	document.getElementById("hiddenLatLang").value = e;
	 document.getElementById("hiddenLatLang").value = e.lat()+","+e.lng();
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
	           // document.getElementById("zipcode").value = zipcode;
	            document.getElementById("state").value = state;
	            document.getElementById("country").value = country;
	            document.getElementById("autocomplete").value = addrress;
	            document.getElementById("city").value = city;
	            
        	 console.log("city :"+city+ " state :"+state +" zipcode :"+zipcode+" address :"+address+ " country :"+country+" street :"+street);
            
         }
     });
	}

function GetLocation() {
	//alert("getlocation function");
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
        						getAddress(latlng,address);	
        						
        						map.addListener('click', function(e) {
        						    placeMarkerAndPanTo(e.latLng, map);
        						  });
           
            
        } else {
            console.log("Request failed.");
        }
    });
};





var formatAMPMTime = function(date) {
	  var hours = date.getHours();
	  console.log(hours);
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  hours = hours < 10 ? '0'+hours : hours ;
	  var strTime = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear()+" "+ hours + ':' + minutes + ' ' + ampm;
	  return strTime;
	}
	function test(date1){
		var date = date1.replace("IST","");	
		date = date.replace("UTC","");
		console.log("Date :"+date);
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	console.log("gettingFromServer :"+gettingFromServer);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	}


</script>


</head>
<body onload="onload()">


<%--  <%@ include file="BoardHeader.jsp" %> --%>
<%@ include file="BoardHeaderpublic.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        <%@ include file="publicLeaugeManagementSideMenu.jsp" %>

        <%@ include file="BoardFanMenu.jsp" %>
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox" style="font-size: 12px;">
                      
                                      <div class="form-group">


                  
                  <div class="col-md-4 col-sm-12 col-xs-12">
                         <div id="Boardinfo">
                         <h1 class="noBorder" style="width:100%; margin-bottom: 0;">${groundDetails.groundName}</h1>
                         
                         <table class="brd-info">
                         <tr><td>Addres</td><td>:</td><td>${groundDetails.address1}</td></tr>
                         <tr><td>City</td><td>:</td><td>${groundDetails.city}</td></tr>
                          <tr><td>State</td><td>:</td><td>${groundDetails.state}</td></tr>
                           <tr><td>Zip Code</td><td>:</td><td>${groundDetails.zipcode}</td></tr>
                           <tr><td>Wicket Type</td><td>:</td><td>${groundDetails.wicketType}</td></tr>
                        <!-- <tr><td>Home Team</td><td>:</td><td>CSK</td></tr> -->
                         </table>
                        
                         </div>
                         
                         <div class=" ">
                   <h4>Pitch Description :</h4>
                 <textarea type="text" style="height: 100px; width: 100%;" > ${groundDetails.pitchDescription}</textarea>
                 </div> 
                        
                         
                   </div>  
                   
                   
                   
                   
                       
                         
                 <div class="col-md-8 col-sm-12 col-xs-12">
                  <input type="hidden" class="form-control" id="pac-input" placeholder="Search Places" style="width: 800px"> 
                  <a href="http://maps.google.com/?q=${groundDetails.address1}" target="_blank"></a>
                 	<div id="map_canvas" style="width:100%;height:380px;"></div>
                 </div>
                 
                 
                 
                 
                 <div class="col-md-8 col-sm-12 col-xs-12">                         
                         <h4>Additional Directions :</h4>
                         <p style="margin-bottom: 5%;">
                         
                         <c:choose>
                         <c:when test="${groundDetails.directionsToGround ne '' && groundDetails.directionsToGround ne null}">
                         ${groundDetails.directionsToGround}</p>
                         </c:when>
                         <c:otherwise>
                         <span style="margin-left: 4px; color: red;" >   No data available</span></p>
                         </c:otherwise>
                         </c:choose>
                         
                         
                         
                         <h4>Ground facilities :</h4>
                         <p style="margin-bottom: 5%;">
                         
                         <c:choose>
                         <c:when test="${groundDetails.groundFacilities ne '' && groundDetails.groundFacilities ne null}">
                         ${groundDetails.groundFacilities}</p>
                         </c:when>
                         <c:otherwise>
                         <span style="margin-left: 4px; color: red;" >   No data available</span></p>
                         </c:otherwise>
                         </c:choose>
                         
                         
                         
                         
                         </p>
                         
                         
                         
                         
                         
                         
                   </div>
                        
                         
                         
                         
                         
                      <div class="col-md-4 col-sm-12 col-xs-12">  
                     
                         <div style="align:center; color:#4677B8;font:bold 14px Arial;margin:15px 0px 8px 0px; text-align: left;"><h3 style="color: #204d79; font-size: 16px;">Weather in ${groundDetails.groundName}</h3></div>
                       
                    <div style="background-color:#BFE9FF;color:#111;padding:10px 10px;border:solid 1px #BFE9FF">
                    <div id="weatherInfoCol" style="background-color:rgba(255,255,255,0.5);border:rgba(255,255,255,0.5)">
					<span class="climate" id="maindiv" style="white-space:nowrap;text-align:center;align:center;padding-left:10px;font-size:24px; color:#4677B8;display: none;">
					 <!-- <img alt="weather in Fortaleza is Fair" title="weather in Fortaleza is Fair" align="absmiddle" src="/images/weather/33.gif"> &nbsp;Fair<br> -->
					<span style="margin-left:23px;line-height:50px;"  id="WeatherDesc"></span><span id="temperature"></span><sup>o</sup>C</span>
					<div class="weatherInfo" style="padding: 0 10px 5px 10px;"> 
					<table width="90%" cellspacing="3" border="0" cellpadding="0">
					<tbody id="Weatherbody">
					<tr>
					<td><b>Wind:</b></td>
					<td> NNE 0 m/s</td>
					</tr>
					<tr>
					<td><b>Pressure:</b></td>
					<td> --</td>
					</tr>
					<tr>
					<td><b>Visibility:</b></td>
					<td> N/A</td>
					</tr>
					<tr>
					<td><b>Humidity:</b></td>
					<td> 50% </td>
					</tr>
					
					
					
					</tbody></table> </div> 
					</div>
					
					</div></div>
					
					
					<div class="col-md-12 col-sm-12 col-xs-12">   
					 <h4>Ground Statistics :</h4>  
					 <c:choose>
                         <c:when test="${teamscoresize == 0 }">
                           <span style="margin-left: 4px; color: red;" >   No data available</span>
                         </c:when>
                         <c:otherwise>
                         
                         <!-- Ground highest -->
					
					
					
					                    
						<table class="engineTable">
						<caption>Highest totals</caption>
						<thead>
						 <tr class="head">
						  <th title="team playing for" class="left">Team</th>
						  <th title="team score" class="padTS-b"><b>Score</b></th>
						  <th title="overs faced">Overs</th>
						  <th title="opposition" class="left">Opposition</th>
						  <th title="match start date">Match Date</th>
						  <th title="match scorecard">Scorecard</th>
						 </tr>
						</thead>
						<tbody>
						 <c:forEach items="${teamHighest}" var="scores" >
						 <tr class="data1" data-days="736667">
						  <td class="left" title="record rank: 50"><a href="${pageContext.request.contextPath}/${scores.teamName}/board/${scores.teamId}">${scores.teamName}</a></td>
						  <td class="padTSao-b"><b>${scores.runs}/${scores.wickets}</b></td>
						  <td>${scores.overs}</td>
						  <td class="left"><a href="${pageContext.request.contextPath}/${scores.againstTeamName}/board/${scores.againstTeamId}">${scores.againstTeamName}</a></td>
						  <td><script>document.writeln(test('${scores.gameDate}'))</script></td>
						  <td><a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="showScoreCard('${scores.tournamentSchedulerId}','${BoradInfo.boardId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
						 </tr>
						 </c:forEach>
						</tbody>
						</table>
                         
                         
                         
                         <!-- Ground lowest -->
                         
                         
                         <table class="engineTable">
						<caption>Lowest totals</caption>
						<thead>
						 <tr class="head">
						  <th title="team playing for" class="left" >Team</th>
						  <th title="team score" class="padTS-b" ><b>Score</b></th>
						  <th title="overs faced" >Overs</th>
						  <th title="opposition" class="left" >Opposition</th>
						  <th title="match start date" >Match Date</th>
						  <th title="match scorecard" >Scorecard</th>
						 </tr>
						</thead>
						<tbody>
						 <c:forEach items="${teamLowest}" var="scores">
						 <tr class="data1" data-days="736667">
						  <td class="left" title="record rank: 50" ><a href="${pageContext.request.contextPath}/${scores.teamName}/board/${scores.teamId}">${scores.teamName}</a></td>
						  <td class="padTSao-b" ><b>${scores.runs}/${scores.wickets}</b></td>
						  <td >${scores.overs}</td>
						  <td class="left" ><a href="${pageContext.request.contextPath}/${scores.againstTeamName}/board/${scores.againstTeamId}">${scores.againstTeamName}</a></td>
						  <td ><script>document.writeln(test('${scores.gameDate}'))</script></td>
						  <td ><a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="showScoreCard('${scores.tournamentSchedulerId}','${BoradInfo.boardId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
						 </tr>
						 </c:forEach>
						</tbody>
						</table>
                         
                         
                         
                         
                         <!-- Batting highest -->
                         
                          <table class="engineTable">
						<caption>Best batting figures</caption>
						<thead>
						 <tr class="head">
						  <th title="team playing for" class="left" >Name</th>
						  <th title="team score" class="padTS-b" ><b>Runs</b></th>
						  <th title="opposition" class="left" >Opposition</th>
						  <th title="match start date" >Match Date</th>
						  <th title="match scorecard" >Scorecard</th>
						 </tr>
						</thead>
						<tbody>
						   <c:forEach items="${playerHighest}" var="player" >
						 <tr class="data1" data-days="736667">
						  <td class="left" title="record rank: 50" ><a style="color: #227fbc;" href="${pageContext.request.contextPath}/scorecard/buddy/${player.userName}/${player.userId}">${player.userName}</a></td>
						  <td class="padTSao-b" ><b>${player.highest}(${player.battingBalls})
						  
						  
						  <c:if test="${player.notOutFlag eq 'NotOut'}">
						  <div class="star-rating">*</div>
						  
						  </c:if>
						  
						  
						  </b></td>
						  <td class="left" ><a href="${pageContext.request.contextPath}/${player.againstTeamName}/board/${scores.againstTeamId}">${player.againstTeamName}</a></td>
						  <td ><script>document.writeln(test('${player.gameDate}'))</script></td>
						  <td ><a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="showScoreCard('${player.tournamentSchedulerId}','${BoradInfo.boardId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
						 </tr>
						 </c:forEach> 
						</tbody>
						</table>
                          
                          
                           
                           <!-- 
                           Best bowwling -->
                           
                           
                           
                           <table class="engineTable">
						<caption>Best bowling figures</caption>
						<thead>
						 <tr class="head">
						  <th title="team playing for" class="left" >Name</th>
						  <th title="team score" class="padTS-b" ><b>Wickets</b></th>
						  <th title="opposition" class="left" >Opposition</th>
						  <th title="match start date" >Match Date</th>
						  <th title="match scorecard" >Scorecard</th>
						 </tr>
						</thead>
						<tbody>
						   <c:forEach items="${playerBestBowl}" var="player" >
						 <tr class="data1" data-days="736667">
						  <td class="left" title="record rank: 50" ><a style="color: #227fbc;" href="${pageContext.request.contextPath}/scorecard/buddy/${player.userName}/${player.userId}">${player.userName}</a></td>
						  <td class="padTSao-b" ><b>${player.bbi}</b></td>
						  <td class="left" ><a href="${pageContext.request.contextPath}/${player.againstTeamName}/board/${scores.againstTeamId}">${player.againstTeamName}</a></td>
						  <td ><script>document.writeln(test('${player.gameDate}'))</script></td>
						  <td ><a class="vw-score" style="float: right; color: #224e6b; font-size: 10px;" href="javascript:void(0);" onclick="showScoreCard('${player.tournamentSchedulerId}','${BoradInfo.boardId}')"><i class="fa fa-newspaper-o editIcon"></i></a></td>
						 </tr>
						 </c:forEach> 
						</tbody>
						</table>
                           
                           
                           
                         </c:otherwise>
                         </c:choose>  
                         
                 </div>   
					
					
                  
                  
                  
                 
                 
                  
                  </div>
           
                  <input type="hidden" id="hiddenLatLang" name="hiddenLatLang" value="${groundDetails.latLang}">
                  <input type="hidden" id="zipcode" name="zipcode" value="${groundDetails.zipcode}">
                  <input type="hidden" id="autocomplete" name="autocomplete" value="${groundDetails.address1}" type="text" >
                   
                  
                </div>
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!--Select Box-->
<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>
<!--File Upload-->
<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
		});
   </script>
	<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-plus-circle").removeClass("fa-plus-circle").addClass("fa-minus-circle");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			});
		});
   </script>
   
   <!--Gallery-->
   
   <script src="js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>
		
		
		<script type="text/javascript">
   
		function weatherreport()
		   {
		   var latlong=$("#hiddenLatLang").val();
		   console.log("LAt longggggggg :"+latlong);
		  console.log("Lat :"+latlong.split(",")[0]);
		  console.log("Long :"+latlong.split(",")[1]);
		  
		 /*  $.get("http://api.openweathermap.org/data/2.5/weather?lat="+latlong.split(",")[0]+"&lon="+latlong.split(",")[1]+"&appid=7e1f6381006c91e81299924b625b4b86&units=metric",
				  function(data,status){
			  if(data !=null)
	{
			  var response=JSON.stringify(data);
			  console.log("response :"+response);
			  var  Weather=data.weather;
			  var wind=data.wind;
			  var description=Weather[0].main;
			  var main=data.main;
			  var pressure=main.pressure;
			  var hmidity=main.humidity;
			  var visibility=data.visibility;
			  var temperature=main.temp;
			  console.log("Description :"+description);
			  console.log("Wind :"+wind.speed);
			  console.log("main :"+main);
			  console.log("pressure :"+pressure);
			  console.log("humidity :"+hmidity);
			  console.log("Visibility :"+ visibility);
			  
			  var htm="";
			  
			  
			  
			  htm+="<tr><td><b>Wind:</b></td><td> "+wind.speed+" m/s</td></tr>";
			  htm+="<tr><td><b>Pressure:</b></td><td> "+pressure+" hpa</td></tr>";
			  htm+="<tr><td><b>Visibility:</b></td><td> "+visibility+" km</td></tr>";
			  htm+="<tr><td><b>Humidity:</b></td><td> "+hmidity+" %</td></tr>";
			  
			  $("#WeatherDesc").text(description+" ");
			  $("#temperature").text(" "+temperature);
			  $("#maindiv").show();
			  $("#Weatherbody").html(htm).trigger("create");
	           
	           }		  
		  }) */
		  
		  
		  $.ajax({
			  type : "Get",
			  url :"${pageContext.request.contextPath}/weatherApi/"+latlong.split(",")[0]+"/"+latlong.split(",")[1],
			  success:function(res)
			  {
				  if(res !=null)
				  {
					  var res1=JSON.parse(res)
				  		  var response=JSON.stringify(res1);
				  		  console.log("response :"+response);
				  		  console.log(res1);
				  		  var  Weather=res1.weather;
				  		  console.log("Weather :"+Weather);
				  		  var wind=res1.wind;
				  		  var description=Weather[0].main;
				  		  var main=res1.main;
				  		  var pressure=main.pressure;
				  		  var hmidity=main.humidity;
				  		  var visibility=res1.visibility;
				  		  var temperature=main.temp;
				  		  console.log("Description :"+description);
				  		  console.log("Wind :"+wind.speed);
				  		  console.log("main :"+main);
				  		  console.log("pressure :"+pressure);
				  		  console.log("humidity :"+hmidity);
				  		  console.log("Visibility :"+ visibility);
				  		  
				  		  var htm="";
				  		  
				  		  
				  		  
				  		  htm+="<tr><td><b>Wind:</b></td><td> "+wind.speed+" m/s</td></tr>";
				  		  htm+="<tr><td><b>Pressure:</b></td><td> "+pressure+" hpa</td></tr>";
				  		  if(typeof(visibility) != "undefined")
				  			  {
				  			htm+="<tr><td><b>Visibility:</b></td><td> -</td></tr>";
				  			  }else
				  		  {htm+="<tr><td><b>Visibility:</b></td><td> "+visibility+" km</td></tr>";}
				  		  htm+="<tr><td><b>Humidity:</b></td><td> "+hmidity+" %</td></tr>";
				  		  
				  		  $("#WeatherDesc").text(description+" ");
				  		  $("#temperature").text(" "+temperature);
				  		  $("#maindiv").show();
				  		  $("#Weatherbody").html(htm).trigger("create");
				             
				             }		  
			  }
			  
		  })
		  
	   }
	   

		function showScoreCard(id,boardId){
			 window.location.href = "${pageContext.request.contextPath}/showScoreCard/boardId/"+boardId+"/matchId/"+id;
		}
   
   </script>
		
		

<script>

function editGround(id){
//	alert(id);
	var boardId = "${boardId}";
	window.location.href = "${pageContext.request.contextPath}/CoordinatorEditGround/groundId/"+id+"/boardId/"+boardId;
}

function deleteGround(id){
	var boardId = "${boardId}";
		   var groundBean = {
				   groundId : id,
		   }
		   $.ajax({
			 type:"post",
			 url:"${pageContext.request.contextPath}/deleteGround",
			 data:JSON.stringify(groundBean),
			 contentType:"application/json",
			 success:function(res){
				// alert(res);
				 window.location.href = "${pageContext.request.contextPath}/ground-list/"+boardId;

			 },
			 error:function(err){
				// alert(err);
			 }
			   
		   })
	   
}

function loadMoreGround(){
	   var boardId = "${boardId}";
	   var token = $("#hiddenToken").val();
	   
	   var ground = {
			   boardId : boardId,
			   tokenId : token,
			   paginationFlag : "Yes",
			   
	   }
	   $.ajax({
		   type:"post",
		   url:"${pageContext.request.contextPath}/loadMoreGrounds",
		   data:JSON.stringify(ground),
		   contentType:"application/json",
		   success:function(res){
			   
			   if(res.length != 0 ){
		 
				
				   
					var	htmlContent = '';
					htmlContent += '<div id="tableId" class="form-group col-md-12 noPadding"><table><thead><tr>';	
					htmlContent += '<table>';
					htmlContent += '<thead>';
					htmlContent += '<tr>';
					htmlContent += '<th class="alignCenter">Ground Name</th>';
					htmlContent += '<th>Address</th>';
					htmlContent += '<th>City</th>';
					htmlContent += '<th class="alignCenter">Action</th>';
					htmlContent += '</tr>';
					htmlContent += '</thead>';
					htmlContent += '<tbody>';
					for(var i=0; i<res.length; i++){
						
						   var tokenId = res[i].tokenId;
						   
						   document.getElementById("hiddenToken").value = tokenId;
						
						var umpireId = res[i].groundId;
						var boardId = res[i].boardId;
						
						htmlContent += '<tr>';
						htmlContent += '<td>'+res[i].groundName+'</td>';
						htmlContent += '<td>'+res[i].address1+'</td>';
						htmlContent += '<td>'+res[i].city+'</td>';
						htmlContent += "<td class='alignCenter'><a href='#' title='Edit' ><i onclick='editGround(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-pencil editIcon'></i></a><a href='#' title='Delete' ><i onclick='deleteGround(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-trash-o deleteIcon'></i></a>";
						htmlContent += '</td>';
						htmlContent += '</tr>';
					}
					htmlContent += '</tbody>';	
					htmlContent += '</table>';	
					htmlContent += '</div>';	
					$("#tableId").html(htmlContent).trigger('create');
					
					}else{
					
						var	htmlContent = '';
						htmlContent += '<div id="tableId" class="form-group col-md-12 noPadding"><table><thead><tr>';	
						htmlContent += '<table>';
						htmlContent += '<thead>';
						htmlContent += '<tr>';
						htmlContent += '<th class="alignCenter">Ground Name</th>';
						htmlContent += '<th>Address</th>';
						htmlContent += '<th>City</th>';
						htmlContent += '<th class="alignCenter">Action</th>';
						htmlContent += '</tr>';
						htmlContent += '</thead>';
						htmlContent += '</table>';
						htmlContent += '<span class="noContentDivRed">No more ground available</span>';
						
						  document.getElementById("hiddenToken").value = "";
						$("#loadButton").hide();
						  
						$("#tableId").html(htmlContent).trigger('create');
						
					}
			   
			   
			   
		   },
		   error : function(err){
			   console.log(err);
		   }
	   })
	   
	   
}


</script>
   
   
   
</body>
</html>