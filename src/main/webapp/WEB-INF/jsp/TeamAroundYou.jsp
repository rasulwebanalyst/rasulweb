<!DOCTYPE html>
<html lang="en">
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://example.com/functions" prefix="f" %>
    
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
<script>var ctx="${pageContext.request.contextPath}";</script>
<script type="text/javascript">
var pageNum=40;
</script>
</head>
<body>
<%@ include file="BuddyHeader.jsp" %>
<!-- <div class="profileBanner"> <img src="images/innerBanner.png"> </div> -->
 <%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
        
         <%@ include file="BuddySideMenu.jsp" %>
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox" id="teamAroundYouListDiv">
          
		          <h1 class="">Teams Around You</h1>
          			    <c:choose>
          			    <c:when test="${empty TEAMAroundYou}">
                              		<div style="margin-left: 45px; margin-bottom: 15px;" class="sidebar-list">
                             			No team around you
                             		</div>
                              	</c:when>
                              		<c:otherwise>
          			  <c:forEach items="${TEAMAroundYou}" var="team">
          			  <c:set var="boardName" value="${f:replace(brd.boardName,'[^a-zA-Z0-9 ]', '%20')}" />	
					
                        <div class="buddysBlock col-md-6" onclick="window.location.href='${pageContext.request.contextPath}/${team.boardName}/board/${team.boardId}';">
                				<div class="media">
                                  
                                  <div class="media-left" style="cursor:pointer">
                                      <a href="${pageContext.request.contextPath}/${team.boardName}/board/${team.boardId}"><img src="${team.boardImageURL}" class="teamLogo"></a>
                                  </div>
                                 

                                  <div class="media-body">
                                    <h4 class="media-heading"><a href="${pageContext.request.contextPath}/${team.boardName}/board/${team.boardId}">${team.boardName}</a></h4>
                                    <span class="date">${team.city} </span>
                                    
                                    
                                  </div>
                                </div>
			            </div>
                        </c:forEach>
                        </c:otherwise>
                        </c:choose>

                       
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>

<script type="text/javascript">
$(window).data('ajaxready', true).scroll(function(e) {
    console.log('scroll');
    
	if ($(window).data('ajaxready') == false) {
	//	alert('no ajax');
        return;
    }else{
    	
        if( $(window).scrollTop()+1 >= ($(document).height() - $(window).height())){
        	pageNum=parseInt(pageNum)+parseInt(10);
        	console.log('page -->'+pageNum);
        	getTeamAroundYou(pageNum,10);
        		
        }
    }
    
});

function getTeamAroundYou(pageNum, numberOFRecords){
	 var nodes={
       		startNode : pageNum,
       		endNode : numberOFRecords,
       		category : "Team"
	     };
       var postinfo=JSON.stringify(nodes);
       $.ajax({
   		type : "POST",
   		url :ctx+"/teamAroundYouSearch",
   		headers : {'Name' : HeaderName},
   		dataType: "json",
           contentType: "application/json; charset=utf-8",
           data : postinfo,	
   		success : function(res) {
   			console.log(res);
   				if(res!=null){
   						
   					if(res.length>0){	    						
   						var htm="";
   						for(var i in res){
   						
			   							htm +="<div class='buddysBlock col-md-6' onclick='window.location.href="+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+";'>";
				 			            htm +="<div class='media'>";
				 			            htm +="<div class='media-left' style='cursor:pointer'>";
				 			            htm +="<a href='"+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+"'><img src='"+res[i].boardImageURL+"' class='teamLogo'></a>";
				 			            htm +="</div>";
				 			            htm +="<div class='media-body'>";
				 			            htm +="<h4 class='media-heading'><a href='"+ctx+"/"+res[i].boardName+"/board/"+res[i].boardId+"'>"+res[i].boardName+"</a></h4>";
				 			            htm +="<span class='date'>"+res[i].city+"</span>";
				 			            htm +="</div>";
				 			            htm +="</div>";
				 			            htm +="</div>";				
   						}
   						
   						$('#teamAroundYouListDiv').append(htm);
   						}else{
   							$(window).data('ajaxready', false);
   						}
   					
   					
   					}else{
   						
   					}
   		},
   		error:function(response){
   			console.log("Your request failed due to some service problem"+JSON.stringify(response));
   		},
   	
   	}); 
}

</script>


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
</body>
</html>
