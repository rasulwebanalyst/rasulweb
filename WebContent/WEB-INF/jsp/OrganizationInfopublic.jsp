<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!--Gallery-->
<link rel="stylesheet" href="css/colorbox.css" />

<style type="text/css">
.eventoption{

max-height: 207px !important;
overflow-y: auto !important;
}

</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript">
    
   

    </script>
    
    
</head>
<body>
	<%@ include file="CSCommon.jsp" %>
	<%-- <%@ include file="BoardHeader.jsp" %> --%>
	<%@ include file="BoardHeaderpublic.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
      
        <%@ include file="BoardPublicProfileSideMenu.jsp" %>
        <%@ include file="BoardFanMenu.jsp" %> 
            <div class="col-md-7">
      			<div class="col-md-12 whiteBox leag-Acc ">
                	<h1 class="">EVENT LISTING <%-- <a href="${pageContext.request.contextPath}/create-event/${BoradInfo.boardId}">
                	<button type="submit" class="btn dBtn pull-right btnalian1">ADD EVENT</button></a> --%></h1>
                      
                      
                      <div role="tabpanel" class="tabpanel">

                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs nav-tabs-details" role="tablist">
                       <li role="presentation" class="active"><a href="#Myevent" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="BoardInfoDtails('Organization')">About Organization</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="DirectorsInfo()">Directors</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('History')">History</a></li>
                        <li role="presentation" class=""><a href="#Myevent" aria-controls="home" role="tab" data-toggle="tab" aria-expanded="true" onclick="BoardInfoDtails('Rules&Regulations')">Rules & Regulations</a></li>
                        <li role="presentation" class=""><a href="#Matchinvitation" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="SponserInfo()">Sponser</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('Awards&Honors')">Award & Honor</a></li>
                        <li role="presentation" class=""><a href="#Cancelevent" aria-controls="profile" role="tab" data-toggle="tab" aria-expanded="false" onclick="BoardInfoDtails('FAQ')">FAQ</a></li>
                      </ul>
                   
                      <!-- Tab panes -->
                      <div class="tab-content">
                      
                        <div role="tabpanel" class="tab-pane active" id="Myevent">
                        
					                        <h1 class="noBorder">Ajjhdgjghjhj</h1>
                        
                        <div id="Sponsertables">
                        
                        
                        </div>
                        
                        
                        <div id="BoardInfoDetails" class="">
                        <c:if test="${OrgResponse.text ne ''}">
                        <div class="text-show-field">${OrgResponse.text}</div>
                          </c:if>
					       <c:forEach items="${OrgResponse.fileDetails}" var="Files">
					       
					       <%-- <iframe src="http://docs.google.com/gview?url=${Files.fileUrl}&embedded=true"></iframe> --%>
					       <c:if test="${Files.fileExtension eq 'pdf'}">
					       <%-- <embed src="${Files.fileUrl}" width="500" height="375" type='application/pdf'> --%>
					       <a class="tab-link" href="${Files.fileUrl}" target="_blank"> ${Files.fileName}</a>
					       
					       </c:if>
					       
					          <c:if test="${Files.fileExtension eq 'doc'}">
					       <%-- <iframe src='https://view.officeapps.live.com/op/embed.aspx?src=${Files.fileUrl}' width='500px' height='375px' frameborder='0'> --%>
					       <%-- <iframe src='https://view.officeapps.live.com/op/embed.aspx?src=${Files.fileUrl}' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe> --%>
					       <a class="tab-link-doc"  href="https://docs.google.com/viewerng/viewer?url=${Files.fileUrl}" target="_blank" title="View Document" style="display:block;" > ${Files.fileName}</a>
					       </c:if>  
					       
					       </c:forEach>                
					         </div>            
					                       
					                      
					                       
					                        
                           
                       	</div>
                        
                        
                           
                           
                           
                        </div>
                        
  
            
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/newEventpublic.js"></script>
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
		//alert(bid);
		//alert(type);
		
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

htmlco="";

