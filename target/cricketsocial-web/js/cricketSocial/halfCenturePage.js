/**
 * 
 * 
 */

$(window).data('ajaxready', true).scroll(function(e) {
    console.log('scroll');
    
	if ($(window).data('ajaxready') == false) {
	//	alert('no ajax');
        return;
    }else{
    	
        if( $(window).scrollTop()+1 >= ($(document).height() - $(window).height())){
        	var boardId=$('#searchboardId').val();
        	var view=$('#paginationType').val();
        	if(view=='private'){
        		getHalfCentury(pageNum, 50, boardId);
        	}else{
        		getPublicHalfCentury(pageNum, 50, boardId);
        	}
        	
        	pageNum=parseInt(pageNum)+parseInt(50);
        	console.log('page -->'+pageNum);
        	
        	
        }
    }
    
});

function getHalfCentury(pageNum, endNum, boardId){
	
console.log('Page--> '+pageNum+'  EndPage --> '+endNum+'  boardId-->'+boardId);
	
	var board={
			tournamentId : '',
			homeTeamId : '',
			againstTeamId : '',
			boardId : boardId,
			startNode : pageNum,
			endNode : endNum
			
	};
	var postinfo=JSON.stringify(board);
	$.ajax({
		type : "POST",
		url : ctx+"/halfCenturyPage",
		dataType: "json",
		contentType: "application/json; charset=utf-8",
		data:postinfo,			            
		success : function(res) {
			console.log(res);	
			var htm='';
					
			
			for(var i in res){
				var matches= res[i].matchsheduledtolist;
				for(var j in matches){
					//var player= matches[i].playerlist;
					for(var k in matches[j].playerlist){
						var player=matches[j].playerlist[k];
						htm+='<tr>';
						if(k==0){
							htm+='<td rowspan="'+matches[j].playerlist.length+'" ><span class="text-danger">'+res[i].tournamentName+'</span></td>';
						}
						htm+='<td class="tdAlignLeft"><a href="'+ctx+'/buddy/'+player.userName+'/'+player.userId+'"><span class="text-danger">'+player.userName+'</span></a> </td>';
						htm+='<td>'+player.totalruns+'</td>';
						htm+='<td class="tdAlignLeft"><a href="'+ctx+'/'+player.homeTeamName+'/board/'+player.homeTeamId+'"><img src="'+player.homeTeamImgUrl+'" style="width:30px;">'+player.homeTeamName+'</a></td>';
						htm+='<td class="tdAlignLeft"><a href="'+ctx+'/'+player.awayTeamName+'/board/'+player.awayTeamId+'"><img src="'+player.awayTeamImgUrl+'" style="width:30px;">'+player.awayTeamName+'</a> </td>';
						htm+='<td class="tdAlignLeft">'+matches[j].groundName+'</td>';
						htm+='<td>'+getDateWithTimeStamp(matches[j].gameDate)+'</td>';
						htm+='<td align="center"><a href="'+ctx+'/showScoreCard/boardId/'+boardId+'/matchId/'+matches[i].sheduledId+'"><i class="fa fa-newspaper-o"></i></a></td>';
						htm+='</tr>';
						
					}
				}
			}
			console.log(htm);
			$('#halfCenturyListBodyTable').append(htm);
		},
		
		error:function(response){
		},
	
		
	}); 
	
}

function getPublicHalfCentury(pageNum, endNum, boardId){
	
	console.log('Page--> '+pageNum+'  EndPage --> '+endNum+'  boardId-->'+boardId);
		
		var board={
				tournamentId : '',
				homeTeamId : '',
				againstTeamId : '',
				boardId : boardId,
				startNode : pageNum,
				endNode : endNum
				
		};
		var postinfo=JSON.stringify(board);
		$.ajax({
			type : "POST",
			url : ctx+"/halfCenturyPage",
			dataType: "json",
			contentType: "application/json; charset=utf-8",
			data:postinfo,			            
			success : function(res) {
				console.log(res);	
				var htm='';
						
				
				for(var i in res){
					var matches= res[i].matchsheduledtolist;
					for(var j in matches){
						//var player= matches[i].playerlist;
						for(var k in matches[j].playerlist){
							var player=matches[j].playerlist[k];
							htm+='<tr>';
							if(k==0){
								htm+='<td rowspan="'+matches[j].playerlist.length+'" ><span class="text-danger">'+res[i].tournamentName+'</span></td>';
							}
							htm+='<td class="tdAlignLeft"><a href="'+ctx+'/buddy/'+player.userName+'/'+player.userId+'"><span class="text-danger">'+player.userName+'</span></a> </td>';
							htm+='<td>'+player.totalruns+'</td>';
							htm+='<td class="tdAlignLeft"><a href="'+ctx+'/'+player.homeTeamName+'/board/'+player.homeTeamId+'"><img src="'+player.homeTeamImgUrl+'" style="width:30px;">'+player.homeTeamName+'</a></td>';
							htm+='<td class="tdAlignLeft"><a href="'+ctx+'/'+player.awayTeamName+'/board/'+player.awayTeamId+'"><img src="'+player.awayTeamImgUrl+'" style="width:30px;">'+player.awayTeamName+'</a> </td>';
							htm+='<td class="tdAlignLeft">'+matches[j].groundName+'</td>';
							htm+='<td>'+getDateWithTimeStamp(matches[j].gameDate)+'</td>';
							htm+='<td align="center"><a href="'+ctx+'/showScoreCardPublicProfile/boardId/'+boardId+'/matchId/'+matches[i].sheduledId+'"><i class="fa fa-newspaper-o"></i></a></td>';
							htm+='</tr>';
							
						}
					}
				}
				console.log(htm);
				$('#halfCenturyListBodyTable').append(htm);
			},
			
			error:function(response){
			},
		
			
		}); 
		
	}
