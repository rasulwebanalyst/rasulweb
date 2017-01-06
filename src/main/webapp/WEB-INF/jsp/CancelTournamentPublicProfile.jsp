<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

 <%@ include file="BoardHeader.jsp" %>
<%@ include file="CSCommon.jsp" %>

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="publicLeaugeManagementSideMenu.jsp" %>

      <div id="cancelReasonPopup" class="popupDiv" style="display: none;">

           <div class="box">
                <span class="head">Reason</span>
                <span class="close_btn"> <i onclick="cancelFunction()" class="fa fa-close"></i> </span>

                <div class="popupContentDiv">
                
                		
                        	<textarea class="form-control" id="reasonId" rows="5" placeholder=""></textarea>
                          
                          <div class="centerbtns">
                          
                           <button type="button" class="btn btn-default blueBtn" onclick="okFunction()">OK</button>
                          <button type="button" class="btn btn-default blueBtn" onclick="cancelFunction()">Cancel</button>
                          
                          
                          </div>
                       
                </div>
            </div>
 
 	</div>
      
      
             
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
                       
                       <h1 class="">Cancel & Edit Tournament</h1>
                       
                      <div class="col-md-12 noPadding" style="font-size: 12px;">
                      <c:choose>
                      <c:when test="${empty tournamentOfTheBoard}">
                      <div id="tournamentList" class="Cantourname">
                          	<p class="noContentDivRed">No Tournaments Available</p>
                             <!-- <button type="submit" class="btn btn-danger pull-right">Cancel</button> -->
                          </div>
                      </c:when>
                      <c:otherwise>
                       <c:forEach var="tournaments" items="${tournamentOfTheBoard}">
                      <div id="tournamentList" class="Cantourname">
                          	<p>${tournaments.tournamentName}</p>
                             <button type="submit" class="btn btn-danger pull-right" onclick="cancelGameFunction('${tournaments.tournamentId}')">Cancel</button>
                             
                              <c:choose>
                             <c:when test="${tournaments.gametypeinTour eq 'KnockOut'}">
                             
                             <button type="submit" class="btn btn-danger pull-right" style="margin-right: 12px;" onclick="EditGameFunction('${tournaments.tournamentId}','no')">Edit</button>
                             
                             </c:when>
                             <c:otherwise>
                             
                             <button type="submit" class="btn btn-danger pull-right" style="margin-right: 12px;" onclick="EditGameFunction('${tournaments.tournamentId}','yes')">Edit</button>
                             </c:otherwise>
                             </c:choose>
                             
                          </div>
                      
                      </c:forEach>
                      </c:otherwise>
                      
                      
                      </c:choose>
                      
                     <%-- <c:choose>
                        <c:when test="${empty tournamentOfTheBoard}">
                        
                        </c:when>
                        <c:otherwise>
                         <div class="form-group col-md-12 centerbtns">
                         			 <button type="button" id="loadButton" class="btn btn-default dBtn pull-right" onclick="loadMoreGround()">Load More</button>
                       			</div> 
                        </c:otherwise>
                        
                        </c:choose>    --%>
                      
                          	
                          
                          <!-- <div class="Cantourname">
                          	<p>Tournament Name 1</p>
                             <button type="submit" class="btn btn-danger  pull-right">Cancel</button>
                          </div>
                          
                          <div class="Cantourname">
                          	<p>Tournament Name 1</p>
                             <button type="submit" class="btn btn-danger  pull-right">Cancel</button>
                          </div>
                          
                          <div class="Cantourname">
                          	<p>Tournament Name 1</p>
                             <button type="submit" class="btn btn-danger  pull-right">Cancel</button>
                          </div>
                          
                          <div class="Cantourname">
                          	<p>Tournament Name 1</p>
                             <button type="submit" class="btn btn-danger  pull-right">Cancel</button>
                          </div>  -->                         

                   
                
                 </div>
                 
            </div>
            </div>
                    
                    
              <input type="hidden" id="hiddenTournamentId">      
                    
