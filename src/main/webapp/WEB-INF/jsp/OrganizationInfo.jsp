<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<!--Gallery-->
<link rel="stylesheet" href="css/colorbox.css" />

<style type="text/css">
.eventoption{

max-height: 207px !important;
overflow-y: auto !important;
}

</style>
<style type="text/css">

textarea#note {
	width:100%;
	display:block;
	max-width:100%;
	line-height:1.5;
	border-radius:3px;
	border: none;
	font-size: 12px;
	box-shadow:0 none;
	overflow:hidden;
	padding: 10px;
	outlne: 0;
}
textarea#note[disabled] {
	background: #fff;
}
html{
    height:100%;
}
body{
    
height:100%;
}

</style>

    
    <script type="text/javascript">


</script>
    
</head>
<body>
	<%@ include file="CSCommon.jsp" %>
	<script>
	var eventIDS=[];
	</script>
	<%@ include file="BoardHeader.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        	<%@ include file="BoardSideMenu.jsp" %>
      
                  
            <div class="col-md-7">
      			<div class="col-md-12 whiteBox leag-Acc ">
                      
                      
                      <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs nav-tabs-details" role="tablist">
                        <li role="presentation" class=""><a href="#Myevent" style="" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="BoardInfoDtails('Organization')">About Organization</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="DirectorsInfo()">Directors</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('History')">History</a></li>
                        <li role="presentation" class=""><a href="#Myevent" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="BoardInfoDtails('Rules&Regulations')">Rules & Regulations</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="SponserInfo()">Sponsors</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('Awards&Honors')">Awards & Honors</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('FAQ')">FAQ</a></li>
                      </ul>
                    <input type="hidden" id="Boardnameid" value="${BoradInfo.boardName}">
                    
                      <!-- Tab panes -->
                      <div class="tab-content tab-content-details">
                      
                        <div role="tabpanel" class="tab-pane active " id="Myevent">
                         <h1 class="noBorder" id="Headervalue"></h1> 
                        
                        <div id="Boardinfo">
                         <h1 class="noBorder" style="width:100%;">Welcome to ${BoradInfo.boardName}</h1>
                      <%--    <div class="tab-add">
                         <label>Contact Information</label>
                         <p>${BoradInfo.city},${BoradInfo.state},${BoradInfo.country},${BoradInfo.zipcode}</p>    
                         </div>
                         <div class="tab-add">
                         <label>Phone number</label>
                         <p>11111111,22222222</p>    
                         </div>
                         
                          <div class="tab-add">
                         <label>Owner</label>
                         
                         <p><span>${BoradInfo.user.firstName}, </span>
                         
                          <c:forEach items="${BoradInfo.boardCoOwnerList}" var="coowner">
                         <span>${coowner.user.fullName}</span>
                         </c:forEach>   </p>
                         </div> --%>
                         
                         
                         
                         <table class="brd-info">
                         <tr><td>Board Name</td><td>:</td><td>${BoradInfo.boardName}</td></tr>
                         <tr><td>Short Description</td><td>:</td><td>
                         
                         <c:choose>
                         <c:when test="${!empty BoradInfo.shortDescription}">
                         ${BoradInfo.shortDescription}
                         </c:when>
                         <c:otherwise>-</c:otherwise>
                         </c:choose>
                          
                         
                         </td></tr>
                         <tr><td style="vertical-align: top;">Board Address</td><td style="vertical-align: top;">:</td><td>
                         
                         <c:if test="${!empty BoradInfo.city}">
                         ${BoradInfo.city}
                         </c:if>
                         <c:if test="${!empty BoradInfo.state}">
                        <br>${BoradInfo.state}
                         </c:if>
                         <c:if test="${!empty BoradInfo.country}">
                        <br>${BoradInfo.country} 
                         </c:if>
                         <c:if test="${!empty BoradInfo.zipcode}">
                       <br>${BoradInfo.zipcode}
                         </c:if>
                         
                         
                         
                         </td></tr>
                         
                         <tr><td style="vertical-align: top;">Contact Number</td><td style="vertical-align: top;">:</td><td>
                         <c:choose>
                         <c:when test="${BoradInfo.phoneNumber1 ne 0}">
                         
                         <c:if test="${!empty BoradInfo.countryCode1}">${BoradInfo.countryCode1}-</c:if>
                          ${BoradInfo.phoneNumber1}
                          
                          <c:choose>
                         <c:when test="${BoradInfo.phoneNumber2 ne 0}">
                         <br>
                         
                         <c:if test="${!empty BoradInfo.countryCode2}">${BoradInfo.countryCode2}-</c:if>
                         
                          ${BoradInfo.phoneNumber2}
                         </c:when>
                         <c:otherwise>-</c:otherwise>
                         </c:choose>
                          
                         </c:when>
                         <c:otherwise>
                         <c:choose>
                         <c:when test="${BoradInfo.phoneNumber2 ne 0}">
                         <c:if test="${!empty BoradInfo.countryCode2}">${BoradInfo.countryCode2}-</c:if>
                          ${BoradInfo.phoneNumber2}
                         </c:when>
                         <c:otherwise>-</c:otherwise>
                         </c:choose>
                         
                         </c:otherwise>
                         </c:choose>
                         
                          
                         
                         
                         <tr><td>Contact Email Id</td><td>:</td><td>
                         
                        
                         <c:choose>
                         <c:when test="${!empty BoradInfo.emailId}">
                          ${BoradInfo.emailId}
                         </c:when>
                         <c:otherwise>-</c:otherwise>
                         </c:choose>
                         
                         </td></tr>
                         <tr><td>Web Site</td><td>:</td><td>
                         
                         
                        
                         <c:choose>
                         <c:when test="${!empty BoradInfo.website}">
                         <a href="${BoradInfo.website}" target="_blank">${BoradInfo.website}</a> 
                         </c:when>
                         <c:otherwise>-</c:otherwise>
                         </c:choose>
                         
                         
                         </td></tr>
                         </table>
                         <%--  Board Name : ${BoradInfo.boardName}
                          Short Description :${BoradInfo.shortDescription}
                          Board Address : ${BoradInfo.city},${BoradInfo.state},${BoradInfo.country},${BoradInfo.zipcode}
                          Contact Email Id :${BoradInfo.emailId}
                          Web Site  :${BoradInfo.website} --%>
                         
                         
                         
                         
                         </div>
                                        
                        <div id="Sponsertables">
                        
                        
                        
                        </div>
                        
                        
                        <div id="BoardInfoDetails" class="">
                        
					                  
					         </div>               
                           
                       	</div>
                       
                           
                           
                        </div>
                        
                        
                       
                        
                        
                      <!--   <iframe src="http://docs.google.com/gview?url=http://s3.amazonaws.com/dev-cricket-social-board-files/b174a3af-f441-4150-ab54-77f2bc73350cOrg0.doc&embedded=true" style="width:600px; height:500px;" frameborder="0"></iframe> -->
					         <!-- <iframe src='https://view.officeapps.live.com/op/embed.aspx?src=http://s3.amazonaws.com/dev-cricket-social-board-files/b174a3af-f441-4150-ab54-77f2bc73350cOrg0.doc' width='500px' height='375px' frameborder='0'> --> 
            
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/newEvent.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/event.js"></script>
<script type="text/javascript">

