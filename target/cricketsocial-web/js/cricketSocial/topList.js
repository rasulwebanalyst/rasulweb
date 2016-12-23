/**
 * New node file
 */
 function tournmentSearch(name)
   {
	   var searchkey=name.value;
	  // alert(searchkey);
	   if(searchkey.length>1){
		 //  alert('ajax result');
		   var   boardId=  document.getElementById('searchboardId').value;
		   console.log("boardId : =========="+boardId);
		   
		   var search={
				   tournamentName : searchkey,
				   boardId : boardId 
	            };
		   var postinfo=JSON.stringify(search);
		   $.ajax({
	    		type : "POST",
	    		url :ctx+"/searchtournamentInLeaug",
	    		dataType: "json",
	            contentType: "application/json; charset=utf-8",
	            data :postinfo,
	    		success : function(res) {
	    			var html="";	
	    			console.log('tornment value------> '+res);
	    			console.log(res);
	    			if(res.length>0)
	    				{
	    				
	    				
	    					for(var i in res)
	    					{
	    						html +="<li onclick=selectTournmentVal('"+res[i].tournamentId+"',this) >"+res[i].tournamentName+"</li>";
	    					}
	    					
	    				}else{
	    				//	displaynotification('Records not found',3000);
	    					htm +="<li>No Records are found</li>";
	    				}
	    			
	    			$('#tournmentSearchResultDIV').html(html);
	    			$('#tournmentSearchDIV').show();
	    		},
	    		error:function(response){
	    			console.log("Your request failed due to some service problem"+JSON.stringify(response));
	    		},
	    	
	    	}); 
		 
	   }else{
		   	$('#SelectTournMent').val('');
		  }
   }
   
   function selectTournmentVal(id, ele)
   {
	   var html='';
	   $('#tournmentSearchDIV').hide();	
		 $('#SelectTournMent').val(id);
		 $('#tournmentInField').val($(ele).text());
		 $('#tournmentSearchResultDIV').html(html);
   }
   
   
   function teamSearch(name)
   {
	   var te='';
		$('#searchTeamBoardList').html(te);
	   var searchkey=name.value;
	   $('#selectTeamBoardId').val('');
	   console.log(searchkey);
	   if(searchkey.length>1){
		 //  alert('ajax result');
		   var   boardId=  document.getElementById('boardId').value;
		   var search={
				   term : searchkey				 
	            };
		   var postinfo=JSON.stringify(search);
		   $.ajax({
	    		type : "GET",
	    		url :ctx+"/boardSearchInCreateTournament?term="+searchkey,
	    		dataType: "json",
	            contentType: "application/json; charset=utf-8",
	           // data :searchkey,
	    		success : function(res) {
	    			var htm="";	
	    			console.log('tornment value------> '+res);
	    			console.log(res);
	    			if(res.length>0)
	    				{
	    					for(var i in res)
	    						{
	    							console.log('value---------------> '+res[i]);
	    							console.log(res[i]);
	    							htm +=" <li onclick=selectTeamBoard('"+res[i].boardId+"',this)>";
	    							htm +="<div class='media'>";
	    							htm +=" <div class='media-left'>";
	    							htm +=" <a href='#'>";
	    							htm +="<img src='"+res[i].boardImageURL+"' class='nav-avatar' onError='imgError(this)'>";
	    							htm +="</a>";
	    							htm +="</div>";
	    							htm +="<div class='media-body'>";               
	    							htm +="<h4>  <a href='#'>"+res[i].boardName+" </a>";                                  
	    							htm +="</h4>";                                    
	    							htm +="</div>";
	    							htm +="</div>";
	    							htm +="</li>";
	    						}
	    					
	    				}else{
	    					//displaynotification('Records not found',3000);
	    					htm +="<li>No Records are found</li>";
	    				}
	    		
	    			$('#searchTeamBoardList').html(htm);
	    			$('#searchTeamBoardDIV').show();
	    			
	    		},
	    		error:function(response){
	    			console.log("Your request failed due to some service problem"+JSON.stringify(response));
	    		},
	    	
	    	}); 
		 
	   }
   }
   function selectTeamBoard(id, ele)
   {
	 /*  var html='';
	   $('#searchTeamBoardDIV').hide();	
		 $('#selectTeamBoardId').val(id);
		 $('#teamBoardInField').val($(ele).text());
		 $('#searchTeamBoardList').html(html);*/
		 
		 var html='';
		   var againest=$('#selectAgainestTeamBoardId').val();
		   if(againest!=id){
			   	 $('#searchTeamBoardDIV').hide();	
				 $('#selectTeamBoardId').val(id);
				 $('#teamBoardInField').val($(ele).text());
				 $('#searchTeamBoardList').html(html);
		   }else{
			   $('#selectTeamBoardId').val('');
			   displaynotification('Already selected as a against team',1500);
		   }
   }
   
   function againestTeamSearch(name)
   {
	   var te='';
		$('#searchAgainestTeamBoardList').html(te);
	   var searchkey=name.value;
	   $('#selectAgainestTeamBoardId').val('');
	   console.log(searchkey);
	   if(searchkey.length>1){
		 //  alert('ajax result');
		   var   boardId=  document.getElementById('boardId').value;
		   var search={
				   term : searchkey				 
	            };
		   var postinfo=JSON.stringify(search);
		   $.ajax({
	    		type : "GET",
	    		url :ctx+"/boardSearchInCreateTournament?term="+searchkey,
	    		dataType: "json",
	            contentType: "application/json; charset=utf-8",
	           // data :searchkey,
	    		success : function(res) {
	    			var htm="";	
	    			console.log('tornment value------> '+res);
	    			console.log(res);
	    			if(res.length>0)
	    				{
	    					for(var i in res)
	    						{
	    							console.log('value---------------> '+res[i]);
	    							console.log(res[i]);
	    							htm +=" <li onclick=selectAgainestTeamBoard('"+res[i].boardId+"',this)>";
	    							htm +="<div class='media'>";
	    							htm +=" <div class='media-left'>";
	    						//	htm +=" <a href='#'>";
	    							htm +="<img src='"+res[i].boardImageURL+"' class='nav-avatar' onError='imgError(this)'>";
	    						//	htm +="</a>";
	    							htm +="</div>";
	    							htm +="<div class='media-body'>";               
	    							//htm +="<h4>  <a href='#'>"+res[i].boardName+" </a>";
	    							htm +="<h4>"+res[i].boardName+"";
	    							htm +="</h4>";                                    
	    							htm +="</div>";
	    							htm +="</div>";
	    							htm +="</li>";
	    						}
	    					
	    				}else{
	    					displaynotification('Records not found',3000);
	    				}
	    		
	    			$('#searchAgainestTeamBoardList').html(htm);
	    			$('#searchAgainestTeamBoardDIV').show();
	    			
	    		},
	    		error:function(response){
	    			console.log("Your request failed due to some service problem"+JSON.stringify(response));
	    		},
	    	
	    	}); 
		 
	   }
   }
   
   
   
   function selectAgainestTeamBoard(id, ele)
   {
	   var html='';
	  // alert(id);
	  /* $('#searchAgainestTeamBoardDIV').hide();	
		 $('#selectAgainestTeamBoardId').val(id);
		 $('#againestteamBoardInField').val($(ele).text());
		 $('#searchAgainestTeamBoardList').html(html);*/
	   var team=$('#selectTeamBoardId').val();
	   if(team!=id){
		   $('#searchAgainestTeamBoardDIV').hide();	
			 $('#selectAgainestTeamBoardId').val(id);
			 $('#againestteamBoardInField').val($(ele).text());
			 $('#searchAgainestTeamBoardList').html(html);
	   }else{
		   $('#searchAgainestTeamBoardDIV').fadeIn();	
		   $('#selectAgainestTeamBoardId').val('');
		   displaynotification('Already selected as a team name',3000);
	   }
   }
   
   
 function searchValiation()
 {
	// alert('function vall');
	 var againest=$('#selectAgainestTeamBoardId').val();
	 var team= $('#selectTeamBoardId').val();
	 var tournment= $('#SelectTournMent').val();
	 //alert('inside form');
	 if(againest!='' || team!='' ||  tournment!='')
		 {
		 		return true;
		 }else{
			 displaynotification('Select any one field',3000);
			 return false;
		 }
	 
 }