if(res.text != null && res.text != "")
	{
	htmlco+="<textarea rows='3'  cols='85' >"+res.text+"</textarea>";
	}
	var filedetails=res.fileDetails;
	if(filedetails !=null)
		{
		for(var i=0;i<filedetails.length;i++)
			{
			if(filedetails[i].fileExtension == 'pdf')
				{
				//htmlco+="<embed src='"+filedetails[i].fileUrl+"' width='500' height='375' type='application/pdf'>";
				htmlco+="<a href="+filedetails[i].fileUrl+" target='_blank'> "+filedetails[i].fileName+"</a>";
				
				}else if(filedetails[i].fileExtension == 'doc')
					{
					htmlco+="<a href=https://docs.google.com/viewerng/viewer?url="+filedetails[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filedetails[i].fileName+"</a>";
					//htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filedetails[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>";	
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
console.log(JSON.stringify(res));
                 var htmltable="";
                 var htmlco="";
             var sponserlist=res.boardSponsorsList;
               if(sponserlist.length >0)
            	   {
            	   htmltable+="<table><thead><tr><th>S.NO</th><th>Image</th><th>Name</th><th>Comments</th></tr></thead><tbody>";
            	   for(var i=0;i<sponserlist.length;i++)
                       {
            		   var count=i+1;
            		   htmltable+="	<tr>";
            		   htmltable+="<td>"+count+"</td>";
            		   htmltable+="<td><img  src="+sponserlist[i].imageUrl+"  width='30px' style='margin-right: 10px;''></td>";
            		   htmltable+="<td>"+sponserlist[i].sponsorName+"</td>";
            		   htmltable+="<td>"+sponserlist[i].comments+"</td>";
            		   htmltable+="</tr>";
                       }
            	   htmltable+="</tbody>"; 
            	   htmltable+="</table>";
            	   }
                 var filelist=res.uploadFileAttachementsList;
                      if(filelist.length > 0)
                    	  {
                    	  
                    	  for(var i=0;i<filelist.length;i++)
              			{
              			if(filelist[i].fileExtension == 'pdf')
              				{
              				/* htmlco+="<embed src='"+filelist[i].fileUrl+"' width='500' height='375' type='application/pdf'>"; */
              				   htmlco+="<a href="+filelist[i].fileUrl+" target='_blank'> "+filelist[i].fileName+"</a>";
              				
              				}else if(filelist[i].fileExtension == 'doc')
              					{
              				/* htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filelist[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>"; */	
              					htmlco+="<a href=https://docs.google.com/viewerng/viewer?url="+filelist[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filelist[i].fileName+"</a>";
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
console.log(JSON.stringify(res));
                var htmltable="";
                var htmlco="";
            var Boardlist=res.boardDirectorsList;
              if(Boardlist.length >0)
           	   {
           	   htmltable+="<table><thead><tr><th>S.NO</th><th>Name</th><th>Position</th><th>Year</th><th>Comment</th></tr></thead><tbody>";
           	   
           	   for(var i=0;i<Boardlist.length;i++)
                      {
           		   var count=i+1;
           		   htmltable+="	<tr>";
           		   htmltable+="<td>"+count+"</td>";
           		   htmltable+="<td>"+Boardlist[i].sponsorName+"</td>";
           		   htmltable+="<td>"+Boardlist[i].position+"</td>";
           		   htmltable+="<td>"+Boardlist[i].fromDate+"</td>";
           		   htmltable+="<td>"+Boardlist[i].comments+"</td>";
           		   htmltable+="</tr>";
                      }
           	   htmltable+="</tbody>"; 
           	   htmltable+="</table>";
           	   }
                var filelist=res.uploadFileAttachementsList;
                     if(filelist.length > 0)
                   	  {
                   	  
                   	  for(var i=0;i<filelist.length;i++)
             			{
             			if(filelist[i].fileExtension == 'pdf')
             				{
             				/* htmlco+="<embed src='"+filelist[i].fileUrl+"' width='500' height='375' type='application/pdf'>"; */
             				htmlco+="<a href="+filelist[i].fileUrl+" target='_blank'> "+filelist[i].fileName+"</a>";
             				
             				}else if(filelist[i].fileExtension == 'doc')
             					{
             				/* htmlco+="<iframe src='https://view.officeapps.live.com/op/embed.aspx?src="+filelist[i].fileUrl+"' width='600px' height='500px' frameborder='0'>This is an embedded <a target='_blank' href='http://office.com'>Microsoft Office</a> document, powered by <a target='_blank' href='http://office.com/webapps'>Office Online</a>.</iframe>";	 */
             					htmlco+="<a href=https://docs.google.com/viewerng/viewer?url="+filelist[i].fileUrl+" target='_blank' title='View Document' style='display:block;' >"+filelist[i].fileName+"</a>";
             					}
             			}
                   	  
                   	  
                   	  }
                     $("#BoardInfoDetails").html(htmlco).trigger("create");
                     $("#Sponsertables").html(htmltable).trigger("create");
                     $("#Sponsertables").show();
			}
			
			
			
		})
		
		
	}

</script>
   
</body>
</html>
