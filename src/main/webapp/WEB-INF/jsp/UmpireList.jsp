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

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/css/jquery.realperson.css" rel="stylesheet">
     
     
     <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">

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

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
       
  <%@ include file="LeaugeManagementSideMenu.jsp" %>
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox" style="font-size: 12px;">
		          <h1 class="">Umpire List  <button type="submit" class="btn btn-default dBtn pull-right" onclick="createUmpireFunction()">Create Umpire</button></h1>
                  
                  
                  <div  class="form-group col-md-12 noPadding">
                  <c:choose>
                  <c:when test="${BoardUmpireListSize == 0 }">
                  <table id="tableId">
                                    	<thead>
                                        	<tr>
                                        	<th style="text-align: center !important;">S.No</th>
                                        	<th>Name</th>
                                            <th>Rating</th>
                                            <th>Address</th>
                                           <!--  <th>Home Phone</th>
                                            <th>Work Phone</th> -->
                                            <th>Cell Phone</th>
                                            <th>E-mail</th>
                                            <th class="tdBtns">Action</th>
                                            
                                            </tr>
                                            
                                           </thead>
                                           <tbody>
                                           
                                           </tbody>
                                           </table>
                                           <span class="noContentDivRed">No Umpires Available Now</span>
                  </c:when>
                  <c:otherwise>
                  
                  <table id="tableId">
                                    	<thead>
                                        	<tr>
                                        	<th style="text-align: center !important;">S.No</th>
                                        	<th>Name</th>
                                            <th>Rating</th>
                                            <th>Address</th>
                                            <!-- <th>Home Phone</th>
                                            <th>Work Phone</th> -->
                                            <th>Cell Phone</th>
                                            <th>E-mail</th>
                                            <th class="tdBtns">Action</th>
                                            
                                            </tr>
                                            
                                           </thead>
                                           <tbody>
                                          <c:forEach var="brdUmpire" items="${BoardUmpireList}" varStatus="index">
                                           <tr>
                                           <td style="text-align: center !important;">${index.count}</td>
                                           	<td><a href="${pageContext.request.contextPath}/buddy/${brdUmpire.umpireName}/${brdUmpire.umpireId}">${brdUmpire.umpireName}</a></td>
                                            <td>
                                                <div class="tdStars">
                                                   <i class="fa fa-star"></i>
                                                   <i class="fa fa-star"></i>
                                                   <i class="fa fa-star"></i>
                                                   <i class="fa fa-star"></i>
                                                   <i class="fa fa-star"></i>
                                                </div>
                                            </td>
                                            <td>${brdUmpire.addressLine1} ${brdUmpire.addressLine2} ${brdUmpire.city} ${brdUmpire.state} ${brdUmpie.country}</td>
                                            
                                            <%-- <c:choose>
                                            <c:when test="${brdUmpire.homePhone eq null || brdUmpire.homePhone eq ''}">
                                            <td>-</td>
                                            </c:when>
                                            <c:otherwise>
                                            <td>${brdUmpire.homePhone}</td>
                                            </c:otherwise>
                                            </c:choose>
                                            
                                            <c:choose>
                                            <c:when test="${brdUmpire.workPhone eq null || brdUmpire.workPhone eq ''}">
                                            <td>-</td>
                                            </c:when>
                                            <c:otherwise>
                                           <td>${brdUmpire.workPhone}</td>
                                            </c:otherwise>
                                            </c:choose> --%>
                                            
                                            
                                            
                                            <td>${brdUmpire.cellPhone}</td>
                                            <td>${brdUmpire.emailId}</td>
                                            <td class="alignCenter">
                                               
                                                 <a href="#" title="Edit" ><i onclick="editUmpireList('${brdUmpire.umpireId}','${brdUmpire.boardId}')" class="fa fa-pencil editIcon"></i></a>
                                                <a href="#" title="Delete" ><i onclick="deleteUmpireList('${brdUmpire.umpireId}','${brdUmpire.boardId}')" class="fa fa-trash-o deleteIcon"></i></a>
                                                
                                                
                                            </td>
                                            </tr>
                                            
                                           
                                           	
                                            
                                            
                                            
                                            </c:forEach>
                                             
                                             
                                            
                                           </tbody> 
                                           
                                          
                                    </table>
                  
                  
                  </c:otherwise>
                  </c:choose>
                                       	
                                        
                                 <%-- <c:choose>
                        <c:when test="${BoardUmpireListSize == 0 }">
                        
                        </c:when>
                        <c:otherwise>
                      <div class="pull-right" style="margin-top: 25px;margin-bottom: 10px;">
                         			