<%--                  	<input type="hidden" id="hiddenToken" value="${hiddenToken}">   
 --%>            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@include file = "Footer.jsp" %>

   
   <script>
   
   
   function EditGameFunction(id,type)
   {

var boardId = "${boardId}";
if(type == 'no')
   {
   displaynotification("Already in KnockOut match",2000);   
   }else
	   {
	  window.location.href="${pageContext.request.contextPath}/editTrophypublic/boardId/"+boardId+"/tournamentId/"+id; 
	   }

   }
   
   
   function cancelGameFunction(id){
	   document.getElementById("hiddenTournamentId").value = id;
	   $("#cancelReasonPopup").show();
   }
   
   function okFunction(){
	   var boardId = "${boardId}";
	   var reason = $("#reasonId").val();
	   if(reason != ''){
	   
	   $("#cancelReasonPopup").hide();
	   
	   var tournamentId = $("#hiddenTournamentId").val();
	  
	   
	   console.log("tournament =========="+tournamentId + " reason to cancel ============ "+reason);
	   
	   var bean = {
			   tournamentId : tournamentId,
			   scheduleCancelReason : reason,
	   }
	   
	   $.ajax({
		   type:"post",
			url:"${pageContext.request.contextPath}/cancelTournamentFinal",
			data:JSON.stringify(bean),
			contentType :"application/json",
			success : function(res){
				if(res == "success"){
					 $("#reasonId").val("");
				displaynotification("Tournament Cancelled successfully",2000);
				window.location.href = "${pageContext.request.contextPath}/CancelTournament/boardId/"+boardId;

				}
				else{
					 $("#reasonId").val("");
					displaynotification("This tournament has inprogress matches, so you can't able to cancel this tournament",2000);
					//window.location.href = "${pageContext.request.contextPath}/CancelTournament/boardId/"+boardId;
				}
			},
			error : function(err){
				console.log("err");
			}
		   
	   })
	   
	   }else{
		   displaynotification("Please give reason to cancel tournament",1000);
	   } 
	   
	
   }
   
   function cancelFunction(){
	   
	  
	   $("#cancelReasonPopup").hide();
   }
   
   
   function loadMoreTournaments(){
	   var boardId = "${boardId}";
	  
       var token = $("#hiddenToken").val();
	   
	   var tournament = {
			   createdBy : boardId,
			   tokenId : token,
			   paginationFlag : "Yes",
			   
	   }
	   $.ajax({
		   type:"post",
		   url:"${pageContext.request.contextPath}/loadMoreTournaments",
		   data:JSON.stringify(tournament),
		   contentType:"application/json",
		   success:function(res){
			   
			   if(res.length != 0 ){
			  
				   var html = '';
				   
				   for(var i=0; i<res.length; i++){
					   
					   var tokenId = res[i].tokenId;
					   
					   document.getElementById("hiddenToken").value = tokenId;
					   
					   html += '<div id="tournamentList" class="Cantourname">';
					   html += '<p>'+res[i].tournamentName+'</p>';
					   html += "<button type='submit' class='btn btn-danger pull-right' onclick='cancelGameFunction(\""+res[i].tournamentId+"\")'>Cancel</button>";
					   html += '</div>';
					
						$("#tournamentList").html(htmlContent).trigger('create');
				   }
				  
				   
			   }else{
				   
				   html += '<div id="tournamentList" class="Cantourname">';
				   html += '<p style="color:red">No Tournaments Available</p>';
				   html += '</div>';
				   
				   document.getElementById("hiddenToken").value = "";
				   $("#loadButton").hide();
				   
					$("#tournamentList").html(htmlContent).trigger('create');
			   }
			   
		   },
		   error : function(err){
			   console.log(err);
		   }
		   });
	   
   }
   
   </script>
   
</body>
</html>
