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
        
        <div class="col-md-2 profileLogo pLUpdated">
                    	<span class="pLUpdatedImg"><img src="${pageContext.request.contextPath}/images/teamLogo4.png">
                        	 Kent Cricket Board
                        </span>
                        
                        
                     		<ul class="leftMenu">
                            	<!--<li><a href="#"><i class="fa imgIcon"><img src="images/MyScore.png"></i>Score</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyEvents.png"></i>Events</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyFans.png"></i>Fans</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/IAmFanOf.png"></i>Fan Of</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBuddyList.png"></i>Roster</a></li>
                            	<li><a href="#"><i class="fa imgIcon"><img src="images/MyBoard.png"></i>My Board</a></li>-->
                            	<li><a href="#"><i class="fa imgIcon"><img src="${pageContext.request.contextPath}/images/CricketBook.png"></i>League Management</a>
								
                                <div class="leftMenu2">
                                    	<ul>
                                            <li class="head"><a href="#">Umpire Co-ordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateUmpire/boardId/${boardId}" class="active"><i class="fa fa-angle-right"></i> Create Umpire</a></li>
                                            <li><a href="${pageContext.request.contextPath}/UmpireList/boardId/${boardId}"><i class="fa fa-angle-right"></i> Umpire List</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Ground coordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateGround/boardId/${boardId}"><i class="fa fa-angle-right"></i> Create Ground</a></li>
                                            <li><a href="${pageContext.request.contextPath}/GroundList/boardId/${boardId}"><i class="fa fa-angle-right"></i> Ground List</a></li>
                                                                
                                            <li class="head"><a href="#">Schedule Co-ordinator</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CreateSchedule/boardId/${boardId}"><i class="fa fa-angle-right"></i> Create Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Amend Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Assign Umpire to Schedule </a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Assign Scorer to Schedule</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Schedule List</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Cancel Game by date</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i> Cancel Tournment</a></li>
                                                                                    
                                            <li class="head"><a href="#">Team Details</a></li>
                                            
                                            <li><a href="#">Point Table</a></li>
                                            <li><a href="#">Centuries</a></li>
                                            <li><a href="#">Half Centuries</a></li>
                                            <li><a href="#">5fer</a></li>
                                            <li><a href="#">Top Batsmen</a></li>
                                            <li><a href="#">Top Bowlers</a></li>
                                            <li><a href="#">Top Umpires</a></li>
            
                                            <li class="head"><a href="#">Dispute Management</a></li>
                                                                
                                        </ul>
                                                </div>
            
                                </li>
                            </ul>
                        
                        
                    </div>

      
      <div class="col-md-10">
      		<div class="col-md-12 whiteBox">
		          <h1 class="">Create Tournament / Trophy</h1>
                  
                  <div class="form-group col-md-12 noPadding profileForm"><br>
                                  <div class="col-md-12">
                                  	<label for="email"> Create Tournament / Trophy</label> <input type="text" class="form-control" placeholder="" id="">
                                  </div>
                                 
                                  <div class="col-md-6">
                                 	 <label for="email"> Add Team Board Name</label> <input type="text" class="form-control" placeholder="" id="">
                                  </div>
                                 
                                  <div class="col-md-6">
                                  	<label for="email"> Win Points for the Match</label> <input type="text" class="form-control" placeholder="" id="">
                                  </div>
                                  
                                  <div class="col-md-12 radioBox"><br>
                                    
                                   <input type="radio" class="radio" id="r1" name="rr">
                                   <label for="r1"><span></span>Umpire to the Tournment can only be assigned from the umpire list</label>
                                   
                                   <input type="radio" class="" id="r2" name="rr">
                                   <label for="r2"><span></span>A Buddy in cricket Social can be asigned as an umpire for the games in the tournament</label>
                              
                                 </div>
                                 
                                 <div class="col-md-12 Create">
                                    <button type="submit" class="btn btn-default dBtn">Create Schedule</button>
                                    <button type="submit" class="btn btn-default blueBtn">Cancel</button>
                          	     </div>
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
   
   <script src="${pageContext.request.contextPath}/js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
			});
		</script>

   
   
   
</body>
</html>
