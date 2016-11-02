<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/Faveicon.png" />
 <!-- responsive css -->
 <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Cricket Social</title>


</head>
<body>
<%@ include file="CSCommon.jsp" %>
<%@ include file="BoardHeader.jsp" %>
	  

 <section class="middleContentBlock">
<div class="profileBanner"> <img src="${pageContext.request.contextPath}/images/innerBanner.png"> </div>
<div class="container">
  <div class="row">
    <!--Content Block-->
    <div class="col-md-12 middleContBlock noPadding">
      <div class="col-md-12 noPadding">
        
         <%@ include file="LeaugeManagementSideMenu.jsp" %>

      
                  
            <div class="col-md-10 pull-right">
      			<div class="col-md-12 whiteBox">
                	
                    <h1 class="">Top Umpires</h1>
                    
                    
                    
                      <div class="panel-group topUmpPage rosterAccordion" id="accordion">
                      
                      
                      		<c:choose>
                      			<c:when test="${!empty TopUmpireResponse}">
                      					<c:forEach items="${TopUmpireResponse}" var="umpire" varStatus="index">
					                            <div class="panel  umpireInfo">
					                                <div class="" data-toggle="collapse" data-parent="#accordion" onclick="gettingUmpireInfo('${umpire.umpireId}')">
					                                    <div class="col-md-12 noPadding leag-Acc">
					                        
								                          	<div class="col-md-1 noPadding N-btn">
								                            	<h1>${index.count}</h1>
								                         	 </div>
					                          
									                          <div class="col-md-6 Leag-Img"> <img src="${umpire.imageUrl}">
									                            <h4>${umpire.firstName}</h4>
									                            <p>Umpiresinfo</p>
									                          </div>
									                        
									                          <div class="col-md-3 pull-right stared">
									                            <div class="star height"> 
									                          <c:choose>
									                          	<c:when test="${umpire.sumRating gt 0}">
									                          			  <c:forEach begin="1" end="${umpire.sumRating}"> 
									                            			<i class="fa fa-star"></i> 
									                           			 </c:forEach>
									                          	</c:when>
									                          
									                          </c:choose>
									                            <b>${umpire.sumRating}</b><br>
									                              <b>Average Rating</b> </div>
									                          </div>
									                        
									                     </div>
					                                </div>
					                               
								                                <div id="umpireInfo${umpire.umpireId}" class="umpireinfomesgbox" style="display: none;">
								                                    
								                                    
								                                    <div class="panel-body accbox">
								                                      
								                            
								                                        <div class="col-md-3 progressblock1 ">
								                                                <label>4 Star</label>
								                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div></div>
								                                        </div>
								                                        <div class="col-md-3 progressblock1 ">
								                                                <label>3 Star</label>
								                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div></div>
								                                        </div>
								                                        <div class="col-md-3 progressblock2 ">
								                                                <label>2 Star</label>
								                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div></div>
								                                        </div>
								                                        <div class="col-md-3 progressblock3 ">
								                                                <label>1 Star</label>
								                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 10%;"></div></div>
								                                        </div>
								                                   
								      
								                          <div class="accumperreting">
								                          
								                            <img src="images/userImg2.jpg">
								                            <h2 class="noBorder">Per inceptos himenaeos. Etiam in augue purus(${umpire.umpireId}).</h2>
								                            <strong>JAN 01 2015</strong>
								                            <p>Lorem ipsum dolor sit amet, consectetur adipiscingelit. Vivamus quis sagittis velit. Cras sit amet elit non lacus placerat finibus in eget lorem.Duis vitae ornare libereo, sed finibus elit.</p>
								                            
								                          </div>
								                          
								                          <div class="accumperreting">
								                          
								                            <img src="images/userImg2.jpg">
								                            <h2 class="noBorder">Per inceptos himenaeos. Etiam in augue purus.</h2>
								                            <strong>JAN 01 2015</strong>
								                            <p>Lorem ipsum dolor sit amet, consectetur adipiscingelit. Vivamus quis sagittis velit. Cras sit amet elit non lacus placerat finibus in eget lorem.Duis vitae ornare libereo, sed finibus elit.</p>
								                            
								                          </div>
								                          
								                        </div>
								                        
								                        
					                                </div>
					                                
					                            </div>
                            			</c:forEach>
                            	</c:when>
                            	<c:otherwise>
                            		<div style="color: red;">No records found</div>
                            	</c:otherwise>
                                </c:choose>
                            
                            
                            
                            <!-- <div class="panel">
                                <div class="" data-toggle="collapse" data-parent="#accordion" href="#collapsetow">
                                    <div class="col-md-12 noPadding leag-Acc">
                        
                          <div class="col-md-1 noPadding N-btn">
                            <h1>02</h1>
                          </div>
                          
                          <div class="col-md-6 Leag-Img"> <img src="images/userImg2.jpg">
                            <h4>Raj Bhavasar</h4>
                            <p>Umpiresinfo</p>
                          </div>
                        
                          <div class="col-md-3 pull-right">
                            <div class="star height"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <b>4.5</b><br>
                              <b>Average Rating</b> </div>
                          </div>
                        
                        </div>
                                </div>
                               
                                <div id="collapsetow" class="panel-collapse collapse">
                                    
                                    
                                    <div class="panel-body accbox">
                                      
                            
                                        <div class="col-md-3 progressblock1 ">
                                                <label>4 Star</label>
                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"></div></div>
                                        </div>
                                        <div class="col-md-3 progressblock1 ">
                                                <label>3 Star</label>
                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div></div>
                                        </div>
                                        <div class="col-md-3 progressblock2 ">
                                                <label>2 Star</label>
                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div></div>
                                        </div>
                                        <div class="col-md-3 progressblock3 ">
                                                <label>1 Star</label>
                                        <div class="progress"><div class="progress-bar progress-bar-default defaulT1" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 10%;"></div></div>
                                        </div>
                                   
      
                          <div class="accumperreting">
                          
                            <img src="images/userImg2.jpg">
                            <h2 class="noBorder">Per inceptos himenaeos. Etiam in augue purus.</h2>
                            <strong>JAN 01 2015</strong>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscingelit. Vivamus quis sagittis velit. Cras sit amet elit non lacus placerat finibus in eget lorem.Duis vitae ornare libereo, sed finibus elit.</p>
                            
                          </div>
                          
                          <div class="accumperreting">
                          
                            <img src="images/userImg2.jpg">
                            <h2 class="noBorder">Per inceptos himenaeos. Etiam in augue purus.</h2>
                            <strong>JAN 01 2015</strong>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscingelit. Vivamus quis sagittis velit. Cras sit amet elit non lacus placerat finibus in eget lorem.Duis vitae ornare libereo, sed finibus elit.</p>
                            
                          </div>
                          
                        </div>
                        
                        
                                </div>
                            </div> -->
                            
                        </div>
                        
                        
                        
                        <div class="rosterAccordion" id="accordion">
                            
                            <div class="">
                                
                            </div>
                            
                            
                        </div>
          
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

