<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>

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
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/validationfunction.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
</head>
<body>

 <%@ include file="BoardHeader.jsp" %>
<%@ include file="CSCommon.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="BoardPublicProfileSideMenu.jsp" %>

      <!--Popup Divs start  -->
      <div id="firstDiv" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Alert</span>
               <span class="close_btn"> <i class="fa fa-close" onclick="closeFunction();"></i> </span>

               <div class="popupContentDiv"><br>

					<b>Please indentify yourself by answering the question</b> <br>

                    
                    <div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="showNextDiv1()">Ok</button></div>
                                       
               </div>
           </div>

        </div>
      
      <div id="secondDiv" class="popupDiv" style="display: none;">


		<div class="box">
                <span class="head">Merge Account</span>
                <span class="close_btn"> <i class="fa fa-close"></i> </span>

                <div class="popupContentDiv loginPopup">
                
                		<div class="form-group lbox col-md-12 noPadding">
                        
                        	<span class="headLight"><b>Please indentify yourself by answering the question</b></span>
                            <p>1.Did You live any of the city list below?</p>
                            
                            <div class="text-left Rbtn" >
                            <input type="radio" checked="" id="r1" name="rr"> <label for="r1"><span></span>6410 Ravens crest dr</label><br>

                                <input type="radio" checked="" id="r5" name="rr"> <label for="r5"><span></span>None of the above</label>
                              </div>
                          
                          <div class="centerbtns"><button type="button" class="btn btn-default blueBtn">Next</button></div>
                        </div>
                </div>
            </div>
        </div>
      
      
      <div id="thirdDiv" class="popupDiv" style="display: none;">


		<div class="box">
                <span class="head">Merge Account</span>
                <span class="close_btn"><i class="fa fa-close"></i></span>

                <div class="popupContentDiv loginPopup">
                
                		<div class="form-group lbox col-md-12  noPadding">
                        	<span class="headLight"><b>Please indentify yourself by answering the question</b></span>
                            <p>2.Did you live in any of the zip codes list below?</p>
                            
                            <div class="text-left margein">
                            <input type="radio" checked="" id="r1" name="rr"> <label for="r1"><span></span>08536</label><br>

                             <input type="radio" checked="" id="r2" name="rr"> <label for="r2"><span></span>22113</label><br>

                              <input type="radio" checked="" id="r3" name="rr"> <label for="r3"><span></span>10005</label><br>

                               <input type="radio" checked="" id="r4" name="rr"> <label for="r4"><span></span>08538</label><br>

                                <input type="radio" checked="" id="r5" name="rr"> <label for="r5"><span></span>None of the above</label>
                              </div>
                          
                          <div class="centerbtns"><button type="button" class="btn btn-default blueBtn">Next</button></div>
                        </div>
                </div>
            </div>
        </div>
        
        <div id="forthDiv" class="popupDiv" style="display: none;">

           <div class="box">
                <span class="head">Merge Account</span>
                <span class="close_btn"><i class="fa fa-close" onclick="closeFunction()"></i></span>
                
                <div class="popupContentDiv">
                	<div class="form-group lbox col-md-12noPadding">
                        	<b>Please indentify yourself by answering the question</b>
                            <p>3.Select your Date of  Birth</p>
                     
                     
                     <div class="col-md-12 merAcc">
                     	<input type="text" class="form-control datepicker" placeholder="Date" id="datePicker" onfocus="dateReadOnly()"> <i class="fa fa-calendar calIcon"></i>
                     </div>
                     
                     <div class="centerbtns margein">
					 	<button type="button" class="btn btn-default blueBtn" onclick="showNextDiv4()">Next</button></div>
                     </div>
                     
                </div>
            </div>
 
 	</div>
	
	
	<div id="fifthDiv" class="popupDiv" style="display: none;">
           
            <div class="box">
                <span class="head">Merge Account</span>
                <span class="close_btn"><i class="fa fa-close" onclick="closeFunction()"></i></span>
               
                <div class="popupContentDiv" style="text-align:left;">
                	<p style="margin-left:10px;"><strong>Please indentify yourself by answering the question</strong><br>
                    4.Verify your mail address</p>
                    
                    <div class="col-md-9 merAcc">
                       <input type="text" class="form-control" placeholder="" id="emailId" value = "${email}" readonly> </div>
                       <button type="button" class="btn blueBtn " onclick="getOTP()">GET OTP</button>
                	
                    <div class="col-md-12 popupContentDiv">
                      One time password(OTP) has been sent your email, Please enter same here to merge
                	</div>
                    
                    <div class="col-md-9 merAcc">
                    <input type="text" class="form-control" placeholder="" id="otp"> </div>
                    <button type="button" class="btn blueBtn " onclick="showNextDiv5()">NEXT</button>
                    
                    </div>
                    
                    

            </div>
