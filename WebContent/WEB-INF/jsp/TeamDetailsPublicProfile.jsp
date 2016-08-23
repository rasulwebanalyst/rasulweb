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
                	<h1 class="">Team Details</h1>
                       
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
                          <th>Team Name</th>
                          <th>Team Abbreviation </th>
                          <th>Tournament </th>
                          <th>Home Ground </th>
                        </tr>
                       </thead>

                        <tbody>
                        <c:forEach items="${TeamdetailsResponse}" var="team">
                        	 <tr>
		                          <td><a href="${pageContext.request.contextPath}/${team.teamBoardName}/board/${team.teamBoardId}"><img src="${team.boardUrl}" style="width: 25px;" onerror="imgError(this)"  > ${team.teamBoardName}</a></td>
		                          <td>${team.boardAbbrivation}</td>
		                          <td>${team.tournamentName}</td>
		                          <td>${team.homeGround}</td>
                        	</tr>                       
                        </c:forEach>
                        
                    </tbody>
                 </table>
                 
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
<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.min.js"></script>

<!--Select Box-->
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable({
		"paging":   false,
        "info":     false,
		"searching": false
				
		});
} );
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

   
   
   
</body>
</html>
