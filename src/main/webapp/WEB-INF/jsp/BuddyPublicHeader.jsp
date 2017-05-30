<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title></title>

 
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">
    
	<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
  
  
  <script>var ctx="${pageContext.request.contextPath}";</script>
  
  
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    
    <!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
    
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/cricketSocial/rosterFeeds.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/loadfunction.js"></script>
   
   
   
   
   
   <!-- <style>
.media.tool-list {
	overflow: visible;
}
.tool-list .media-body {
	overflow: visible;
}
.tool-list .media-body .tooltiptext1 {
	height: auto;
	
} 
.tooltip {
position: unset;
display: inline-block;
border-bottom: 1px dotted black;
color: #4c9fe1;
opacity: 1;
font-weight: 600;
}

.tooltip .tooltiptext {
display: none;
   visibility: hidden;
width: 200px;
background-color: #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 5px 0;
position: absolute;
z-index: 1;
top: auto;
right: -205px;
opacity: 0;
transition: opacity 1s;
margin-top: -15px;
}

.tooltip .tooltiptext::after {
    content: "";
position: absolute;
top: 7px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
    display: block;
}



.tooltip1 {
   
    float: right;
   
}

.tooltip1 .tooltiptext1 {
display: none;
   visibility: hidden;
width: 200px;
background-color:  #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 5px 0;
position: absolute;
z-index: 1;
right: -177px;
margin-top: -10px;
opacity: 0;
transition: opacity 1s;
box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
}

.tooltip1 .tooltiptext1::after {
 content: "";
position: absolute;
top: 11px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip1:hover .tooltiptext1 {
    visibility: visible;
    opacity: 1;
    display: block;
}


.tooltiptext1 div li:last-child {
border: none !important;
}





.tooltiptext div li,.tooltiptext1 div li  {
text-align: left;
}

.sponser-Flow{
text-overflow: ellipsis;
    overflow: hidden;
    width: 67%;
    display: inline-block;
    white-space: nowrap;
}

</style> -->

<style>
.media.tool-list {
	overflow: visible;
}
.tool-list .media-body {
	overflow: visible;
}
.tool-list .media-body .tooltiptext1 {
	height: auto;
	
} 
.tooltip {
position: unset;
display: inline-block;
border-bottom: 1px dotted black;
color: #4c9fe1;
opacity: 1;
font-weight: 600;
}

.tooltip .tooltiptext {
display: none;
   visibility: hidden;
width: 200px;
background-color: #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 0;
position: absolute;
z-index: 1;
top: auto;
right: -205px;
opacity: 0;
transition: opacity 1s;
margin-top: -15px;
}

.tooltip .tooltiptext::after {
    content: "";
position: absolute;
top: 7px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
    display: block;
}



.tooltip1 {
   
    float: right;
   
}

.tooltip1 .tooltiptext1 {
display: none;
   visibility: hidden;
width: 200px;
background-color:  #eee;
color: #555;
text-align: center;
border-radius: 0px;
padding: 0;
position: absolute;
z-index: 1;
right: -177px;
margin-top: -10px;
opacity: 0;
transition: opacity 1s;
box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
}

.tooltip1 .tooltiptext1::after {
 content: "";
position: absolute;
top: 11px;
left: -5px;
margin-left: -5px;
border-width: 5px;
border-style: solid;
border-color: transparent #555 transparent transparent;
}

.tooltip1:hover .tooltiptext1 {
    visibility: visible;
    opacity: 1;
    display: block;
}


.tooltiptext1 div li:last-child {
border: none !important;
}





.tooltiptext div li,.tooltiptext1 div li  {
text-align: left;
}




.sponser-Flow{
text-overflow: ellipsis;
    overflow: hidden;
    width: 67%;
    display: inline-block;
    white-space: nowrap;
}
span.sponser-Flow {
	float: none!important;
	color: #555!important;
}

.tooltiptext1 .test {
min-height: 40px;
max-height: 200px;
overflow: auto;
}
.test {
min-height: 40px;
max-height: 200px;
overflow: auto;
}

}

</style>
   
   
   
   
   
   
   
   
   
    <script type="text/javascript">
    
    function tes()
    {
    	
    }
    </script>
    
