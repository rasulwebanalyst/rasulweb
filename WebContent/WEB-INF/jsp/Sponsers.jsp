<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CricketSocial</title>

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet"/>
   <link rel="stylesheet" href="css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="css/token-input-facebook.css" type="text/css" />

<script>var ctx="${pageContext.request.contextPath}";</script>
<script>
var arrayMemberList=[];
var sequencNumber=0;
var sequencNumber2=[];

var i=0;
var uploadedarr=[];
var uploadextension=[];
var deletedarray=[];
</script>
</head>
<body onload="sequencenumberinsert()">


<div id="EditPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        <div id="RoasterPopupText">
        <div class="col-md-4">
                                <label for="" style="width:99%; text-align:left">Name</label>  
                                  <input type="text" style="width:99%;" class="form-control" value="" style="" placeholder="" id="Editname">
                                  </div><!-- col end-->
                                  <div class="col-md-4">
                                  <label for="" style="width:99%;">Image</label>
                                  <img style="width: 36px; height: 36px; margin-left: 1%;" id='Editfilesrc1' src="">
                                 <label style="width: 40%;" class="btn btn-wide">
		                			Browse <input type="file" id='Editfile' style="display: none;" onchange="readurl2(this)">
		                			<img  style="display: none;" id='Editfilesrc'  src="">
		            				</label>
                                  </div><!-- col end-->
                                  <div class="col-md-4">
                                  <label for="" style="width:99%; text-align:left" >Comments</label>
                                  <textarea class="form-control" placeholder="" style="height: 35px; overflow: auto;" id="EditComment"></textarea>
                                 <!--  <input type="text" class="form-control" value="" style="" placeholder="" id="EditComment"> -->
                                  </div>
        
        </div>
      </div>
      <div class="modal-footer action">
      <input type="hidden" id="Editmemberid"> 
      <button type="button" onclick="EditPopupSave()" class="btn btn-default ok">OK</button>
      <button type="button" onclick="EditPopupCancel()" class="btn btn-default ok">Cancel</button>
       </div>
    </div>

  </div>