</div>

<div id="sixthDiv" class="popupDiv" style="display: none;">
           
            <div class="box">
           
                  <div class="progressbar">
                    <span class="loading bar"></span>
                    <div class="load">loading</div>
                  </div>
               </div>
      		 
             <div class="plswaite">
             	System internally merging information, please wait
             </div>
             </div>



      <!-- Popup Divs ends -->
      
      
             
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
               
                            <h1 class="noBorder">To Merge all your Information from other Board please follow Steps</h1>
                            
                       
                       <div class="col-md-6 Search">
                		<input type="text" class="form-control rad" id="searchText" placeholder="Search League" style="background:url(icons/magnifying-glass34.png) no-repeat 360px 8px" onkeyup = "searchBoard(this.value)" >
               		   </div>
                       
                       <div class="col-md-12 popup" id="boardSearchId" style="display:none;width:450px">
                        	
                           		 <div class="col-md-12 botmborder" id="innerDiv">
                                 <img src="images/det.png">
                                <p><strong>Bergen Circket Clup</strong><br>Chennai</p>
                                <button class="btn btn-default dBtn pull-right">GET DETAILS</button> 
                                
                                </div>
                               
                               
                       </div>
                
                       
                       <div class="col-md-12 popup" id="boardDetailsId" style="display:none">
                        	
                           		 <div class="col-md-6 border" id="innerDiv1">
                                 <img src="images/userImg4.jpg">
                                <p><strong>Mr.ABCDF</strong><br>Main city,Chennai</p>
                                <button class="btn btn-default dBtn pull-right" onclick="mergeFunction(1)">Merge</button>
                                </div>
                                
                                
                                </div>
                                
                       
                       
                       
                       
                     
                       
                      
                 
            </div>
            </div>
                    
                    
                    
                    
        <input type="hidden" id="hiddenIdForUser">          
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file="Footer.jsp" %>

  
<script>
$(document).ready(function(){
	$('.datepicker').on('changeDate', function(ev){
		$(this).datepicker('hide');
	});
	
	
/* 	$("body").click(function(){
		document.getElementById("searchText").value = '';
		$("#boardSearchId").hide();
	
	}) */
	var searchText = document.getElementById("searchText").value;
	if(searchText == ''){
		$("#boardSearchId").hide();
	}
	
});


function searchBoard(key){
	$("#boardDetailsId").hide();
	console.log(key);
 	if(key.length>2) {
 			    $.ajax({
 						type : "POST",
 						url : "${pageContext.request.contextPath}/mergeAccountBoardSearch",
 						dataType: "json",
 			        contentType: "application/json; charset=utf-8",
 			        data : key,					            
 						success : function(res) {
 							
 							if(res.length != 0){

 							
 								var html = '';
 								
 								for(var i=0; i<res.length; i++){

 									var boardId = res[i].boardId;
 								html += '<div class="col-md-12 botmborder" id="innerDiv">';
 								
 								if(res[i].boardImageURL != '' && res[i].boardImageURL != null){
 									console.log("inside if");
 								html += '<img src="'+res[i].boardImageURL+'" >';
 								}
 								else{
 									console.log("inside else");
 									html += '<img src="${pageContext.request.contextPath}/images/boardIcon.png;">';
 								}
 								html += '<p><strong>'+res[i].boardName+'</strong>';
 								if(res[i].city != null){
 									html += '<br>'+res[i].city+'</p>';
 									}else{
 										html += '<br></p>';
 									}
 								
 								html += "<button class='btn btn-default dBtn pull-right' onclick='getDetailsOfBoard(\""+boardId+"\")'>GET DETAILS</button>";
 								html += '</div>';
 								}
 								
 							
 								$("#boardSearchId").html(html).trigger('create');
 								$("#boardSearchId").show();
 							}else{
 								document.getElementById("searchText").value = '';
 								var html = '';
 								html += '<span style="color:red">No Boards Available</span>';
 								$("#boardSearchId").html(html).trigger('create');
 								$("#boardSearchId").show();
 							}
 							
 						},
 						error : function(err){
 							console.log("err");
 						}
	
 			    });
 	}
	
}