<div class="notification" id="notificationPopupDiv" style="display:none;"  >
	<span class="insideBlock noti_arrow" id="notificationPopupMessageDIV"></span>
	
</div>
</head>
<body>
<%@ include file="GoogleAnalytical.jsp" %>

<!-- popup -->
<div>
	<div id="ViewfeedCommentPopuDiv" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Comments</span>
               <a href="javascript:commentpopuphide()" onclick=""><span class="close_btn" > <i class="fa fa-close"></i> </span></a>

               <div class="popupContentDiv" style="overflow: auto;">
					<div class="col-md-12 commentsListBlock " id="commentListDivPopup">
                        
                        
                    </div>                    
                                                   
               </div>
           </div>

        </div>


</div>



<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header pull-left">
               <%--  <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                   <img src="${pageContext.request.contextPath}/images/Logo.png">
                </a> --%>
                
                <a class="navbar-brand Logo" href="${pageContext.request.contextPath}/">
                   <img src="${pageContext.request.contextPath}/images/Logo.png">
                </a>
                
                <a class="navbar-brand LogoSmall" href="${pageContext.request.contextPath}/">
                   <img src="${pageContext.request.contextPath}/images/LogoSmall.png">
                </a>
                
                
                
               <div class="topSearch">
                     <input type="text" id="buddySearchboxDiv" class="form-control" placeholder="Search for buddies & boards" onkeyup="buddySearch(this.value)">
                     <i class="fa fa-search"></i>
                </div>
                
                
                
                <div class="autoSearchBlcok buddyRequest selection-container" style="display: none;" id="buddySearchDIV">
                	<ul id="buddysearchUL" style="max-height: 275px; overflow: auto;">
                    	

                    </ul>
                </div>
                
                
                
            </div>
            
           	 <input type="hidden" id="BuddyID" name="BuddyID" value="${USRID}">
          	  <input type="hidden" id="BuddyNME" name="BuddyNME" value="${USRLastName}">
            	<input type="hidden" id="buddyIMG" name="buddyIMG" value="${USRIMG}">
            	
            	<input type="hidden" name="BuddyPublicUserId" id="BuddyPublicUserId" value="${BuddyPublicUserId}">
            	<input type="hidden" name="BuddyPublicFirstName" id="BuddyPublicFirstName" value="${BuddyPublicFirstName}">
            <div class="collapse mainMenu navbar-collapse pull-right" id="">
