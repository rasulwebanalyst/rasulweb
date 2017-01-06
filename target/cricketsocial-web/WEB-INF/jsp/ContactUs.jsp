


<script type="text/javascript" src="${pageContext.request.contextPath}/circketsocial/commentfunctions.js"></script>


 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
 
 <title>Cricket Social</title>

<%@ include file="BuddyHeader.jsp" %>

<%@ include file="CSCommon.jsp" %>
 
 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="BuddySideMenu.jsp" %>

     <div class="col-md-10 pull-right rightnone">
      			<div class="col-md-12 whiteBox">
                	<h1 class="">Contact Us</h1>
                	 <%  			
 						String check=(String)request.getAttribute("response");
 							if(check.equals("true")) {    
 										%>
 								<script>showNotification(" You have Submitted the details successfully",2000);
 								$("#loading").hide();
 								hide_notificationpoup(2000);
 								
 								</script>		
                                
 						<% } else { %>
 						<% } %>
                	
                    <div class="col-md-12">
                    
                    <form role="form" id="contactForm" name="contactForm" action="${pageContext.request.contextPath}/insertContact" method = "post">
                    	
                             
                    
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span style="color:red">*</span>Name</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="Name" name="Name">
                          </div>
                          
                              
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span style="color:red">*</span>E-mail</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="Email" name="Email">
                          </div>
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span style="color:red">*</span>Contact Number</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="Contact" name="Contact">
                          </div>
                          
                          <div class="form-group">
				            <label class="fomlabel" for="r1"><span style="color:red">*</span>Message</label>
                            <input type="text" placeholder="" class="form-control tbox fomtexbox" id="Message" name="Message">
                          </div>
                          
                   
                          
                   </form>
                 </div>
				
				<div class="centerbtns col-md-12">	
                     <input type="button" class="btn dBtn" value="Submit" onclick="submitFunction();">
       	
       			</div>
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
<%@ include file="Footer.jsp" %>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the Colorbox event to elements
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				
				$('.datepicker').datepicker()
				$("#loading").hide();
			});
		</script>

   <script>
   function submitFunction(){
	   $(".dBtn").blur();
	    if($("#contactForm").validate({
	    	
			 errorPlacement : function(error, element){
				 error.insertAfter(element);
			 },
			 rules:{
			 Name : {
				 required : true,
			 },
			 Email :{
				 required  : true,
				 email : true,
			 },
			 Contact : {
				 required : true,
				 maxlength : 10,
				 minlength : 10,
			 },
			 Message : {
				 required : true,
			 }
			 
			 },
			 messages : {
				 Name : {
					 required : "Please enter your name",
				 },
				 Email : {
					 required : "Please enter email address",
					 email :"Please enter valid email address",
				 },
				 Contact:{
					 required :"Please enter contact number",
					 maxlength :"Please enter valid contact number",
					 minlength :"Please enter valid contact number",
				 },
				 Message : {
					 required : "Please enter message",
				 },
				 
			 }
	   }).form()){  
		   $("#contactForm").submit();
	   }
	   
   }
   
   </script>

   
   
</body>
</html>
