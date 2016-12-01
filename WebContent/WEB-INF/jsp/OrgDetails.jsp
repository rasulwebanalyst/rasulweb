<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CricketSocial</title>
   <link rel="stylesheet" href="css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="css/token-input-facebook.css" type="text/css" />

<script>var ctx="${pageContext.request.contextPath}";</script>
</head>
<script type="text/javascript">
var i=0;
var uploadedarr=[];
var uploadextension=[];
var deletedarray=[];
</script>
<body onload="sequencenumber()">
<div>
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
	<%@ include file="BoardHeader.jsp" %>
<section class="middleContentBlock">
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                   <form action="" id="" method="post"  enctype="multipart/form-data" >
            <div class="col-md-10 whiteBox pull-right cs-org-holder">
            	<div class="form-group col-md-12">
            	       <div class="col-lg-12 col-sm-12 col-12">
            	       
            	       <c:if test="${boardInfoType eq 'Organization'}">
            	         <h4 id="Headervalue">About Organization</h4>   
            	       </c:if>
            	       
            	       <c:if test="${boardInfoType eq 'History'}">
            	         <h4 id="Headervalue">History</h4>   
            	       </c:if>
            	       
            	       <c:if test="${boardInfoType eq 'Rules&Regulations'}">
            	         <h4 id="Headervalue">Rules & Regulations</h4>   
            	       </c:if>
            	       
            	       <c:if test="${boardInfoType eq 'Awards&Honors'}">
            	         <h4 id="Headervalue">Awards & Honors</h4>   
            	       </c:if>
            	       
            	       <c:if test="${boardInfoType eq 'FAQ'}">
            	         <h4 id="Headervalue">FAQ</h4>   
            	       </c:if>
            	       
		            
		            <textarea class="form-control" placeholder="Enter Information.." id="Enteredinformation" value="">${OrgResponse.text}</textarea>
		            <span style="text-align:center; margin:0 auto; display:block">( or ) Just upload document below</span>
		          
		          
		           <!--  <label class="btn btn-primary">
		                upload <input type="file" style="display: none;" id="uploadfile" onchange="selectpdf(this)">
		            </label> -->
		            
		            <div class="form-group col-md-12 noPadding cs-align-center file-drop" style="margin-top:2%">
            	       <div class="col-lg-12 col-sm-12 col-12">
		            <!-- <label for="email" style="width:100%; color: #9CA9B9">We having file upload option also</label>  --> 
		            <label class="btn btn-primary btn-wide">
		                Browse <input type="file" style="display: none;" id="uploadfile" onchange="selectpdf(this)">
		            </label>
		            
		            
		            <div id="uploadname">
		            <c:forEach items="${OrgResponse.fileDetails}" var="filedetail" varStatus="loop">
         	
         	<span class='greenText' id='uploadedname${loop.index}'><span class="upload-file-name">${filedetail.fileName}</span><span onclick="deletename('uploadedname${loop.index}','uploadedsrc${loop.index}')" style='margin-left: 4px; padding: 10px 1px 1px 1px; float: left;'><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>
		            
		            </c:forEach>
		            </div>
		            <div id="uploadedpdfs">
		             <c:forEach items="${OrgResponse.fileDetails}" var="filedetail" varStatus="loop">
		             <input type='hidden' id='uploadedsrc${loop.index}' value="${filedetail.fileUrl}">
<<<<<<< HEAD
		                 	<input type='hidden' id='uploadedsrcext${loop.index}' value='${filedetail.fileName}'>
=======
		                 	<input type='hidden' id='uploadedsrcext${loop.index}' value="${filedetail.fileName}">
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
		            
		            </c:forEach> 
		            
		            </div>
		            
		            </div>
            	
 
	        	</div><!-- form-group -->
	        	
	        	
	        	
		        </div>
            	
            	    <div class="col-lg-12 col-sm-12 col-12" style="text-align:center">
		        		<input type="button" class="btn btn-default dBtn" value="Save" onclick="SaveOrganizationDetails()"></button>
		        		<input type="button" class="btn btn-default dBtn" value="Cancel" onclick="CancelOrganizationDetails()"></button>
		        		</div>
	        	</div><!-- form-group -->
            </div><!-- col-md-10 whitebox -->
      </form>
                        
     </div>
    </div>
        	<!--/Content Block-->
  </div>
 </div>
</section>

</div>


<script type="text/javascript" src="${pageContext.request.contextPath}//BoardPageFunction.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tokeninput.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?signed_in=true&libraries=places&callback=initAutocomplete"
        async defer></script>
 
<script type="text/javascript">