$(function(){
	$('#loading').hide();
});
</script>

   
   <script src="${pageContext.request.contextPath}/js/yui-min.js"></script>
<script type="text/javascript">
</script>   
   

<script type="text/javascript">
   
$(document).ready(function() {

	   
	   
	$("body").click(function(){
		$(".eventoption").fadeOut();
		});

		$(".eventoption").click(function(e){
		 e.stopPropagation();
		});
	   
	
	  
	  
});   


function BoardInfoDtails(type)
{
	$("#Sponsertables").hide();
		var bid="${boardId}";
          var bname=$("#Boardnameid").val(); 		
		 var request={
				boardId : bid,
				boardInfoType : type,
		}
		console.log(JSON.stringify(request));
		$.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/GetBoardInfoDetails",
			data : JSON.stringify(request),
			contentType : "application/json;charset=utf-8",
			success : function(res)
			{
console.log(JSON.stringify(res));
$("#Boardinfo").hide();
htmlco="";

var bname="${BoradInfo.boardName}";
/* if(type == "Organization")
	{$("#Headervalue").text(bname+" About Organization");}else{$("#Headervalue").text(bname+" "+type);} */
	
	
if(type == "Organization")
{$("#Headervalue").text(bname+" About Organization");}
else if(type == "Rules&Regulations")
{$("#Headervalue").text(bname+" Rules & Regulations");}
else if(type == "Awards&Honors")
{$("#Headervalue").text(bname+" Awards & Honors");}
else
{$("#Headervalue").text(bname+" "+type);} 
	
if(res.text != null && res.text != "")
	{
	htmlco+="<textarea disabled readonly id='ShortText' style='min-height: 300px; border: none; padding: 10px; font-size: 12px; width: 100%; overflow:hidden; background: #fff;'>"+res.text+"</textarea>";
	htmlco+="<input class='rdmore' type='button' value='See More...' style='float: right;' id='moreinfobutton' onclick='scrollheight()'>";
	htmlco+="<div id='note1'><textarea readonly id='note' disabled>"+res.text+"</textarea></div>";
	}
	var filedetails=res.fileDetails;
	if(filedetails !=null)
		{
		
		if(filedetails.length > 0)
			{
			htmlco+="<h1 class='others-title' align='left' >"+bname+" Supporting Documents</h1>";
			htmlco+="<i class='err-holder'><font class='error'>Note:</font> Clicking on these links will open the document in a new window.</i>";
			}
		
		for(var i=0;i<filedetails.length;i++)
			{
			if(filedetails[i].fileExtension == 'pdf')
				{
				
				htmlco+="<div class='tab-link-holder'>";
		          htmlco+="<img src='${pageContext.request.contextPath}/images/pdf.png'>";
		          htmlco+="<a class='tab-link' href="+filedetails[i].fileUrl+" target='_blank'>"+filedetails[i].fileName+"</a></div>";
				
				}else if(filedetails[i].fileExtension == 'doc' || filedetails[i].fileExtension == 'docx' )
					{
					
			       htmlco+="<div class='tab-link-doc-holder'>";
			       htmlco+="<img src='${pageContext.request.contextPath}/images/doc.png'>";
			       htmlco+="<a class='tab-link-doc' href='https://docs.google.com/viewerng/viewer?url="+filedetails[i].fileUrl+"' target='_blank' title='View Document' style='display:block;' > "+filedetails[i].fileName+"</a></div>";
					}
			}
		}
	
	if(res.text == "" && filedetails.length== 0 )
		{
		htmlco+="<span style='color: red'>No details available</span>"
		}
	if(res.text == null && filedetails == null )
	{
	htmlco+="<span style='color: red'>No details available</span>"
	}
	$("#BoardInfoDetails").html(htmlco).trigger("create");
	var s_height = document.getElementById('note').scrollHeight;
	document.getElementById('note').setAttribute('style','height:'+s_height+'px');
	document.getElementById('note1').setAttribute('style','Display:none');
	
	if(s_height <331){
		$("#moreinfobutton").hide();
	}

			}
			
			
			
		})
	
	}
	
	
	function scrollheight()
	{
		/* var s_height = document.getElementById('note').scrollHeight;
		document.getElementById('note').setAttribute('style','height:'+s_height+'px'); */
		
		$("#ShortText").hide();
		$("#moreinfobutton").hide();
		$("#note1").show();
	}

	function SponserInfo()
	{
		
		
		var bid="${boardId}";
		var bname=$("#Boardnameid").val();
		
		 var request={
				boardId : bid,
		}
		console.log(JSON.stringify(request));
		$.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/sponsersInfoDetails",
			data : JSON.stringify(request),
			contentType : "application/json;charset=utf-8",
			success : function(res)
			{
				$("#Boardinfo").hide();
console.log(JSON.stringify(res));
var bname="${BoradInfo.boardName}";
$("#Headervalue").text(bname+" Sponsors");
                 var htmltable="";
                 var htmlco="";
             var sponserlist=res.boardSponsorsList;
               if(sponserlist.length >0)
            	   {
            	//   htmltable+="<table class='directors'><thead><tr><th>S.NO</th><th>Image</th><th>Name</th><th>Comments</th></tr></thead><tbody>";
            	   for(var i=0;i<sponserlist.length;i++)
                       {
            		   
            		  /*  
            		   htmltable +="<table class='bd-table' >";
            		   htmltable +="<tr> <td></td></tr>";
            		   htmltable +="<tr><td><label>Name</label><input type='text' class='form-control' readonly value='"+sponserlist[i].sponsorName+"'></td>";
            		   htmltable +="<td class='bd-txt-holder' rowspan='2'><label>Summary</label><textarea type='text' class='form-control' >"+sponserlist[i].comments+"</textarea></td></tr>";
            		   htmltable +="<tr><td><label for='' >Image</label>";
            		   htmltable +="<img  src="+sponserlist[i].imageUrl+" onerror=errorImages(this)></td></tr>";
            		   htmltable +="<tr><td colspan='2'><label style='width: 100%;'>Social Media</label>";
                       
            		   htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/facebook.png'><span >"+sponserlist[i].facebookUrl+"</span></div>";
            		   htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/twitter.png'><span >"+sponserlist[i].twitterUrl+"</span></div>";
            		   htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span >"+sponserlist[i].linkedinUrl+"</span></div>";
            		   htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span >"+sponserlist[i].websiteUrl+"</span></div>";
            		   htmltable +="</td></tr></table>"; */
            		   
            		   htmltable +="<table class='bd-table' >";
                  		//htmltable +="<tr> </tr>";
                  		if(sponserlist[i].imageUrl != "")
                  		{
                  		htmltable +="<tr><td colspan='2' class='usr-img'><img  src="+sponserlist[i].imageUrl+" onerror=errorImages(this) style='width: 100px; height: 100px;margin-right: 10px; display: block; border: 4px solid #fff; box-shadow: 0px 2px 2px #ccc;'></td>";
                  		}
                  		else
                  			{
                  			htmltable +="<tr><td colspan='2' class='usr-img'><img  src='${pageContext.request.contextPath}/images/profileIcon.png'  style='width: 100px; height: 100px;margin-right: 10px; display: block; border: 4px solid #fff; box-shadow: 0px 2px 2px #ccc;'></td>";
                  			}
                  		htmltable +="<tr><td class='usr-img'><label>Name</label><span>:</span><input type='text' style='background: transparent;' class='form-control' disabled value='"+sponserlist[i].sponsorName+"'></td>";
                  		htmltable +="<td class='bd-txt-holder' rowspan='4'><label>Summary</label><textarea type='text' class='form-control' disabled >"+sponserlist[i].comments+"</textarea></td></tr>";
                  	//	htmltable +="<tr><td><label>Position</label><span>:</span><input type='text' class='form-control' value='"+Boardlist[i].position+"' ></td></tr>";
                  	//	htmltable +="<tr><td><label>Year</label><span>:</span><input type='text' class='form-control' style='width: 45px; display: inline-block;' value='"+Boardlist[i].fromDate+"' ><span style='float: none; display: inline-block; padding: 0 2px;'>-</span><input type='text' class='form-control' style='width: 50px; display: inline-block; padding-left: 4px;' value='"+Boardlist[i].toDate+"' ></td></tr>";
                  		htmltable +="<tr><td style='height: 145px; vertical-align: top;'><label style='width: 100%;'>Social Media</label>";
                  		
                  		if(sponserlist[i].facebookUrl == "" && sponserlist[i].twitterUrl == "" && sponserlist[i].linkedinUrl == "" && sponserlist[i].websiteUrl == "")
                  		
                  			{
                  			htmltable +="<div class='bd-soc-holder'  ><span style='color: red'>No details available</span></div>";
                  			}else{
                  				if(sponserlist[i].facebookUrl != ""){
                  			var fburl=(sponserlist[i].facebookUrl.charAt(sponserlist[i].facebookUrl.length-1) == "/") ? sponserlist[i].facebookUrl.substring(0,sponserlist[i].facebookUrl.length-1) : sponserlist[i].facebookUrl ;
                  		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/facebook.png'><span><a href="+fburl+" target='_blank'>"+fburl+"</a></span></div>";}
                  				if(sponserlist[i].twitterUrl != ""){
                  					var turl=(sponserlist[i].twitterUrl.charAt(sponserlist[i].twitterUrl.length-1) == "/") ? sponserlist[i].twitterUrl.substring(0,sponserlist[i].twitterUrl.length-1) : sponserlist[i].twitterUrl ;		
                  		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/twitter.png'><span><a href="+turl+" target='_blank'>"+turl+"</a></span></div>";}
                  				if(sponserlist[i].linkedinUrl != ""){
                  					var lurl=(sponserlist[i].linkedinUrl.charAt(sponserlist[i].linkedinUrl.length-1) == "/") ? sponserlist[i].linkedinUrl.substring(0,sponserlist[i].linkedinUrl.length-1) : sponserlist[i].linkedinUrl ;
                  		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span><a href="+lurl+" target='_blank'>"+lurl+"</a></span></div>";}
                  				if(sponserlist[i].websiteUrl != ""){
                  					var wurl=(sponserlist[i].websiteUrl.charAt(sponserlist[i].websiteUrl.length-1) == "/") ? sponserlist[i].websiteUrl.substring(0,sponserlist[i].websiteUrl.length-1) : sponserlist[i].websiteUrl ;
                  		htmltable +="<div class='bd-soc-holder' style='margin-bottom: 10px;'><img src='${pageContext.request.contextPath}/images/web.png'><span><a href="+wurl+" target='_blank'>"+wurl+"</a></span></div>";}
                  			}
                  		
                  		htmltable +="</td></tr>";
                  		htmltable +="</table>";
            		   
            		   
            		   
            		   
            		   
            		   
            		   
            		   
            		  /*  var count=i+1;
            		   htmltable+="	<tr>";
            		   htmltable+="<td>"+count+"</td>";
            		   htmltable+="<td class='usr-img'><img  src="+sponserlist[i].imageUrl+" onerror=errorImages(this) width='30px' style='margin-right: 10px;''></td>";
            		   htmltable+="<td>"+sponserlist[i].sponsorName+"</td>";
            		   htmltable+="<td>"+sponserlist[i].comments+"</td>";
            		   htmltable+="</tr>"; */
                       }
            	  /*  htmltable+="</tbody>"; 
            	   htmltable+="</table>"; */
            	   }
                 var filelist=res.uploadFileAttachementsList;
                      if(filelist.length > 0)
                    	  {
                    	  
              			htmlco+="<h1 class='others-title' align='left' >"+bname+" Supporting Documents</h1>";
              			htmlco+="<i class='err-holder'><font class='error'>Note:</font> Clicking on these links will open the document in a new window.</i>";
                    	  
                    	  for(var i=0;i<filelist.length;i++)
              			{
              			if(filelist[i].fileExtension == 'pdf')
              				{
              				//   htmlco+="<a href="+filelist[i].fileUrl+" target='_blank'> "+filelist[i].fileName+"</a>";
              				htmlco+="<div class='tab-link-holder'>";
            				htmlco+="<img src='${pageContext.request.contextPath}/images/pdf.png'>";
           				    htmlco+="<a class='tab-link' href="+filelist[i].fileUrl+" target='_blank'> "+filelist[i].fileName+"</a>";
           				    htmlco+="</div>";
              				
              				}else if(filelist[i].fileExtension == 'doc' || filelist[i].fileExtension == 'docx')
              					{
              				/* htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filelist[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>"; */	
              					
              				htmlco+="<div class='tab-link-doc-holder'>";
              				htmlco+="<img src='${pageContext.request.contextPath}/images/doc.png'>";
              				htmlco+="<a class='tab-link-doc' href=https://docs.google.com/viewerng/viewer?url="+filelist[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filelist[i].fileName+"</a>";
              				htmlco+="</div>";
              				
              					
              					}
              			}
                    	  
                    	  
                    	  
                    	  }
                      
                      if(sponserlist.length == 0 && filelist.length== 0 )
              		{
              		htmlco+="<span style='color: red'>No details available</span>"
              		}
                      $("#BoardInfoDetails").html(htmlco).trigger("create");
                      $("#Sponsertables").html(htmltable).trigger("create");
                      $("#Sponsertables").show();

			}
			
			
			
		})

		
		
	}
	
	function DirectorsInfo()
	{
		var bid="${boardId}";
		var bname=$("#Boardnameid").val();
		
		 var request={
				boardId : bid,
		}
		console.log(JSON.stringify(request));
		$.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/directorsInfoDetails",
			data : JSON.stringify(request),
			contentType : "application/json;charset=utf-8",
			success : function(res)
			{
				$("#Boardinfo").hide();
console.log(JSON.stringify(res));
var bname="${BoradInfo.boardName}";
$("#Headervalue").text(bname+" Directors");
                var htmltable="";
                var htmlco="";
            var Boardlist=res.boardDirectorsList;
              if(Boardlist.length >0)
           	   {
           	  /*  htmltable+="<table class='directors'><thead><tr><th>S.NO</th><th>Image</th><th>Name</th><th>Position</th><th>FromYear</th><th>ToYear</th><th>Comment</th></tr></thead><tbody>"; */
           	   
           	   for(var i=0;i<Boardlist.length;i++)
                      {
           		   
           		   
           		htmltable +="<table class='bd-table' >";
           		//htmltable +="<tr> </tr>";
           		
           		if(Boardlist[i].imageUrl != "")
                  		{
           			htmltable +="<tr><td colspan='2' class='usr-img'><img  src="+Boardlist[i].imageUrl+" onerror=errorImages(this) style='width: 100px; height: 100px;margin-right: 10px; display: block; border: 4px solid #fff; box-shadow: 0px 2px 2px #ccc;'></td>";
                  		}
                  		else
                  			{
                  			htmltable +="<tr><td colspan='2' class='usr-img'><img  src='${pageContext.request.contextPath}/images/profileIcon.png'  style='width: 100px; height: 100px;margin-right: 10px; display: block; border: 4px solid #fff; box-shadow: 0px 2px 2px #ccc;'></td>";
                  			}
           		
           		
           		htmltable +="<tr><td class='usr-img'><label>Name</label><span>:</span><input type='text' style='background: transparent;' class='form-control' disabled value='"+Boardlist[i].directorName+"'></td>";
           		htmltable +="<td class='bd-txt-holder' rowspan='4'><label>Summary</label><textarea type='text' class='form-control' disabled >"+Boardlist[i].comments+"</textarea></td></tr>";
           		htmltable +="<tr><td><label>Position</label><span>:</span><input type='text' class='form-control' disabled value='"+Boardlist[i].position+"' ></td></tr>";
           		htmltable +="<tr><td><label>Year</label><span>:</span><input type='text' class='form-control' style='width: 45px; display: inline-block;' disabled value='"+Boardlist[i].fromDate+"' ><span style='float: none; display: inline-block; padding: 0 2px;'>-";
           		if(Boardlist[i].toDate != 0){
           		htmltable +="</span><input type='text' class='form-control' style='width: 50px; display: inline-block; padding-left: 4px;' disabled value='"+Boardlist[i].toDate+"' ></td></tr>";}
           		else{htmltable +="</span><input type='text' class='form-control' style='width: 50px; display: inline-block; padding-left: 4px;' disabled value='till date' ></td></tr>";}
           	
           		htmltable +="<tr><td style='height: 145px; vertical-align: top;'><label style='width: 100%;'>Social Media</label>";
           		
           		if(Boardlist[i].facebookUrl == "" && Boardlist[i].twitterUrl == "" && Boardlist[i].linkedinUrl == "")
              		
      			{
      			htmltable +="<div class='bd-soc-holder' ><span style='color: red'>No details available</span></div>";
      			}else{
      				if(Boardlist[i].facebookUrl != ""){
      					var fburl=(Boardlist[i].facebookUrl.charAt(Boardlist[i].facebookUrl.length-1) == "/") ? Boardlist[i].facebookUrl.substring(0,Boardlist[i].facebookUrl.length-1) : Boardlist[i].facebookUrl ;
           		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/facebook.png'><span><a target='_blank' href="+fburl+">"+fburl+"</a></span></div>";}
      				if(Boardlist[i].twitterUrl != ""){
      					var turl=(Boardlist[i].twitterUrl.charAt(Boardlist[i].twitterUrl.length-1) == "/") ? Boardlist[i].twitterUrl.substring(0,Boardlist[i].twitterUrl.length-1) : Boardlist[i].twitterUrl ;
           		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/twitter.png'><span><a target='_blank' href="+turl+">"+turl+"</a></span></div>";}
      				if(Boardlist[i].linkedinUrl != ""){
      					var lurl=(Boardlist[i].linkedinUrl.charAt(Boardlist[i].linkedinUrl.length-1) == "/") ? Boardlist[i].linkedinUrl.substring(0,Boardlist[i].linkedinUrl.length-1) : Boardlist[i].linkedinUrl ;
           		htmltable +="<div class='bd-soc-holder' style='margin-bottom: 10px;'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span><a target='_blank' href="+lurl+">"+lurl+"</a></span></div>";}
      			}
           		htmltable +="</td></tr>";
           		htmltable +="</table>";
           		   
           		   
           		   
           		  /*  var count=i+1;
           		   htmltable+="	<tr>";
           		   htmltable+="<td>"+count+"</td>";
           		   htmltable+="<td class='usr-img'><img  src="+Boardlist[i].imageUrl+" onerror=errorImages(this)  width='30px' style='margin-right: 10px;''></td>";
           		   htmltable+="<td>"+Boardlist[i].directorName+"</td>";
           		   htmltable+="<td>"+Boardlist[i].position+"</td>";
           		   htmltable+="<td>"+Boardlist[i].fromDate+"</td>";
           		   htmltable+="<td>"+Boardlist[i].toDate+"</td>";
           		   htmltable+="<td>"+Boardlist[i].comments+"</td>";
           		   htmltable+="</tr>"; */
                      }
           	   /* htmltable+="</tbody>"; 
           	   htmltable+="</table>"; */
           	   }
                var filelist=res.uploadFileAttachementsList;
                     if(filelist.length > 0)
                   	  {
                    	 
             			htmlco+="<h1 class='others-title' align='left' >"+bname+" Supporting Documents</h1>";
             			htmlco+="<i class='err-holder'><font class='error'>Note:</font> Clicking on these links will open the document in a new window.</i>";
                   	  
                   	  for(var i=0;i<filelist.length;i++)
             			{
             			if(filelist[i].fileExtension == 'pdf')
             				{
             				/* htmlco+="<embed src='"+filelist[i].fileUrl+"' width='500' height='375' type='application/pdf'>"; */
             				htmlco+="<div class='tab-link-holder'>";
              				htmlco+="<img src='${pageContext.request.contextPath}/images/pdf.png'>";
             				htmlco+="<a class='tab-link' href="+filelist[i].fileUrl+" target='_blank'> "+filelist[i].fileName+"</a>";
             				htmlco+="</div>";
             				
             				}else if(filelist[i].fileExtension == 'doc' || filelist[i].fileExtension == 'docx')
             					{
             				/* htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filelist[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>";	 */
             					
             						htmlco+="<div class='tab-link-doc-holder'>";
              				htmlco+="<img src='${pageContext.request.contextPath}/images/doc.png'>";
             				htmlco+="<a class='tab-link-doc' href=https://docs.google.com/viewerng/viewer?url="+filelist[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filelist[i].fileName+"</a>";
             				htmlco+="</div>";
             					}
             			}
                   	  
                   	  
                   	  }
                     
                     if(Boardlist.length == 0 && filelist.length== 0 )
               		{
               		htmlco+="<span style='color: red'>No details available</span>"
               		}
                     $("#BoardInfoDetails").html(htmlco).trigger("create");
                     $("#Sponsertables").html(htmltable).trigger("create");
                     $("#Sponsertables").show();
			}
			
			
			
		})
		
		
	}
	

    function errorImages(id)
    {
    	id.src="${pageContext.request.contextPath}/images/profileIcon.png";
    	
    }
  
</script>
   
</body>
</html>