<span class="more slide-toggle">.<br>.<br>.</span>
                
                <!-- <span class="more slide-toggle"><i class="fa fa-chevron-left"></i></span> -->
                
                
                 <button type="button" class="navbar-toggle listMenu" data-toggle="" data-target="">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <ul class="nav navbar-nav topNav">
                    
                    <div class="autoSearchBlcok friendRequestsPop " id="friendRequestHeaderDiv" style="display:none;">
                		<ul id="friendRequestUlId">
                	  
                	  			<li>Buddy Requests</li>                	
                    			<li><div style="color: red;margin-left: 14px;margin-top: 13px;">You have no request at this moment</div></li>
                    	
                    	</ul>
                	</div>
                    <div class="autoSearchBlcok friendRequestsPop notiPopup " style="display: none;" id="userNotificationShowDIV">
                	<ul id="userNotificationListUL" class="">
                    	
                    	

                    </ul>
                    <span class="notificationErrorMessage" id="userNotificationErrorDiv"></span>
                </div>
                
                <!-- <div class="autoSearchBlcok friendRequestsPop notificationsPopup scrollContent" style="display: none;" id="userNotificationShowDIV">
                	<ul id="userNotificationListUL" class="">
                    	
                    	

                    </ul>
                    <div style="" id="userNotificationErrorDiv"></div>
                </div> -->
                
                <li class="mobSearchIcon"><i class="fa fa-search"></i></li>
                
                
					<div class="mobSearch" id="" style="display:none;">
                    	 <div class="topSearch">
                             <input type="text" onkeyup="buddySearch(this.value)" placeholder="Search for buddies &amp; boards" class="form-control">
                             <i class="fa fa-search"></i>
                        </div>
                    </div>
			
                
                   
                    
                    <li class="myBoard">
                    
                    <span class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false" onclick="hideOtherMenus('friendRequestHeaderDiv')">My Board <i class="fa fa-caret-down"></i></span> 
                    
                    	<ul class="dropdown-menu logMenus" style="max-height: 250px; overflow-y:auto;" role="menu" id="boardListHeader">
                         <li><a href="${pageContext.request.contextPath}/addBoard">Create Board</a></li>
                         <c:choose>
                        	<c:when test="${empty BoardList}">
                        	 	<li> </li>
                        	</c:when>
                        		
                        	<c:otherwise>
                        	
                        		 <c:forEach var="brd" items="${BoardList}">
                        		 	<li><a href="${pageContext.request.contextPath}/board?bid=${brd.boardId}">${brd.boardName}</a></li>
                        		 </c:forEach>
      		 </c:otherwise>
                        		 </c:choose>
                        		 
                          
                          
                        </ul>
                                        
                    
                    </li>
                     <%-- <li class="myBoard">${USRFNA}</li> --%>
                     <li><a href="#"  title="Contact us" onclick="contactUs()"> <i class="fa fa-envelope"></i></a></li>
                    <li>
		                       <a href="#" onclick="showFriendREquDiv('friendRequestHeaderDiv')" id="showFriendRequesDIV" title="Buddy Request"> 
		                       	<i class="fa fa-userIcon">
		                       		<img src="${pageContext.request.contextPath}/images/usersIcon.png" >
		                       	</i>
		                       	<c:choose>
		                       		<c:when test="${requestsCount > 0}">
		                       				<span class="badge badge-danger" id="friendRequestCountBadge">${requestsCount }</span>
		                       		</c:when>
		                       		<c:otherwise>
		                       				<span class="badge badge-danger" id="friendRequestCountBadge"></span>
		                       		</c:otherwise>
		                       	</c:choose>
		                     	</a>
                      
                       
                    </li>
                    <li onclick="getNoficationList();" id="userNoficationListIcon">
                       <a href="#" title="Notification"> <i class="fa fa-bell topBellIcon"></i>
                       <span class="badge badge-danger" id="userNoficationCount" style="margin-left: -10px;"></span>
                       </a>
                        
                    </li>
                    <li >
                    <span class="buddyheaderName">${USRLastName}</span>
                        <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">
                        <ul class="dropdown-menu logMenus userAcc" role="menu">
                         <!--  <li><a href="#">My Profile</a></li>
                          <li><a href="#">Change Password</a></li> -->
                           <li><a href="${pageContext.request.contextPath}/viewProfile">My Profile</a></li>
                             <%-- <li><a href="${pageContext.request.contextPath}/mergeAccountHeader">Merge Account</a></li> --%>     
                          <li><a href="${pageContext.request.contextPath}/logout.htm">Logout</a></li>
                        </ul>
                    </li>
                    <%-- <li style="margin-top: 12px;margin-left: 7px;">${USRFNA}</li> --%>

                </ul>
            </div>

			
			
        </div>
    </nav>
    
<script type="text/javascript">

function contactUs(){
	
	window.location.href ="${pageContext.request.contextPath}/ContactUs";
	
}