</div>  


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
            <div class="form-group col-md-12 noPadding profileForm">
                             
                                
                                 <div class="col-md-12 noPadding" id="memberMainDIV">
                                  <label for="email" style="width:100%;">Sponsers</label>   
                                  
                                  <c:forEach items="${spoResponse.boardSponsorsList}" var="sponserlist" varStatus="loop">
                                  
                                  
                                 <table class='bd-table' id='memberListDIV${loop.count}'><tr>
	    	        <td><span class='palyerCount bd-player-count' id='sequenc${loop.count}'>${loop.count}</span></td> 
	    	        <td><label>Name</label><input type='text' class='form-control' style='width:98%;' readonly value='${sponserlist.sponsorName}' placeholder='' id='member${loop.count}'></td>
	    	        <td><label>Image</label><img style='width: 36px; height: 36px; margin-left: 1%;' id='image${loop.count}' src='${sponserlist.imageUrl}' onerror=errorImages(this)><label style='' class='btn btn-wide tb-browse'>Browse<input type='file' style='display: none;'></label></td>
	    	        <td><label>Comments</label><textarea class="form-control" placeholder="" style="height: 35px; overflow: auto;" id="comment${loop.count}">${sponserlist.comments}</textarea>
	    	        <%-- <input type='text' class='form-control' style='width:98%;' readonly value='${sponserlist.comments}' placeholder='' id='comment${loop.count}'> --%></td>
	    	        <td style='width: 100px'><button type='button' class='btn' onclick='removeFromList(${loop.count})'><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' class='btn' onclick='editFromList(${loop.count})'><i class='fa fa-pencil' aria-hidden='true'></i></button></td>
	    	        </tr></table>
                                  
                                  
                                  </c:forEach> 
             					</div>                            
                                <div class="col-md-12 cs-bd-holder">
                                <div class="col-md-4">
                                <label for="">Name</label>  
                                <span class="req-star">*</span>
                                  <input type="text" style="width:80%;" class="form-control" value="" style="" placeholder="" id="addMemberName">
                                  </div><!-- col end-->
                                  <div class="col-md-2">
                                  <label for="" style="width:99%;">Image</label>
                                  <img style="width: 36px; height: 36px; margin-left: 1%;" id='uploadfilesrc1' src="http://1.bp.blogspot.com/-ST362NQRqVA/VPR0au8_8FI/AAAAAAAAAVg/nXmSyevawNw/s1600/writing1.png">
                                 <label style="width: 40%;" class="btn btn-wide">
		                			Browse <input type="file" id='uploadfile' style="display: none;" onchange="readurl1(this)">
		                			<img  style="display: none;" id='uploadfilesrc'  src="">
		            				</label>
                                  </div><!-- col end-->
                                  <div class="col-md-4">
                                  <label for="" style="width:99%;" style="width:99%;">Comments</label>
                                  <textarea class="form-control" placeholder="" style="height: 35px; overflow: auto;" id="addMemberComment"></textarea>
                                  </div><!-- col end-->
                                 <button type="button" class="btn btn-default dBtn btn-wide" style="" onclick="addmemberToRoster()">Add</button>
                                  
                                 <!-- <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;margin-top: 37px;"> -->
                                 	
			                                  </div> 
                                  
                               	   <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
                               	   <div id="addMemberError" style="color: red;"></div>
                                </div>
     
            
     <div class="form-group col-md-12 noPadding cs-align-center file-drop">
            	       <div class="col-lg-12 col-sm-12 col-12">
		            <label for="email" style="width:100%; color: #9CA9B9">We having file upload option also</label>  
		            <label class="btn btn-primary btn-wide">
		                Browse <input type="file" style="display: none;" id="uploadfilesponser" onchange="selectpdf(this)">
		            </label>
		            
		              <div id="uploadedpdfs">
		               <c:forEach items="${spoResponse.uploadFileAttachementsList}" var="filelist" varStatus="loop">
		            <input type='hidden' id='uploadedsrcsponser${loop.count}' value="${filelist.fileUrl}">
		            <input type='hidden' id='iamgeExtensionname${loop.count}' value="${filelist.fileName}">
		            </c:forEach>
		            </div>
		            
		            <div id="uploadname">
		            
		               <c:forEach items="${spoResponse.uploadFileAttachementsList}" var="filelist" varStatus="loop">
		            <span class='greenText' id='uploadednamesponser${loop.count}'>${filelist.fileName}<span onclick="deletename('uploadednamesponser${loop.count}','uploadedsrcsponser${loop.count}')" style="margin-left:10px"><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>
		            </c:forEach>
		            
		            </div>
		        </div>
            	
 
	        	</div><!-- form-group -->
	        	       <div class="col-lg-12 col-sm-12 col-12 cs-align-center">
		        		<input type="button" class="btn btn-default dBtn btn-wide" onclick="save()" value="Save"></button>
		        		<input type="button" class="btn btn-default dBtn btn-wide" onclick="Cancel()" value="Cancel"></button>
		        		</div>
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
        	var format=["pdf","docx","doc","txt"];
        	
        	var imageUrl=$('#uploadfilesponser')[0].files[0];
        	if(typeof imageUrl === "undefined" || imageUrl==null){
        		ext1 = null;
        	}else{
        	var iamgeExtension=imageUrl.name;
        	 ext1 = iamgeExtension.substr(iamgeExtension.lastIndexOf('.') + 1);
        	 var pos=format.indexOf(ext1);
        	 if(pos==-1)
        		 {
        		 alert("file should be in pdf,docx,doc,txt format")
        		 $("#uploadfilesponser").val('');
        		 return false;
        		 }
        	 
        	 if (finput.files && finput.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                 	
                 	 var htmlco="";
                 	 var j=i+1;
                 	 htmlco+="<input type='hidden' id='uploadedsrcsponser"+j+"' value="+e.target.result+">";
                 	htmlco+="<input type='hidden' id='iamgeExtensionname"+j+"' value="+iamgeExtension+">";
                 	 $("#uploadedpdfs").append(htmlco);
                 	 i=j;
                 	 
                 	 var htmlco1="<span class='greenText' id='uploadednamesponser"+j+"'>"+iamgeExtension+"<span onclick=deletename('uploadednamesponser"+j+"','uploadedsrcsponser"+j+"') style='margin-left:10px'><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>";
                 	$("#uploadname").append(htmlco1);
                 	 /* var htmlco1="";
                 	// htmlco1= */
                 	uploadedarr.push("uploadedsrcsponser"+j);
                 	//uploadextension.push(iamgeExtension);
                 	uploadextension.push("iamgeExtensionname"+j);
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
        
        </script>
        <script type="text/javascript">
       
        
        function setValueToTextBoxAndArray(elem,textBox,divId,userId,hiddenId,name)
        {
        	
       		var i=checkMemberExistbyId(userId);
       		if(i!=-1)
    		{		
       			arrayMemberList.push({
               	 name : name,
               	 id : userId,
               	 member : "Member"
                });
    			$('#'+textBox).val($(elem).text());
    	   		$('#'+divId).hide();	
    	   		$('#'+hiddenId).val(userId);
    			
    		}else{
    			displaynotification('User already exist',2000);
    		}
        }
        
        
        
        function addmemberToRoster()
    {
    	 var name=$("#addMemberName").val();
    	 var comment=$("#addMemberComment").val();
    	 if(name.length == 0 )
    		 {
    	 displaynotification('Please fill the mandatory field ',2000);
    	 return false;
    		 }
    	 var imagestring=document.getElementById("uploadfilesrc").src;
    	 console.log(imagestring);
      
	    		 	sequencNumber=parseInt(sequencNumber)+parseInt(1);
	    		 	sequencNumber2.push(sequencNumber);
	    	        var htm="";
	    	        htm +="<table class='bd-table' id=memberListDIV"+sequencNumber+"><tr>";
	    	        htm +="<td><span class='palyerCount bd-player-count' id='sequenc"+sequencNumber+"'>"+sequencNumber2.length+"</span></td>"; 
	    	        htm +="<td><label>Name</label><input type='text' class='form-control' style='width:98%;' readonly value='"+name+"' placeholder='' id='member"+sequencNumber+"'></td>";
	    	        htm +="<td><label>Image</label><img style='width: 36px; height: 36px; margin-left: 1%;' id='image"+sequencNumber+"' src='"+imagestring+"' onerror=errorImages(this)><label style='' class='btn btn-wide tb-browse'>Browse<input type='file' style='display: none;'></label></td>";
	    	        htm +="<td><label>Comments</label><textarea class='form-control' style='width:98%; height: 35px; overflow: auto;' readonly placeholder='' id='comment"+sequencNumber+"'>"+comment+"</textarea></td>";
	    	        htm +="<td style='width: 100px'><button type='button' class='btn' onclick=removeFromList("+sequencNumber+")><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' class='btn' onclick=editFromList("+sequencNumber+")><i class='fa fa-pencil' aria-hidden='true'></i></button></td>";
	    	        htm +="</tr></table>";
	    	        $('#memberMainDIV').append(htm);
	    	        $("#addMemberName").val("");
	    	        $("#addMemberComment").val("");
	    	        $('#uploadfilesrc1').attr('src', "http://1.bp.blogspot.com/-ST362NQRqVA/VPR0au8_8FI/AAAAAAAAAVg/nXmSyevawNw/s1600/writing1.png");
	                 $('#uploadfilesrc').attr('src', "");
       
    }

    function setsequenc()
    {
    	for(var i in sequencNumber2)
    		{
    			$('#sequenc'+sequencNumber2[i]).html(parseInt(i)+parseInt(1));
    		}
    }
    function removeFromList(id)
    {
    	console.log(id);
    	removingMemberById(id); 
    	
    }
    function checkMemberExistbyId(id)
    {
    	var index=-1;
    	for(var i in sequencNumber2)
    		{
    			if(sequencNumber2[i]==id)
    				{
    					index=i;
    					break;
    				}
    		}
    	return index;
    }
    
    function removingMemberById(id)
    {
    	var i=checkMemberExistbyId(id);
    	if(i!=-1)
    		{
    		 	$("#memberListDIV"+id).remove();
    			var a = sequencNumber2.indexOf(id);
    			sequencNumber2.splice(a, 1);
    			setsequenc();
    			// seting value 
    			
    
      
      	      
    			return 'object removed';
    		}else{
    			return 'object not removed';
    		}
    	
    }
    
    
    function readurl1(finput)
    {
    	var format=["jpg","png"];
    	
    	var imageUrl=$('#uploadfile')[0].files[0];
    	if(typeof imageUrl === "undefined" || imageUrl==null){
    		ext1 = null;
    	}else{
    	var iamgeExtension=imageUrl.name;
    	 ext1 = iamgeExtension.substr(iamgeExtension.lastIndexOf('.') + 1);
    	 var pos=format.indexOf(ext1);
    	 if(pos==-1)
    		 {
    		// alert("file should be in pdf,docx,doc,txt format")
    		displaynotification('Please choose pdf or doc file',2000);
    		 $("#uploadfile").val('');
    		 return false;
    		 }
    	 
    	 if (finput.files && finput.files[0]) {
             var reader = new FileReader();
             reader.onload = function (e) {
             	
             	 
                 $('#uploadfilesrc1').attr('src', e.target.result);
                 $('#uploadfilesrc').attr('src', e.target.result);
             };
             
             reader.readAsDataURL(finput.files[0]);
         }
    	}
    	
    }
    
    function readurl2(finput)
    {
    	var format=["jpg","png"];
    	
    	var imageUrl=$('#Editfile')[0].files[0];
    	if(typeof imageUrl === "undefined" || imageUrl==null){
    		ext1 = null;
    	}else{
    	var iamgeExtension=imageUrl.name;
    	 ext1 = iamgeExtension.substr(iamgeExtension.lastIndexOf('.') + 1);
    	 var pos=format.indexOf(ext1);
    	 if(pos==-1)
    		 {
    		 alert("file should be in pdf,docx,doc,txt format")
    		 $("#uploadfile").val('');
    		 return false;
    		 }
    	 
    	 if (finput.files && finput.files[0]) {
             var reader = new FileReader();
             reader.onload = function (e) {
             	
             	 
                 $('#Editfilesrc1').attr('src', e.target.result);
                 $('#Editfilesrc').attr('src', e.target.result);
             };
             
             reader.readAsDataURL(finput.files[0]);
         }
    	}
    	
    }
    
    function editFromList(id)
    {
    	
    	var name=$("#member"+id).val();
		var comment=$("#comment"+id).val();
		var base64=document.getElementById("image"+id).src;
		/* alert(name);
		alert(comment); */
		$("#Editname").val(name);
		$("#EditComment").val(comment);
		$('#Editfilesrc1').attr('src', base64);
		$("#Editmemberid").val(id);
		
    	$("#EditPopup").show();
    }
    function EditPopupSave()
    {
    	var id=$("#Editmemberid").val();
    	var name=$("#Editname").val();
		var comment=$("#EditComment").val();
		var base64=document.getElementById("Editfilesrc1").src;
		
		$("#member"+id).val(name);
		$("#comment"+id).val(comment);
		$('#image'+id).attr('src', base64);
		$("#EditPopup").hide();
    }
    
    function save()
    {
    	
    	var boardlistarray =[];
    	var bid="${BoardId}"
    	for(var i in sequencNumber2)
    		{
    		var name=$("#member"+sequencNumber2[i]).val();
    		var comment=$("#comment"+sequencNumber2[i]).val();
    		var base64=document.getElementById("image"+sequencNumber2[i]).src;

			var base64trimedsplit=base64.split(',');
			if(base64trimedsplit.length ==1)
				{
				
				if(base64trimedsplit[0].includes("profileIcon.png"))
					{
					var fileurl="";
					var base64trimed="";
					}else{

				var fileurl=base64trimedsplit[0];
				var base64trimed="";
					}
				}
			else{
				var base64trimed=base64trimedsplit[1];
				var fileurl="";
			}
    		
    		var obj={
    				boardId : bid,
    				sponsorName : name,
    				comments : comment,
    				imageData : base64trimed,
    				imageUrl :	fileurl,
    		}
    		
    		boardlistarray.push(obj);
    		}
    	
    	// for image data
    	
    	var filedetailarray=[];
		for(var i=0;i<uploadedarr.length;i++)
			{
			
			//var Filename=uploadextension[i];
			var Filename=$("#"+uploadextension[i]).val();
			var base64=$("#"+uploadedarr[i]).val();
			var base64trimedsplit=base64.split(',');
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
    	
    	
    	
    	
    	
    	
    	var request ={
    			boardId : bid,
    			boardSponsorsList : boardlistarray,
    			 uploadFileAttachementsList : filedetailarray,
    			deletedFileAttchementsList : deletedarray,
    	}
    	$('#loading').show();
    	console.log(JSON.stringify(request));
    	 $.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/SponserDetails",
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
    
    function errorImages(id)
    {
    	id.src="${pageContext.request.contextPath}/images/profileIcon.png";
    	
    }
    
    
    function sequencenumberinsert()
	{
		 var total="${FileSize}";
		console.log(total);
		for(var j=0;j<total;j++)
			{
			var m=j+1;
			uploadedarr.push("uploadedsrcsponser"+m);
         	uploadextension.push("iamgeExtensionname"+m);
         	i=m;
			} 
			
    	 var total1="${SponserSize}";
		console.log(total1);
		for(var k=0;k<total1;k++)
			{
			sequencNumber2.push(k+1);
			sequencNumber=k+1;
         	
			} 
	}
    
    function Cancel()
    {
    	window.history.back();
    }
    function EditPopupCancel()
    {
    	$("#EditPopup").hide();
    }
    
    </script>
</body>
</html>