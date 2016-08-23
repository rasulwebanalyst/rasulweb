package com.cricketsocial.bean.board;

import java.util.List;

public class BoardCancelledMatchList {

	private List<TournamentScheduler> teamBoardCancelledMatches;
	private List<Tournament> leagueBoardCancelledMatches;
	
	public List<TournamentScheduler> getTeamBoardCancelledMatches() {
		return teamBoardCancelledMatches;
	}
	public void setTeamBoardCancelledMatches(
			List<TournamentScheduler> teamBoardCancelledMatches) {
		this.teamBoardCancelledMatches = teamBoardCancelledMatches;
	}
	public List<Tournament> getLeagueBoardCancelledMatches() {
		return leagueBoardCancelledMatches;
	}
	public void setLeagueBoardCancelledMatches(
			List<Tournament> leagueBoardCancelledMatches) {
		this.leagueBoardCancelledMatches = leagueBoardCancelledMatches;
	}
	
	
	
	
	
	
	
	
}