function getDetailsOfBoard(bid){
	$("#boardSearchId").hide();
	document.getElementById("searchText").value = '';
	
	//$("#boardDetailsId").show();
    $.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/detailsOfTheBoard",
	dataType : "json",
	data : bid,
	contentType :"application/json",
	success: function(res){
	
		if(res.length != 0){

			var html = '';
				
				for(var i=0; i<res.length; i++){
				
					var userId = res[i].userId;
					
					html += '<div class="col-md-6 border" id="innerDiv1">';
					if(res[i].userImageUrl != '' && res[i].userImageUrl != null){
						html += '<img src="'+res[i].userImageUrl+'" >';
						}
						else{
							html +='<img src="${pageContext.request.contextPath}/images/profileIcon.png;">';
						}
					
						html += '<p><strong>'+res[i].fullName+'</strong>';
						if(res[i].city != null){
						html += '<br>'+res[i].city+'</p>';
						}else{
							html += '<br></p>';
						}
						html += "<button class='btn btn-default dBtn pull-right' onclick='mergeFunction(\""+userId+"\")'>Merge</button>";
						html += '</div>';
						}
					
				    $("#boardDetailsId").html(html).trigger('create');
					$("#boardDetailsId").show();
				}
			
		
		else{
			
			var html = '';
				html += '<span style="color:red">No Details Available</span>';
				$("#boardDetailsId").html(html).trigger('create');
				$("#boardDetailsId").show();
			
		}
	},
	error : function(err){
		console.log("err");
	}
	
	});
}

function mergeFunction(uid){
	document.getElementById("hiddenIdForUser").value = uid;
	$("#firstDiv").show();
}

function closeFunction(){
	 $("#datePicker").val("");
	$("#firstDiv").hide();
	$("#secondDiv").hide();
	$("#thirdDiv").hide();
	$("#forthDiv").hide();
	$("#fifthDiv").hide();
}



function showNextDiv1(){
	$("#firstDiv").hide();
	var uid= $("#hiddenIdForUser").val();
	
	 $.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/getDynamicAnswers",
	dataType:"json",
	data : uid,
	contentType:"application/json",
	success:function(res){ 

		var user = res.userList;
		if(user!='' && user!= null){
		var cityList = user[0].cityList;
	
		var html = '';
		html += '<div class="box"> <span class="head">Merge Account</span>';
		html += '<span class="close_btn"> <i class="fa fa-close" onclick="closeFunction()"></i> </span><div class="popupContentDiv loginPopup"><div class="form-group lbox col-md-12 noPadding">';
		html += '<span class="headLight"><b>Please indentify yourself by answering the question</b></span> <p>1.Did You live any of the city listed below?</p> <div class="text-left Rbtn" >';
		for(var i=0; i<cityList.length; i++){
			html += '  <input type="radio"  id="r1_'+cityList[i]+'" name="rr" value="'+cityList[i]+'"> <label for="r1_'+cityList[i]+'"><span></span>'+cityList[i]+'</label><br>';
		}
		
		 html += '<input type="radio" checked id="r1" name="rr" value="None of the above"> <label for="r1"><span></span>None of the above</label>'; 
		html += '</div><div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="showNextDiv2()">Next</button></div>';
		html += '</div></div></div>';
		
		$("#secondDiv").html(html).trigger('create');
		$("#secondDiv").show();
		}
	 },
	error:function(err){
		console.log(err);
	} 
		
	})
	
	
}



