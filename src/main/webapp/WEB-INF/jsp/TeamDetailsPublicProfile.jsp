<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
<link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.min.css" rel="stylesheet">
     <!-- Responsive CSS -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<!-- jQuery -->
<!-- <script src="js/jquery.js"></script>
Bootstrap Core JavaScript
<script src="js/bootstrap.min.js"></script> -->


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
        
              <%@ include file="publicLeaugeManagementSideMenu.jsp" %>
	<%@ include file="BoardFanMenu.jsp" %>		
      
                  
            <div class="col-md-10 pull-right rightnone">
      			<!-- <div class="col-md-12 whiteBox">
                	<h1 class="">Teams</h1>
                      </div>  -->
                            			<div class="col-md-12 whiteBox">
                	<!-- <h1 class="">Teams</h1> -->
                	
                	
                	<div class="col-md-10"><h1 class="pageHead noBorder">Teams
                  
                  </h1></div>
                  				<div class="col-md-2 col-sm-12 col-xs-12" style="display: inline-block;">
								    <label style="text-align: center;">Filter</label>
								    <div class="selectdiv" style="height: 25px !important;">
								        <c:choose>
								            <c:when test="${yearListSize eq 0 }">
								                <select class="selectboxdiv" id="centuryYears" style="color: black; font-size: 12px !important; height: 25px !important;">
									            	<option style="color: black; font-size: 12px !important; height: 25px !important;"></option>
									            </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div>
								            </c:when>
								            <c:otherwise>
								                <select name="yearDropDown" class="selectboxdiv" id="centuryYears" onchange="yearWiseteams(this.value)" style="color: black; font-size: 12px !improtant; height: 25px !important;">
			                                        <!-- <option>Years</option> -->
			                                       <c:choose>
			                                        		<c:when test="${defaultload == 'yes'}">
			                                        			 <c:forEach var = "yearsCentury" items="${yearsList}">
			                                        			<option value="${yearsCentury}" style="font-size: 12px; height: 25px !important;">${yearsCentury}</option>	
			                                        			 </c:forEach>
			                                        		</c:when>
			                                        		<c:otherwise>
			                                        			<option value="Years" style="font-size: 12px; height: 25px !important;">Years</option>
			                                        			 <c:forEach var = "yearsCentury" items="${yearsList}">
			                                        				<option value="${yearsCentury}" style="font-size: 12px; height: 25px !important;">${yearsCentury}</option>
			                                        			</c:forEach>
			                                        		</c:otherwise>
			                                        	</c:choose>
								                                       
								                </select>
								                <div class="out" style="font-size: 12px; height: 25px !important; margin: -6px -6px"></div> 
								            </c:otherwise>
								        </c:choose>
								    </div>
								</div>
                       </div>
                       <!-- <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">

                      <thead> 
                        <tr>
                          <th>Team Name</th>
                          <th>Team Abbreviation </th>
                          <th>Tournament</th>
                          <th>Home Ground</th>
                        </tr>
                       </thead>

                        <tbody>
                         <tr>
                          <td>Crescent A Cricket Club</td>
                          <td>Crescent-A</td>
                          <td>Tournament 1</td>
                          <td>Region Park ground</td>
                        </tr>
                        
                         <tr>
                          <td>Franklin Cricket Club</td>
                          <td>Franklin</td>
                          <td>Tournament 2</td>
                          <td>IDPL ground</td>
                        </tr>
                        
                         <tr>
                          <td>Freedom Cricket Club</td>
                          <td>Freedom</td>
                          <td>Tournament 1</td>
                          <td>Region Park ground</td>
                        </tr>
                        
                         <tr>
                          <td>Gymkhana</td>
                          <td>Gymkhana</td>
                          <td>Tournament 2</td>
                          <td>IDPL ground</td>
                        </tr>
                        
                         <tr>
                          <td>Crescent A Cricket Club</td>
                          <td>Crescent-A</td>
                          <td>Tournament 1</td>
                          <td>Region Park ground</td>
                        </tr>
                        
                         <tr>
                          <td>Franklin Cricket Club</td>
                          <td>Franklin</td>
                          <td>Tournament 2</td>
                          <td>IDPL ground</td>
                        </tr>
                        
                         <tr>
                          <td>Freedom Cricket Club</td>
                          <td>Freedom</td>
                          <td>Tournament 1</td>
                          <td>Region Park ground</td>
                        </tr>
                        
                         <tr>
                          <td>Gymkhana</td>
                          <td>Gymkhana</td>
                          <td>Tournament 2</td>
                          <td>IDPL ground</td>
                        </tr>
                    </tbody>
                 </table> -->
                 
                 
                        <form action="${pageContext.request.contextPath}/teamslistpublic" id="teamsSearchForm" name="teamsSearchForm" method="post" onsubmit="return searchValiation()">
                  <div class="col-md-12">
      		<div class="col-md-12 whiteBox">
                  
                  <div class="col-md-12 noPadding">
                     	
                                              
                        	<input type="hidden" class="form-control" placeholder="" id="SelectTournMent" name="tournamentId" value="${teamSearch.tournamentId}"> 
                            <input type="hidden" name="boardId"  id="searchboardId" value="${boardId}"> 
                      
                        <div class="col-md-3 noLeftPad">
                        <label for="">Tournament</label> <input type="text" class="form-control" placeholder="" name="tournmentName" id="tournmentInField" onkeyup="tournmentSearch(this)" value="${teamSearch.tournmentName}"> 
                        	                      	
                        	<div class="autoComplete" style="display: none;" id="tournmentSearchDIV">
		                		<ul id="tournmentSearchResultDIV" style="width: 95%;">                    	
		                   		 </ul>
                			</div>
                        </div>
                        
                        
                        
                        <div class="col-md-3">
                          
                     	</div>
                        
                        <div class="col-md-4">
                      
                     	</div>
                        
                        
                        
                        
                        <div class="col-md-2">
                        <button type="submit" class="btn btn-default dBtn GSfbtn pull-right">Submit</button>
                     	</div>
                       
                     </div>
                 
                 </div>
                 </div> 
                   </form>
                 
                 
                 
                 
                 <div id="Showteamdetails">
                 
                 <c:choose>
                    <c:when test="${empty TeamdetailsResponse}">
                    
                    <span id="errorSpan" class="noContentDivRed" style="margin-left: 10px;">No Results</span>
                    </c:when>
                    <c:otherwise>
                 
                 
                 
                 <c:forEach items="${TeamdetailsResponse}" var="team">
                       <div class="col-md-12 whiteBox" style="font-size: 12px;">
                       <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : ${team.tournamentName}</span>
                       <div class="form-group">
                       
                      <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="example">
                     <!--  <thead> 
                        <tr>
                          <th>Team Name <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                          <th>Team Abbreviation <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                          <th>Tournament <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                          <th>Home Ground <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                        </tr>
                       </thead> -->
                        <thead> 
                        <tr>
                          <th style="text-align: center;">S.No</th>
                          <th>Team Name</th>
                          <th>Team Abbreviation </th>
                          <th>Home Ground </th>
                        </tr>
                       </thead>

                        <tbody>
                        <c:forEach items="${team.tournamentList}" var ="teamlist" varStatus="index">
                        	 <tr>
                        	      <td style="text-align: center;">${index.count}</td>
		                          <td style="text-align: left;"><a href="${pageContext.request.contextPath}/${teamlist.teamBoardName}/board/${teamlist.teamBoardId}"><img src="${teamlist.boardUrl}" style="width: 25px;" onerror="imgError(this)"  > ${teamlist.teamBoardName}</a></td>
		                          <td style="text-align: left;">${teamlist.boardAbbrivation}</td>
		                         <%--  <td>${teamlist.homeGround}</td> --%>
		                         
		                         <c:choose>
		                          <c:when test="${teamlist.homeGround eq null || teamlist.homeGround eq ''}">
		                          <td>-</td>
		                          </c:when>
		                          <c:otherwise>
		                          <td style="text-align: left;">${teamlist.homeGround}</td>
		                          
		                          </c:otherwise>
		                          </c:choose>
		                         
                        	</tr>                       
                        </c:forEach>
                        
                    </tbody>
                 </table>
                 </div>
            </div>
            </c:forEach>
            
            </c:otherwise>
                    
                    
                    
                    </c:choose>
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
  <!--Data Table-->   
