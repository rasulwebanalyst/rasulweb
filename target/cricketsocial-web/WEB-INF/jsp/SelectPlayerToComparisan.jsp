<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
<title>Cricket Social</title>
     <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
</head>
<body>

 <%@ include file="CSCommon.jsp" %>
 <%@ include file="BuddyHeader.jsp" %>


 <section class="middleContentBlock">
<!-- <div class="profileBanner"> <img src="images/innerBanner.png"> </div> -->
<%@ include file="UserBanner.jsp" %>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="BuddySideMenu.jsp" %>
            
            <div class="col-md-10 playerCompareBlock pull-right">
             	<div class="col-md-12 whiteBox">
                <h1>SELECT PLAYERS TO COMPARE</h1>
                
                <div class="form-group">
                <table>
                        <thead>
                        <tr>
                          <th class="alignCenter">Player 1</th>
                          <th class="alignCenter">Player 2</th>
                          <th class="alignCenter">Player 3</th>
                          <th class="alignCenter">Player 4</th>
                        </tr>
                       </thead>

                       <tbody>
                        <tr>
                          <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV" onkeyup="playersearch(this,'addMemberautoCompleteDIV','uid')">
                          	<div class="autoComplete" id="addMemberautoCompleteDIV" style="display:none;">
								<ul style="width: 210px;">
						           
						         </ul>                                  	
						   </div>						 
                          </td>
                             
                             
                           <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV1" onkeyup="playersearch(this,'addMemberautoCompleteDIV1','uid1')">
                          <div class="autoComplete" id="addMemberautoCompleteDIV1" style="display:none;">
								<ul style="width: 210px;">
						           
						         </ul>                                  	
						   </div>
                          </td>

                          
                           <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV2" onkeyup="playersearch(this,'addMemberautoCompleteDIV2','uid2')">
                          <div class="autoComplete" id="addMemberautoCompleteDIV2" style="display:none;">
								<ul style="width: 210px;">
						           
						         </ul>                                  	
						   </div>
                          </td>

                          
                          
                           <td>
                          	<input type="text" class="form-control" placeholder="Select Player" id="addMemberNameDIV3" onkeyup="playersearch(this,'addMemberautoCompleteDIV3','uid3')">
                          <div class="autoComplete" id="addMemberautoCompleteDIV3" style="display:none;">
								<ul style="width: 210px;">
						           
						         </ul>                                  	
						   </div>
                          </td>
                          
                          </tr>
                          
                         
                     </tbody>
                 </table>
                 </div>
                 <div style="color: red; text-align: center;" id="compareerror"></div>
                <form action="playerComparing" method="post" id="playerCompareForm" name="playerCompareForm" onsubmit="return playerValidation()">
                
                	<input type="hidden" id="uid" name="uid" value="">
                	<input type="hidden" id="uid1" name="uid1" value="">
                	<input type="hidden" id="uid2" name="uid2" value="">
                	<input type="hidden" id="uid3" name="uid3" value="">
                	<input type="hidden" id="filterByYear" name="filterByYear">
                 <div class="comperbtn pull-right">
                	<button type="submit" class="btn btn-default dBtn"  >Compare</button>
                 </div>
                 </form>
                 
       	</div>
            
 </div>
                    
                    
                    
                    
                    
            
          	
          </div>    
      </div>
          
          
    </div>
  </div>
  <!--/Content Block-->

</section>
 <%@ include file="Footer.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cricketSocial/playerCompare.js"></script>
<script type="text/javascript">

$(function(){
	$('#loading').hide();
});
</script>

   
   
</body>
</html>
