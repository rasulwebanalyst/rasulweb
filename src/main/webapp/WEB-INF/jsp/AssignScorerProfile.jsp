 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<title>Cricket Social</title>
<%@ include file="BoardHeader.jsp" %>
 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
       <script>
var formatAMPMTime = function(date) {
	  var hours = date.getHours();
	  console.log(hours);
	  var minutes = date.getMinutes();
	  var ampm = hours >= 12 ? 'PM' : 'AM';
	  hours = hours % 12;
	  hours = hours ? hours : 12; // the hour '0' should be '12'
	  minutes = minutes < 10 ? '0'+minutes : minutes;
	  hours = hours < 10 ? '0'+hours : hours ;
	  var strTime = (date.getMonth()+1)+"/"+date.getDate()+"/"+date.getFullYear();
	  return strTime;
	}
	function test(id){
		var date = $("#formatDate_"+id).html();	
	    var offset = new Date().getTimezoneOffset() * 60 * 1000;
	var gettingFromServer= new Date(date);
	gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
	return formatAMPMTime(gettingFromServer); 
	
	}
	
	function getDateInObject(timestamp)
	{
		
		var date = new Date(timestamp);
		var dateNew = new Date(date.getTime() + date.getTimezoneOffset()*60000);
		var offset = new Date().getTimezoneOffset() * 60 * 1000;
		var gettingFromServer= new Date(dateNew);
		gettingFromServer = new Date(gettingFromServer.valueOf() - offset);
		return formatAMPMTime(gettingFromServer); 
	}
	 
</script> 