function buddySearch(key){
	var htm='';
	console.log('value : '+key);
	if(key.length>2) {
		   
		   var   buddyID=  document.getElementById('BuddyID').value;
		   var   buddyID2=  "'"+buddyID+"'";
			  // var   projectURL=  document.getElementById('projectURL').value;
			    $.ajax({
						type : "POST",
						url : ctx+"/buddySearch",
						headers : {'Name' : HeaderName},
						dataType: "json",
			        contentType: "application/json; charset=utf-8",
			        data : key,			            
						success : function(res) {
							console.log(res);	
							
							if(res != null){
								var users=res.userList;
								var boards=res.boardProfileList;
								console.log(JSON.stringify(users));
								var sequence=0;
								var m=0;
								for(var i in users){
									
									var buddyFanToBuddy="buddyFanToBuddy";
									var buddyFanToBuddy2="'"+buddyFanToBuddy+"'";
									var buddyUnFanToBuddy="buddyUnFanToBuddy";
									var buddyUnFanToBuddy2="'"+buddyUnFanToBuddy+"'";
									var uid="'"+users[i].userId.trim()+"'";
									sequence=parseInt(sequence)+parseInt(1);
									console.log(JSON.stringify(users[i]));
									var userName=users[i].firstName;
									if(users[i].lastName!=null){
										userName=userName+" "+users[i].lastName;
									}
										if(buddyID!=users[i].userId){
											
											htm +='<li tabindex="'+sequence+'" class="selection-item">';
												
											htm +='<input type="hidden" value="'+ctx+'/buddy/'+users[i].firstName.trim()+'/'+users[i].userId.trim()+'" name="url" id="url'+sequence+'">';
											
												htm +='<div class="media">'
					                            +'<div class="media-left">'
					                          +'<a href="'+ctx+'/buddy/'+users[i].firstName.trim()+'/'+users[i].userId.trim()+'">';
					                          	if(users[i].userImageUrl != null && users[i].userImageUrl != ""){
					                          		htm +='<img src="'+users[i].userImageUrl+'"  class="nav-avatar" onError=userErrorDefaultImg(this)>';

					                          	}else{
					                          		htm +='<img src="'+ctx+'/images/profileIcon.png" class="nav-avatar">';
					                          	}
					                          
					                          	htm +='</a>'
					                        +'</div>'
					                        +'<div class="media-body">'
					                        +'<a href="'+ctx+'/buddy/'+users[i].firstName.trim()+'/'+users[i].userId.trim()+'">'
					                         +' <h4 class="media-heading">'+userName+'<br>'
					                         +'</a>';
					                       //   +'<span>'+users[i].city+'</span>'
					                          	if(users[i].city=="UNKNOWN"&&users[i].state=="UNKNOWN" ||users[i].city==""&&users[i].state==""||users[i].city=="null"&&users[i].state=="null"||users[i].city==null&&users[i].state==null){
					                          		htm += '<span>'+users[i].city+'</span>';
					                          	}else{
					                          	      	htm += '<span>'+users[i].city+','+users[i].state+'</span>'; 
					                          	}
					                       
					                       
					                       
					                       
					                       
					                          	if(users[i].teamboardlist.length > 0)
						                          {
						                        	  
						                        	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
					                        		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
					                          		htm +="<div id='dropdown"+users[i].userId+"' class='test' >";
							                         
							                          for(var j in users[i].teamboardlist){
							                        	  
							                          var teamlist=users[i].teamboardlist[j];
							              
							                          htm +="<li><span class='sponser-Flow' title='"+teamlist.boardName+"'>"+teamlist.boardName+"</span>";
							                          
							                          var leagueboardlist=users[i].teamboardlist[j].leagueBoardList;
							                          if(leagueboardlist!=null && leagueboardlist.length > 0){
							                        		 /*  htm +=" <div class='tooltip'>Leagues";
							                        		  htm +="<span class='tooltiptext'><ul>"; */
							                        		  
							                        		  
							                        		  htm +=" <div class='tooltip' onmouseover=getpositiontext("+m+") id=leagues"+m+">Leagues";
							                        		  htm +="<span id=showtooltext"+m+" class='tooltiptext'><ul>";
							                        		  
							                        		  
							                        		  for(var k in leagueboardlist){
							                        			  htm +="<li>"+leagueboardlist[k].boardName+"</li>";
							                        		  
							                        		  }
							                        		  m++;
							                        			  htm +="</ul></span>";
							                        		  htm +="</div>";
							                          }
							                          
							                          htm +="</li>";
							                          
							                          }
							                          htm +="</div>";
							                          
							                          htm +="</div>";
					                        		  htm +="</div>";
							                          
						                          }else{
						                        	  
						                          // no record
						                        	  htm +=" <div onmouseover=getposition("+i+") id=eye"+i+" class='tooltip1'><i class='fa fa-eye' aria-hidden='true' style='float: right;'></i>";
					                        		  htm +="<div id=showtool"+i+" class='tooltiptext1'>";
					                          		htm +="<div id='dropdown"+users[i].userId+"' class='test' >";
							                          htm +="<li style='text-align: center;'>No Details</li>";
							                         
							                          htm +="</div>";
							                          
							                          htm +="</div>";
					                        		  htm +="</div>";
						                          
						                          }

					                       
					                       
					                       
					                       
					                       
					                       
					                          htm+='</h4>'
					                          +'<div class="headRight" >';
					                      
					                          htm+='</div>'
					                       	 +'</div>'
					                     	 +'</div>'
					              			+'</li>';
					              			
											}
										}
										for(var j in boards){
											sequence=parseInt(sequence)+parseInt(1);
												if(buddyID!=boards[j].userId){
													htm +='<li tabindex="'+sequence+'" class="selection-item" >';
													htm +='<input type="hidden" value="'+ctx+'/'+boards[j].boardName.trim()+'/board/'+boards[j].boardId+'" name="url" id="url'+sequence+'">';
													
							                           htm +='<div class="media">'
							                            +'<div class="media-left">'
							                          +'<a href="'+ctx+'/'+boards[j].boardName+'/board/'+boards[j].boardId+'">';
							                          
							                          if(boards[j].boardImageURL != null && boards[j].boardImageURL!=""){
							                        	  htm+='<img src="'+boards[j].boardImageURL+'?" class="nav-avatar" onError=imgError(this)>';
							                          }else{
							                        	  htm+='<img src="'+ctx+'/images/boardIcon.png" class="nav-avatar">';
							                          }
							                           
							                          htm+='</a>'
							                        +'</div>'
							                        +'<div class="media-body">'
							                        +'<a href="'+ctx+'/'+boards[j].boardName+'/board/'+boards[j].boardId+'">' 
							                        +' <h4 class="media-heading">'+boards[j].boardName+'<br>'
							                        +'</a>';
							                       //   +'<span>'+boards[j].city+'</span>'
							                          if(boards[j].city=="UNKNOWN"&&boards[j].state=="UNKNOWN" || boards[j].city==null && boards[j].state==null || boards[j].city=="null"&&boards[j].state=="null" || boards[j].city==""&&boards[j].state==""){
							                        		htm += '<span>'+boards[j].city+'</span>';
							                        	}else{
							                        		htm += '<span>'+boards[j].city+','+boards[j].state+'</span>'; 
							                        	}

							                          htm+='</h4>'
							                          +'<div class="headRight" id="buddyreq'+boards[j].boardId+'">';
							                         
							                          htm+='</div>'
							                       	 +'</div>'
							                     	 +'</div>'
							              			+'</li>';
							              			
													}
									}
																	
							}
							
							  $('#buddysearchUL').html(htm);
		              			$('#buddySearchDIV').show();

							
						},
						
						error:function(response){
						console.log("Error message"+JSON.stringify(response));
						},
					
						
					}); 
				
	   }else{
		   $('#buddySearchDIV').hide();
	   }
  
}  

	function unBuddyRequest(id)
	{
		var htm='';
		var uid="'"+id+"'";
		console.log(uid);
		  htm +='<a href="#" class="btn btn-default dBtn btn-sm" onclick="buddyRequest('+uid+')" >Buddy Request</a>';
			$('#buddyreq'+id).html(htm);
		
	}