<script type="text/javascript">
function gettingUmpireInfo(id)
{
	//alert(id);
	//alert( ctx+"/topUmpireInfo");
	if(id!='')
		{
		$.ajax({
			type : "POST",
			url : ctx+"/topUmpireInfo",
			dataType: "json",
	     contentType: "application/json; charset=utf-8",
	     data:  id  ,				            
			success : function(res) {
				console.log('umpireIfo');
				console.log(res);
				var htm="";
				if(res!=null)
					{
					$('.umpireinfomesgbox').hide();
						if(res.length>0)
							{
							htm +="<div class='panel-body accbox'>";
							/* htm +="<div class='col-md-3 progressblock1 '>";
							htm +="<label>4 Star</label>";
							htm +=" <div class='progress'><div class='progress-bar progress-bar-default defaulT1' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: 40%;'></div></div>";
							htm +="</div>";
							htm +="<div class='col-md-3 progressblock1 '>";
							htm +=" <label>3 Star</label>";
							htm +="<div class='progress'><div class='progress-bar progress-bar-default defaulT1' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: 30%;'></div></div>";
							htm +="</div>";
							htm +=" <div class='col-md-3 progressblock2 '>";
							htm +=" <label>2 Star</label>";
							htm +="<div class='progress'><div class='progress-bar progress-bar-default defaulT1' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: 20%;'></div></div>";
							htm +="</div>";
							htm +="<div class='col-md-3 progressblock3 '>";
							htm +="<label>1 Star</label>";
							htm +="<div class='progress'><div class='progress-bar progress-bar-default defaulT1' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: 10%;'></div></div>";
							htm +="</div>"; */
							for(var i in res)
								{
								
								  var star=res[i].rating;
								   var img=0;
								   if(star==1){
									   img=20;
								   }else if(star==2){
									   img=40;
								   }else if(star==3){
									   img=60;
								   }else if(star==4){
									   img=80;
								   }else if(star==5){
									   img=100;
								   }
										htm +="<div class='accumperreting'>";
										htm +="<img src='"+res[i].userprofile[0].imageData+"'>";
										htm +="<h2 class='noBorder'>"+res[i].userprofile[0].firstName+"</h2>";
										htm +="<strong>"+getDateInStringFormateWithFullMonthName_withTimeStampInput(res[i].dateVal)+"</strong>";
										htm +="<p>"+res[i].comments+"</p>";
										htm +="<div class='col-md-3 progressblock3 '>";
										htm +="<label>"+star+" Star</label>";
										htm +="<div class='progress'><div class='progress-bar progress-bar-default defaulT1' role='progressbar' aria-valuenow='50' aria-valuemin='0' aria-valuemax='100' style='width: "+img+"%;'></div></div>";
										htm +="</div>";
										htm +="</div>";
								
								
								}
							htm +="</div>";
						//	umpireInfo${umpire.umpireId}
						$('#umpireInfo'+id).html(htm);
							$('#umpireInfo'+id).show();
							//alert($('#umpireInfo'+id).text());
							}else{
								//htm +='Records not found';
								displaynotification('Records not found',2000);
							}
					}else{
						//alert('records not found');
						//htm +='Records not found';
						displaynotification('Records not found',2000);
					}
				
					//	$('#BoardFansListDIV2').html(htm);
				
			},
			
			error:function(response){
			//alert("Error message"+JSON.stringify(response));
			//return null;
			},
		
			
		}); 
		}else{
			
		}

	//showNotification('testtttttt', 1000);
}
$(function(){
	getNotification();
	
	//$('#userNotificationShowDIV').show();
	$("body").click(function(){
			$(".umpireinfomesgbox").fadeOut();		
		});
	
		
	$(".umpireinfomesgbox").click(function(e){
		 e.stopPropagation();			
		});
	
	$(".umpireInfo").click(function(e){
		 e.stopPropagation();
		 
	});    	

	
	
	
});
</script>
</body>
</html>