<%-- <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>
 --%>
<!--Select Box-->
<script type="text/javascript">
/* $(document).ready(function() {
    $('#example').DataTable({
		"paging":   false,
        "info":     false,
		"searching": false
				
		});
} ); */
</script>


<script>
        $(document).ready(function () {
            $("select").change(function () {
                var str = "";
                str = $(this).find(":selected").text();
                $(this).next(".out").text(str);
            }).trigger('change');
        });
    </script>
<!--File Upload-->
<script>
        $(document).ready(function () {
			$("#upload_link").on('click', function(e){
				e.preventDefault();
				$("#upload:hidden").trigger('click');
			});
		});
   </script>
	<script>
        $(document).ready(function () {
			$('.collapse').on('shown.bs.collapse', function(){
			$(this).parent().find(".fa-plus-circle").removeClass("fa-plus-circle").addClass("fa-minus-circle");
			}).on('hidden.bs.collapse', function(){
			$(this).parent().find(".fa-minus-circle").removeClass("fa-minus-circle").addClass("fa-plus-circle");
			});
		});
   </script>
   
         <!--Date picker-->
    <!-- <script src="js/bootstrap-datepicker.js"></script> -->
   
   <!--Gallery-->
   
   
 
   
   
  <!--  <script src="js/jquery.colorbox.js"></script> -->
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
				$('.datepicker').datepicker()
				
			});
			
			
		</script>
<script type="text/javascript">

