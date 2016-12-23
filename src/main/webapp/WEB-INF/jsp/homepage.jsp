<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">
    
	<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header pull-left">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                   <img src="${pageContext.request.contextPath}/images/Logo.png">
                </a>
                
               <div class="topSearch">
                     <input type="text" class="form-control" placeholder="Search for buddies & boards">
                     <i class="fa fa-search"></i>
                </div>
                
                
            </div>
            
            
            <div class="collapse navbar-collapse pull-right" id="">
                <ul class="nav navbar-nav topNav">
                    
                    <li class="myBoard"><span>My Board</span></li>
                    
                    <li>
                       <a href="#"> <i class="fa fa-userIcon"><img src="images/profileIcon.png"></i></a>
                    </li>
                    <li>
                       <a href="#"> <i class="fa fa-bell"></i></a>
                    </li>
                    <li>
                        <img src="images/profileIcon.png" class="nav-avatar dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">
                        <ul class="dropdown-menu logMenus" role="menu">
                         <!--  <li><a href="#">My Profile</a></li>
                          <li><a href="#">Change Password</a></li> -->
                          <li><a href="${pageContext.request.contextPath}/logout.htm">Logout</a></li>
                        </ul>
                    </li>

                </ul>
            </div>

			
			
        </div>
    </nav>
	
   
    
    <section class="middleContentBlock">
    
    <div class="profileBanner">
    	<img src="${pageContext.request.contextPath}/images/innerBanner.png">
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
                    <div class="col-md-2 profileLogo pLUpdated">
                    	<img src="${pageContext.request.contextPath}/images/profileIcon.png"><br>
                        
                        <input id="upload" type="file"/>
                        
                        
                     		<ul class="leftMenu">
                            	<li><a href="#"><i class="fa fa-th"></i>My Score</a></li>
                            	<li><a href="#"><i class="fa fa-calendar"></i>My Events</a></li>
                            	<li><a href="#"><i class="fa fa-users"></i>My Fans</a></li>
                            	<li><a href="#"><i class="fa fa-heart"></i>I Am Fan Of</a></li>
                            	<li><a href="#"><i class="fa fa-file-text"></i>My Board</a></li>
                            	<li><a href="#"><i class="fa fa-file-text-o"></i>My Buddy List</a></li>
                            	<li><a href="#"><i class="fa fa-files-o"></i>Player Compare</a></li>
                            	<li><a href="#"><i class="fa fa-book"></i>Cricket Book</a></li>
                            </ul>
                        
                        
                    </div>

                    <div class="col-md-7 pageMiddleBlock">
                     	<span class="userName">${USRLastName}</span>
                     
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                            <b>Status update</b>
                            <a href="#" class="pull-right"><i class="fa fa-picture-o"></i> Add photos</a>
                        	<form action="postFeed.htm" name="postfrom" id="postfrom" method="post">
                            <div class="postBlock">
                            	<img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
                               	<textarea class="form-control" id="content" placeholder="What is your Delivery?" name="content"></textarea>                               	                      	
								<a href="#" class="pull-right btn blueBtn"><button type="submit" class="pull-right btn blueBtn" >Post</button></a>                      
                            </div>
                            </form>
                        </div>
                        
                        
                        <div class="col-md-12 feedBlock whiteBox">
                        <c:forEach var="feed" items="${FeedsList}">
                        		<div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="${pageContext.request.contextPath}/images/profileIcon.png" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading">${feed.postedByName}</h4>
                                    <div class="headRight">
                                    	<!-- <span><i class="fa fa-thumbs-o-up"></i>250</span><span><i class="fa fa-commenting-o"></i>25</span> -->
                                    	<span><img src="images/hitIcon1.png" width="18" class="hitIcon1">250</span><span><i class="fa fa-commenting-o"></i>25</span>
                                    </div>
                                    
                                    <span class="postTime"></span>
                                    <p>${feed.content}</p>
                                    
                                    <a href="#" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
                                    <a href="#" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>
                                    <a href="#" class="shareLink"><i class="fa fa-share-alt"></i> Share</a>
                                  </div>
                                </div>
                                
                               </c:forEach> 
                             
                                <div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="images/userImg1.jpg" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Media heading </h4>
                                    <div class="headRight">
                                    	<span><img src="images/hitIcon1.png" width="18" class="hitIcon1">250</span><span><i class="fa fa-commenting-o"></i>25</span>
                                    </div>
                                    
                                    <span class="postTime">30 mints</span>
                                    <div class="galleryBlock">
                                    	<img src="images/bg.png">
                                         Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                    </div>
                                    
                                   <a href="#" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
                                    <a href="#" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>
                                    <a href="#" class="shareLink"><i class="fa fa-share-alt"></i> Share</a>
                                  </div>
                                </div>
                                
                                <div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="images/userImg1.jpg" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Media heading</h4>
                                    <div class="headRight">
                                    	<span><img src="images/hitIcon1.png" width="18" class="hitIcon1">250</span><span><i class="fa fa-commenting-o"></i>25</span>
                                    </div>
                                    
                                    <span class="postTime">30 mints</span>
                                    <div class="galleryBlock">
                                    	
                                       <embed style="width:100%; height:320px;" src="https://www.youtube.com/embed/amL-L8av4yI">
                                        
                                    </div>
                                    
                                   <a href="#" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
                                    <a href="#" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>
                                    <a href="#" class="shareLink"><i class="fa fa-share-alt"></i> Share</a>
                                  </div>
                                </div>
                                
                                <div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="images/userImg2.jpg" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Media heading</h4>
                                    <div class="headRight">
                                    	<span><img src="images/hitIcon1.png" width="18" class="hitIcon1">250</span><span><i class="fa fa-commenting-o"></i>25</span>
                                    </div>
                                    
                                    <span class="postTime">30 mints</span>
                                    <div class="galleryBlock">
                                    	<img src="images/img1.jpg">
                                    </div>
                                    
                                  <a href="#" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
                                    <a href="#" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>
                                    <a href="#" class="shareLink"><i class="fa fa-share-alt"></i> Share</a>
                                  </div>
                                </div>
                                
                                <div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="images/userImg3.jpg" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Media heading</h4>
                                    <div class="headRight">
                                    	<span><img src="images/hitIcon1.png" width="18" class="hitIcon1">250</span><span><i class="fa fa-commenting-o"></i>25</span>
                                    </div>
                                    
                                    <span class="postTime">30 mints</span>
                                    <div class="galleryBlock">
                                    	<img src="images/img2.jpg">
                                    </div>
                                    
                                  <a href="#" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
                                    <a href="#" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>
                                    <a href="#" class="shareLink"><i class="fa fa-share-alt"></i> Share</a>
                                  </div>
                                </div>
                                
                                
                        </div>
                        
                        


                      </div>

                     <!--Right Block-->
                     	<div class="col-md-3 pull-right noPadding">
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Matches Around You</div>
                              
                              <div class="sidebar-list">
                              		Piston vs Chicago Bulls<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                              </div>
                              
                              <div class="sidebar-list">Piston vs Chicago Bulls hicago Bulls<br> <strong>Aug 28, 2015</strong>
                                    <span class="teamLogos">
                                	<img src="images/teamLogo3.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo4.png" class="teamLogo">
                                	</span>
                              </div>
                              
                              <div class="sidebar-list">Piston vs Chicago Bulls<br> <strong>Aug 28, 2015</strong>
                                    <span class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo"> <b>VS</b> <img src="images/teamLogo3.png" class="teamLogo">
                                	</span>
                              </div>
                              
                              
                             
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-MAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Leagues Around You</div>
                              
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo4.png" class="teamLogo">
                                	</div>
                              </div>
                              
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo1.png" class="teamLogo">
                                	</div>
                              </div>
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo2.png" class="teamLogo">
                                	</div>
                              </div>
                              <div class="sidebar-list">
                              		Fantasy League<br> <strong>Aug 28, 2015</strong>
                                    <div class="teamLogos">
                                	<img src="images/teamLogo3.png" class="teamLogo">
                                	</div>
                              </div>
                              
                             
                            </div>
                          </div>
                          
                          
                          
                          <div class="sidebar-container widget-subscriptions">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Buddys Around You <span class="sidebar-header-light">(135)</span></div>
                              
                              <div class="sidebar-BAY">
                                    <div class="sidebar-title-container">
                                      <div class="sidebar-title-name">Lakshith</div>
                                    </div>
	                                <img src="images/userImg1.jpg">
                              </div>
                              
                              <div class="sidebar-BAY">
                                    <div class="sidebar-title-container">
                                      <div class="sidebar-title-name">Lakshith</div>
                                    </div>
	                                <img src="images/userImg2.jpg">
                              </div>
 
                              <div class="sidebar-BAY">
                                    <div class="sidebar-title-container">
                                      <div class="sidebar-title-name">Lakshith</div>
                                    </div>
	                                <img src="images/userImg3.jpg">
                              </div>

                              <div class="sidebar-BAY">
                                    <div class="sidebar-title-container">
                                      <div class="sidebar-title-name">Lakshith</div>
                                    </div>
	                                <img src="images/userImg4.jpg">
                              </div>

                              <div class="sidebar-BAY">
                                    <div class="sidebar-title-container">
                                      <div class="sidebar-title-name">Lakshith</div>
                                    </div>
	                                <img src="images/userImg3.jpg">
                              </div>

                              <div class="sidebar-BAY">
                                    <div class="sidebar-title-container">
                                      <div class="sidebar-title-name">Lakshith</div>
                                    </div>
	                                <img src="images/userImg4.jpg">
                              </div>


                              
                            </div>
                          </div>
                          
                          
                          <div class="sidebar-container widget-TAU">
                            <div class="sidebar-content">
                              <div class="sidebar-header">Teams Around You</div>
                              
                              <div class="sidebar-list">
                                    <img src="images/teamLogo1.png" class="teamLogo">
                                    <img src="images/teamLogo2.png" class="teamLogo">
                                    <img src="images/teamLogo3.png" class="teamLogo">

                              </div>
                              
                            </div>
                          </div>
                          
                          
                          
                        </div>
                     
                     <!--/Right Block End-->

                        
                     </div>

                 </div>
        	<!--/Content Block-->
            
            
        </div>
    </div>
 </section>
    
    
    
    
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

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
    
    

</body>

</html>
