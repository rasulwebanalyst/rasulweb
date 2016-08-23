/**
 * New node file
 */
$(window).data('ajaxready', true).scroll(function(e) {
    console.log('scroll');
    
	if ($(window).data('ajaxready') == false) {
	//	alert('no ajax');
        return;
    }else{
    	
        if( $(window).scrollTop()+1 >= ($(document).height() - $(window).height())){
        	var boardId=$('#searchboardId').val();
        	getTopBatsMan(pageNum, 50, boardId);
        	pageNum=parseInt(pageNum)+parseInt(10);
        	console.log('page -->'+pageNum);
        		
        }
    }
    
});

function getTopBatsMan(pageNumber,endNumber,boardId){
	console.log('Page--> '+pageNumber+'  EndPage --> '+endNumber+'  boardId-->'+boardId);
	
	var board={
			tournamentId : '',
			homeTeamId : '',
			againstTeamId : '',
			boardId : boardId,
			startNode : pageNumber,
			endNode : endNumber
			
	};
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/topBatsManPagination",
		dataType: "json",
		contentType: "application/json; charset=utf-8",
		data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
			for(var i in res){
				
					var match=res[i].matchsheduledtolist;
					for(var j in match){
						
						var player= match[j].playerlist;
						for(var k in player){
							
							htm +='<tr>';
						
									if(k==0){
										htm +='<td rowspan="'+player.length+'" >'+res[i].tournamentName+'</td>';
									}
									
									//  htm +='<td><a href="'+ctx+'/'+player.teamBoardInfo.boardName+'/board/'+player.teamBoardInfo.boardId+'">'+player.teamBoardInfo.boardName+'</a></td>';
									  htm +=' <td class="tdAlignLeft"><a href="'+ctx+'/buddy/'+player[k].userName+'/'+player[k].userId+'"><span class="text-danger"><img alt="" src="'+player[k].userImageUrl+'" width="50px" height="50px" style="margin-right: 10px;">'+player[k].userName+'</span></a></td>';
									  htm +='<td>';
										  if(player[k].teamBoardInfo!=null){
											  htm +='<a href="'+ctx+'/'+player[k].teamBoardInfo.boardName+'/board/'+player[k].teamBoardInfo.boardId+'">'+player[k].teamBoardInfo.boardName+'</a>';
										  }
									  htm +='</td>';
									  htm +='<td>'+player[k].games+'</td>';
									  htm +='<td>'+player[k].innings+'</td>';
									  htm +='<td>'+player[k].notOuts+'</td>';
									  htm +='<td>'+player[k].sumOfRuns+'</td>';	
									  var avg=player[k].average;
									  htm +='<td>'+round(avg,2)+'</td>';						                          
									  htm +='</tr>';
									
							}//player
					}//matcheshedule
			}//torunment
			
			$('#topbatsmanTableBody').append(htm);
		},
		
		error:function(response){
		},
	
		
	}); 
	
}