var i=0;
function yearWiseteams(val) {
		if(i==0)
		 {
		 i=1;
		 return false;
		 }
		
			
			var year = {
					boardId : "${boardId}",
					filterByYear : val,
					tournamentId : "",
				
			}
			
			console.log(year);
			 $.ajax({

				type : "Post",
				url : "${pageContext.request.contextPath}/yearWiseTeamdetails",
				headers : {'Name' : HeaderName},
				data : JSON.stringify(year),
				contentType : "application/json",
				success : function(res) {
					
					var htm="";
					
					if(res !=null)
						{
						if(res.length > 0)
							{
							for(var i in res)
								{
								
								
								htm+="<div class='col-md-12 whiteBox' style='font-size: 12px;'>";
								htm+="<span class='text-danger' style='font-weight: bold; color: #3253a8 !important;'>Tournament Name : "+res[i].tournamentName+"</span>";
								htm+="<table class='table table-striped table-bordered' cellspacing='0' width='100%' id='example'>";
								htm+="<thead><tr><th style='text-align: center;'>S.No</th><th>Team Name </th><th>Team Abbreviation </th><th>Home Ground </th></tr></thead><tbody>";
								
								
								
								
								var tlist=res[i].tournamentList
	                        	for(var j in tlist)
	                        		{
	                        		var index=parseInt(j)+1;
	                        		htm+="<tr>";
	                        		htm+="<td style='text-align: center;'>"+index+"</td>";
	                        		htm+="<td style='text-align: left;'><img src="+tlist[j].boardUrl+" style='width: 25px;' onerror='imgError(this)''  ><a href='${pageContext.request.contextPath}/"+tlist[j].teamBoardName+"/board/"+tlist[j].teamBoardId+"'> "+tlist[j].teamBoardName+"</a></td>";
	                        		htm+="<td style='text-align: left;'>"+tlist[j].boardAbbrivation+"</td>";
	                        		if(tlist[j].homeGround == null || tlist[j].homeGround == "")
	                        			{
	                        			htm+="<td>-</td>";	
	                        			}else{
	                        				htm+="<td style='text-align: left;'>"+tlist[j].homeGround+"</td>";
	                        			}
	                        		
	                        		htm+="</tr>";
	                        		}
								htm+="</tbody></table></div>";
								}
							}else
								{
								htm+="<span id='errorSpan' class='noContentDivRed' style='margin-left: 10px;'>No Results</span>";
								}
						}else
							{
							htm+="<span id='errorSpan' class='noContentDivRed' style='margin-left: 10px;'>No Results</span>";
							}
					
					
					$("#Showteamdetails").html(htm).trigger("create");
					$("#SelectTournMent").val("");
					$("#tournmentInField").val("");
							
			},
			error : function(err) {
				console.log(err);
			}
			}) 
		console.log(" Matches years :" + val);
		}
		


</script>
   
   <script type="text/javascript">
   
   
   function tournmentSearch(name)
   {
	   var searchkey=name.value;
	   if(searchkey.length>1){
		   var   boardId=  "${boardId}";
		 var search={
				   tournamentName : searchkey,
				   boardId : boardId 
	            };
		   var postinfo=JSON.stringify(search);
		   $.ajax({
	    		type : "POST",
	    		url :ctx+"/searchtournamentInLeaug",
	    		headers : {'Name' : HeaderName},
	    		dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data :postinfo,
	    		success : function(res) {
	    			var html="";	
	    			console.log('tornment value------> '+res);
	    			console.log(res);
	    			if(res.length>0)
	    				{
	    				
	    				
	    					for(var i in res)
	    					{
	    						html +="<li onclick=selectTournmentVal('"+res[i].tournamentId+"',this) >"+res[i].tournamentName+"</li>";
	    					}
	    					
	    				}else{
	    					//displaynotification('No responses yet',3000);
	    					htm +="<li>No Record are found</li>";
	    				}
	    			
	    			$('#tournmentSearchResultDIV').html(html);
	    			$('#tournmentSearchDIV').show();
	    		},
	    		error:function(response){
	    			console.log("Your request failed due to some service problem"+JSON.stringify(response));
	    		},
	    	
	    	}); 
		 
	   }else{
		   $('#SelectTournMent').val('');
	   }
   }
   
   
   
   function selectTournmentVal(id, ele)
   {
	   var html='';
	   $('#tournmentSearchDIV').hide();	
		 $('#SelectTournMent').val(id);
		 $('#tournmentInField').val($(ele).text());
		 $('#tournmentSearchResultDIV').html(html);
   }
   
   
   function searchValiation()
   {
  	 var tournment= $('#SelectTournMent').val();
  	 if(tournment!='')
  		 {
  		 		return true;
  		 }else{
  			 displaynotification('Select Tournament',3000);
  			 return false;
  		 }
  	 
   }
   
   
  /*  $(document).ready(function(){
	   $('#loading').hide();
   }) */
   
   </script>
   
</body>
</html>