function showNextDiv2(){
	
$("#secondDiv").hide();
var uid= $("#hiddenIdForUser").val();
	
	$.ajax({
	type:"post",
	url:"${pageContext.request.contextPath}/getDynamicAnswers",
	dataType:"json",
	data:uid,
	contentType:"application/json",
	success:function(res){

		var user = res.userList;
		if(user != '' && user != null){
		var zipList = user[1].zipList;
	
		var html = '';
		html += '<div class="box"> <span class="head">Merge Account</span>';
		html += '<span class="close_btn"> <i class="fa fa-close" onclick="closeFunction()"></i> </span><div class="popupContentDiv loginPopup"><div class="form-group lbox col-md-12 noPadding">';
		html += '<span class="headLight"><b>Please indentify yourself by answering the question</b></span> <p>2.Did you live in any of the zip codes listed below?</p> <div class="text-left Rbtn" >';
		for(var i=0; i<zipList.length; i++){
		
			html += '  <input type="radio" id="r2_'+zipList[i]+'" name="rr1" value="'+zipList[i]+'" > <label for="r2_'+zipList[i]+'"><span></span>'+zipList[i]+'</label><br>';
		}
		
		html += '<input type="radio" checked="" id="r5" name="rr1" value="0"> <label for="r5"><span></span>None of the above</label>'; 
		html += '</div><div class="centerbtns"><button type="button" class="btn btn-default blueBtn" onclick="showNextDiv3()">Next</button></div>';
		html += '</div></div></div>';
		
		$("#thirdDiv").html(html).trigger('create');
		$("#thirdDiv").show();

		}
	 },
	error:function(err){
		console.log(err);
	} 
		
	})
	
}


function showNextDiv3(){
	
	$("#thirdDiv").hide();
    $("#forthDiv").show();
			
		
	}
	
function showNextDiv4(){

    var date = $("#datePicker").val();
	if(date == '' || date == null){
		displaynotification("Please pick date of birth from date picker",2000);

	}else{ 
		 $("#forthDiv").hide();
		$("#fifthDiv").show();
		
	}
	
}

function showNextDiv5(){
	var city = $('input[name="rr"]:checked').val();	
	var zip = $('input[name="rr1"]:checked').val();	

	   var otp = $("#otp").val();
	   var uid = $("#hiddenIdForUser").val();
	   var date = $("#datePicker").val();
	   var email = $("#emailId").val();
	   
	   console.log("city ----------"+city+" zipcode ---------"+zip);
	   
	   if(otp != ''){
	   var userBean = {
			   codeNumber : otp,
			   userId : uid,
			   strdateOfBirth : date,
			   city : city,
			   zipcode : zip,
			   emailAddress : email
	   }
	   $.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/mergeUser",
		data:JSON.stringify(userBean),
		contentType:"application/json",
		success:function(res){
			if(res == 'OTP Invalid'){
				$("#otp").val("");
				displaynotification("OTP you entered is not correct",2000);
			}else if(res == 'Datas Incorrect' ){
				 $("#otp").val("");
				 $("#datePicker").val("");
				displaynotification("Date given by you is not match",2000);
				$("#fifthDiv").hide();
			}else{
				 $("#otp").val("");
				 $("#datePicker").val("");
				$("#fifthDiv").hide();
				$("#sixthDiv").show();
				 $.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/finalMerging",
				dataType:"text",
				data:uid,
				contentType:"application/json",
				success:function(res){
					if(res == 'success'){
					$("#boardDetailsId").hide();
					$("#sixthDiv").hide();
					displaynotification("Successfully merged your informations.",2000);
					window.location.href = "${pageContext.request.contextPath}/";
					}
					else{
						$("#boardDetailsId").hide();
						$("#sixthDiv").hide();
						displaynotification("Failed to merge your informations. Try later some times",2000);
					}
				},
				error: function(err){
					console.log(err);
				}
					
				}) 
				
			}
		},
		error:function(err){
			console.log(err);
		}
		   
		   
	   })
	   }else{
		   displaynotification("Please enter otp",2000);
	   }

}

function getOTP(){
	
	var email = $("#emailId").val();
	
	function validateMail(mail){
    	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))){
    		
			return false;
		}else{
			return true;
		}
    }
	
	if((email != null && email.trim() !="")){
		if(!validateMail(email)){
			//alert("Please enter valid email to continue");
			displaynotification("Please enter valid email to continue",2000);
			return false;
		}else{
			console.log(email);
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/getOTP",
				dataType:"text",
				data:email,
				contentType:"application/json",
				success:function(res){
					console.log(res);
					if(res == "OK"){
						displaynotification("OTP is sent to your mail address",2000);

					}else{
						displaynotification("Mail Address is not found",2000);
					}
				},
				error: function(err){
					console.log(err);
				}

			})
		}
	}else{
		displaynotification("Please enter email to verify",2000);
	}
	
	
}

function dateReadOnly(){
	$("#datePicker").blur();
}


</script> 
   
   
</body>
</html>
