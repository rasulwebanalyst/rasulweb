<!DOCTYPE html>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script>var ctx="${pageContext.request.contextPath}";</script>
<script type="text/javascript">
var pageNum=40;
</script>

</head>
<body>

<div id="mainBody">
<%@ include file="BuddyHeader.jsp" %>
<!-- <div class="profileBanner"> <img src="images/innerBanner.png"> </div> -->
 <%@ include file="UserBanner.jsp" %>
<div class="container" id="bodyContainer">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
       
        
          <%@ include file="BuddySideMenu.jsp" %>
      
      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox" id="boddyAroundYouListDiv">
          
		          <h1 class="">Buddies Around You</h1>
		       <c:forEach items="${BuddyAroundYou}" var="buddy" varStatus="theCount">
          	  <c:if test="${not empty buddy.firstName}">
 
                        <div class="buddysBlock col-md-6">
                				<div class="media">
                                  <a href="${pageContext.request.contextPath}/buddy/${buddy.firstName}/${buddy.userId}">
                                  <div class="media-left">
                                      <img src="${buddy.userImageUrl}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="teamLogo">
                                  </div>
                                  </a>

                                  <div class="media-body">
                                    <a href="${pageContext.request.contextPath}/buddy/${buddy.firstName}/${buddy.userId}">
                                    			<h4 class="media-heading">${buddy.fullName} <%-- ${buddy.lastName} --%></h4>
                                    			
                                     </a>
                                    <!-- <span class="date">Bergen Cricket Club</span> -->
                                    <%-- <c:choose>
                                    	<c:when test="${theCount.count % 2 == 0}">
                                    		 <p>
                                    			<strong>Batting Style :</strong> Right Hand<br>
                                    			<strong>Bowling Style :</strong> Right Arm Fast Bowler<br>
											</p>
                                    	</c:when>
                                    	<c:otherwise>
                                    		<p>
                                    			<strong>Batting Style :</strong>Left hand<br>
                                    			<strong>Bowling Style :</strong> Right Hand Medium Fast<br>
											</p>
                                    	</c:otherwise>
                                    </c:choose> --%>
                                   
                                   
                                    
                                    <span class="date">${buddy.city},${buddy.state}</span>
                                  <%--  <c:choose>
                                        <c:when test="${theCount.count % 2 == 0}">
                                             <p>
                                                <strong>Batting Style :</strong> Right Hand<br>
                                                <strong>Bowling Style :</strong> Right Arm Fast Bowler<br>
                                            </p>
                                        </c:when>
                                        <c:otherwise>
                                            <p>
                                                <strong>Batting Style :</strong>Left hand<br>
                                                <strong>Bowling Style :</strong> Right Hand Medium Fast<br>
                                            </p>
                                        </c:otherwise>
                                    </c:choose> --%>
                                    
                                  </div>
                                </div>
			            </div>
			             
					</c:if>
                   </c:forEach>
                   
                     
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>

<script type="text/javascript">

/* $(function(){
	  $('#mainBody').scroll(function(){
	    var aTop = $('#bodyContainer').height();
	    alert('');
	    if($(this).scrollTop()>=aTop){
	        alert('header just passed.');
	        // instead of alert you can use to show your ad
	        // something like $('#footAd').slideup();
	    }
	  });
	}); */
	
	$(window).data('ajaxready', true).scroll(function(e) {
	    console.log('scroll');
	    
		if ($(window).data('ajaxready') == false) {
		//	alert('no ajax');
	        return;
	    }else{
	    	
	        if( $(window).scrollTop()+1 >= ($(document).height() - $(window).height())){
	        	
	        	console.log('page -->'+pageNum);
	        	/* if(pageNum=='50')
	        		{
	        			$(window).data('ajaxready',false);
	        		} */
	        	//getBoddyAroundYou(pageNum,10);
	        	pageNum=parseInt(pageNum)+parseInt(10);
	        }
	    }
	    
	});
	
	function getBoddyAroundYou(pageNum, numberOFRecords){
		 var nodes={
	        		startNode : pageNum,
	        		endNode : numberOFRecords		      
		     };
	        var postinfo=JSON.stringify(nodes);
	        $.ajax({
	    		type : "POST",
	    		url :ctx+"/buddyAroundYouSearch",
	    		dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data : postinfo,	
	    		success : function(res) {
	    			console.log(res);
	    				if(res!=null){
	    						
	    					if(res.length>0){	    						
	    						var htm="";
	    						for(var i in res){
					    							htm +="<div class='buddysBlock col-md-6'>";
					        						htm +="<div class='media'>";
					        						htm +="<a href='"+ctx+"/buddy/"+res[i].firstName+"/"+res[i].userId+"'>";
					        						htm +="<div class='media-left'>";
					        						htm +="<img src='"+res[i].userImageUrl+"' onError='' class='teamLogo'>";
					        						htm +="  </div>";
					        						htm +="</a>";
					        						htm +="<div class='media-body'>";
					        						htm +="<a href='"+ctx+"/buddy/"+res[i].firstName+"/"+res[i].userId+"'>";
					        						htm +="<h4 class='media-heading'>"+res[i].firstName+"</h4>";
					        						htm +="</a>";
					        						htm +="<span class='date'>"+res[i].city+","+res[i].state+"</span>";
					        						htm +="</div>";
					        						htm +="</div>";
					        						htm +="</div>";
	    						}
	    						
	    						$('#boddyAroundYouListDiv').append(htm);
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
   </div>
</body>
</html>
