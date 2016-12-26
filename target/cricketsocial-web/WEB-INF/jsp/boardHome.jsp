<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cricket Social</title>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">
    
	<!--Google Fonts-->    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    <script>var ctx="${pageContext.request.contextPath}";</script>
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

  <%@ include file="BoardHeader.jsp" %>
   
    
    <section class="middleContentBlock">
    
    <div class="profileBanner">
     	<div class="container bannerBtnsblock">
        	
            <i class="fa fa-camera changePhoto" title="Change Photo"></i>
          </div>
          
          <div class="container">  
            <a href="#" class="hitBoard" onclick="hitBoard()"><i class="fa boardHit"></i> <span>Become a fan</span></a>
            <span></span>
            
        </div>
    	<img src="images/innerBanner.png">
        
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        <%@ include file="BoardSideMenu.jsp" %>

                    <div class="col-md-7 pageMiddleBlock">
                     
                     	<div class="col-md-12 statusUpdateBox whiteBox">
                            <b>Status update</b>
                            <a href="#" class="pull-right"><i class="fa fa-picture-o"></i> Add photos</a>
                        	
                            <div class="postBlock">
                            	<img src="images/userImg.jpg" class="nav-avatar">
                               	<textarea class="form-control" id="" placeholder="What is your Delivery?"></textarea>
                            	
                                <div class="uploadedFiles">
                                	<div class="uploadedImg">
                                        <img src="images/img1.jpg">
                                        <i class="fa fa-close upclose"></i>
                                	</div>
                                    <div class="uploadedImg">
                                        <img src="images/img1.jpg">
                                        <i class="fa fa-close upclose"></i>
                                	</div>
                                    
                                    <a href="#" class="pull-right btn blueBtn pull-right">Post</a>  
                                </div>
                                                                
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12 feedBlock whiteBox">
                        		<div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="images/userImg4.jpg" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Media heading</h4>
                                    <div class="headRight">
                                    	<span><img src="images/hitIcon1.png" width="18" class="hitIcon1">250</span><span><i class="fa fa-commenting-o"></i>25</span>
                                        
                                    </div>
                                    
                                    <span class="postTime">30 mints</span>
                                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                                    
                                    <a href="#" class="shareLink"><i class="fa hitIcon"></i> Hit</a>
                                    <a href="#" class="shareLink"><i class="fa fa-commenting"></i> Comment</a>
                                    <a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>
                                  
                                  		<div class="postBlock commentBlock">
                                            <img src="images/userImg.jpg" class="nav-avatar">
                                            <textarea class="form-control" id="" placeholder="Write a Comment"></textarea>
                                        </div>
                                  
                                  
                                  </div>
                                </div>
                                
                                
                                <div class="media">
                                  <div class="media-left">
                                    <a href="#">
                                      <img src="images/profileIcon.png" class="nav-avatar">
                                    </a>
                                  </div>

                                  <div class="media-body">
                                    <h4 class="media-heading"> Media heading</h4>
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
                                    <a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>
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
                                    <a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>
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
                                    <a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>
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
                                    <a href="#" class="shareLink"><i class="fa fa-share"></i> Share</a>
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
                          
                          
                          
                          <!--<div class="sidebar-container widget-subscriptions">
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
                          </div>-->
                          
                          
                          <div class="sidebar-container widget-MAU BAU">
                              <div class="sidebar-content">
                              <div class="sidebar-header">Buddys Around You <span class="sidebar-header-light">(135)</span></div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg3.jpg" class="teamLogo">
                                	</div>
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg4.jpg" class="teamLogo">
                                	</div>
                                    
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg2.jpg" class="teamLogo">
                                	</div>
                                     Lakshith Govindaraj<br>
---------
                              </div>
                              
                              <div class="sidebar-list">
                                    <div class="teamLogos">
                                	<img src="images/userImg1.jpg" class="teamLogo">
                                	</div>
                                     Lakshith Govindaraj<br>
---------
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
