<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>
<link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.min.css" rel="stylesheet">
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
</head>
<body>

<%@ include file="CSCommon.jsp" %>
<%@ include file="BoardHeader.jsp" %>


 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
              <%@ include file="LeaugeManagementSideMenu.jsp" %>

      
                  
            <div class="col-md-10 pull-right rightnone">
      			<div class="col-md-12 whiteBox">
                	<h1 class="">Teams</h1>
                       </div>

                       <c:forEach items="${TeamdetailsResponse}" var="team">
                       <div class="col-md-12 whiteBox" style="font-size: 12px;">
                       <span class="text-danger" style="font-weight: bold; color: #3253a8 !important;">Tournament Name : ${team.tournamentName}</span>
                       <div class="form-group">
                      <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="example">
                      <!-- <thead> 
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
                          <th>Team Name </th>
                          <th>Team Abbreviation </th>
                          <th>Home Ground </th>
                        </tr>
                       </thead>

                        <tbody>
                        <c:forEach items="${team.tournamentList}" var ="teamlist" varStatus="index">
                        	 <tr>
                        	 <td style="text-align: center;">${index.count}</td>
		                          <td><img src="${teamlist.boardUrl}" style="width: 25px;" onerror="imgError(this)"  ><a href="${pageContext.request.contextPath}/${teamlist.teamBoardName}/board/${teamlist.teamBoardId}"> ${teamlist.teamBoardName}</a></td>
		                          <td>${teamlist.boardAbbrivation}</td>
		                          <c:choose>
		                          <c:when test="${teamlist.homeGround eq null || teamlist.homeGround eq ''}">
		                          <td>-</td>
		                          </c:when>
		                          <c:otherwise>
		                          <td>${teamlist.homeGround}</td>
		                          
		                          </c:otherwise>
		                          </c:choose>
		                          
                        	</tr> 
                        	</c:forEach>                      
                        
                        
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
</div><!-- form group -->
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

<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!--Select Box-->
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
