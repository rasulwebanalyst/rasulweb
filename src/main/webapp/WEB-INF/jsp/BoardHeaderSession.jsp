
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">

	<!--Date picker-->
    <link href="${pageContext.request.contextPath}/css/datepicker.css" rel="stylesheet">

<!--Font-Awesome Icons-->
    <link href="${pageContext.request.contextPath}/icons/css/font-awesome.min.css" rel="stylesheet">
    
    <!--Gallery-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slider.css" />
    
    <!--Google Default Fonts-->
	<link href='https://fonts.googleapis.com/css?family=Cabin:400,500,600,700,400italic,600italic' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>var ctx="${pageContext.request.contextPath}";</script>

        <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    
    <!--Date picker-->
    <script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
    
     <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
    
    
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery.plugin.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.realperson.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>
 <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/loadfunction.js"></script> --%>
<!-- <div class="notification" id="" style="display: none;">
	<span class="insideBlock noti_arrow" id="">Please Login or Signup to access</span>
</div> -->


<!-- <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[

</script> -->


<%@ include file="GoogleAnalytical.jsp" %>



<script type="text/javascript">
<!--

//-->

viewFlag=1;

</script>

<div class="notification" id="notificationPopupDiv" style="display:none;"  >
	<span class="insideBlock noti_arrow" id="notificationPopupMessageDIV"></span>
	
</div>

<div>
<div id="ViewfeedCommentPopuDiv" class="popupDiv" style="display: none;">

          <div class="box">
               <span class="head">Comments</span>
               <a href="javascript:commentpopuphide()" onclick=""><span class="close_btn" > <i class="fa fa-close"></i> </span></a>

               <div class="popupContentDiv" style="overflow: auto;">
					<div class="col-md-12 commentsListBlock scrollContent" id="commentListDivPopup">
                        
                        
                    </div>                    
                                                   
               </div>
           </div>

        </div>


</div>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header pull-left">
                <%-- <a class="navbar-brand" href="${pageContext.request.contextPath}/">
          			<img src="${pageContext.request.contextPath}/images/Logo.png">
                </a> --%>
                
                
                <a class="navbar-brand Logo" href="javascript:void(0);" onclick="PleaseLogin()">
                   <img src="${pageContext.request.contextPath}/images/Logo.png">
                </a>
                
                <a class="navbar-brand LogoSmall" href="javascript:void(0);" onclick="PleaseLogin()">
                   <img src="${pageContext.request.contextPath}/images/LogoSmall.png">
                </a>
                
                
                
               <div class="topSearch">
                     <input id="buddySearchboxDiv"  type="text" class="form-control" placeholder="Search for buddies & boards" onclick="PleaseLogin()" onkeyup="PleaseLogin()" id="buddySearchFiled">
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
             <input type="hidden" id="boardId" name="boardId" value="${BoardId}">
             <input type="hidden" id="boardinfoId" name="boardinfoId" value="${BoradInfo.boardId}">
             <input type="hidden" id="logingboardImage" name="logingboardImage"  value="${BoradInfo.boardImageURL}">
              <%--  <input type="hidden" id="BuddyID" name="BuddyID" value="${USRID}">
            <input type="hidden" id="BuddyNME" name="BuddyNME" value="${USRFNA}">
            <input type="hidden" id="buddyIMG" name="buddyIMG" value="${USRIMG}">
            --%>
            <div class="collapse mainMenu navbar-collapse pull-right" id="">
            
            	<span class="more slide-toggle">.<br>.<br>.</span>
            	
            	<button type="button" class="navbar-toggle listMenu" data-toggle="" data-target="">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
            	
            
            
                <ul class="nav navbar-nav topNav">
                  
                 <!--   <li class="mobSearchIcon"><i class="fa fa-search"></i></li> -->
                
                <div class="autoSearchBlcok friendRequestsPop" id="friendRequestHeaderDiv" style="display:none;">
                	<ul id="friendRequestUlId">
                	  
                	  <li>Buddy Requests</li>
                	
                    	<li><div style="color: red;margin-left: 14px;margin-top: 13px;">You have no requests at this moment</div></li>
                    	
                    	
                    </ul>
                </div>
                
                 <div class="autoSearchBlcok friendRequestsPop notiPopup" id="userNotificationShowDIV" style="display:none;">
                	<ul id="userNotificationListUL" class="">
                    	
                    	

                    </ul>
                    <span class="notificationErrorMessage" id="userNotificationErrorDiv" ></span>
                </div>
                
                <!-- <div class="autoSearchBlcok friendRequestsPop notificationsPopup scrollContent" style="display: none;" id="userNotificationShowDIV">
                	<ul id="userNotificationListUL" class="">
                    	
                    	

                    </ul>
                    <div style="" id="userNotificationErrorDiv"></div>
                </div> -->
                
                <li class="mobSearchIcon"><i class="fa fa-search"></i></li>
                
                
					<div class="mobSearch" id="" style="display:none;">
                    	 <div class="topSearch">
                             <input type="text" onclick="PleaseLogin()" onkeyup="PleaseLogin()" placeholder="Search for buddies &amp; boards" class="form-control" >
                             <i class="fa fa-search"></i>
                        </div>
                    </div>
			
                
                   
                    
                    <li class="myBoard">
                    
                    <span class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false" onclick="PleaseLogin()" >My Board <i class="fa fa-caret-down"></i></span> 
                    
                    	<%-- <ul class="dropdown-menu logMenus" role="menu" style="max-height: 250px; overflow-y:auto;" id="boardListHeader">
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
                         
                        </ul> --%>
                
                        
                    </li>
                   <%--  <li class="myBoard">${USRFNA}</li> --%>
                   
                    <li><a href="#"  title="Contact us" onclick="PleaseLogin()" > <i class="fa fa-envelope"></i></a></li>
                   
                    <li>
                       <a href="#" onclick="PleaseLogin()"  id="showFriendRequesDIV" title="Buddy Request"> 
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
                    <li onclick="PleaseLogin()"  id="userNoficationListIcon">
                       <a href="#" title="Notification"> <i class="fa fa-bell topBellIcon"></i>
                       <span class="badge badge-danger" id="userNoficationCount" style="margin-left: -10px;"></span>
                       </a>
                        
                    </li>
                    <li>
                    <span class="buddyheaderName">${USRLastName}</span>
                        <img src="${USRIMG}" onError="this.onerror=null;this.src='${pageContext.request.contextPath}/images/profileIcon.png';" class="nav-avatar dropdown-toggle" data-toggle="dropdown" onclick="PleaseLogin()" aria-expanded="false">
                        <%-- <ul class="dropdown-menu logMenus userAcc" role="menu"> 
                         <li><a href="${pageContext.request.contextPath}/viewProfile">My Profile</a></li>
                           <li><a href="${pageContext.request.contextPath}/mergeAccountHeader">Merge Account</a></li>                        
                          <li><a href="${pageContext.request.contextPath}/logout.htm">Logout</a></li>
                        </ul> --%>
                    </li>
                   <%--  <li style="margin-top: 12px;margin-left: 7px;">${USRFNA}</li> --%>

                </ul>
            </div>

			
			
        </div>
    </nav>
 
            
    <script>
    
 function contactUs(){
    	
    	window.location.href ="${pageContext.request.contextPath}/ContactUs";
    	
    }
    

    </script>
            
    
    <script type="text/javascript">
   
$(document).ready(function() {

	 /* $('body').click(function(){
		   // $('.eventoption').hide();
		   var id=this.className;
		   
		// var id2=  $('#id').attr('class');
		alert(id);
		if(id!='eventoption')
			{
				$('.eventoption').hide();
			}
	  });
	   */
	   
	   
	 $("body").click(function(){
		$("#buddySearchDIV").fadeOut();
		});

		$("#buddySearchDIV").click(function(e){
		 e.stopPropagation();
		});
	    
		$('#buddySearchFiled').click(function(e){
			 e.stopPropagation();
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
</script>
    <!--Custom smooth Scroll-->                 
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/CustomScrollbar.min.js"></script>

<script>


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
        
        function myCallback(el,id){
          if($(id).css("opacity")<1){return;}
          var span=$(id).find("span");
          clearTimeout(timeout);
          span.addClass("on");
          var timeout=setTimeout(function(){span.removeClass("on")},350);
        }
        
        $(".callbacks a").click(function(e){
          e.preventDefault();
          $(this).parent().toggleClass("off");
          if($(e.target).parent().attr("id")==="alwaysTriggerOffsets"){
            var opts=$(".content").data("mCS").opt;
            if(opts.callbacks.alwaysTriggerOffsets){
              opts.callbacks.alwaysTriggerOffsets=false;
            }else{
              opts.callbacks.alwaysTriggerOffsets=true;
            }
          }
        });
        
      });
    })($);
</script> 

<script>

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


$(function(){
	$('#buddySearchboxDiv').on('keydown', function(e) {
		var ele=e;
		
		console.log('----------------------------------- > '+e.keyCode);
		if(ele.keyCode==38 || ele.keyCode==40 || ele.keyCode==39 || ele.keyCode==37){
			console.log('----------------key ------------------- > '+ele.keyCode);
			$('div.selection-container').find('li').first().focus();
			$('buddysearchUL').scrollTop();
		//	$('div.selection-container').offset()=0;
		}
			
		});
});
function displaynotification(message,sec)
{
			 $('#notificationPopupMessageDIV').text(message);
			 $("#notificationPopupDiv").show();
		 	setTimeout(function() {$("#notificationPopupDiv").fadeOut(sec); }, sec);
}
</script>

  