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
        
  <!--   <div class="modal-body">
        
         <div id="RoasterPopupText">
        <div class="col-md-4"> -->
                                <!--  <label for="" style="width:99%; text-align:left">Name</label>  
                                  <input type="text" style="width:99%;" class="form-control" value="" style="" placeholder="" id="Editname">
                                  </div>col end
                                  <div class="col-md-4">
                                  <label for="" style="width:99%;">Image</label>
                                  <img style="width: 36px; height: 36px; margin-left: 1%;" id='Editfilesrc1' src="">
                                 <label style="width: 40%;" class="btn btn-wide">
		                			Browse <input type="file" id='Editfile' style="display: none;" onchange="readurl2(this)">
		                			<img  style="display: none;" id='Editfilesrc'  src="">
		            				</label>
                                  </div>col end
                                  <div class="col-md-4">
                                  <label for="" style="width:99%; text-align:left" >Comments</label>
                                  <textarea class="form-control" placeholder="" style="height: 35px; overflow: auto;" id="EditComment"></textarea>
                                  <input type="text" class="form-control" value="" style="" placeholder="" id="EditComment">
                                  </div>  --> 
                                  
                                    <table class='bd-table' id='' style="box-shadow: none;">
			                     
			                     <tr><td><label>Name<span class="req-star">*</span></label><input type='text' class='form-control' id="Editname" ></td>
			                     
			                     
			                     
			                     
			                     <td class="bd-txt-holder" rowspan="2"><label>Summary</label><textarea type='text' class='form-control' id="EditComment"></textarea></td></tr>
			                     <tr><td><label for="" >Image<span class="req-star">*</span></label>
			                     <div class="cs-pro-img-holder">
                                  <img id='Editfilesrc1' src="">
                                  <span><i class="fa fa-pencil" aria-hidden="true">
                                  
                                  <input type="file" id='Editfile' style="display: none;" onchange="readurl2(this)">
		                			<img  style="display: none;" id='Editfilesrc'  src="">
                                  
                                  </i>Change Picture</span>
                                  </div>
                                  </td></tr>
			                     
			                     <tr><td colspan="2"><label style="width: 100%;">Other Contacts</label>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/facebook.png"><input type="text" id='editMemberfaceboof'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/twitter.png"><input type="text" id='editMembertwitter'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><input type="text" id='editMemberlinkedin'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><input type="text" id='editMemberwebsite'></div>
			                     </td></tr>
			                     </table> 
                                  
                                  
                                  
                                  
                                  
        
       <!--  </div>
      </div> -->
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
                                  
                              
                              <table class='bd-table' id='memberListDIV${loop.count}'>
                     <tr> <td></td> 
                     <td><button type='button' onclick="removeFromList(${loop.count})" class='btn' ><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' onclick="editFromList(${loop.count})" class='btn'><i class='fa fa-pencil' aria-hidden='true'></i></button></td></tr>
                     <tr><td><label>Name</label><input type='text' class='form-control' readonly value='${sponserlist.sponsorName}' id='member${loop.count}'></td>
                     <td class="bd-txt-holder" rowspan="2"><label>Summary</label><textarea type='text' class='form-control' id='comment${loop.count}'>${sponserlist.comments}</textarea></td></tr>
                     <tr><td><label for="" >Image</label>
                     <img id='image${loop.count}' src='${sponserlist.imageUrl}'></td></tr>
                     <tr><td colspan="2"><label style="width: 100%;">Social Media</label>
                     
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/facebook.png"><span id='Directorfacebook${loop.count}' >${sponserlist.facebookUrl}</span></div>
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/twitter.png"><span id='Directortwitter${loop.count}'>${sponserlist.twitterUrl}</span></div>
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><span id='Directorlinkedin${loop.count}'>${sponserlist.linkedinUrl}</span></div>
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><span id='Directorwebsite${loop.count}'>${sponserlist.websiteUrl}</span></div>
                     <input type="hidden" value="${sponserlist.sponserId}" id="Userid${loop.count}">
                     </td></tr>
                     </table>
                                  
                                 <%-- <table class='bd-table' id='memberListDIV${loop.count}'><tr>
	    	        <td><span class='palyerCount bd-player-count' id='sequenc${loop.count}'>${loop.count}</span></td> 
	    	        <td><label>Name</label><input type='text' class='form-control' style='width:98%;' readonly value='${sponserlist.sponsorName}' placeholder='' id='member${loop.count}'></td>
	    	        <td><label>Image</label><img style='width: 36px; height: 36px; margin-left: 1%;' id='image${loop.count}' src='${sponserlist.imageUrl}' onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/boardIcon.png';"><label style='' class='btn btn-wide tb-browse'><!-- Browse<input type='file' style='display: none;'> --></label></td>
	    	        <td><label>Comments</label><textarea class="form-control" placeholder="" style="height: 35px; overflow: auto;" id="comment${loop.count}">${sponserlist.comments}</textarea>
	    	        <input type='text' class='form-control' style='width:98%;' readonly value='${sponserlist.comments}' placeholder='' id='comment${loop.count}'></td>
	    	        <td style='width: 100px'><button type='button' class='btn' onclick='removeFromList(${loop.count})'><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' class='btn' onclick='editFromList(${loop.count})'><i class='fa fa-pencil' aria-hidden='true'></i></button></td>
	    	        </tr></table> --%>
                                  
                                  
                                  </c:forEach> 
             					</div> 	</div> 	</div>   
             					
             					 <div class="col-md-10 whiteBox pull-right cs-org-holder">
            					<div class="form-group col-md-12 noPadding profileForm cs-bd-holder">	
            					
            					
            					
            					 <table class='bd-table' id='' style="box-shadow: none;">
			                     
			                     <tr><td><label>Name<span class="req-star">*</span></label><input type='text' class='form-control' id="addMemberName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')"></td>
			                     
			                     <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div>
			                     
			                     
			                     <td class="bd-txt-holder" rowspan="2"><label>Summary</label><textarea type='text' class='form-control' id="addMemberComment"></textarea></td></tr>
			                     <tr><td><label for="" >Image<span class="req-star">*</span></label>
			                     <div class="cs-pro-img-holder">
                                  <img id='uploadfilesrc1' src="http://1.bp.blogspot.com/-ST362NQRqVA/VPR0au8_8FI/AAAAAAAAAVg/nXmSyevawNw/s1600/writing1.png">
                                 <!--  <span ><i class="fa fa-pencil" aria-hidden="true" id="upload_link"> -->
                                 
                                   <label style="width: 40%;" class="btn btn-wide">
                                   <i class="fa fa-pencil" aria-hidden="true" id="upload_link">
                                  <input type="file" id='uploadfile' style="display: none;" onchange="readurl1(this)">
		                			<img  style="display: none;" id='uploadfilesrc'  src="">
                                  Change Picture</label>
                                  
                                 <!--  </i>Change Picture</span> -->
                                  </div>
                                  </td></tr>
			                     
			                     <tr><td colspan="2"><label style="width: 100%;">Other Contacts</label>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/facebook.png"><input type="text" id='addMemberfaceboof'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/twitter.png"><input type="text" id='addMembertwitter'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><input type="text" id='addMemberlinkedin'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><input type="text" id='addMemberwebsite'></div>
			                     </td></tr>
			                    <tr><td colspan="2" style="text-align: center;"><button type='button' onclick="addmemberToRoster()" class='btn btn-default dBtn btn-wide' >Add</button></td></tr>
			                     </table>
                     
             					
             					                         
                                <!-- <div class="col-md-12 cs-bd-holder">
                                <div class="col-md-4">
                                <label for="">Name</label>  
                                <span class="req-star">*</span>
                                  <input type="text" style="width:80%;" class="form-control" value="" style="" placeholder="" id="addMemberName">
                                  </div>col end
                                  <div class="col-md-2">
                                  <label for="" style="width:99%;">Image</label>
                                  <img style="width: 36px; height: 36px; margin-left: 1%;" id='uploadfilesrc1' src="http://1.bp.blogspot.com/-ST362NQRqVA/VPR0au8_8FI/AAAAAAAAAVg/nXmSyevawNw/s1600/writing1.png">
                                 <label style="width: 40%;" class="btn btn-wide">
		                			Browse <input type="file" id='uploadfile' style="display: none;" onchange="readurl1(this)">
		                			<img  style="display: none;" id='uploadfilesrc'  src="">
		            				</label>
                                  </div>col end
                                  <div class="col-md-4">
                                  <label for="" style="width:99%;" style="width:99%;">Comments</label>
                                  <textarea class="form-control" placeholder="" style="height: 35px; overflow: auto;" id="addMemberComment"></textarea>
                                  </div>col end
                                 <button type="button" class="btn btn-default dBtn btn-wide" style="" onclick="addmemberToRoster()">Add</button> -->
                                  
                                 <!-- <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;margin-top: 37px;"> -->
                                 	
			                                  </div> 
                                  
                               	   <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
                               	   <div id="addMemberError" style="color: red;"></div>
                                
     
     <span style="text-align:center; margin:0 auto; padding-bottom: 14px; display:block">( or ) Just upload document below</span>
            
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
		            <span class='greenText' id='uploadednamesponser${loop.count}'><span class="upload-file-name">${filelist.fileName}</span><span onclick="deletename('uploadednamesponser${loop.count}','uploadedsrcsponser${loop.count}')" style="margin-left: 4px; padding: 10px 1px 1px 1px; float: left;"><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>
		            </c:forEach>
		            
		            </div>
		        </div>
            	
 
	        	</div><!-- form-group -->
	        	       <div class="col-lg-12 col-sm-12 col-12 cs-align-center">
		        		<input type="button" class="btn btn-default dBtn btn-wide" onclick="save()" value="Save"></button>
		        		<input type="button" class="btn btn-default dBtn btn-wide" onclick="Cancel()" value="Cancel"></button>
		        		</div>
    
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
        
        
        function getBuddiesAutoComplete(elem,divId,hiddenId){
        	var key=$(elem).val();
        	var textBoxId=$(elem).attr('id');
        	console.log('value : '+key);
        	console.log('textBoxId : '+textBoxId);
        	if(key.length>2) {
        			    $.ajax({
        						type : "POST",
        						url : ctx+"/rosterBuddySearch",
        						dataType: "json",
        			        contentType: "application/json; charset=utf-8",
        			        data : key,					            
        						success : function(res) {
        							console.log(res);	
        							var html="";
        							
        							if(res != null){
        								var users=res.userList;
        								console.log(JSON.stringify(users));
        								html+="<ul style='width: 39%;     margin-top: 47px; margin-left: 80px;'>";
        								
        								if(users!= null && users.length >0){
        									for(var i in users){
        										var name=users[i].firstName;
        										if(users[i].lastName!=null){
        											name=name+" "+users[i].lastName;
        										}
        										 html+="<li class='selection-item' onclick=setValueToTextBox('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')><div class='media'><div class='media-left'><a><img alt='' src="+users[i].userImageUrl+" onerror=errorImages(this) class='nav-avatar' ></a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading'> "+name+"<br></a>";
        										 html+="<input type='text'  id='roasterpopup"+users[i].userId+"' value='"+users[i].userImageUrl+"' style='display: none;' >";
        										 // html+="<li class='selection-item' onclick=setValueToTextBox('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')><div class='media'><div class='media-left'><a><img alt='' src='"+users[i].userImageUrl+"' class='nav-avatar' ></a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading'> "+name+"<br></a>";
    										if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
    									        html += '<span class="auto-black">'+users[i].city+'</span>';
    									}else{
    										html += '<span class="auto-black">'+users[i].city+','+users[i].state+'</span>'; 
    									}
    									html +="</h4><div class='headRight' id=''></div></div></div></li>"; 
            								}
        								}else{
        									html+="<li>No results found...</li>";
        								}
        								//console.log("in if"+html);
    									html+="</ul>";
            							$('#'+divId).html(html);
            							$('#'+divId).show();
            						
        							}else{
       									html+="<ul>";
       									html+="<li>No results found...</li>";
    										html+="</ul>";
            							$('#'+divId).html(html);
            							$('#'+divId).show();
        							}	  
        						},
        						
        						error:function(response){
        							$('#'+divId).hide();
        						console.log("Error message"+JSON.stringify(response));
        						},
        					
        						
        					}); 
        				
        	   }else{
        		   $('#'+divId).hide();
        	   }
          
        } 
        
        function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
        	var name=elem.replace(/-/g," ");
        	var imgurl=$("#roasterpopup"+userId).val();
        	if(imgurl != "")
        		{
        	$("#uploadfilesrc1").attr('src',imgurl);	
        	$("#uploadfilesrc").attr('src',imgurl);
        		}
       		$('#'+textBox).val(name);
       		$('#'+divId).hide();	
       		$('#'+hiddenId).val(userId);	
       		
        }
    
        
        
        
        
        
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
                 	 var htmlco1="<span class='greenText' id='uploadednamesponser"+j+"'><span class='upload-file-name'>"+iamgeExtension+"</span><span onclick=deletename('uploadednamesponser"+j+"','uploadedsrcsponser"+j+"') style='margin-left: 4px; padding: 10px 1px 1px 1px; float: left;'><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>";
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
    	 
    	 var facebook=$("#addMemberfaceboof").val();
         var twitter=$("#addMembertwitter").val();
         var linkedin=$("#addMemberlinkedin").val();
         var website=$("#addMemberwebsite").val();
         var selectedid=$("#addMemberIDDIV").val();
    	 
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
	    	        
	    	        
	    	        htm +="<table class='bd-table' id=memberListDIV"+sequencNumber+">";
	    	        htm +="<tr> <td></td> ";
	    	        htm +="<td><button type='button' onclick=removeFromList("+sequencNumber+") class='btn' ><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' onclick=editFromList("+sequencNumber+") class='btn'><i class='fa fa-pencil' aria-hidden='true'></i></button></td></tr>";
	    	       	htm +="<tr><td><label>Name</label><input type='text' class='form-control' readonly value='"+name+"' id='member"+sequencNumber+"'></td>";
	    	    	htm +="<td class='bd-txt-holder' rowspan='2'><label>Summary</label><textarea type='text' class='form-control' id='comment"+sequencNumber+"'>"+comment+"</textarea></td></tr>";
	    	        htm +="<tr><td><label for='' >Image</label>";
	    	        htm +="<img id='image"+sequencNumber+"' src='"+imagestring+"'></td></tr>";
	    	        htm +="<tr><td colspan='2'><label style='width: 100%;'>Social Media</label>";
                    
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/facebook.png'><span id='Directorfacebook"+sequencNumber+"'>"+facebook+"</span></div>";
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/twitter.png'><span id='Directortwitter"+sequencNumber+"'>"+twitter+"</span></div>";
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span id='Directorlinkedin"+sequencNumber+"'>"+linkedin+"</span></div>";
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span id='Directorwebsite"+sequencNumber+"'>"+website+"</span></div>";
	    			htm+="<input type='hidden' id='Userid"+sequencNumber+"' value="+selectedid+">";
	    	        htm +="</td></tr></table>";
                    
	    	        
	    	        
	    	        
	    	        
	    	      
	    			  /*   <table class='bd-table' id=memberListDIV"+sequencNumber+"><tr>";
	    	        htm +="<td><span class='palyerCount bd-player-count' id='sequenc"+sequencNumber+"'>"+sequencNumber2.length+"</span></td>"; 
	    	        htm +="<td><label>Name</label><input type='text' class='form-control' style='width:98%;' readonly value='"+name+"' placeholder='' id='member"+sequencNumber+"'></td>";
	    	        htm +="<td><label>Image</label><img style='width: 36px; height: 36px; margin-left: 1%;' id='image"+sequencNumber+"' src='"+imagestring+"' onerror=errorImages(this)><label style='' class='btn btn-wide tb-browse'></label></td>";
	    	        htm +="<td><label>Comments</label><textarea class='form-control' style='width:98%; height: 35px; overflow: auto;' readonly placeholder='' id='comment"+sequencNumber+"'>"+comment+"</textarea></td>";
	    	        htm +="<td style='width: 100px'><button type='button' class='btn' onclick=removeFromList("+sequencNumber+")><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' class='btn' onclick=editFromList("+sequencNumber+")><i class='fa fa-pencil' aria-hidden='true'></i></button></td>";
	    	        htm +="</tr></table>"; */
	    	        
	    	        
	    	        
	    	        $('#memberMainDIV').append(htm);
	    	        $("#addMemberName").val("");
	    	        $("#addMemberComment").val("");
	    	        
	    	        $("#addMemberfaceboof").val("");
	    	        $("#addMembertwitter").val("");
	    	        $("#addMemberlinkedin").val("");
	    	        $("#addMemberwebsite").val("");
	    	        $("#addMemberIDDIV").val("");
	    	        
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
    	 var pos=format.indexOf(ext1);Directorwebsite
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
		
		var facebook=$("#Directorfacebook"+id).text();
		var twitter =$("#Directortwitter"+id).text();
		var linkedin =$("#Directorlinkedin"+id).text();
		var website =$("#Directorwebsite"+id).text();
			
		/* alert(name);
		alert(comment); */
		$("#Editname").val(name);
		$("#EditComment").val(comment);
        $("#editMemberfaceboof").val(facebook);
        $("#editMembertwitter").val(twitter);
        $("#editMemberlinkedin").val(linkedin);
        $("#editMemberwebsite").val(website);
        
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
		var facebook=$("#editMemberfaceboof").val();
        var twitter=$("#editMembertwitter").val();
        var linlkedin=$("#editMemberlinkedin").val();
        var website=$("#editMemberwebsite").val();
		
		$("#member"+id).val(name);
		$("#comment"+id).val(comment);
		$('#image'+id).attr('src', base64);
		
		$("#Directorfacebook"+id).text(facebook);
		$("#Directortwitter"+id).text(twitter);
		$("#Directorlinkedin"+id).text(linlkedin);
		$("#Directorwebsite"+id).text(website);
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
    		
    		var facebook=$("#Directorfacebook"+sequencNumber2[i]).text();
    		var twitter=$("#Directortwitter"+sequencNumber2[i]).text();
    		var linkedin=$("#Directorlinkedin"+sequencNumber2[i]).text();
    		var website=$("#Directorwebsite"+sequencNumber2[i]).text();	
    		var userid=$("#Userid"+sequencNumber2[i]).val();
    		
    		if(userid == "")
    			{
    			userid=null;
    			}

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
    				twitterUrl : twitter,
    	    		facebookUrl : facebook,
    	    		linkedinUrl : linkedin,
    	    		websiteUrl : website,
    	    		sponserId : userid,
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