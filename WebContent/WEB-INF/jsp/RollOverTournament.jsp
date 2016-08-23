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
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/oAuth.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
<script type="text/javascript">
var arrayMemberList=[];
var teamboardid=[];
var sequencNumber=0;
</script>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/token-input-facebook.css" type="text/css" />


</head>
<body>

 <%@ include file="CSCommon.jsp" %>
 <%@ include file="BoardHeader.jsp" %>
 
 <script>
        $(document).ready(function () {
		
	
        		 $('.datepicker').datepicker({
        			//dateFormat: "yyyy-MM-dd", 
        			startDate: new Date(),
        			 autoclose: true,
        			 
        	
        		
        		
        	});
        		 $('.datepicker').on('changeDate', function(ev){
        				$(this).datepicker('hide');
        			});
		
		/* var nowDate = new Date();
        var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
		
	
	$('.datepicker').datepicker({ 
	startDate: today
	});
		
		 */
	
		});
       
   </script>
 

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
                     <%@ include file="LeaugeManagementSideMenu.jsp" %>

      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Roll over from previous Tournament</h1>
                  
                  <div class="form-group col-md-12 noPadding profileForm">
                
                   
                   
                  
				   <div class="col-md-6">
                    <label for="email"><span>*</span>Choose a Tournament / Trophy</label>
                       <div class="selectdiv">
                          <select class="selectboxdiv" id="tournamentSelectDiv" onchange="changeTournament(this.value)">
                             <option value="0">Tournaments</option>
                                        <c:forEach var="tournaments" items="${tournamentOfTheBoard}">
                                        <option value="${tournaments.tournamentId }">${tournaments.tournamentName }</option>
                                        </c:forEach>
                          </select>
                          <div class="out" id="outClass"></div>  
                          
                      </div>
                        <span id="tournamentError" style="color:red;float:left;"></span> 
                  </div>
                   
                   
                   <div class="col-md-6">
                    <label for="email"><span>*</span>Add New Tournament</label><br>
				     <input type="text" class="form-control" placeholder="" id="newTrophyName" name="newTrophyName">
                       <span id="newTrophyNameError" style="color:red;float:left;"></span>  
                  </div>
                   
                   
                   
            
                   
                   <div class="col-md-8">
                   <label for="email">Team Board</label><br>
				   <input type="text" class="form-control" placeholder="" id="boardsName">
				   <input type="hidden" id="hiddenBoardId" name="boardId">
				   <span id="error" style="color:red;float: left; "></span>  
                   </div>
                   
                    <div class="col-md-4">
                    <label for="email"><span>*</span>Start date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="date" onfocus="datePickerNoEdit()"> 
                      <span id="dateError" style="color:red;float:left;"></span>
                      <!-- <i class="fa fa-calendar calIcon"></i> -->
                    </div>
                    
                    
                    
                    <div class="col-md-12 noPadding" style="margin-bottom:0">
                          <div class="col-md-3">
                          	<input type="radio" checked id="r1" name="rr" value="Saturday">
				            <label for="r1"><span></span>Saturday League</label>
                          </div>
                          

                          <div class="col-md-3">
                          	<input type="radio" id="r2" name="rr" value="Sundays">
				            <label for="r2"><span></span>Sunday League</label>
                          </div>
                          
                          <div class="col-md-3">
                          	<input type="radio" id="r3" name="rr" value="saturdaySundayLeague">
				            <label for="r3"><span></span>Both days</label>
                          </div>
                      </div>
                      
                      
                      <div class="col-md-4">
                    <label for="email"><span>*</span>Include Special Dates</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="incSpecialDate" onfocus="datePickerNoEdit()"> 
                       <span id="splDateError" style="color:red;float: left;"></span>
                 <!-- <i class="fa fa-calendar calIcon"></i> -->
                    </div>
                    
                    <div class="col-md-4">
                    <label for="email"><span>*</span>Exclude Special Dates</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="excSpecialDate" onfocus="datePickerNoEdit()"> 
                       <span id="splDateError1" style="color:red;float:left;"></span>
                      <!-- <i class="fa fa-calendar calIcon"></i> -->
                    </div>
                    
                    
                    <div class="col-md-12">
                              	<input type="checkbox" class="cboxBtn" id="Fan" name="umpire" value="yes">
                                <label for="Fan"><span></span>Umpires (optional)</label>
                                
                                 <input type="checkbox" class="cboxBtn" id="scorer" name="scorer" value="yes">
                                <label for="scorer"><span></span>Scorer (optional)</label>
                                
                                <input type="checkbox" class="cboxBtn" id="Player" name="ground" value="yes">
                                <label for="Player"><span></span>Ground (optional)</label>
                                
                              </div>
                              
                              <div class="col-md-12 alignCenter">
                              	<button type="submit" class="btn btn-default blueBtn " style="margin-right:10px;" onclick="rollOverSubmit()">Confirm</button>
                                <button type="submit" class="btn btn-default blueBtn " style="margin-right:10px;" onclick="cancelFunction()">Cancel</button>
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

