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

<!--Gallery-->
<link rel="stylesheet" href="css/colorbox.css" />

<style type="text/css">
.eventoption{

max-height: 207px !important;
overflow-y: auto !important;
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
                        <li role="presentation" class=""><a href="#Myevent" style="padding: 10px 20px;" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="BoardInfoDtails('Organization')">About Organization</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="DirectorsInfo()">Directors</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('History')">History</a></li>
                        <li role="presentation" class=""><a href="#Myevent" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="BoardInfoDtails('Rules&Regulations')">Rules & Regulations</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="SponserInfo()">Sponser</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('Awards&Honors')">Award & Honor</a></li>
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
                         
                         
                         
                         
                          Board Name : ${BoradInfo.boardName}
                          Short Description :${BoradInfo.shortDescription}
                          Board Address : ${BoradInfo.city},${BoradInfo.state},${BoradInfo.country},${BoradInfo.zipcode}
                          Contact Email Id :${BoradInfo.emailId}
                          Web Site  :${BoradInfo.website}
                         
                         
                         
                         
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
if(type == "Organization")
	{$("#Headervalue").text(bname+" About Organization");}else{$("#Headervalue").text(bname+" "+type);}
	
if(res.text != null && res.text != "")
	{
	htmlco+="<div class='text-show-field'>"+res.text+"</div>";
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
				
				}else if(filedetails[i].fileExtension == 'doc')
					{
					
			       htmlco+="<div class='tab-link-doc-holder'>";
			       htmlco+="<img src='${pageContext.request.contextPath}/images/doc.png'>";
			       htmlco+="<a class='tab-link-doc' href='https://docs.google.com/viewerng/viewer?url="+filedetails[i].fileUrl+"' target='_blank' title='View Document' style='display:block;' > "+filedetails[i].fileName+"</a></div>";
					}
			}
		}
	
	if(res.text == null && res.text == "" && filedetails ==null)
		{
		htmlco+="<span>No Data Found</span>"
		}
	$("#BoardInfoDetails").html(htmlco).trigger("create");

			}
			
			
			
		})
	
	
	
	
	
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
$("#Headervalue").text(bname+"Sponser");
                 var htmltable="";
                 var htmlco="";
             var sponserlist=res.boardSponsorsList;
               if(sponserlist.length >0)
            	   {
            	//   htmltable+="<table class='directors'><thead><tr><th>S.NO</th><th>Image</th><th>Name</th><th>Comments</th></tr></thead><tbody>";
            	   for(var i=0;i<sponserlist.length;i++)
                       {
            		   
            		   
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
            		   htmltable +="</td></tr></table>";
            		   
            		   
            		   
            		   
            		   
            		   
            		   
            		   
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
              				
              				}else if(filelist[i].fileExtension == 'doc')
              					{
              				/* htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filelist[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>"; */	
              					
              				htmlco+="<div class='tab-link-doc-holder'>";
              				htmlco+="<img src='${pageContext.request.contextPath}/images/doc.png'>";
              				htmlco+="<a class='tab-link-doc href=https://docs.google.com/viewerng/viewer?url="+filelist[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filelist[i].fileName+"</a>";
              				htmlco+="</div>";
              					
              					}
              			}
                    	  
                    	  
                    	  
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
$("#Headervalue").text(bname+"Directors");
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
           		htmltable +="<tr><td><label>Name</label><input type='text'  class='form-control' value='"+Boardlist[i].directorName+"'></td>";
           		htmltable +="<td class='bd-txt-holder' rowspan='3'><label>Summary</label><textarea type='text' class='form-control' >"+Boardlist[i].comments+"</textarea></td></tr>";
           		htmltable +="<tr><td><label>Position</label><input type='text' class='form-control' value='"+Boardlist[i].position+"' ></td></tr>";
           		htmltable +="<tr><td><label>Year</label><input type='text' class='form-control' style='width: 60px; display: inline-block;' value='"+Boardlist[i].fromDate+"' ><span style='float: none; display: inline-block; padding: 0 5px;'>-</span><input type='text' class='form-control' style='width: 60px; display: inline-block;' value='"+Boardlist[i].toDate+"' ></td></tr>";
           		htmltable +="<tr><td colspan='2'><label style='width: 100%;'>Social Media</label>";
           		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/facebook.png'><span>"+Boardlist[i].facebookUrl+"</span></div>";
           		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/twitter.png'><span>"+Boardlist[i].twitterUrl+"</span></div>";
           		htmltable +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span>"+Boardlist[i].linkedinUrl+"</span></div>";
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
             				
             				}else if(filelist[i].fileExtension == 'doc')
             					{
             				/* htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filelist[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>";	 */
             					
             						htmlco+="<div class='tab-link-doc-holder'>";
              				htmlco+="<img src='${pageContext.request.contextPath}/images/doc.png'>";
             				htmlco+="<a class='tab-link-doc' href=https://docs.google.com/viewerng/viewer?url="+filelist[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filelist[i].fileName+"</a>";
             				htmlco+="</div>";
             					}
             			}
                   	  
                   	  
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
