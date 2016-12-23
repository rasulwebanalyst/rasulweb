<!DOCTYPE html>
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
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/main.css" rel="stylesheet">

	<!--Font-Awesome Icons-->
    <link href="icons/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/token-input.css" type="text/css" />
    <link rel="stylesheet" href="css/token-input-facebook.css" type="text/css" />
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
    	<img src="images/innerBanner.png">
    </div>
    
    <div class="container">

        <div class="row">
        
        	<!--Content Block-->
            <div class="col-md-12 middleContBlock noPadding">
                 <div class="col-md-12 noPadding">
                        
                   <%@ include file="BoardSideMenu.jsp" %>


						<div class="col-md-7">
						
		<form action="saveRoaster"  id="rosterFormId" method="post" >
						
      		<div class="col-md-12 whiteBox">
		     <h1 class="">Create Roster</h1>
             <div class="col-md-12 pageVisi1 adjust">
             <div class="col-md-12 noPadding rosName">
             <div class=" col-md-2 PG-Visi">
                    <h6>Roster Name</h6>
                  </div>
                  <div class="col-md-10 own">
                  	<input type="text" class="form-control" placeholder="" id="nameId" name="rosterName">
                  </div>
                  
                </div>
              </div>
          </div>  
          
          
          <div class="col-md-12 whiteBox">
                    
                            <h2 style="padding-left:0">Add Member <a href="#" class="pull-right">Action</a></h2>
                            
                            <div class="form-group col-md-12 noPadding profileForm">
                                <div class="col-md-12 noPadding">
                                  <label for="email">Captain</label>
                                  <input type="text" class="form-control" placeholder="" id="captainId" name="captainName" onkeypress="getBuddiesAutoComplete(this,'captionAutoCompleteId','captainHiddenId')">
	                                  <div class="autoComplete" id="captionAutoCompleteId" style="display:none;">
											                        	
	                                  </div>
	                                   <input type="hidden" class="form-control" placeholder="" id="captainHiddenId" name="captain">
	                                  
                                </div>
                                <div class="col-md-12 noPadding">
                                  <label for="email">Vice Captain</label>
                                  <input type="text" class="form-control" placeholder="" id="viceCaptainId" name="viceCaptain" onkeypress="getBuddiesAutoComplete(this,'viceCaptainAutoCompleteId','viceCaptianHiddenId')">
                                  	 <div class="autoComplete" id="viceCaptainAutoCompleteId" style="display:none;">
											                        	
	                                  </div>
	                             <input type="hidden" class="form-control" placeholder="" id="viceCaptianHiddenId" name="vice_captian">
	                                  
                                </div>
                                <div class="col-md-12 noPadding">
                                  <label for="email">Coach</label>
                                  <input type="text" class="form-control" placeholder="" id="coachId" name="coachName" onkeypress="getBuddiesAutoComplete(this,'coachAutoCompleteId','coachHiddenId')">
                                   <div class="autoComplete" id="coachAutoCompleteId" style="display:none;">
	                                 </div>
	                              <input type="hidden" class="form-control" placeholder="" id="coachHiddenId" name="coach">
	                                 
                                </div>
                            <!--     
                                 <div class="col-md-9 own">
                  					<input type="text" class="form-control" placeholder="" id="schedulerId" name="scheduler">
                 				 </div>
                                 -->
                                
                                <div class="col-md-12 noPadding">
                                  <label for="email" style="width:100%;">Add Mamber</label>
                                  <input type="text" class="form-control" style="width:80%; float:left;" placeholder="" id="membersId" name="members" >
                               </div>
                                
                               	<input type="hidden" name="roasterMembers" id="teamMembersArray" />
                               
                               
                                
                              </div>
                            
                            
                        </div>
                        <input type="hidden" name="boardId" value="${BoardId }">
                        
                        <div class="form-group col-md-12 centerbtns pull-right">
                          <button class="btn btn-default dBtn" onclick="validateRosterForm(event)">Create</button>
                          <button type="submit" class="btn btn-default blueBtn">Cancel</button>
                       </div>
                        
          </form>
            
      </div>
					
                     

                     <!--Right Block-->
                       <%@ include file="AroundYouMenu.jsp" %>

                     
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

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tokeninput.js"></script>
 

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
        
        
        function validateRosterForm(e){
       	 e.preventDefault();
       	 if($('#rosterFormId').validate({
       		 errorPlacement: function(error, element) {
       				 error.insertAfter(element);
             }, 
       		 rules: {
       			rosterName: {
                    required: true,
                    minlength : 5,
        			 maxlength : 50
                }, 
                captainName: {
                            required: true,
                            minlength : 5,
                			 maxlength : 50
                        }, 
                        viceCaptain: {
                            required: true,
                            minlength : 5,
                            maxlength : 50
                        },
                        coachName: {
                            required: true,
                            minlength : 5,
                            maxlength : 50
                        }, 
                        members: {
                       		 required: true,
                        }
                       
       	  },
          messages: {
        	  name: {
                  required: "Please enter roster name",
                  minlength :"Name should be at least 5 character",
          		maxlength : "Name should be below 30 character's"
              },
        	  captain: {
                  required: "Please enter captain name",
                  minlength :"Captain name should be least 5 character",
          		maxlength : "Captain Name should be below 30 character's"
              },
              viceCaptain: {
                  required: "Please enter your vice captain description",
                  minlength :"Vice Captain name should be at least 5 character",
            		maxlength : "Vice Captain Name should be below 50 character's"
              },
              coach: {
                 required: "Please enter your short description",
                 minlength :"Coach  name should be at least 5 character",
         		maxlength : "Coach  Name should be below 50 character's"
              }, 
              members: {
                  required: "Please enter your short description",
               }
          }
       	 }).form()){
       		 console.log("validation success");
       		 $('#rosterFormId').submit();
       	 }
       	 
        };
       	 
        
        function getBuddiesAutoComplete(elem,divId,hiddenId){
        	var key=$(elem).val();
        	var textBoxId=$(elem).attr('id');
        	console.log('value : '+key);
        	console.log('textBoxId : '+textBoxId);
        	if(key.length>2) {
        			    $.ajax({
        						type : "POST",
        						url : ctx+"/buddySearch",
        						dataType: "json",
        			        contentType: "application/json; charset=utf-8",
        			        data : key,					            
        						success : function(res) {
        							console.log(res);	
        							var html="";
        							
        							if(res != null){
        								var users=res.userList;
        								console.log(JSON.stringify(users));
        								html+="<ul>";
        								
        								if(users!= null && users.length >0){
        									for(var i in users){
            									html+="<li onclick=setValueToTextBox(this,'"+textBoxId+"','"+divId+"','"+users[i].userId+"','"+hiddenId+"')>"+users[i].firstName+"</li>";
            								}
        								}else{
        									html+="<li>No results found...</li>";
        								}
        								console.log("in if"+html);
    									html+="</ul>";
            							$('#'+divId).html(html);
            							$('#'+divId).show();
            						
        							}else{
       									html+="<ul>";
       									html+="<li>No results found...</li>";
   										html+="</ul>";
            							$('#'+divId).html(html);
            							$('#'+divId).show();
        							}	  
        						},
        						
        						error:function(response){
        							$('#'+divId).hide();
        						console.log("Error message"+JSON.stringify(response));
        						},
        					
        						
        					}); 
        				
        	   }else{
        		   $('#'+divId).hide();
        	   }
          
        } 
        
        function setValueToTextBox(elem,textBox,divId,userId,hiddenId){
       		$('#'+textBox).val($(elem).text());
       		$('#'+divId).hide();	
       		$('#'+hiddenId).val(userId);	
       		
        }
        
        var teamMembersArray=[];
        $("#membersId").tokenInput(ctx+"/buddySearchForMultipleSelection",{
        	theme: "facebook",   
        	onAdd: function (item) {
        		teamMembersArray.push(item.id);
        		$('#teamMembersArray').val(teamMembersArray);
        	},
        	onDelete: function (item) {
            	var index = teamMembersArray.indexOf(item.id);
    			if (index >= 0) {
    				teamMembersArray.splice( index, 1 );
    			}
    			$('#teamMembersArray').val(teamMembersArray);
        },onResult: function (item) {
        	console.log(ctx+"/buddySearchForMultipleSelection");
            if($.isEmptyObject(item)){
            	console.log("item empty");
            	
                return [{id:'0',name: "No results found"}];
          }else{
        	  console.log("item not empty");
                return item;
          }
        }
       });
   </script>      
    
    

</body>

</html>
