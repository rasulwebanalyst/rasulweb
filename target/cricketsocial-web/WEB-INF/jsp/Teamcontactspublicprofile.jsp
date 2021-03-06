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
<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jspdf.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jspdf.plugin.autotable.js"></script>
 <script type="text/javascript">
 
 var teamrowObj=[];
 var teamnameObj=[];
 
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
        
              <%@ include file="publicLeaugeManagementSideMenu.jsp" %>
	<%@ include file="BoardFanMenu.jsp" %>		
      
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
                	<h1 class="">Team Contacts</h1>
                	<a style="margin-top: -40px;" class="pull-right" href="javascript:getPDF()"><img style="width: 30px; height: 25px;" src='${pageContext.request.contextPath}/images/Pdfdownload.png'></a></div>
                      <!-- </div>  -->
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
                 <c:forEach items="${Teamcontactslist}" var="team">
                       <div class="col-md-12 whiteBox" style="font-size: 12px;">
                       <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Team Name : ${team.boardName}</span>
                       
                      <table class="table" cellspacing="0" width="100%" id="example">
                     <!--  <thead> 
                        <tr>
                          <th>Team Name <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                          <th>Team Abbreviation <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                          <th>Tournament <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                          <th>Home Ground <span class="pull-right shortingArrow"><i class="fa fa-caret-up"></i><i class="fa fa-caret-down"></i></span></th>
                        </tr>
                       </thead> -->
                        <thead> 
                       <!--  <tr>
                          <th>S.No</th>
                          <th>Team Name</th>
                          <th>Team Abbreviation </th>
                          <th>Home Ground </th>
                        </tr> -->
                        
                         <tr>
                        <th>S.No</th>
                          <th>Name </th>
                          <th>Designation </th>
                         <!--  <th>Address </th> -->
                          <th>Phone Number </th>
                          <th>E-mail </th>
                        </tr>
                        
                       </thead>

                        <tbody>
                        <%-- <c:forEach items="${team.tournamentList}" var ="teamlist" varStatus="index">
                        	 <tr>
                        	      <td>${index.count}</td>
		                          <td><a href="${pageContext.request.contextPath}/${teamlist.teamBoardName}/board/${teamlist.teamBoardId}"><img src="${teamlist.boardUrl}" style="width: 25px;" onerror="imgError(this)"  > ${teamlist.teamBoardName}</a></td>
		                          <td>${teamlist.boardAbbrivation}</td>
		                          <td>${teamlist.homeGround}</td>
                        	</tr>                       
                        </c:forEach> --%>
                        
                        <c:forEach items="${team.ownerList}" var ="teamlist" varStatus="index">
                        	 <tr>
                        	 <td style="text-align: center;">${index.count}</td>
		                          <td style="text-align: left;"><img src="${teamlist.userImageUrl}" style="width: 25px;" onerror="imgError(this)"  ><a href="${pageContext.request.contextPath}/buddy/${teamlist.fullName}/${teamlist.userId}"> ${teamlist.fullName}</a></td>
		                          <td style="text-align: left;">
		                          
		                          <c:if test="${teamlist.designation eq 'coowner'}">
		                          co owner
		                          </c:if>
		                          <c:if test="${teamlist.designation ne 'coowner'}">
		                          ${teamlist.designation}
		                          </c:if>
		                          
		                          
		                          </td>
		                         
		                         
		                         <%--  <td style="text-align: left;">
		                          <c:if test="${teamlist.city ne ''}">
		                          ${teamlist.city}
		                          
		                          <c:if test="${teamlist.state ne '' || teamlist.country ne ''}">,</c:if>
		                          
		                          </c:if>
		                          
		                           <c:if test="${teamlist.state ne ''}">
		                          ${teamlist.state}
		                          
		                          <c:if test="${teamlist.country ne ''}">,</c:if>
		                          
		                          </c:if>
		                          ${teamlist.country}
		                          
		                          </td> --%>
		                         
		                         
		                         
		                         
		                          <td>
		                          
		                          <c:if test="${teamlist.phoneNumber eq ''}">
		                          -
		                          </c:if>
		                          <c:if test="${teamlist.phoneNumber ne ''}">
		                          ${teamlist.phoneNumber}
		                          </c:if>
		                          
		                          </td>
		                          <td style="text-align: left;">
		                          <c:if test="${teamlist.emailAddress eq ''}">
		                          -
		                          </c:if>
		                          <c:if test="${teamlist.emailAddress ne ''}">
		                          ${teamlist.emailAddress}
		                          </c:if>
		                          
		                          
		                          </td>
                        	</tr> 
                        	</c:forEach>             
                        
                    </tbody>
                 </table>
                 
            </div>
            </c:forEach>
            
            
             <c:forEach items="${Teamcontactslist}" var="teamprint">
                                    
                         <script type="text/javascript">
                       
	                       teamnameObj.push("${teamprint.boardName}");
	                       
	                       var teamrowsingleObj=[];
                       </script>
                        <c:forEach items="${teamprint.ownerList}" var ="teamlist" varStatus="loop">
                        	
                        	<script type="text/javascript">
                        	
                        	var sno=parseInt("${loop.index}")+1;
                        	
                        	var phno="${teamlist.phoneNumber}";
                        	console.log(phno);
                        	if(phno == 0)
                        		{
                        		phno="-";
                        		}
                        	
                        	teamrowsingleObj.push({
                        		
                        		serialno : sno,
                        		fullName : "${teamlist.fullName}",
                        		designation : "${teamlist.designation}",
                        		phoneNumber : phno,
                        		email : "${teamlist.emailAddress}"
                        		
                        	})
                        	
                        	</script>
                        	
                        	</c:forEach>  
                        	                    
                           <script type="text/javascript">
                           teamrowObj.push(teamrowsingleObj);
                        	</script>                        
                        
                    </tbody>
                 </table>
                 
             </div> 
             </c:forEach> 
            
            
            
            
            
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
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>

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
    <script src="js/bootstrap-datepicker.js"></script>
   
   <!--Gallery-->
   
   
 
   
   
   <script src="js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
				$('.datepicker').datepicker()
				
			});
			
			
		</script>

    <script type="text/javascript">
   
   function getPDF(){
	  /*  alert("Print") */
	  
	  console.log(teamrowObj);
	  console.log(JSON.stringify(teamrowObj));
	  var teamObj=teamrowObj;
	  
	 
	  var dateformat="${PrintDate}";
	  var doc = new jsPDF('p', 'pt','a4');
	    doc.setProperties({
	    	title: 'Cricket Socio',
	    	subject: 'Buddy Score Card',
	    	author: 'Vignesh Ranganathan',
	    	keywords: 'Team Details',
	    	creator: 'Cricket Social'
	    	
	    });
	    
	    
	 // for date
	    doc.setFontSize(10);
	    doc.setFontType("normal");
	    doc.setTextColor(0,0,0);
	    doc.text(485,10,"Printed On ");
	    doc.text(535,10,": "+dateformat);
	    
	    
	    //Header
	    
	    doc.setFontSize(20);
    doc.setFont("helvetica");
    doc.setFontType("bold");
    doc.setTextColor(50,83,168);
    doc.text(220,30,"Team Contacts");
    
    
var leaguename="${BoradInfo.boardName}"
        
        doc.setFontSize(12);
        doc.setFont("helvetica");
        doc.setFontType("normal");
        doc.setTextColor(0,0,0);
        doc.text(10,70,"League Name");
        doc.text(85,70,": "+leaguename);
    
    
    var yHeight=100;
    var Gapdiff=0;
	    for(var i in teamObj)
		  {
		  var teamsingleObj=teamObj[i];
		  var teamname=teamnameObj[i];
			  
			  
		   doc.setFontSize(12);
		    doc.setFont("helvetica");
		    doc.setFontType("bold");
		    doc.setTextColor(50,83,168);
		    doc.text(10,yHeight,"Team Name");
		   /*  doc.setTextColor(0,0,0);  */
		    doc.text(80,yHeight,": "+teamname);
		    
		    
		    
		    var columns = [
		                   {title: "S.No", dataKey: "serialno"},
		                   {title: "Name", dataKey: "fullName"},
		                   {title: "Designation", dataKey: "designation"},
		                   {title: "Phone Number", dataKey: "phoneNumber"},
		                   {title: "E-mail", dataKey: "email"}
		               ];
		  
		    
		    
	 			if(teamsingleObj.length>0)
	 				{
	 					
	 					  doc.autoTable(columns,teamsingleObj, {
	 		 			        theme: 'grid',
	 		 			        startY: parseInt(yHeight)+parseInt(10),
	 		 			        margin: {horizontal: 10},
	 		 			        styles: {overflow: 'linebreak'},
	 		 			        bodyStyles: {valign: 'top'},
	 		 			        alternateRowStyles: {fillColor: [233, 234, 237]},
	 		 			        columnStyles: {email: {columnWidth: 'wrap'}},
	 		 			        headerStyles: {fillColor: [99, 184, 255]}
	 		 			    });
	 					
	 					 
	 					  
	 							  
	 					 /* var yHeight=parseInt(teamsingleObj.length)*20+yHeight+parseInt(82); */
	 					  
	 					 if(parseInt(teamsingleObj.length)*20+yHeight+parseInt(42)>=730)
	 								  {
	 								 Gapdiff=50;
	 								  }else{
	 									 Gapdiff=0;
	 								  }
	 							  
	 							  yHeight=parseInt(teamsingleObj.length)*20+yHeight+parseInt(82);
	 							  
	 					  
	 					  
	 					var pageHeight= parseInt(doc.internal.pageSize.height);
	 					
	 					if (yHeight>=pageHeight)
	 					{
	 						var diff=yHeight-pageHeight;
	 						yHeight=diff+parseInt(42)+Gapdiff;
	 						/* console.log("yHeight :"+yHeight);
	 						console.log("pageHeight :"+pageHeight);
	 						console.log("diff :"+diff);
	 						
	 						console.log("After Resize :"+yHeight) */
	 						if(diff <10)
 							{
 							doc.addPage();
 							}
	 					}  
	 					
	 					
	 					  
	 					
	 				}
		    
		    
		  }
    
    
    
    doc.save('Team contacts.pdf');
   }
   
   </script>
   
   
   
</body>
</html>