function selectpdf(finput)
{
	var format=["pdf","doc","docx"];
	
	var imageUrl=$('#uploadfile')[0].files[0];
	if(typeof imageUrl === "undefined" || imageUrl==null){
		ext1 = null;
	}else{
<<<<<<< HEAD
	var iamgeExtension=imageUrl.name.replace(/ /g,"~");
=======
	var iamgeExtension=imageUrl.name;
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
	 ext1 = iamgeExtension.substr(iamgeExtension.lastIndexOf('.') + 1);
	 var pos=format.indexOf(ext1);
	 if(pos==-1)
		 {
		// alert("file should be in pdf,docx,doc,txt format")
		displaynotification('Please choose pdf or doc or docx file',2000);
		 $("#uploadfile").val('');
		 return false;
		 }
	 
	 if (finput.files && finput.files[0]) {
         var reader = new FileReader();
         reader.onload = function (e) {
         	
        // alert(i);
         	 var htmlco="";
         	 var j=i+1;
         	 htmlco+="<input type='hidden' id='uploadedsrc"+j+"' value="+e.target.result+">";
         	htmlco+="<input type='hidden' id='uploadedsrcext"+j+"' value="+iamgeExtension+">";
         	 $("#uploadedpdfs").append(htmlco);
         	 i=j;
         	 
<<<<<<< HEAD
         	 var htmlco1="<span class='greenText' id='uploadedname"+j+"'><span class='upload-file-name'>"+iamgeExtension.replace(/~/g," ")+"</span><span onclick=deletename('uploadedname"+j+"','uploadedsrc"+j+"')><img style='margin-left: 4px; padding: 10px 1px 1px 1px; float: left;' src='${pageContext.request.contextPath}/images/cross.png'></span></span>";
=======
         	 var htmlco1="<span class='greenText' id='uploadedname"+j+"'><span class='upload-file-name'>"+iamgeExtension+"</span><span onclick=deletename('uploadedname"+j+"','uploadedsrc"+j+"')><img style='margin-left: 4px; padding: 10px 1px 1px 1px; float: left;' src='${pageContext.request.contextPath}/images/cross.png'></span></span>";
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
         	$("#uploadname").append(htmlco1);
         	 /* var htmlco1="";
         	// htmlco1= */
         	uploadedarr.push("uploadedsrc"+j);
         	uploadextension.push("uploadedsrcext"+j);
         	console.log(uploadedarr.length);
         };
         
         reader.readAsDataURL(finput.files[0]);
     }
	}
	}
	
	function deletename(spanname,srcname)
	{
		console.log("Before remove"+uploadedarr.length)
		var pos=uploadedarr.indexOf(srcname);
		 var fdata=$("#"+srcname).val();
		 var fname=$("#"+uploadextension[pos]).val();
		 console.log(fdata);
		 console.log(fname);
		 var base64trimedsplit=fdata.split(',');
		 if(base64trimedsplit.length ==1)
			{
			var base64trimed=base64trimedsplit[0];
			
			var obj={
					fileName : fname,
					fileUrl : fdata,
			}
			deletedarray.push(obj);
			}
		uploadedarr.splice(pos,1);
		uploadextension.splice(pos,1);
		$("#"+spanname).hide();
		console.log("After remove"+uploadedarr.length)
	}
	
	function SaveOrganizationDetails()
	{
		var bid="${BoardId}";
		var txt=$("#Enteredinformation").val();
		
		var filedetailarray=[];
		for(var i=0;i<uploadedarr.length;i++)
			{
			
<<<<<<< HEAD
			var Filename2=$("#"+uploadextension[i]).val();
			var Filename=Filename2.replace(/~/g," ");
=======
			var Filename=$("#"+uploadextension[i]).val();
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
			var base64=$("#"+uploadedarr[i]).val();
			/* alert(base64) */
			/* var base64trimed=base64.split(',')[1]; */
			var base64trimedsplit=base64.split(',');
			//alert(base64trimed)
			if(base64trimedsplit.length ==1)
				{
				var fileurl=base64trimedsplit[0];
				var base64trimed="";
				}
			else{
				var base64trimed=base64trimedsplit[1];
				var fileurl="";
			}
			var ext=Filename.split(".");
			var obj={
					fileExtension :	"."+ext[ext.length-1],
					fileData : base64trimed,
					fileName : Filename,
					fileUrl  : fileurl,
			}
			filedetailarray.push(obj);
			}
		var type="${boardInfoType}";
		var boardtype="";
		if(type == "Organization")
			{
			boardtype="Organization";
			}
		else if(type == "History")
			{
			boardtype="History";
			}
		else if(type == "Rules&Regulations")
			{
			boardtype="Rules&Regulations";
			}
		else if(type == "Awards&Honors")
			{
			boardtype="Awards&Honors";
			}
		else{
			boardtype="FAQ";
			}
		
		var request={
				boardId : bid,
				boardInfoType : boardtype,
				text : txt,
				fileDetails : filedetailarray,
				deletedFileDetails : deletedarray,
		}
		console.log(JSON.stringify(request));
		$('#loading').show();
		$.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/organizationDetails",
			data : JSON.stringify(request),
			contentType : "application/json;charset=utf-8",
			success : function(res)
			{
				//alert(res);
				//location.reload();
				window.history.back();
			}
			
			
		})
	}
	
	function sequencenumber()
	{
		var total="${FileSize}";
		console.log(total);
		for(var j=0;j<total;j++)
			{
			uploadedarr.push("uploadedsrc"+j);
         	uploadextension.push("uploadedsrcext"+j);
         	i=j
			}
	}
	
	function CancelOrganizationDetails()
	{
		window.history.back();
	}
	
</script>
</body>
</html>