<%@ include file="publicLeaugeManagementSideMenu.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


				<div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Assign scorer to a schedule</h1>
                  <form id="filterForm" method="POST" action="${pageContext.request.contextPath}/filterForScheduleListAssignScorerPubProf.htm">
                  <div class="col-md-12 noPadding">
                     	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">From Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate" value="${startDateSet}" onfocus="readOnlyFunction()"> 
                          <span id="dateError" style="color:red"></span>
                         <!--  <i class="fa fa-calendar calIcon"></i> -->
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">To Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate" value="${endDateSet}" onfocus="readOnlyFunction()"> 
                          <span id="dateError1" style="color:red"></span>
                       <!--    <i class="fa fa-calendar calIcon"></i> -->
                        
                     	</div>
                        
                        <input type="hidden" value="${boardId}" name="boardId">
                       
                        
                        <div class="col-md-2">
                        <input type="button" onclick="filterFunction()" class="btn btn-default dBtn GSfbtn pull-right" value="Filter">
                     	</div>
                        
                     </div>
                 </form>
                 </div>
                 </div> 
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		         <%--  <h1 class="">Assign scorer to a schedule
		          
		           (From : <span id="showFrom">${startDateSet}</span> - To : <span id="showTo">${endDateSet}</span> )
								 --%>
							 <div class="pull-right" style="margin-bottom: 10px;">
							 
							 
								 <div class="col-md-12  margintop">
                    <button  class="btn btn-default dBtn btn" id="previous" onclick="loadPrev('previous')">Prev</button>
                    <button class="btn btn-default blueBtn" id="next" onclick = "loadPrev('next')">Next</button>
                  </div> 
								</div>  
		          
		        <!--   </h1> -->
                
                 <c:choose>
		          <c:when test="${empty tournamentList}">
		          
		          <table id="myTableAssign" style="font-size: 12px;">
                            	<thead>
                                <tr>
                                	<th>Trophy</th>
                                    <th>Match Date (MM/DD/YYYY)</th>
                                    <th>Home Team</th>
                                    <th>Away Team</th>
                                    </tr>
                                    </thead>
                                    </table>
                                    <span class="noContentDivRed" id="errorSpan">No schedules available for this week</span>
		          
		          </c:when>
		          <c:otherwise>
                
                
                  <table id="myTableAssign" style="font-size: 12px;">
                            	<thead>
                                <tr>
                                	<th>Trophy</th>
                                    <th>Match Date (MM/DD/YYYY)</th>
                                    <th>Home Team</th>
                                    <th>Away Team</th>
                                    </tr>
                                    </thead>
                                    
                                    
                                    <tbody style="cursor:pointer">
                                    <c:forEach var="tourDetails" items="${tournamentList}" varStatus="loop">
                                    <tr id="trid_${loop.count}" onclick="showScorerList('${tourDetails.tournamentSchedulerId}','${loop.count}')">
                                    	
                                      <td>${tourDetails.tournamentName}</td>
                                      <td><p id="formatDate_${tourDetails.tournamentSchedulerId}" style="display:none"><fmt:formatDate pattern="M/d/YYYY hh:mm a" value="${tourDetails.gameDate}" /></p><script>document.writeln(test("${tourDetails.tournamentSchedulerId}"));</script></td>
                                     
												<%--  <td><fmt:formatDate value="${tourDetails.gameDate}"
														pattern="MM/dd/yyyy" /></td>  --%>
												<td><a href="${pageContext.request.contextPath}/${tourDetails.homeTeamName}/board/${tourDetails.homeTeamId}">${tourDetails.homeTeamName}</a></td>
												<td><a href="${pageContext.request.contextPath}/${tourDetails.awayTeamName}/board/${tourDetails.awayTeamId}">${tourDetails.awayTeamName}</a></td>
                                  
                                   </tr>
                                   
                  </c:forEach>
                              </tbody>
                            </table>
                            <span id="errorSpan" style="color:red"></span>
                            </c:otherwise>
                            </c:choose>
                            
                            
                             <div class="col-md-6 smallTable" id="scorerTableId" style = "display:none">
                            <table>
                            	<thead>
                                <tr>
                                	<th>Scorer</th>
                                    <th style="text-align:center;">Action</th>

                                    </tr>
                                    </thead>
                                    
                                    
                                    <tbody style="cursor:pointer">
                                 
                                    <tr>
                                     <c:forEach var="scorer" items="${scorerList}">
                                  <td>${scorer.scorerName}</td>
                                  <td class="alignCenter">
                                       <!--    <a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a> -->
                                          <a href="#" onclick="deleteSorer('${scorer.scorerId}')" title="Delete"><i class="fa fa-trash-o deleteIcon"></i></a>
                                        </td>
                                  </c:forEach>	
                                   </tr>
                                   
 
                                    <tr>
                                    	
                                        <td>
                                        <div>
                                        <input type='text' id='scorerSelectBox' name='scorerSelectBox' onkeyup='getBuddiesAutoComplete(this,"addMemberautoCompleteDIV","addMemberIDDIV")' ><div class='autoComplete' id='addMemberautoCompleteDIV' style='display:none;'>
                                        <ul><li></li></ul>
                                        </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'>
                                        </div>
                                        	<%-- <div class="selectdiv">
                                              <select class="selectboxdiv">
                                                  <option value="0"> Select Umpire</option>
                                                  <c:forEach var="scorers" items="${scorerList}">
                                                  <option value="${scorers.scorerId }">${scorers.scorerName}</option>
                                                  </c:forEach>
                                              </select>
                                              <div class="out"></div>    
                                             
                                          </div> --%>
                                           <span id="error"></span>
                                        </td>
										<td class="alignCenter">
                                         <input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addScorer()">
                                        </td>
                                       
                                  
                                   </tr>
                                   
                                   
                                    

                                       
                              </tbody>
                            </table>
                            
                            </div>
                  
                  
                       </div>
                	</div>
            
          	
          </div>    
      </div>
          <input type="hidden" id="hiddenSchedulerId">
          
          <input type="hidden" id="hiddenDate" value="${dateString}"> 
		 	<input type="hidden" id="hiddenDateStart" value="${startDate}"> 
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file ="Footer.jsp" %>
   
   <!--Gallery-->
   
<script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>