</script>



    <script>

</script>



    <script type="text/javascript">
    
    

    $('div.selection-container').on('focus', 'li', function() {
        $this = $(this);
        $this.addClass('active').siblings().removeClass();
        $this.closest('div.container').scrollTop($this.index() * $this.outerHeight());
    }).on('keydown', 'li', function(e) {
    console.log('key value ----> '+e.keyCode);
        $this = $(this);
        if (e.keyCode == 40) {        
            $this.next().focus();
            return false;
        } else if (e.keyCode == 38) {        
            $this.prev().focus();
            return false;
        }else if(e.keyCode==13){
    		var text=$(this).attr('onclick');
    		//var text=$(this).children('input:test').value;
    		console.log('text---> '+text);
    			var text2=$(this).children('input').attr('id');
    			var href=$('#'+text2).val();
    			console.log('input name -----> '+text2);
    			console.log('input value ----> '+href);
    			//$(this).children('input').attr('value');
    			if(href!=''){
    				 $('#loading').show();
    				 document.location.href=href;
    			}
    			
    	}
    }).find('li').first().focus();

    
    
    
    (function($){
        $(window).load(function(){
          
    	$(".scrollContent").mCustomScrollbar({
            scrollButtons:{
              enable:true
            },
            callbacks:{
              onScrollStart:function(){ myCallback(this,"#onScrollStart") },
              onScroll:function(){ myCallback(this,"#onScroll") },
              onTotalScroll:function(){ myCallback(this,"#onTotalScroll") },
              onTotalScrollOffset:60,
              onTotalScrollBack:function(){ myCallback(this,"#onTotalScrollBack") },
              onTotalScrollBackOffset:50,
              whileScrolling:function(){ 
                myCallback(this,"#whileScrolling"); 
                $("#mcs-top").text(this.mcs.top);
                $("#mcs-dragger-top").text(this.mcs.draggerTop);
                $("#mcs-top-pct").text(this.mcs.topPct+"%");
                $("#mcs-direction").text(this.mcs.direction);
                $("#mcs-total-scroll-offset").text("60");
                $("#mcs-total-scroll-back-offset").text("50");
              },
              alwaysTriggerOffsets:false
            }
          });
    });
    });
    
    function boardAutocomplete(elem,category,divId){

    	var key=elem.value;
    	if(key.length >0){
    		if(key.length > 2){
    			//alert(category);
			    $.ajax({
						type : "GET",
						url : ctx+"/boardSearchInUserProfile",
						headers : {'Name' : HeaderName},
						dataType: "json",
			        	contentType: "application/json; charset=utf-8",
			        	data : {
			        		key:key,
			        		category:category
			        	},
						success : function(res) {
							console.log(res);	
							if(res!=null){
								var boardProfileList=res.boardProfileList;
								var html="";
								if(boardProfileList !=null ){
									html+="<ul>";
									for(var i=0;i<boardProfileList.length;i++){
										
										html+="<li onclick=setValueToTextBox(this,'"+category+"','"+divId+"')>"+boardProfileList[i].boardName+"</li>";
									}
									html+="</ul>";
									$('#'+divId).html(html);
									$('#'+divId).show();
								}else{
									
									html+="<ul>";
									html+="<li>No boards available </li>";
									html+="</ul>";
									
									$('#'+divId).html(html);
									$('#'+divId).show();

								}
							}else{
								$('#'+divId).hide();	
							}
						},error:function(res){
							console.log(res);	
						}
			    });	
    			
    		}else{
    			
    			$('#'+divId).hide();
    			
    		}
    	}
    	
    }
    function setValueToTextBox(elem,category,divId){
    	if(category == 'League'){
    		$('#leagueAutoCompleteTextBoxId').val($(elem).text());
	    }else{
	    	$('#teamAutoCompleteTextBoxId').val($(elem).text());
	    }
    	$('#'+divId).hide();	
    }
    
  

    $(function(){
    	$('#buddySearchboxDiv').on('keydown', function(e) {
    		var ele=e;
    		
    		console.log('----------------------------------- > '+e.keyCode);
    		if(ele.keyCode==38 || ele.keyCode==40 || ele.keyCode==39 || ele.keyCode==37){
    			console.log('----------------key ------------------- > '+ele.keyCode);
    			$('div.selection-container').find('li').first().focus();
    		}
    			
    		});
    });
    
    
    $(document).ready(function(){
        $(".slide-toggle").click(function(){
            $(".pageRightBlock").animate({
                width: "toggle"
            });
        });
        
        
        $(".listMenu").click(function(){
            $(".leftMenu").slideToggle();
        });
        
        
    });
    
    $(window).on('resize', function(event){
    	var windowSize = $(window).width();
    	if(windowSize > 768){
    	$('.pageRightBlock').css('display' ,'block');
    	$('.leftMenu').css('display' ,'block');
    	}
    	else{
    	$('.pageRightBlock').css('display' ,'none');
    	$('.leftMenu').css('display' ,'none');
    	}
    	});
    
    
    function displaynotification(message,sec)
    {
    			 $('#notificationPopupMessageDIV').text(message);
    			 $("#notificationPopupDiv").show();
    		 	setTimeout(function() {$("#notificationPopupDiv").fadeOut(sec); }, sec);
    }
    </script>
    
    <script type="text/javascript">

function getposition(i){
	console.log(i);
	var p = $( "#eye"+i);
	var position = p.position();
	
	
	$('#showtool'+i).css('top', position.top);
}

function getpositiontext(i){
	console.log(i);
	var p = $( "#leagues"+i);
	var position = p.position();
	
	
	$('#showtooltext'+i).css('top', position.top);
}


</script>
    
</body>
</html>