<%@ include file="Footer.jsp" %>
		<script>
		
		
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
			
			
			
			/*  var boardArray=[];
			$("#boardsName").tokenInput(ctx+"/boardSearchInCreateTournament/",{
				resultsFormatter: function(item){ return "<li>" + "<img src='" + item.boardImageURL + "' title='" + item.boardName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.boardName + "</div></div></li>" },
				preventDuplicates: true,
				propertyToSearch: "boardName",
				theme: "facebook",   
				onAdd: function (item) {
					boardArray.push(item.boardId);
					$('#hiddenBoardId').val(boardArray);
				},
				onDelete: function (item) {
			    	var index = boardArray.indexOf(item.boardId);
					if (index >= 0) {
						boardArray.splice( index, 1 );
					}
					$('#hiddenBoardId').val(boardArray);
			},onResult: function (item) {
			    if($.isEmptyObject(item)){
			        return [{id:'0',name: "No Results Found"}];
			  }else{
			        return item;
			  }
			}
			});  */
			}); 
		
		</script>
   <script>
   
   function datePickerNoEdit(){
	   $("#date").blur();
	   $("#incSpecialDate").blur();
	   $("#excSpecialDate").blur();
   }
   
  
   var seperateListArray = [];
   function changeTournament(tourId){
	   
		
	   var tournament = $("#tournamentSelectDiv").val();
		if(tournament != 0){
			document.getElementById("tournamentError").innerHTML = "";
			
		var array = [];
		var boardArray=[];
	
	   
	   if(tourId != 0){
	
	   var boardId = "${boardId}";
	   
	   var bean = {
			   createdBy : boardId,
			   tournamentId : tourId,
	   }
	   
	   $.ajax({
		type:"post",
		url :"${pageContext.request.contextPath}/getBoardsForAutoSchedule",
		data: JSON.stringify(bean),
		dataType:"json",
		contentType:"application/json",
		success:function(res){
			
			 var newArray=[];
			
			if(res.length != "" ){
			
			for(var i=0; i<res.length; i++)
		{
				boardArray.push(res[i].teamid);
				var Obj = {};
				Obj.boardId = res[i].teamid;
				Obj.boardName = res[i].teamName;
			
				array.push(Obj);
				
		}	
			//console.log("JSON ARRAY----------------"+JSON.stringify(response));
			console.log("json response --------"+array);
			for(var i=0; i< boardArray.length; i++){
				newArray.push(boardArray[i]);
			}	
			
			
			$('#hiddenBoardId').val(newArray);
		
			$(".token-input-list-facebook").remove();
	
			 $("#boardsName").tokenInput(ctx+"/boardSearchInCreateTournament/",{
				resultsFormatter: function(item){ 
					return "<li>" + "<img src='" + item.boardImageURL + "' title='" + item.boardName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.boardName + "</div></div></li>"
					},
				preventDuplicates: true,
				prePopulate : array,
				propertyToSearch: "boardName",
				theme: "facebook", 
				onAdd: function (item) {
					newArray.push(item.boardId);
				
					$('#hiddenBoardId').val(newArray);
				},
				onDelete: function (item) {
			    	var index = newArray.indexOf(item.boardId);
					if (index >= 0) {
						newArray.splice( index, 1 );
					}
					$('#hiddenBoardId').val(newArray);
			},onResult: function (item) {
			    if($.isEmptyObject(item)){
			        return [{id:'0',name: "No Results Found"}];
			  }else{
			        return item;
			  }
			}
			});  
			 
				var userId = $("#hiddenBoardId").val();
				if(userId != null || userId != "" || typeof userId != 'undefined'){
					
					document.getElementById("error").innerHTML = "";
				}
			 
			}
			else{
				
				displaynotification("No completed matches available in this tournament",2000);
				
				$("#tournamentSelectDiv").val(0);
			document.getElementById("outClass").innerHTML = "Tournaments";
				
				 var elseArray=[];
				
				$(".token-input-list-facebook").remove();
				
				$("#boardsName").tokenInput(ctx+"/boardSearchInCreateTournament/",{
					resultsFormatter: function(item){ 
						return "<li>" + "<img src='" + item.boardImageURL + "' title='" + item.boardName + "' height='25px' width='25px' />" + "<div style='display: inline-block; padding-left: 10px;'><div class='full_name'>" + item.boardName + "</div></div></li>"
						},
					preventDuplicates: true,
					prePopulate : array,
					propertyToSearch: "boardName",
					theme: "facebook", 
					onAdd: function (item) {
						elseArray.push(item.boardId);
						
						$('#hiddenBoardId').val(elseArray);
					},
					onDelete: function (item) {
				    	var index = elseArray.indexOf(item.boardId);
						if (index >= 0) {
							elseArray.splice( index, 1 );
						}
						$('#hiddenBoardId').val(elseArray);
				},onResult: function (item) {
				    if($.isEmptyObject(item)){
				        return [{id:'0',name: "No Results Found"}];
				  }else{
				        return item;
				  }
				}
				}); 
				
			}
		},
		error:function(err){
			prePopulate : null;
		}
		   
	   })

	   }
		}
   }
   
   
   function specialDateValidation(){
		var date  = $("#incSpecialDate").val();
	if(date == null || date == "" || typeof date == 'undefined'){
		document.getElementById("splDateError").innerHTML = "Please  include special date";
		return false;
	}else{
		document.getElementById("splDateError").innerHTML = "";
		return true;
	}
		}

	function excludeSpecialDateValidation(){
		var date  = $("#excSpecialDate").val();
	if(date == null || date == "" || typeof date == 'undefined'){
		document.getElementById("splDateError1").innerHTML = "Please  exclude special date";
		return false;
	}else{
		document.getElementById("splDateError1").innerHTML = "";
		return true;
	}
		}



	function tournamentSelection(){
		var tournament = $("#tournamentSelectDiv").val();
		if(tournament == 0 || tournament == "" || typeof tournament == 'undefined'){
			document.getElementById("tournamentError").innerHTML = "Please choose tournament";
			return false;
		}else{
			document.getElementById("tournamentError").innerHTML = "";
			return true;
		}
	}
	
	function boardValidation(){
		var userId = $("#hiddenBoardId").val();
	if(userId == null || userId == "" || typeof userId == 'undefined'){
		document.getElementById("error").innerHTML = "Please give board name";
		return false;
	}else{
		document.getElementById("error").innerHTML = "";
		return true;
	}
	}
   
   function rollOverSubmit(){
	   tournamentSelection();
	   dateFunction();
	   specialDateValidation();
	   excludeSpecialDateValidation();
	   boardValidation(); 
	   newTournament();
	   if( tournamentSelection() == true && dateFunction() == true && specialDateValidation() == true && excludeSpecialDateValidation() == true && boardValidation() == true && newTournament()==true){
		   afterValidation();
		   
	   }else{
		   
	   }
		  
   }
   
   
   function newTournament(){
	  var newTrophyName= $('#newTrophyName').val();
	  $('#newTrophyNameError').html('');
	  if(newTrophyName!=''){
		 if(newTrophyName.length>2){
			 if(newTrophyName.length<50){
				 return true;
			 }else{
				 $('#newTrophyNameError').html("Tournament name should maximut 50 characters");
				 return false;
			 }
		 }else{
			 $('#newTrophyNameError').html("Please enter the minmum 2 characters");
			 return false;
		 } 
	  }else{
		  $('#newTrophyNameError').html('Please enter the tournament name');
	  }
   }
   
   
   function afterValidation(){

	   $("#loading").show();
	   console.log("inside success");
	
	   
	   var tournamentId = $("#tournamentSelectDiv").val();
	   var boardsId = $("#hiddenBoardId").val();
	   var startDate = $("#date").val();
	   var incStartDate = $("#incSpecialDate").val();
	   var excStartDate = $("#excSpecialDate").val();
	   var league = $('input[name="rr"]:checked').val();	
	   var umpire = $('input[name="umpire"]:checked').val();	
	   var ground = $('input[name="ground"]:checked').val();
	   var scorer = $('input[name="scorer"]:checked').val();
	   var newTrophyName = $('#newTrophyName').val();
	   var boardId = "${boardId}";

	   var scorerSel = null;
	   var umpireSel = null;
	   var groundSel = null;
	   
	   
	   if(scorer == 'yes'){
		   scorerSel = 'yes';
	   }else{
		   scorerSel = 'no';
	   }
	   
	   
	   if(umpire == 'yes'){
		   umpireSel = 'yes';
	   }else{
		   umpireSel = 'no';
	   }
	   
	   
	   if(ground == 'yes'){
		   groundSel = 'yes';
	   }else{
		   groundSel = 'no';
	   }
	   
	   
	   var autoScheduleBean = {
			   createdBy : boardId,
			   tournamentId : tournamentId,
			   startDateStr : startDate,
			   includeDateStr : incStartDate,
			   excludeDateStr : excStartDate,
			   daySelection : league,
			   boardIds : boardsId,
			   groundSelection : groundSel,
			   umpireSelection : umpireSel,
			   scorerSelection : scorerSel,
			   newTrophyName : newTrophyName
			   
	   }
	   
	   $.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/autoScheduleInsert",
		data:JSON.stringify(autoScheduleBean),
		contentType :"application/json",
		success:function(res){
			
			
			console.log(res);
			if(res =='success'){
				displaynotification("Schedule created successfully",2000);
				window.location.href ="${pageContext.request.contextPath}/SchedulerList/boardId/"+boardId;
			}else{
				$("#loading").hide();
			}
		},
		error:function(err){
			console.log(err);
		}
		   
	   })
	   
	   
	  // alert("all values :"+tournamentId+" ---- "+boardsId+" --------"+startDate+" ------- "+incStartDate+" ---------"+excStartDate+" ------"+league+" --------"+umpire+" -------"+ground);
	   
   }
   
   function cancelFunction(){
	   var boardId = "${boardId}";
	   window.location.href = "${pageContext.request.contextPath}/CreateTrophy/boardId/"+boardId;
   }
   
   </script>     
     

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/token-input.js"></script>
</body>
</html>
