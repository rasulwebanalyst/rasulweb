<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CricketSocial</title>

	<!--Font-Awesome Icons-->directors
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
<style>
.modal-dialog {
    width: 60% !important;
}
.modal-content {
	padding: 15px !important;
}
</style>

<body onload="sequencenumberinsert()">
<div id="EditPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <!-- <div class="modal-body">
        
        <div id="RoasterPopupText">
              <div class="col-md-12 cs-bd-holder">
                                <div class="col-md-3">
                                <label for="" style="width:99%;">Name</label>  
                                  <input type="text" style="width:99%;" class="form-control" value="" style="" placeholder="" id="addMemberName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
                                  
                                  <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div>
                                  
                                  </div>col end
                                  <div class="col-md-3">
                                  <label for="" style="width:99%; text-align: left;">Position</label>
                                  <input type="text" style="width:99%;" class="form-control" value="" style="" placeholder="" id="addMemberPosition1">
                                  </div>col end
                                  <div class="col-md-5">
                                  <label for="" style="width:99%; text-align: left;">Year</label>
                                  <input type="text" style="width:40%;float:left; margin-right:10px;" class="form-control" value="" style="" placeholder="" id="addMemberFromyear1" onkeypress="return isNumber(event)">
                                   <input type="text" style="width:40%;float:left" class="form-control" value="" style="" placeholder="" id="addMemberToyear1" onkeypress="return isNumber(event)">
                                  </div>col end
                                  <div class="col-md-4">
                                  <label for="" style="width:99%;text-align: left;">Comments</label>
                                  <textarea type="text" class="form-control" value="" style="height: 35px; overflow: auto;" placeholder="" id="addMembercomment1"></textarea>
                                  </div>col end
                                 	
			                                  </div>
        
        </div>
      </div> -->
      
       <table class='bd-table direc direc-edit' id='memberListDIV${loop.count}' style="box-shadow: none;">
			                     
			                     <tr>
			                    <!--  <td><label>Name<span class="req-star">*</span></label><input type='text' class='form-control' placeholder="Search" id="addMemberName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')"></td> -->
			                    <td><label>Position<span class="req-star">*</span></label><span>:</span><input type='text' class='form-control' id="addMemberPosition1" ></td> 
			                     </tr>
			                     </tr>
			                     <tr><td><label>Year<span class="req-star">*</span></label><span>:</span><input type='text' class='form-control' style="width: 60px; display: inline-block;" id="addMemberFromyear1" onkeypress="return isNumber(event)">
			                     <span style="float: none; display: inline-block; padding: 0 5px;">-</span><input type='text' class='form-control' style="width: 60px; display: inline-block;" id="addMemberToyear1" onkeypress="return isNumber(event)"></td></tr>
			                     <tr><td colspan="2"><label style="width: 100%;">Social Media</label>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/facebook.png"><input type="text" id='addMemberfaceboof1' style="width: 240px;"></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/twitter.png"><input type="text" id='addMembertwitter1' style="width: 240px;"></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><input type="text" id='addMemberlinkedin1' style="width: 240px;"></div>
			                     </td>
			                     
			                     <td class="bd-txt-holder" rowspan="3"><label>Summary</label><textarea type='text' class='form-control' id='addMembercomment1'></textarea></td>
			                     
			                     </tr>
			                     </table>
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
                                  <label class="cs-page-title" for="email" style="width:100%;">Directors</label>   
                                  <c:forEach items="${boardresponse.boardDirectorsList}" var="sponserlist" varStatus="loop">
                                  
                                  
                                  
                     <table class='bd-table direc' id='memberListDIV${loop.count}'>
                     <input type='hidden' id='memberuserid${loop.count}' value="${sponserlist.directorNameId}">
                     <tr> <td><%-- <span class='palyerCount bd-player-count' id='sequenc${loop.count}'>${loop.count}</span> --%></td> 
                     <td><button type='button' onclick="removeFromList(${loop.count})" class='btn' ><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' onclick="editFromList(${loop.count})" class='btn'><i class='fa fa-pencil' aria-hidden='true'></i></button></td></tr>
                    
                     <tr><td><label>Name</label><span>:</span><input type='text'  id='DirectorName${loop.count}' class='form-control' readonly value='${sponserlist.directorName}'></td>
                     <td class="bd-txt-holder" rowspan="4"><label>Summary</label><textarea type='text' class='form-control' id='DirectorComments${loop.count}' readonly>${sponserlist.comments}</textarea></td></tr>
                     <tr><td><label>Position</label><span>:</span><input type='text' class='form-control' readonly value='${sponserlist.position}' id='DirectorPostion${loop.count}'></td></tr>
                     <tr><td><label>Year</label><span>:</span><input type='text' class='form-control' style="width: 60px; display: inline-block;" readonly value='${sponserlist.fromDate}' id='DirectorFromYear${loop.count}'><span style="float: none; display: inline-block; padding: 0 5px;">-</span>
                     <c:choose>
                     <c:when test="${sponserlist.toDate ne 0}">
                     <input type='text' class='form-control' style="width: 60px; display: inline-block;" readonly value='${sponserlist.toDate}' id='DirectorToYear${loop.count}'>
                     </c:when>
                     <c:otherwise>
                     <input type='text' class='form-control' style="width: 60px; display: inline-block;" readonly value='till date' id='DirectorToYear${loop.count}'>
                     </c:otherwise>
                     </c:choose>
                     </td></tr>
                     <tr><td colspan="2"><label style="width: 100%;">Social Media</label>
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/facebook.png"><span><a id='Directorfacebook${loop.count}' href="${sponserlist.facebookUrl}" target="_blank">${sponserlist.facebookUrl}</a></span></div>
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/twitter.png"><span><a id='Directortwitter${loop.count}' href="${sponserlist.twitterUrl}" target="_blank">${sponserlist.twitterUrl}</a></span></div>
                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><span><a id='Directorlinkedin${loop.count}' href="${sponserlist.linkedinUrl}" target="_blank">${sponserlist.linkedinUrl}</a></span></div>
                     </td></tr>
                     </table>
                     
                     
                     
                  <%--    
                     
	    	        <input type='hidden' id='memberuserid${loop.count}' value="${sponserlist.directorNameId}">
	    	        <td><span class='palyerCount bd-player-count' id='sequenc${loop.count}'>${loop.count}</span></td> 
	    	        <td><label>Name</label><input type='text' class='form-control' style='width:98%;' readonly value='${sponserlist.directorName}' placeholder='' id='DirectorName${loop.count}'></td>
	    	        <td><label>Position</label><input type='text' class='form-control' style='width:98%;' readonly value='${sponserlist.position}' placeholder='' id='DirectorPostion${loop.count}'></td>
	    	        <td style="width:200px"><label>Year</label><input type='text' class='form-control' style='width:30%;float:left; margin-right:10px' readonly value='${sponserlist.fromDate}' placeholder='' id='DirectorFromYear${loop.count}'> 
	    	        <span style="margin-top:5px; margin-right:10px; color:inherit">-</span><input type='text' class='form-control' style='width:30%;float:left' readonly value='${sponserlist.toDate}' placeholder='' id='DirectorToYear${loop.count}'></td>
	    	        <td><label>Comments</label><textarea class='form-control' style='width:98%;' readonly value='' placeholder='' id='DirectorComments${loop.count}'>${sponserlist.comments}</textarea></td>
	    	        <td style='width: 100px'><button type='button' onclick="removeFromList(${loop.count})" class='btn' ><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' onclick="editFromList(${loop.count})" class='btn'><i class='fa fa-pencil' aria-hidden='true'></i></button></td>
	    	        </tr></table> --%>
                                  
                                  
                                  
                                  </c:forEach> 
             					</div>   
             					</div>
             					</div>
             				           <div class="col-md-10 whiteBox pull-right cs-org-holder">
            					<div class="form-group col-md-12 noPadding profileForm cs-bd-holder">	
            					
            					
            					
            					 <table class='bd-table direc direc-main' id='memberListDIV${loop.count}' style="box-shadow: none;">
			                     
			                     <tr><td><label>Name<span class="req-star">*</span></label><input type='text' class='form-control' placeholder="Search" id="addMemberName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')"></td>
			                     
			                     <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div>
                                  
                                  </div>
			                     <td class="bd-txt-holder" rowspan="4"><label>Summary</label><textarea type='text' class='form-control' id='addMembercomment'></textarea></td></tr>
			                     <tr><td><label>Position<span class="req-star">*</span></label><input type='text' class='form-control' id="addMemberPosition" ></td></tr>
			                     <tr><td><label>Year<span class="req-star">*</span></label><input type='text' class='form-control' style="width: 60px; display: inline-block;" id="addMemberFromyear" onkeypress="return isNumber(event)"><span style="float: none; display: inline-block; padding: 0 5px;">-</span><input type='text' class='form-control' style="width: 60px; display: inline-block;" id="addMemberToyear" onkeypress="return isNumber(event)"></td></tr>
			                     <tr><td colspan="1"><label class="direc-soc-lab" style="width: 100%;">Social Media</label>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/facebook.png"><input type="text" id='addMemberfaceboof'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/twitter.png"><input type="text" id='addMembertwitter'></div>
			                     <div class="bd-soc-holder"><img src="${pageContext.request.contextPath}/images/linkedin.png"><input type="text" id='addMemberlinkedin'></div>
			                     </td></tr>
			                    <tr><td colspan="2" style="text-align: center;"><button type='button' onclick="addmemberToRoster()" class='btn btn-default dBtn btn-wide' >Add</button></td></tr>
			                     </table>
                     
        
                               <!--  <div class="col-md-3">
                                <label for="" >Name</label>  
                                <span class="req-star">*</span><br>
                                  <input type="text" style="width:97%;" class="form-control" value=""  placeholder="Search" id="addMemberName" onkeyup="getBuddiesAutoComplete(this,'addMemberautoCompleteDIV','addMemberIDDIV')">
                                  
                                  <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
													<ul>
			                                        	<li>Vikki</li>
			                                        </ul>                                  	
			                                  </div>
                                  
                                  </div>col end
                                  <div class="col-md-2">
                                  <label for="" style="">Position</label>
                                  <span class="req-star">*</span><br>
                                  <input type="text" style="width:95%;" class="form-control" value="" style="" placeholder="" id="addMemberPosition">
                                  </div>col end
                                  <div class="col-md-2">
                                  <label for="" style="">Year</label>
                                  <span class="req-star">*</span><br>
                                  <input type="text" style="width:40%;float:left; margin-right:5px;" class="form-control" value="" style="" placeholder="" id="addMemberFromyear" onkeypress="return isNumber(event)">
                                  <span style="margin-top:5px; margin-right:5px; color:inherit">-</span>
                                   <input type="text" style="width:40%;float:left" class="form-control" value="" style="" placeholder="" id="addMemberToyear" onkeypress="return isNumber(event)">
                                  </div>col end
                                  <div class="col-md-3">
                                  <label for="" style="">Comments</label>
                                  <textarea class='form-control' style='width:98%; height: 35px; overflow: auto;' id='addMembercomment'></textarea>
                                  </div>col end
                                 <button type="button" class="btn btn-default dBtn btn-wide" style="" onclick="addmemberToRoster()">Add</button> -->
                                 <!-- <div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;margin-top: 37px;"> -->
                                 	
			                                  </div> 
                                  
                               	   <input type="hidden" class="form-control" placeholder="" id="addMemberIDDIV" name="">
                               	   <div id="addMemberError" style="color: red;"></div>
                               
     
            <span style="text-align:center; margin:0 auto; padding-bottom: 14px; display:block">( or ) Just upload document below</span>
            
            	<div class="form-group col-md-12 noPadding cs-align-center file-drop">
            	       <div class="col-lg-12 col-sm-12 col-12">
		           <!--  <label for="email" style="width:100%; color: #9CA9B9">We having file upload option also</label> -->  
		            <label class="btn btn-primary btn-wide">
		                Browse <input type="file" style="display: none;" id="uploadfilesponser" onchange="selectpdf(this)">
		            </label>
		            
		            <div id="uploadedpdfs">
		            
		            <c:forEach items="${boardresponse.uploadFileAttachementsList}" var="filelist" varStatus="loop">
		            <input type='hidden' id='uploadedsrcsponser${loop.count}' value="${filelist.fileUrl}">
		            <input type='hidden' id='iamgeExtensionname${loop.count}' value="${filelist.fileName}">
		            </c:forEach>
		               
		            </div>
		            
		            <div id="uploadname">
		            
		               <c:forEach items="${boardresponse.uploadFileAttachementsList}" var="filelist" varStatus="loop">
		            <span class='greenText' id='uploadednamesponser${loop.count}'><span class="upload-file-name">${filelist.fileName}</span><span onclick="deletename('uploadednamesponser${loop.count}','uploadedsrcsponser${loop.count}')" style='margin-left: 4px; padding: 10px 1px 1px 1px; float: left;'><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>
		            </c:forEach>
		            
		            </div>
		        </div>
            	
 
	        	</div><!-- form-group -->
	        	       <div class="col-lg-12 col-sm-12 col-12 cs-align-center">
		        		<input type="button" class="btn btn-default dBtn btn-wide" onclick="Save()" value="Save"></button>
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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4eJlFHh6Wm9BWa8x-H-cBUjCcdlEplT0&signed_in=true&libraries=places&callback=initAutocomplete"
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
        						headers : {'Name' : HeaderName},
        						dataType: "json",
        			        contentType: "application/json; charset=utf-8",
        			        data : key,					            
        						success : function(res) {
        							console.log(res);	
        							var html="";
        							
        							if(res != null){
        								var users=res.userList;
        								console.log(JSON.stringify(users));
        								html+="<ul style='width: 39%; margin-top: 69px; margin-left: 0px;'>";
        								
        								if(users!= null && users.length >0){
        									for(var i in users){
        										var name=users[i].firstName;
        										if(users[i].lastName!=null){
        											name=name+" "+users[i].lastName;
        										}
        									
        									 html+="<li class='selection-item' onclick=setValueToTextBox('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')><div class='media'><div class='media-left'><a><img alt='' src='"+users[i].userImageUrl+"' class='nav-avatar' ></a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading'> "+name+"<br></a>";
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
       		$('#'+textBox).val(name);
       		$('#'+divId).hide();	
       		$('#'+hiddenId).val(userId);	
       		
        }
        
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
    	
        var userid =$('#addMemberIDDIV').val();
        var name=$('#addMemberName').val();
        var position=$("#addMemberPosition").val();
        var Fromyear=$("#addMemberFromyear").val();
        var Toyear=$("#addMemberToyear").val();
        var comment=$("#addMembercomment").val();
        var facebook=$("#addMemberfaceboof").val();
        var twitter=$("#addMembertwitter").val();
        var linkedin=$("#addMemberlinkedin").val();
        if(userid.length == 0)
        	{
        	displaynotification('Please fill the mandatory field',2000);
        	return false;
        	}
        
        if(name.length ==0 || position.length == 0 || Fromyear.length ==0 )
        	{
        	displaynotification('Please fill the mandatory field',2000);
        	return false;
        	}
      
		    		
	    		 	arrayMemberList.push({
	    	       	 name : name,
	    	       	 id : userid,
	    	       	 member : "Member"
	    	        });
	    		 	sequencNumber=parseInt(sequencNumber)+parseInt(1);
	    		 	sequencNumber2.push(sequencNumber);
	    	        var htm="";
	    	        
	    	        
	    	        
	    	        /* 
	    	        htm +="<table class='bd-table' id=memberListDIV"+sequencNumber+"><tr>";
	    	        htm +="<input type='hidden' id=memberuserid"+sequencNumber+" value="+userid+">";
	    	        htm +="<td><span class='palyerCount bd-player-count' id='sequenc"+sequencNumber+"'>"+sequencNumber2.length+"</span></td>"; 
	    	        htm +="<td><label>Name</label><input type='text' class='form-control' style='width:98%;' readonly value='"+name+"' placeholder='' id='DirectorName"+sequencNumber+"'></td>";
	    	        htm +="<td><label>Position</label><input type='text' class='form-control' style='width:98%;' readonly value='"+position+"' placeholder='' id='DirectorPostion"+sequencNumber+"'></td>";
	    	        htm +="<td style='width:200px'><label>Year</label><input type='text' class='form-control' style='width:30%;float:left; margin-right:10px' readonly value='"+Fromyear+"' placeholder='' id='DirectorFromYear"+sequencNumber+"'><span style='margin-top:5px; margin-right:10px; color:inherit'>-</span><input type='text' class='form-control' style='width:30%;float:left' readonly value='"+Toyear+"' placeholder='' id='DirectorToYear"+sequencNumber+"'></td>";
	    	        htm +="<td><label>Comments</label><textarea class='form-control' style='width:98%;' readonly value='' placeholder='' id='DirectorComments"+sequencNumber+"'>"+comment+"</textarea></td>";
	    	        htm +="<td style='width: 100px'><button type='button' onclick=removeFromList("+sequencNumber+") class='btn' ><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' onclick=editFromList("+sequencNumber+") class='btn'><i class='fa fa-pencil' aria-hidden='true'></i></button></td>";
	    	        htm +="</tr></table>"; */
	    	        
	    	        
	    	        
	    	        
	    	        
	    	        htm +="<table class='bd-table direc' id=memberListDIV"+sequencNumber+">";
	    	        htm +="<input type='hidden' id=memberuserid"+sequencNumber+" value="+userid+">";
	    	        htm +="<tr> <td></td>";
	    	        htm +="<td><button type='button' onclick=removeFromList("+sequencNumber+") class='btn' ><i class='fa fa-trash' aria-hidden='true'></i></button><button type='button' onclick=editFromList("+sequencNumber+") class='btn'><i class='fa fa-pencil' aria-hidden='true'></i></button></td></tr>";
	    	        htm +="<tr><td><label>Name</label><span>:</span><input type='text'  id='DirectorName"+sequencNumber+"' class='form-control' value='"+name+"'></td>";
	    	        htm +="<td class='bd-txt-holder' rowspan='4'><label>Summary</label><textarea type='text' class='form-control' id='DirectorComments"+sequencNumber+"' readonly>"+comment+"</textarea></td></tr>";
	    	        htm +="<tr><td><label>Position</label><span>:</span><input type='text' class='form-control' value='"+position+"' id='DirectorPostion"+sequencNumber+"'></td></tr>";
	    	        htm +="<tr><td><label>Year</label><span>:</span><input type='text' class='form-control' style='width: 60px; display: inline-block;' readonly value='"+Fromyear+"' id='DirectorFromYear"+sequencNumber+"'><span style='float: none; display: inline-block; padding: 0 5px;'>-";
	    	        if(Toyear != ""){
	    	       htm +=" </span><input type='text' class='form-control' style='width: 60px; display: inline-block;' readonly value='"+Toyear+"' id='DirectorToYear"+sequencNumber+"'></td></tr>";}
	    	        else
	    	        	{
	    	        	htm +=" </span><input type='text' class='form-control' style='width: 60px; display: inline-block;' readonly value='till date' id='DirectorToYear"+sequencNumber+"'></td></tr>";
	    	        	}
	    	        htm +="<tr><td colspan='2'><label style='width: 100%;'>Social Media</label>";
	    	        
	    	        
	    	        if(facebook != "")
	    	    	{
	    	    	if(facebook.substring(0,2) != "//" )
	    	    		{
	    	    		if(facebook.substring(0,4) != "http")
	    	    			{
	    	    			facebook = "//"+facebook;
	    	    			}
	    	    		}
	    	    	
	    	    	}
	    	        	    
	    	     	
	    	        if(twitter != "")
	    	    	{
	    	    	if(twitter.substring(0,2) != "//" )
	    	    		{
	    	    		if(twitter.substring(0,4) != "http")
	    	    			{
	    	    			twitter = "//"+twitter;
	    	    			}
	    	    		}
	    	    	}
	    	    	
	    	        if(linkedin != "")
	    	    	{
	    	    	if(linkedin.substring(0,2) != "//" )
	    	    		{
	    	    		if(linkedin.substring(0,4) != "http")
	    	    			{
	    	    			linkedin = "//"+linkedin;
	    	    			}
	    	    		}
	    	    	
	    	    	}
	    	        
	    	        
	    	        
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/facebook.png'><span ><a target='_blank' id='Directorfacebook"+sequencNumber+"' href='"+facebook+"'>"+facebook+"</a></span></div>";
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/twitter.png'><span ><a target='_blank' id='Directortwitter"+sequencNumber+"' href='"+twitter+"'>"+twitter+"</a></span></div>";
	    	        htm +="<div class='bd-soc-holder'><img src='${pageContext.request.contextPath}/images/linkedin.png'><span ><a target='_blank' id='Directorlinkedin"+sequencNumber+"' href='"+linkedin+"'>"+linkedin+"</a></span></div>";
	    	        htm +="</td></tr>";
	    	        htm +="</table>";
	    	        
	    	     
	    	        $('#memberMainDIV').append(htm);
	    	       $('#addMemberIDDIV').val('');
	    	       $('#addMemberNameDIV').val('');
	    		
	    	        $('#addMemberName').val('');
	    	       $("#addMemberPosition").val('');
	    	       $("#addMemberFromyear").val('');
	    	        $("#addMemberToyear").val('');
	    	        $("#addMembercomment").val('');
	    	        $("#addMemberfaceboof").val('');
	    	        $("#addMembertwitter").val('');
	    	        $("#addMemberlinkedin").val('');
	    	       
	    	      
       
        
       
       
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
    			arrayMemberList.splice(i, 1);
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
    
    function editFromList(id)
    {
    var position=$("#DirectorPostion"+id).val();
    var fromyear=$("#DirectorFromYear"+id).val();
    var toyear=$("#DirectorToYear"+id).val();
    var comments=$("#DirectorComments"+id).val();
    var dfacebook=$("#Directorfacebook"+id).text();
    var dtwitter=$("#Directortwitter"+id).text();
    var dlinkedin=	$("#Directorlinkedin"+id).text();
    
		 /* alert(name);
		alert(comment);  */
        $("#addMemberPosition1").val(position);
        $("#addMemberFromyear1").val(fromyear);
        $("#addMemberToyear1").val(toyear);
        $("#addMembercomment1").val(comments);
        $("#addMemberfaceboof1").val(dfacebook);
        $("#addMembertwitter1").val(dtwitter);
        $("#addMemberlinkedin1").val(dlinkedin);
        $("#Editmemberid").val(id);
		
    	$("#EditPopup").show();
    }
    
    function EditPopupSave()
    {
    	var id=$("#Editmemberid").val();
    	 var position=$("#addMemberPosition1").val();
    	    var fromyear=$("#addMemberFromyear1").val();
    	    var toyear=$("#addMemberToyear1").val();
    	    var comments=$("#addMembercomment1").val();
    	    var faccebook=$("#addMemberfaceboof1").val();
            var twwitter=$("#addMembertwitter1").val();
            var linkkedin=$("#addMemberlinkedin1").val();
            
            if(position.length == 0 || fromyear.length == 0)
            	{
            	displaynotification('Please fill the mandatory field ',2000);
            	return false;
            	}
		
    	    $("#DirectorPostion"+id).val(position);
    	    $("#DirectorFromYear"+id).val(fromyear);
    	    $("#DirectorToYear"+id).val(toyear);
    	    $("#DirectorComments"+id).val(comments);
    	    
    	    
    	    
 	
    if(faccebook != "")
	{
	if(faccebook.substring(0,2) != "//" )
		{
		if(faccebook.substring(0,4) != "http")
			{
			faccebook = "//"+faccebook;
			}
		}
	
	}
    	    
 	
    if(twwitter != "")
	{
	if(twwitter.substring(0,2) != "//" )
		{
		if(twwitter.substring(0,4) != "http")
			{
			twwitter = "//"+twwitter;
			}
		}
	}
	
    if(linkkedin != "")
	{
	if(linkkedin.substring(0,2) != "//" )
		{
		if(linkkedin.substring(0,4) != "http")
			{
			linkkedin = "//"+linkkedin;
			}
		}
	
	}
    	    $("#Directorfacebook"+id).attr("href", faccebook);
    	    $("#Directortwitter"+id).attr("href", twwitter);
    	    $("#Directorlinkedin"+id).attr("href", linkkedin)
    	    
    	    $("#Directorfacebook"+id).text(faccebook);
    	    $("#Directortwitter"+id).text(twwitter);
    	    $("#Directorlinkedin"+id).text(linkkedin);
    	    
		$("#EditPopup").hide();
    }
    
    
    
    function selectpdf(finput)
    {
    	var format=["pdf","doc","docx"];
    	
    	var imageUrl=$('#uploadfilesponser')[0].files[0];
    	if(typeof imageUrl === "undefined" || imageUrl==null){
    		ext1 = null;
    	}else{
    	var iamgeExtension=imageUrl.name.replace(/ /g,"~");
    	 ext1 = iamgeExtension.substr(iamgeExtension.lastIndexOf('.') + 1);
    	 var pos=format.indexOf(ext1);
    	 if(pos==-1)
    		 {
    		// alert("file should be in pdf,docx,doc,txt format")
    		displaynotification('Please choose pdf or doc or docx file',2000);
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
             	 var htmlco1="<span class='greenText' id='uploadednamesponser"+j+"'><span class='upload-file-name'>"+iamgeExtension.replace(/~/g," ")+"</span><span onclick=deletename('uploadednamesponser"+j+"','uploadedsrcsponser"+j+"') style='margin-left: 4px; padding: 10px 1px 1px 1px; float: left;'><img src='${pageContext.request.contextPath}/images/cross.png'></span></span>";
             	$("#uploadname").append(htmlco1);
             	uploadedarr.push("uploadedsrcsponser"+j);
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
    
    function Save()
    {
    	var boardlistarray =[];
    	var bid="${BoardId}"
    	for(var i in sequencNumber2)
    		{
    		
    		var  userid=$("#memberuserid"+sequencNumber2[i]).val();
            var   position=$("#DirectorPostion"+sequencNumber2[i]).val();
            var comment=$("#DirectorComments"+sequencNumber2[i]).val();
            var fromyear=$("#DirectorFromYear"+sequencNumber2[i]).val();
            var toyear=$("#DirectorToYear"+sequencNumber2[i]).val();
            var dfacebook=$("#Directorfacebook"+sequencNumber2[i]).text();
            var dtwitter=$("#Directortwitter"+sequencNumber2[i]).text();
            var dlinkedin=	$("#Directorlinkedin"+sequencNumber2[i]).text();
            if(dfacebook != "")
            	{
            	if(dfacebook.substring(0,2) != "//" )
            		{
            		if(dfacebook.substring(0,4) != "http")
            			{
            		dfacebook = "//"+dfacebook;
            			}
            		}
            	
            	}
            if(dtwitter != "")
        	{
        	if(dtwitter.substring(0,2) != "//" )
        		{
        		if(dtwitter.substring(0,4) != "http")
        			{
        			dtwitter = "//"+dtwitter;
        			}
        		}
        	
        	}
            if(dlinkedin != "")
        	{
        	if(dlinkedin.substring(0,2) != "//" )
        		{
        		if(dlinkedin.substring(0,4) != "http")
        			{
        			dlinkedin = "//"+dlinkedin;
        			}
        		}
        	
        	}
           
            if(toyear == "" || toyear == "till date")
            	{
            	var obj={
        				boardId : bid,
        				directorNameId : userid,
        				comments : comment,
        				position : position,
        				fromDate :	fromyear,
        				twitterUrl  : dtwitter,
        				facebookUrl : dfacebook,
        				linkedinUrl : dlinkedin, 
        		}
            	
            	}else{
            		        	
    		var obj={
    				boardId : bid,
    				directorNameId : userid,
    				comments : comment,
    				position : position,
    				fromDate :	fromyear,
    				toDate : toyear,
    				twitterUrl  : dtwitter,
    				facebookUrl : dfacebook,
    				linkedinUrl : dlinkedin, 
    		}
            	}
    		boardlistarray.push(obj);
    		}
    	
    	
// for image data
    	
    	var filedetailarray=[];
		for(var i=0;i<uploadedarr.length;i++)
			{
			
			//var Filename=uploadextension[i];
			var Filename2=$("#"+uploadextension[i]).val();
			var Filename=Filename2.replace(/~/g," ");
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
		
		
		var request={
				boardId : bid,
				boardDirectorsList : boardlistarray,
				uploadFileAttachementsList : filedetailarray,
				deletedFileAttchementsList : deletedarray,
				
		}
		console.log(JSON.stringify(request));
		$('#loading').show();
		
		 $.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/DirectorsDetails",
			headers : {'Name' : HeaderName},
			data : JSON.stringify(request),
			contentType : "application/json;charset=utf-8",
			success : function(res)
			{
			//	alert(res);
			//location.reload();
				window.history.back();
			} 
			
			
		}) 
    	

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
    
    function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
        return true;
    }
    
    $("body").click(function(){
		$("#addMemberautoCompleteDIV").fadeOut();
		});
    
    </script>
</body>
</html>