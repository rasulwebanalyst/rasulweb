    <!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <link href="${pageContext.request.contextPath}/css/datepicker.css" rel="stylesheet">
<!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/umpireSearch.js"></script>

<script type="text/javascript">
<!--

//-->

var umpireList=[];

</script>
 
<title>CricketSocial</title>
 <%@ include file="BoardHeader.jsp" %>

<style>
.highlight{
	background-color :#3253a8";
	color: #fff;
}
</style>
 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
<script type="text/javascript">

$(document).ready(function() {

	  // alert('');
	 $("body").click(function(){
		$("#addMemberautoCompleteDIV").fadeOut();
		});

		$("#scorerSelectBox").click(function(e){
		 e.stopPropagation();
		});
	    
		$('#addMemberautoCompleteDIV').click(function(e){
			 e.stopPropagation();
		});
	
	  
	  
});   


</script>

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

<%@ include file="LeaugeManagementSideMenu.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Assign a umpire to a schedule</h1>
                  <form id="filterForm" method="POST" action="${pageContext.request.contextPath}/filterForScheduleListAssignUmpire.htm">
                  <div class="col-md-12 noPadding">
                     	
                        
                        <div class="col-md-3 noLeftPad">
                        <label for="">From Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="fromDate" name="fromDate" value="${startDateSet}" onfocus="readOnlyFunction()"> 
                          <span id="dateError" style="color:red"></span>
                          <!-- <i class="fa fa-calendar calIcon"></i> -->
                        </div>
                        
                        
                        <div class="col-md-3">
                          <label for="">To Date</label> <input type="text" class="form-control datepicker calIconImg" placeholder="" id="toDate" name="toDate" value="${endDateSet}" onfocus="readOnlyFunction()"> 
                          <span id="dateError1" style="color:red"></span>
                         <!--  <i class="fa fa-calendar calIcon"></i> -->
                        
                     	</div>
                        
                        <input type="hidden" value="${boardId}" name="boardId" id="leaguBoardboardId">
                       
                        
                        <div class="col-md-2">
                        <input type="button" onclick="filterFunction()" class="btn btn-default dBtn GSfbtn pull-right" value="Filter">
                     	</div>
                        
                     </div>
                 </form>
                 </div>
                 </div> 
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		         <%--  <h1 class="">
		          
		          (From : <span id="showFrom">${startDateSet}</span> - To : <span id="showTo">${endDateSet}</span> )
								 --%>
							 <div class="pull-right" style="margin-bottom: 10px;">
							 
							 
								 <div class="col-md-12  margintop">
                    <button  class="btn btn-default dBtn btn" id="previous" onclick="loadPrev('previous')">Prev</button>
                    <button class="btn btn-default blueBtn" id="next" onclick = "loadPrev('next')">Next</button>
                  </div> 
								</div>  
		          
		         <!--  </h1>
		           -->
		           <div class="form-group">
		          <c:choose>
		          <c:when test="${empty tournamentList}">
		          
		          <table id="myTableAssign">
                            	<thead>
                                <tr>
                                	<th>Trophy</th>
                                    <th>Match Date (MM/DD/YYYY)</th>
                                    <th>Home Team</th>
                                    <th>Away Team</th>
                                    </tr>
                                    </thead>
                                    </table>
                                    </div>
                                    <span class="noContentDivRed" id="errorSpan">No schedules available for this week</span>
		          
		          </c:when>
		          <c:otherwise>
		          <div class="form-group">
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
                                    <tr id="trid_${loop.count}" onclick="showUmpireList('${tourDetails.tournamentSchedulerId}')">
                                    	
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
                            </div>
		          <span id="errorSpan" style="color:red"></span>
		          </c:otherwise>
		          
		          </c:choose>
		          
                  
                            
                             <div class="col-md-6 smallTable" id="umpireTableId" style = "display:none">
                            <table>
                            	<thead>
                                <tr>
                                	<th>Umpire</th>
                                    <th style="text-align:center;">Action</th>

                                    </tr>
                                    </thead>
                                    
                                    
                                    <tbody>
                                 
                                    <tr>
                                     <c:forEach var="umpire" items="${umpireList}">
                                  <td id="umpireNameId" >${umpire.umpireName}</td>
                                  <td class="alignCenter">
                                        <!--   <a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a> -->
                                          <a href="#" onclick="deleteUmpire('${umpire.umpireId}')" title="Delete"><i class="fa fa-trash-o deleteIcon"></i></a>
                                        </td>
                                  </c:forEach>	
                                   </tr>
                                   
 
                                    <tr>
                                    	
                                        <td>
                                        	<%-- <div class="selectdiv">
                                              <select class="selectboxdiv">
                                                  <option value="0"> Select Umpire</option>
                                                  <c:forEach var="umpires" items="${boardUmpires}">
                                                  <option value="${umpires.umpireId }">${umpires.umpireName}</option>
                                                  </c:forEach>
                                              </select>
                                              <div class="out"></div>    
                                             
                                          </div> --%>
                                           <span id="error"></span>
                                        </td>
										<td class="alignCenter">
                                         <input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addUmpire()">
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
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file ="Footer.jsp" %>
   
