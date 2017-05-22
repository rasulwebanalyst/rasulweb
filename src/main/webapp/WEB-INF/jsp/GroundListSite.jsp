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
        <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">   
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
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


<div id="ScoreCardPopup" class="modal" role="dialog" style="display: none;">
  <div class="modal-dialog">

    <div class="modal-content">
     <!--  <div class="modal-header">
        <button type="button" class="close" onclick="RoasterPopup()" data-dismiss="modal">&times;</button>
        </div> -->
        
      <div class="modal-body">
        
        <div id="RoasterPopupText">
        <p style="text-align: center; id="RoasterPopupText">You have signed in as a limited access user, Kindly signup/login with cricketsocial for full access.</p>
        <ol type="number" class="roa-ol">
        	
        </ol>
        </div>
      </div>
      <div class="modal-footer action">
      <button type="button" onclick="PleaseLoginSuccess()" class="btn btn-default ok">OK</button>
      <button type="button" onclick="ScoreCardPopuphide()" class="btn btn-default ok">cancel</button>
       </div>
    </div>

  </div>
</div>  



<%--  <%@ include file="BoardHeader.jsp" %> --%>
<%@ include file="BoardHeaderSession.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        <%@ include file="publicLeagueManagementSideMenusite.jsp" %>

      <div class="col-md-10">
      		<div class="col-md-12 whiteBox" style="font-size: 12px;">
		          <%-- <h1 class="">Ground List <a href="${pageContext.request.contextPath}/CreateGround/boardId/${boardId}" class="btn btn-default dBtn pull-right">Create Ground</a></h1> --%>
                       <h1 class="">Ground List 
                      
                       
                       </h1>
                       <div class="form-group">
                  <c:choose>
                  <c:when test="${groundListSize == 0 }">
                  <table id="tableId">
                  <thead>
                	<tr>
                	<th style="text-align: center !important;">S.No</th>
                    	<th class="alignCenter">Ground Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th class="alignCenter">Action</th>
                       <!--  <th class="alignCenter">Ground Info</th> -->
                    </tr>
                  </thead>
      
                  
                 </table>
                   <span class="noContentDivRed">No Grounds Available now</span>
                  
                  </c:when>
                  <c:otherwise>
                  
                  
                  <table id="tableId">
            	<thead>
                	<tr>
                	<th style="text-align: center !important;">S.No</th>
                    	<th class="alignCenter">Ground Name</th>
                        <th>Address</th>
                        <th>City</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach var="grndList" items="${groundList}" varStatus="index">
                    <tr>
                        <td style="text-align: center !important;">${index.count}</td>
                    	<td class="alignCenter"><a href="javascript:void(0);" onclick="PleaseLogin()">${grndList.groundName}</a></td>
                    	
                    	<c:choose>
                                            <c:when test="${grndList.address1 eq null || grndList.address1 eq ''}">
                                            <td>-</td>
                                            </c:when>
                                            <c:otherwise>
                                           <td>${grndList.address1}</td>
                                            </c:otherwise>
                                            </c:choose>
                    	
                    	
                        <td>${grndList.city}</td>
                        
                        
                    </tr>
                    </c:forEach>
                </tbody>
                
            </table>
            </div>
            </c:otherwise> 
                 </c:choose> 
                  
                   
                  
                </div>
            
          	
          </div>    
      </div>
          
         
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
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
   
   <!--Gallery-->
   
   <script src="js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>

<script>

function editGround(id){
//	alert(id);
	var boardId = "${boardId}";
	window.location.href = "${pageContext.request.contextPath}/CoordinatorEditGround/groundId/"+id+"/boardId/"+boardId;
}

function deleteGround(id){
	var boardId = "${boardId}";
		   var groundBean = {
				   groundId : id,
		   }
		   $.ajax({
			 type:"post",
			 url:"${pageContext.request.contextPath}/deleteGround",
			 headers : {'Name' : HeaderName},
			 data:JSON.stringify(groundBean),
			 contentType:"application/json",
			 success:function(res){
				// alert(res);
				 window.location.href = "${pageContext.request.contextPath}/ground-list/"+boardId;

			 },
			 error:function(err){
				// alert(err);
			 }
			   
		   })
	   
}

function loadMoreGround(){
	   var boardId = "${boardId}";
	   var token = $("#hiddenToken").val();
	   
	   var ground = {
			   boardId : boardId,
			   tokenId : token,
			   paginationFlag : "Yes",
			   
	   }
	   $.ajax({
		   type:"post",
		   url:"${pageContext.request.contextPath}/loadMoreGrounds",
		   headers : {'Name' : HeaderName},
		   data:JSON.stringify(ground),
		   contentType:"application/json",
		   success:function(res){
			   
			   if(res.length != 0 ){
		 
				
				   
					var	htmlContent = '';
					htmlContent += '<div id="tableId" class="form-group col-md-12 noPadding"><table><thead><tr>';	
					htmlContent += '<table>';
					htmlContent += '<thead>';
					htmlContent += '<tr>';
					htmlContent += '<th class="alignCenter">Ground Name</th>';
					htmlContent += '<th>Address</th>';
					htmlContent += '<th>City</th>';
					htmlContent += '<th class="alignCenter">Action</th>';
					htmlContent += '</tr>';
					htmlContent += '</thead>';
					htmlContent += '<tbody>';
					for(var i=0; i<res.length; i++){
						
						   var tokenId = res[i].tokenId;
						   
						   document.getElementById("hiddenToken").value = tokenId;
						
						var umpireId = res[i].groundId;
						var boardId = res[i].boardId;
						
						htmlContent += '<tr>';
						htmlContent += '<td>'+res[i].groundName+'</td>';
						htmlContent += '<td>'+res[i].address1+'</td>';
						htmlContent += '<td>'+res[i].city+'</td>';
						htmlContent += "<td class='alignCenter'><a href='#' title='Edit' ><i onclick='editGround(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-pencil editIcon'></i></a><a href='#' title='Delete' ><i onclick='deleteGround(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-trash-o deleteIcon'></i></a>";
						htmlContent += '</td>';
						htmlContent += '</tr>';
					}
					htmlContent += '</tbody>';	
					htmlContent += '</table>';	
					htmlContent += '</div>';	
					$("#tableId").html(htmlContent).trigger('create');
					
					}else{
					
						var	htmlContent = '';
						htmlContent += '<div id="tableId" class="form-group col-md-12 noPadding"><table><thead><tr>';	
						htmlContent += '<table>';
						htmlContent += '<thead>';
						htmlContent += '<tr>';
						htmlContent += '<th class="alignCenter">Ground Name</th>';
						htmlContent += '<th>Address</th>';
						htmlContent += '<th>City</th>';
						htmlContent += '<th class="alignCenter">Action</th>';
						htmlContent += '</tr>';
						htmlContent += '</thead>';
						htmlContent += '</table>';
						htmlContent += '<span class="noContentDivRed">No more ground available</span>';
						
						  document.getElementById("hiddenToken").value = "";
						$("#loadButton").hide();
						  
						$("#tableId").html(htmlContent).trigger('create');
						
					}
			   
			   
			   
		   },
		   error : function(err){
			   console.log(err);
		   }
	   })
	   
	   
}




function PleaseLogin()
{
	$("#ScoreCardPopup").show();
}
function ScoreCardPopuphide()
{
	$("#ScoreCardPopup").hide();
}
function PleaseLoginSuccess()
{
	window.location.href="${pageContext.request.contextPath}/";
}




</script>
   
   
   
</body>
</html>
