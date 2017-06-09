package com.cricketsocial.bean.board;

import java.util.List;

public class BoardCancelledMatchList {

	private List<TournamentScheduler> teamBoardCancelledMatches;
	private List<Tournament> leagueBoardCancelledMatches;
	private List<TournamentScheduler> cancelledEventList;
	
	
	
	
	
	
	
	public List<TournamentScheduler> getCancelledEventList() {
		return cancelledEventList;
	}
	public void setCancelledEventList(List<TournamentScheduler> cancelledEventList) {
		this.cancelledEventList = cancelledEventList;
	}
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
