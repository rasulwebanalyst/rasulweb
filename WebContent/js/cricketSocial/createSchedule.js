/**
 * New node file
 */
function teamValidation(){
	
	var againesteam=$('#teamSelectBoxDIv1').val();
	var hometeam=$('#teamSelectBoxDIv').val();
	
	//$('#awayTeamError').html('');
	//$('#homeTeamError').html('');
	
	if(hometeam!="0"){
		if(hometeam==againesteam){
			$('#homeTeamError').html('Already choosen as a  away team');
			return false;
		}else{
			$('#homeTeamError').html('');
			return true;
		}
	}else{
		//$('#homeTeamError').html('Please choose the home team');
		//$('#homeTeamError').html('');
		return false;
	}
	
}

function awayteamValidation(){
	
	var againesteam=$('#teamSelectBoxDIv1').val();
	var hometeam=$('#teamSelectBoxDIv').val();
	
	
	//$('#homeTeamError').html('');
	
	if(againesteam!="0"){
		if(hometeam==againesteam){
			$('#awayTeamError').html('Already choosen as a  home team');
			return false;
		}else{
			$('#awayTeamError').html('');
			return true;
		}
	}else{
		//$('#awayTeamError').html('Please choose the away team');
		//$('#awayTeamError').html('');
		return false;
	}
	
}