<script
		src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>

		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
			});
			
			 $(document).ready(function () {
					
					//	$('.datepicker').datepicker();
					$('.datepicker').datepicker({
						autoclose:true
					});
					
					$(".datepicker").each(function() {    
					
					    $(this).datepicker('setDate', $(this).val());
					});
					
					
					$('.datepicker').on('changeDate', function(ev){
						$(this).datepicker('hide');
					});
					//$( ".datepicker" ).datepicker({ dateFormat: 'yyyy-MM-dd' });
					});
			
		</script>

   <script>
   var scorerArray = [];
   
   function showScorerList(schedulerId, id){
	   

	   $("#myTableAssign").click(function(e) {
		    if(e.target.tagName == "TD"){
		        $("#myTableAssign tr").css("color","");
		        $("#myTableAssign tr").css("background-color", "");
		        $(e.target).parent().css("background-color", "#3253a8");
		        $(e.target).parent().css("color", "#fff");
		    }
		});
	   
	   console.log(id);
		 document.getElementById("hiddenSchedulerId").value = schedulerId;
		 var bean =  {
				 tournamentSchedulerId : schedulerId,
		 }
		 $.ajax({
			type:"Post",
			url:"${pageContext.request.contextPath}/showScorerListInAssignUmpire",
			headers : {'Name' : HeaderName},
			data:JSON.stringify(bean),
			contentType :"application/json;charset=utf-8",
			success :function(res){
				// $("#trid_"+id).css("background-color", "#3253a8");
				//	$("#trid_"+id).css("color", "#fff");
				var htmlContent = '';
				//htmlContent += '<div class="col-md-6 smallTable" id="scorerTableId">' ;
				htmlContent += '<table id="myTable"><thead><tr>' ;
				htmlContent += '<th>Scorer</th>' ;
				htmlContent += '<th style="text-align:center;">Action</th>' ;
				htmlContent += ' </tr></thead><tbody style="cursor:pointer">' ;
				for(var i=0 ; i <res.length; i++){
					var scorerId = res[i].scorerId;
					scorerArray.push(scorerId);
				htmlContent += '<tr>';
				htmlContent += '<td id="umpireNameId">'+res[i].scorerName+'</td>' ;
				htmlContent += '<td class="alignCenter">' ;
				//htmlContent += '<a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a>' ;
				htmlContent += " <a href='#' onclick='deleteScorer(\""+scorerId+"\",\""+schedulerId+"\")'  title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a>" ;
				htmlContent += ' </td>' ;
				htmlContent += ' </tr>' ;
				}
				htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>'; 
				htmlContent += " </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'></div><span id='error' style='color:red'></span>";
				htmlContent += '<td class="alignCenter"><input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addScorer()">' ;
				htmlContent += ' </td> </tr>' ;
				htmlContent += '</tbody>' ;
				htmlContent += '</table>' ;
				//htmlContent += '</div>' ;
			$("#scorerTableId").html(htmlContent).trigger('create');
			$("#scorerTableId").show();
			$("select").change(function () {
            	var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
			},
			error:function (err){
				console.log(err);
			}
			 
		 })
	 }
	 function deleteScorer(scorerId,schedulerId){
		 var totalRowCount = 0;
	     var rowCount = 0;
	     var table = document.getElementById("myTable");
	     var rows = table.getElementsByTagName("tr")
	     for (var i = 0; i < rows.length; i++) {
	         totalRowCount++;
	         if (rows[i].getElementsByTagName("td").length > 0) {
	             rowCount++;
	         }
	     }
	     var sub = 1;
	     var diff = rowCount - sub;
	     var message = "Total Row Count: " + totalRowCount;
	     message += "\nRow Count: " + rowCount;
	     console.log(diff);
		 
		 if(diff == 1 ){
			 document.getElementById("error").innerHTML = "Can't be delete all the scorers";
			 //$("#error").fadeOut(3000);
		 }else{
			 
			 var index = scorerArray.indexOf(scorerId);
			 if (index > -1) {
				 scorerArray.splice(index, 1);
				}
			 
		 document.getElementById("hiddenSchedulerId").value = schedulerId;
		 var bean = {
				 userId : scorerId,
				 tournamentSchedulerId:schedulerId,
		 }
		 $.ajax({
		
			 type:"post",
			 url:"${pageContext.request.contextPath}/deleteScorerFromAssignPage",
			 headers : {'Name' : HeaderName},
			 data:JSON.stringify(bean),
			 contentType:"application/json; charset=utf-8",
			 success : function(res){
				 
				 var htmlContent = '';
					//htmlContent += '<div class="col-md-6 smallTable" id="scorerTableId">' ;
					htmlContent += '<table id="myTable"><thead><tr>' ;
					htmlContent += '<th>Scorer</th>' ;
					htmlContent += '<th style="text-align:center;">Action</th>' ;
					htmlContent += ' </tr></thead><tbody style="cursor:pointer">' ;
					for(var i=0 ; i <res.length; i++){
						var scorerId = res[i].scorerId;
					htmlContent += '<tr>';
					htmlContent += '<td id="umpireNameId">'+res[i].scorerName+'</td>' ;
					htmlContent += '<td class="alignCenter">' ;
				//	htmlContent += '<a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a>' ;
					htmlContent += " <a href='#' onclick='deleteScorer(\""+scorerId+"\",\""+schedulerId+"\")'  title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a>" ;
					htmlContent += ' </td>' ;
					htmlContent += ' </tr>' ;
					}
					htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>'; 
					htmlContent += " </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'></div><span id='error' style='color:red'></span>	";
					htmlContent += '<td class="alignCenter"><input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addScorer()">' ;
					htmlContent += ' </td> </tr>' ;
					htmlContent += '</tbody>' ;
					htmlContent += '</table>' ;
				//	htmlContent += '</div>' ;
				$("#scorerTableId").html(htmlContent).trigger('create');
				$("#scorerTableId").show();
				$("select").change(function () {
	            	var str = "";
	                str = $(this).find(":selected").text();
	                $(this).next(".out").text(str);
	            }).trigger('change');
			 },
			 error:function(err){
				 console.log(err);
			 }
		 
		 })
		 } 
	 }
	 
	 function addScorer(){
		
		 var scorerId = $("#addMemberIDDIV").val();
		 for(var i=0; i<scorerArray.length; i++){
			
			 if(scorerId == scorerArray[i])
				 {
				$("#error").html("This user already assigned as scorer for this schedule");
				 return false;
				 }else{
					 
				 }
		 }
		 
		
		 var schedulerId = $("#hiddenSchedulerId").val();
		 $("#error").html("");
		 if(scorerId == 0){
			 $("#error").html("Please choose scorer name");
			 ///$("#error").fadeOut(3000);
		 }else{
		 var bean = {
				 userId : scorerId,
				 tournamentSchedulerId:schedulerId,
		 }
		 $.ajax({
				
			 type:"post",
			 url:"${pageContext.request.contextPath}/addScorerFromAssignPage",
			 headers : {'Name' : HeaderName},
			 data:JSON.stringify(bean),
			 contentType:"application/json; charset=utf-8",
			 success : function(res){
				 
				 var htmlContent = '';
					//htmlContent += '<div class="col-md-6 smallTable" id="scorerTableId">' ;
					htmlContent += '<table id="myTable"><thead><tr>' ;
					htmlContent += '<th>Scorer</th>' ;
					htmlContent += '<th style="text-align:center;">Action</th>' ;
					htmlContent += ' </tr></thead><tbody style="cursor:pointer">' ;
					for(var i=0 ; i <res.length; i++){
						var scorerId = res[i].scorerId;
						scorerArray.push(scorerId);
					htmlContent += '<tr>';
					htmlContent += '<td id="umpireNameId">'+res[i].scorerName+'</td>' ;
					htmlContent += '<td class="alignCenter">' ;
				//	htmlContent += '<a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a>' ;
					htmlContent += " <a href='#' onclick='deleteScorer(\""+scorerId+"\",\""+schedulerId+"\")'  title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a>" ;
					htmlContent += ' </td>' ;
					htmlContent += ' </tr>' ;
					}
					htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>'; 
					htmlContent += " </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'> </div><span id='error' style='color:red'></span>	";
					htmlContent += '<td class="alignCenter"><input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addScorer()">' ;
					htmlContent += ' </td> </tr>' ;
					htmlContent += '</tbody>' ;
					htmlContent += '</table>' ;
					//htmlContent += '</div>' ;
				$("#scorerTableId").html(htmlContent).trigger('create');
				$("#scorerTableId").show();
				$("select").change(function () {
	            	var str = "";
	                str = $(this).find(":selected").text();
	                $(this).next(".out").text(str);
	            }).trigger('change');
			 },
			 error:function(err){
				 console.log(err);
			 }
		 
		 })
		 }
	 }
   
	 function getBuddiesAutoComplete(elem,divId,hiddenId){
			
		 document.getElementById("error").innerHTML = "";
		 
		 	var key=$(elem).val();
		 	var textBoxId=$(elem).attr('id');
		 	console.log('value : '+key);
		 	console.log('textBoxId : '+textBoxId);
		 	if(key.length>2) {
		 			    $.ajax({
		 						type : "POST",
		 						url : "${pageContext.request.contextPath}/UmpireCreationNameSearch",
		 						headers : {'Name' : HeaderName},
		 						dataType: "json",
		 			        contentType: "application/json; charset=utf-8",
		 			        data : key,					            
		 						success : function(res) {
		 							console.log(res);	
		 							var html="";
		 							var name = null;
		 							if(res != null){
		 								var users=res.userSearchBean;
		 								console.log(JSON.stringify(users));
		 								html+="<ul>";
		 								
		 								if(users!= null && users.length >0){
		 									for(var i in users){
		 										if(users[i].fullName != null){
		 											 name=users[i].fullName;
		 										}
		 								
		 								html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
				                            
				                          
				                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
			                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

			                          	}else{
			                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
			                          	}
				                      	html += " ";
				                      	html+=""+name+"";
				                          html+='</div>'
				                       	 +'</div>'
				              			+'</li>';
		 									}
		 								}
		 								
		 								
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
		 		  $('#addMemberIDDIV').val('');
		 	   }
		   
		 } 
	 
	 function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
			$('#'+textBox).val($(elem).text());
			$('#'+divId).hide();	
			$('#'+hiddenId).val(userId);	
			
	 }

	 
	 var dateString = null;

	 function loadPrev(text){
	 	

	 	 var mavValue = null;
	 	console.log(text);
	 	var boardId = "${boardId}";
	 	if(text == "previous"){
	 		
	 		 mavValue = $("#hiddenDateStart").val();
	 		 //alert("text ++++++++++++++++"+text+"value -----------------"+mavValue);
	    
	 	}else{
	 		 mavValue = $("#hiddenDate").val();
	 		 
	 		 //alert("text next ++++++++++++++++"+text+"value next-----------------"+mavValue);
	 	}
	 	 dateString  = mavValue;
	 	console.log("before response  :::"+dateString);
	 	
	 	var schedulerBean = {
	 			createdBy : boardId,
	 			dateString : dateString,
	 			previousNextFlag : text,
	 	
	 	}
	 	
	 	$.ajax({
	 	
	 		type:"post",
	 		url:"${pageContext.request.contextPath}/schedulerListPreviousNext",
	 		data :JSON.stringify(schedulerBean),
	 		contentType : "application/json",
	 		success: function(response){
	 			//alert("text ==================="+text);
	 			
	 			 var startGameDate  = new Date(response.startDateStr);
	 			 var endGameDate  = new Date(response.endDateStr);
	 					
	 			
	 			i
				 if(text =='previous'){
						document.getElementById("fromDate").value = startGameDate.toLocaleDateString();
						document.getElementById("toDate").value = endGameDate.toLocaleDateString();
						
						//document.getElementById("showFrom").innerHTML = endGameDate.toLocaleDateString();
						//document.getElementById("showTo").innerHTML = startGameDate.toLocaleDateString();
						
						
						$('#toDate').datepicker('update',endGameDate.toLocaleDateString());
						$("#fromDate").datepicker("update", startGameDate.toLocaleDateString());
					
					}
					else{
						
						
						
						//document.getElementById("showFrom").innerHTML = startGameDate.toLocaleDateString();
						//document.getElementById("showTo").innerHTML = endGameDate.toLocaleDateString();
						
						document.getElementById("toDate").value = endGameDate.toLocaleDateString();
						document.getElementById("fromDate").value = startGameDate.toLocaleDateString();
						
						
						$('#fromDate').datepicker('update',startGameDate.toLocaleDateString());
						$("#toDate").datepicker("update", endGameDate.toLocaleDateString());
					
					}
				
	 			
	 			document.getElementById("hiddenDateStart").value = response.startDateStr;
	 			document.getElementById("hiddenDate").value = response.endDateStr;
	 			
	 			/* if(text =='previous'){
	 				mavValue = response.endDateStr;
	 				document.getElementById("hiddenDateStart").value =  mavValue;
	 			}else{
	 				mavValue = response.endDateStr;
	 				document.getElementById("hiddenDate").value =  mavValue;
	 			}
	 		 */
	 			
	 			
	 			
	 			var res = null;
	 			
	 			 res = response.tournamentSchedulerList;
	 			
	 			 
	 			if(res.length != 0){
	 				document.getElementById("errorSpan").innerHTML = "";
	 				
	 				 console.log(res);
	 			
	 				var html = '';
	 			
	 				
	 				html += ' <table id="myTableAssign"><thead><tr>';
	 				html += '<th>Trophy</th>';
	 				html += '<th>Match Date(MM/DD/YYYY)</th>';
	 				html += '<th>Home Team</th>';
	 				html += '<th>Away Team</th>';
	 				
	 				html += '</tr></thead><tbody>';
	 				
	 				var count = 1;
	 			
	 				for(var i=0; i<res.length; i++){
	 					
	 					var dateNewObject = getDateInObject(res[i].gameDate);
	 					
	 					 console.log(res[i].gameDate);
	 				//	var endDate = new Date(res[i].endDateString);
	 					
	 					console.log("after Response :"+mavValue);
	 					
	 				//	 $("#hiddenDate").val(mavValue);
	 					
	 					 var date  = new Date(res[i].gameDate);
	 				
	 					 console.log("date ======="+date.toLocaleDateString());
	 					 var dateChange = date.toLocaleDateString();
	 			
	 					
	 					
	 					html += "<tr id='trid_"+count+"' onclick='showScorerList(\""+res[i].tournamentSchedulerId+"\")'>";
	 					html += '<td>'+res[i].tournamentName+'</td>';
	 					//html += '<td>'+dateChange+'</td>';
	 					html += '<td>'+dateNewObject+'</td>';
	 					html += '<td><a href="${pageContext.request.contextPath}/'+res[i].homeTeamName+'/board/'+res[i].homeTeamId+'">'+res[i].homeTeamName+'</a></td>';
	 					html += '<td><a href="${pageContext.request.contextPath}/'+res[i].awayTeamName+'/board/'+res[i].awayTeamId+'">'+res[i].awayTeamName+'</a></td>';
	 					
	 				
	 					html += '</tr>';
	 				
	 					count++;
	 				}
	 				
	 				html += '</tbody></table>';
	 			
	 	
	 				 $("#myTableAssign").html(html).trigger('create');
	 			
	 				 $("#scorerTableId").hide();
	 			
	 				
	 			}else{
	 		
	 				//alert("else condition ::::::::::::::::"+mavValue);
	 				 document.getElementById("hiddenDateStart").value = response.startDateStr;
				
				 document.getElementById("hiddenDate").value = response.endDateStr;
	 				 
	 				//document.getElementById("hiddenDate").value = response.startDateStr;
	 				
	 				mavValue = response.endDateStr;
	 				
	 				
	 				document.getElementById("errorSpan").innerHTML = "";
	 				
	 				//displaynotification("No more schedules available for this week",1000);
	 				
	 					 var html = '';
	 			
	 				
	 				html += ' <table id="myTableAssign"><thead><tr>';
	 				html += '<th>Trophy</th>';
	 				html += '<th>Match Date (MM/DD/YYYY)</th>';
	 				html += '<th>Home Team</th>';
	 				html += '<th>Away Team</th>';
	 				html += '</tr></thead>';
	 				html += '</table>';
	 				html += '<span id="errorSpan" class="noContentDivRed">No more '+text+' schedules available for this week</span>';
	 	
	 				 $("#myTableAssign").html(html).trigger('create');
	 				
	 				// $("#errorSpan").fadeOut(1000); 
	 				 $("#scorerTableId").hide();
	 			
	 				
	 			}
	 			
	 			
	 		},
	 		error : function(err){
	 			console.log(err);
	 		}
	 		
	 	})
	 	
	 	
	 	
	 }
	 
	 function readOnlyFunction(){
		 $("#fromDate").blur();
		 $("#toDate").blur();
	 }
	 
	 function filterFunction(){
		 fromDateValidateFunction();
		 toDateValidateFunction();
		
		 var startDate = $("#fromDate").val();
		 var endDate = $("#toDate").val();
		 
		  if(fromDateValidateFunction() == true && toDateValidateFunction() == true){
			 // if (startDate < endDate){
				  var strDate=new Date(startDate);
			  var eDate=new Date(endDate);
			   if (strDate < eDate){
				  $("#filterForm").submit();
					 return true;
				}else{
					displaynotification("To date must be greater than from date",2000);
				}
			
		 }else{
			 return false;
		 } 
	 }
	 
	 function fromDateValidateFunction(){
		 
		 var date = $("#fromDate").val();
			if(date == null || date == "" || typeof date == 'undefined'){
				displaynotification("Please give From date",2000);
				return false;
			}else{
				//document.getElementById("dateError").innerHTML = "";
				return true;
			}
		 
	 }

	 function toDateValidateFunction(){
		 var date = $("#toDate").val();
			if(date == null || date == "" || typeof date == 'undefined'){
				displaynotification("Please give To date",2000);
				return false;
			}else{
			//	document.getElementById("dateError1").innerHTML = "";
				return true;
			}
		 
	 }

	 
   </script>
   
   
</body>
</html>