<!--                        			 <button type="button" id="loadButtonPrev" class="btn btn-default blueBtn" onclick="loadMoreUmpire('Previous')">Previous</button>
 -->                       			  <button type="button" id="loadButtonNext" class="btn btn-default dBtn btn" onclick="loadMoreUmpire('Next')">Next</button>
                       			</div> 
                        </c:otherwise>
                        
                        </c:choose>    
                                  --%>
                       
                        	
                            </div>
            
          <%-- 	<input type="hidden" id="hiddenToken" value="${hiddenToken}"> --%>
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->
</div>
</div>
</section>
<%@ include file ="Footer.jsp" %>

   <script>
   function editUmpireList(id,boardId){
	   //alert(id);
	   window.location.href = "${pageContext.request.contextPath}/EditUmpirePage/umpireId/"+id+"/boardId/"+boardId;
   }
   
   function deleteUmpireList(id,boardId){
	   var umpire = {
			   umpireId : id,
			   boardId:boardId,
	   }
	   $.ajax({
		 type:"post",
		 url:"${pageContext.request.contextPath}/deleteUmpireList",
		 data:JSON.stringify(umpire),
		 contentType:"application/json",
		 success:function(res){
			 //alert(res);
			 window.location.href = "${pageContext.request.contextPath}/UmpireList/boardId/"+boardId;
			 
			/*  if(res.length != 0 ){
			var	htmlContent = '';
			htmlContent += '<div id="tableId" class="form-group col-md-12 noPadding"><table><thead><tr>';	
			htmlContent += '<table>';
			htmlContent += '<thead>';
			htmlContent += '<tr>';
			htmlContent += '<th>Name</th>';
			htmlContent += '<th>Rating</th>';
			htmlContent += '<th>Address</th>';
			htmlContent += '<th>Home Phone</th>';
			htmlContent += '<th>Work Phone</th>';
			htmlContent += '<th>Cell Phone</th>';
			htmlContent += '<th>E-mail</th>';
			htmlContent += '<th class="tdBtns">Action</th>';
			htmlContent += '</tr>';
			htmlContent += '</thead>';
			htmlContent += '</tbody>';
			for(var i=0; i<res.length; i++){
				var umpireId = res[i].umpireId;
				var boardId = res[i].boardId;
				htmlContent += '<tr>';
				htmlContent += '<td>'+res[i].umpireName+'</td>';
				htmlContent += '<td>'+res[i].umpireName+'</td>';
				htmlContent += '<td>'+res[i].addressLine1+' '+res[i].addressLine2+' '+res[i].city+' '+res[i].state+' '+res[i].country+'</td>';
				htmlContent += '<td>'+res[i].homePhone+'</td>';
				htmlContent += '<td>'+res[i].workPhone+'</td>';
				htmlContent += '<td>'+res[i].cellPhone+'</td>';
				htmlContent += '<td>'+res[i].emailId+'</td>';
				htmlContent += "<td class='alignCenter'><a href='#' title='Edit' ><i onclick='editUmpireList(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-pencil editIcon'></i></a><a href='#' title='Delete' ><i onclick='deleteUmpireId(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-trash-o deleteIcon'></i></a>";
				htmlContent += '</td>';
				htmlContent += '</tr>';
			}
			htmlContent += '</tbody>';	
			htmlContent += '</table>';	
			htmlContent += '</div>';	
			$("#tableId").html(htmlContent).trigger('create');
			
			} 
			 */
				
			
		 },
		 error:function(err){
			 alert(err);
		 }
		   
	   })
   }
   
   
   function createUmpireFunction(){
	   var boardId = "${boardId}";
	   window.location.href = "${pageContext.request.contextPath}/CreateUmpire/boardId/"+boardId;
   }
   
   function loadMoreUmpire(flag){
	   
		$("#loadButtonPrevious").removeClass('disabled');
		$("#loadButtonNext").removeClass('disabled');
	   
	   var boardId = "${boardId}";
	   var token = $("#hiddenToken").val();
	   
	   var boardUmpire = {
			   boardId : boardId,
			   tokenId : token,
			   paginationFlag : "Yes",
			   previousNextFlag : flag,
			   
	   }
	   $.ajax({
		   type:"post",
		   url:"${pageContext.request.contextPath}/loadMoreUmpires",
		   data:JSON.stringify(boardUmpire),
		   contentType:"application/json",
		   success:function(res){
			   
			   if(res.length != 0 ){

					var	htmlContent = '';
					htmlContent += '<div id="tableId" class="form-group col-md-12 noPadding"><table><thead><tr>';	
					htmlContent += '<table>';
					htmlContent += '<thead>';
					htmlContent += '<tr>';
					htmlContent += '<th>Name</th>';
					htmlContent += '<th>Rating</th>';
					htmlContent += '<th>Address</th>';
					htmlContent += '<th>Home Phone</th>';
					htmlContent += '<th>Work Phone</th>';
					htmlContent += '<th>Cell Phone</th>';
					htmlContent += '<th>E-mail</th>';
					htmlContent += '<th class="tdBtns">Action</th>';
					htmlContent += '</tr>';
					htmlContent += '</thead>';
					htmlContent += '<tbody>';
					for(var i=0; i<res.length; i++){
						 var tokenId = res[i].tokenId;
						   
						 document.getElementById("hiddenToken").value = tokenId;
						var umpireId = res[i].umpireId;
						var boardId = res[i].boardId;
						htmlContent += '<tr>';
						htmlContent += '<td><a href="${pageContext.request.contextPath}/buddy/'+res[i].umpireName+'/'+res[i].umpireId+'">'+res[i].umpireName+'</a></td>';
						htmlContent += '<td><div class="tdStars"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div></td>';
						htmlContent += '<td>'+res[i].addressLine1+' '+res[i].addressLine2+' '+res[i].city+' '+res[i].state+' '+res[i].country+'</td>';
						htmlContent += '<td>'+res[i].homePhone+'</td>';
						htmlContent += '<td>'+res[i].workPhone+'</td>';
						htmlContent += '<td>'+res[i].cellPhone+'</td>';
						htmlContent += '<td>'+res[i].emailId+'</td>';
						htmlContent += "<td class='alignCenter'><a href='#' title='Edit' ><i onclick='editUmpireList(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-pencil editIcon'></i></a><a href='#' title='Delete' ><i onclick='deleteUmpireList(\""+umpireId+"\",\""+boardId+"\")' class='fa fa-trash-o deleteIcon'></i></a>";
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
						htmlContent += '<th>Name</th>';
						htmlContent += '<th>Rating</th>';
						htmlContent += '<th>Address</th>';
						htmlContent += '<th>Home Phone</th>';
						htmlContent += '<th>Work Phone</th>';
						htmlContent += '<th>Cell Phone</th>';
						htmlContent += '<th>E-mail</th>';
						htmlContent += '<th class="tdBtns">Action</th>';
						htmlContent += '</tr>';
						htmlContent += '</thead>';
						htmlContent += '</table>';
						htmlContent += '<span class="noContentDivRed">No more umpire available</span>';
						
						 // document.getElementById("hiddenToken").value = "";
						 
						 if(flag == 'Previous'){
								$("#loadButtonPrevious").addClass('disabled');
						 }else{
								$("#loadButtonNext").addClass('disabled');
						 }
					
						  
						$("#tableId").html(htmlContent).trigger('create');
						
					}
			   
			   
			   
		   },
		   error : function(err){
			   console.log(err);
		   }
	   })
	   
	   
   }
   
   
   </script>
   
   
</body>
</html>