<script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>

<%-- <script
		src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script> --%>
		<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
			});
			
			
			 $(document).ready(function () {
					
					//	$('.datepicker').datepicker();
					$('.datepicker').datepicker({
				 endDate: '+0d',
				 autoclose: true
				 });
					/* $('.datepicker').datepicker({
						autoclose:true
					}); */
					
					/* $(".datepicker").each(function() {    
					
					    $(this).datepicker('setDate', $(this).val());
					}); */
					
					
				/* 	$('.datepicker').on('changeDate', function(ev){
						$(this).datepicker('hide');
					}); */
					//$( ".datepicker" ).datepicker({ dateFormat: 'yyyy-MM-dd' });
					});
		</script>

 <script>
 
 
 
 function showUmpireList(schedulerId){
	 umpireList=[];
	 $("#myTableAssign").click(function(e) {
		    if(e.target.tagName == "TD"){
		        $("#myTableAssign tr").css("color","");
		        $("#myTableAssign tr").css("background-color", "");
		        $(e.target).parent().css("background-color", "#3253a8");
		        $(e.target).parent().css("color", "#fff");
		    }
		});
	 
	 document.getElementById("hiddenSchedulerId").value = schedulerId;
	 var bean =  {
			 tournamentSchedulerId : schedulerId,
	 }
	 $.ajax({
		type:"Post",
		url:"${pageContext.request.contextPath}/showUmpireListInAssignUmpire",
		headers : {'Name' : HeaderName},
		data:JSON.stringify(bean),
		contentType :"application/json;charset=utf-8",
		success :function(response){
			
			console.log(response);
			//var res=response.umpireNamesList;
			var res=[];
			
			if(response!=null && response.length>0){
				res=response[0].umpireNamesList;
			}
			
			
			 /* $("#trid_"+id).css("background-color", "#3253a8");
			 $("#trid_"+id).css("color", "#fff"); */
			
			var htmlContent = '';
			//htmlContent += '<div class="col-md-6 smallTable" id="umpireTableId">' ;
			htmlContent += '<table id="myTable"><thead><tr>' ;
			htmlContent += '<th>Umpire</th>' ;
			htmlContent += '<th style="text-align:center;">Action</th>' ;
			htmlContent += ' </tr></thead><tbody>' ;
			for(var i=0 ; i <res.length; i++){
				var umpireId = res[i].umpireId;
			htmlContent += '<tr>';
			htmlContent += '<td id="umpireNameId">'+res[i].umpireName+'</td>' ;
			htmlContent += '<td class="alignCenter">' ;
			///htmlContent += '<a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a>' ;
			htmlContent += " <a href='#' onclick='deleteUmpire(\""+umpireId+"\",\""+schedulerId+"\")'  title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a>" ;
			htmlContent += ' </td>' ;
			htmlContent += ' </tr>' ;
			
			/* umpireList.push({
				name : res[i].umpireName,
				id : res[i].umpireId
			}); */
			umpireList.push(res[i].umpireId);
						
			}
			 //htmlContent += '<td><div class="selectdiv"><select class="selectboxdiv" id="umpireSelectBox"><option value="0"> Select Umpire</option> <c:forEach var="umpires" items="${boardUmpires}">' ;
			//htmlContent += '<option value="${umpires.umpireId }">${umpires.umpireName}</option></c:forEach> </select><div id="umpireDiv" class="out"></div> </div> <span id="error" style="color:red"></span> </td> ' ; 
		//	htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>'; 
		//getUmpireList
			
		if(response[0].tournamentSelectOption==1){
			htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getUmpireList(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete umpireautocomplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>';	
		}else{
			htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete umpireautocomplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>';
		}		
		
		
		    
			htmlContent += " </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'></div><span id='error' style='color:red'></span>	";
			
			htmlContent += '<td class="alignCenter"><input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addUmpire()">' ;
			htmlContent += ' </td> </tr>' ;
			htmlContent += '</tbody>' ;
			htmlContent += '</table>' ;
			//htmlContent += '</div>' ;
		$("#umpireTableId").html(htmlContent).trigger('create');
		$("#umpireTableId").show();
		 $("select").change(function () {
             var str = "";
             str = $(this).find(":selected").text();
             $(this).next(".out").text(str);
         }).trigger('change');
		},
		error:function (err){
			console.log(err);
		}
		 
	 });
 }

 
 function deleteUmpire(umpireId,schedulerId){
	 var totalRowCount = 0;
	 umpireList=[];
     var rowCount = 0;
     var table = document.getElementById("myTable");
     var rows = table.getElementsByTagName("tr");
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
		 document.getElementById("error").innerHTML = "Can't be delete all the umpires";
		 //$("#error").fadeOut(3000);
	 }else{
		 //document.getElementById("error").innerHTML = "";
		 //consoe.log("hi");
	 document.getElementById("hiddenSchedulerId").value = schedulerId;
	 var bean = {
			 userId : umpireId,
			 tournamentSchedulerId:schedulerId,
	 }
	 $.ajax({
	
		 type:"post",
		 url:"${pageContext.request.contextPath}/deleteUmpireFromAssignPage",
		 headers : {'Name' : HeaderName},
		 data:JSON.stringify(bean),
		 contentType:"application/json; charset=utf-8",
		 success : function(response){
			 
			 var res=[];
			 if(response!=null && response.length>0){
					res=response[0].umpireNamesList;
				}
			 var htmlContent = '';
				//htmlContent += '<div class="col-md-6 smallTable" id="umpireTableId">' ;
				htmlContent += '<table id="myTable"><thead><tr>' ;
				htmlContent += '<th>Umpire</th>' ;
				htmlContent += '<th style="text-align:center;">Action</th>' ;
				htmlContent += ' </tr></thead><tbody>' ;
				for(var i=0 ; i <res.length; i++){
					var umpireId = res[i].umpireId;
				htmlContent += '<tr>';
				htmlContent += '<td id="umpireNameId">'+res[i].umpireName+'</td>' ;
				htmlContent += '<td class="alignCenter">' ;
				//htmlContent += '<a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a>' ;
				htmlContent += " <a href='#' onclick='deleteUmpire(\""+umpireId+"\",\""+schedulerId+"\")'  title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a>" ;
				htmlContent += ' </td>' ;
				htmlContent += ' </tr>' ;
				
				umpireList.push(res[i].umpireId);
				
				}
				// htmlContent += '<td><div class="selectdiv"><select class="selectboxdiv" id="umpireSelectBox"><option value="0"> Select Umpire</option> <c:forEach var="umpires" items="${boardUmpires}">' ;
				//htmlContent += '<option value="${umpires.umpireId }">${umpires.umpireName}</option></c:forEach> </select><div id = "umpireDiv1" class="out"></div> </div>  <span id="error" style="color:red"></span></td> ' ; 
				//htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>'; 
				if(response[0].tournamentSelectOption==1){
					htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getUmpireList(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete umpireautocomplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>';	
				}else{
					htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete umpireautocomplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>';
				}	
				
				htmlContent += " </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'></div><span id='error' style='color:red'></span>	";
				htmlContent += '<td class="alignCenter"><input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addUmpire()">' ;
				htmlContent += ' </td> </tr>' ;
				htmlContent += '</tbody>' ;
				htmlContent += '</table>' ;
				//htmlContent += '</div>' ;
			$("#umpireTableId").html(htmlContent).trigger('create');
			$("#umpireTableId").show();
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
 
 function addUmpire(){
	 
	 var umpireId = $("#addMemberIDDIV").val();
	 var schedulerId = $("#hiddenSchedulerId").val();
	 
	 $("#error").html("");
	 if(umpireId == 0){
		// $("#error").show();
		 $("#error").html("Please choose umpire name");
		// $("#error").fadeOut(3000);
	 }else{
		 	var uid=umpireList.indexOf(umpireId);
		 if(uid ==-1){
			 
			 
			 
			 var bean = {
					 userId : umpireId,
					 tournamentSchedulerId:schedulerId,
			 }
			 $.ajax({
					
				 type:"post",
				 url:"${pageContext.request.contextPath}/addUmpireFromAssignPage",
				 headers : {'Name' : HeaderName},
				 data:JSON.stringify(bean),
				 contentType:"application/json; charset=utf-8",
				 success : function(response){
					 console.log(response);
					 
					 var res=[];
					 if(response!=null && response.length>0){
							res=response[0].umpireNamesList;
						}
					 var htmlContent = '';
					 umpireList=[];
						//htmlContent += '<div class="col-md-6 smallTable" id="umpireTableId">' ;
						htmlContent += '<table id = "myTable"><thead><tr>' ;
						htmlContent += '<th>Umpire</th>' ;
						htmlContent += '<th style="text-align:center;">Action</th>' ;
						htmlContent += ' </tr></thead><tbody>' ;
						for(var i=0 ; i <res.length; i++){
							var umpireId = res[i].umpireId;
						htmlContent += '<tr>';
						htmlContent += '<td id="umpireNameId">'+res[i].umpireName+'</td>' ;
						htmlContent += '<td class="alignCenter">' ;
						//htmlContent += '<a href="#" title="Edit"><i class="fa fa-pencil editIcon"></i></a>' ;
						htmlContent += " <a href='javascript:' onclick='deleteUmpire(\""+umpireId+"\",\""+schedulerId+"\")'  title='Delete'><i class='fa fa-trash-o deleteIcon'></i></a>" ;
						htmlContent += ' </td>' ;
						htmlContent += ' </tr>' ;
						
						umpireList.push(res[i].umpireId);
						
						}
						// htmlContent += '<td><div class="selectdiv"><select class="selectboxdiv" id="umpireSelectBox"><option value="0"> Select Umpire</option> <c:forEach var="umpires" items="${boardUmpires}">' ;
						//htmlContent += '<option value="${umpires.umpireId }">${umpires.umpireName}</option></c:forEach> </select><div id="umpireDiv2" class="out"></div> </div> </td> ' ; 
						//htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>'; 
						if(response[0].tournamentSelectOption==1){
							htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getUmpireList(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>';	
						}else{
							htmlContent += '<td><div><input type="text" id="scorerSelectBox" name="scorerSelectBox" onkeyup="getBuddiesAutoComplete(this,\'addMemberautoCompleteDIV\',\'addMemberIDDIV\')" ><div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;"> <ul><li></li></ul>';
						}
						
						htmlContent += " </div><input type='hidden' class='form-control' placeholder='' id='addMemberIDDIV'></div><span id='error' style='color:red'></span>	";
						htmlContent += '<td class="alignCenter"><input type="button" class="btn btn-default blueBtn btn-sm" value="Add" onclick= "addUmpire()">' ;
						htmlContent += ' </td> </tr>' ;
						htmlContent += '</tbody>' ;
						htmlContent += '</table>' ;
						//htmlContent += '</div>' ;
					$("#umpireTableId").html(htmlContent).trigger('create');
					$("#umpireTableId").show();
					 $("select").change(function () {
			            	var str = "";
			                str = $(this).find(":selected").text();
			                $(this).next(".out").text(str);
			            }).trigger('change');
				 },
				 error:function(err){
					 console.log(err);
				 }
			 
			 });
			 
			 
			 
		 }else{
			// $("#error").show();
			 $("#error").html("Already assigned as a umpire");
			// $("#error").fadeOut(3000);
		 }
		
	 }
 }
 
 function getBuddiesAutoComplete(elem,divId,hiddenId){
		
	 	var key=$(elem).val();
	 	var textBoxId=$(elem).attr('id');
	 	$('#error').html('');
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
	 								html+="<ul style='width: 70%'>";
	 								
	 								if(users!= null && users.length >0){
	 									for(var i in users){
	 										if(users[i].fullName != null){
	 											 name=users[i].fullName;
	 										}
	 								
	 								/* html +="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'>";
			                            
			                          
			                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		                          		html +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		                          	}else{
		                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		                          	}
			                      	html += " ";
			                      	html+=""+name+"";
			                          html+='</div>'
			                       	 +'</div>'
			              			+'</li>'; */
			              			
			              			
	 										 html +="<li class='selection-item' onclick=setValueToTextBox('"+name.replace(/ /g,"-")+"','"+textBoxId+"','"+divId+"','"+users[i].id+"','"+hiddenId+"')><div class='media'><div class='media-left'><a>";

	 				                          
		 				                      	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
		 			                          		html +='<img onError="userErrorDefaultImg(this)" src="'+users[i].userImageUrl+'"  class="nav-avatar">';

		 			                          	}else{
		 			                          		html +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
		 			                          	}
		 				                      	html += "</a></div><div class='media-body'><a class='auto-blue'><h4 class='media-heading'> ";
		 				                      	html+=""+name+"<br></a>";
		 				                          if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN"||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
		 				                        		html += '<span class="auto-black">'+users[i].city+'</span>';
		 				                        	}else{
		 				                        		html += '<span class="auto-black">'+users[i].city+','+users[i].state+'</span>'; 
		 				                        	}

		 				              			html+='</h4><div class="headRight" ></div></div></div></li>';
	 									}
	 								}else{
	 									html+="<li>No results found...</li>";
	 								}
	 								
	 								
											html+="</ul>";
	     							$('#'+divId).html(html);
	     							$('#'+divId).show();
	     						
	 							}else{
										html+="<ul style='width: 70%'>";
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
	 		  $("#addMemberIDDIV").val('');
	 		   
	 	   }
	   
	 } 

function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
		//$('#'+textBox).val($(elem).text());
		var name=elem.replace(/-/g," ");
   		$('#'+textBox).val(name);
		$('#'+divId).hide();	
		$('#'+hiddenId).val(userId);	
		$('#error').html('');
		
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
			} */
		
			
			
			
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
			
					
					
					html += "<tr id='trid_"+count+"' onclick='showUmpireList(\""+res[i].tournamentSchedulerId+"\")'>";
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
			
				 $("#umpireTableId").hide();
			
				
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
				 $("#umpireTableId").hide();
			
				
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
		  //if (startDate < endDate){
			  	  var strDate=new Date(startDate);
			  var eDate=new Date(endDate);
			   if (strDate < eDate){
			  $("#filterForm").submit();
				 return true;
			}else{
				displaynotification("TTo date must be greater than from date",2000);
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
   
 <!--Select Box-->
<script>
        $(document).ready(function () {
            $("select").change(function () {
            	alert("Inside select 123");
                var str = "";
                str = $(this).find(":selected").text();
               // alert("str123 ",str)
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>  
</body>
</html>
