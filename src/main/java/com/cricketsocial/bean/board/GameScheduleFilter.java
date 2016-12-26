package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

public class GameScheduleFilter {

	
	private String fromDate;
	private String toDate;
	private String tournament;
	
	private String tournamentHiddenId;
	private String previousNextFlag;
	private UUID boardId;
	private String dateString;
	private List<UpcomingMatchesSchedule> upComingMatchesList;
	private List<CompletedMatchesSchedule> completedMatchesList;
	private List<InprogressMatchesSchedule> inprogressMatchesList;
	private List<UpcomingMatchesSchedule> incompleteMatchesList;

	public String getFromDate() {
		return fromDate;
	}

	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}

	public String getToDate() {
		return toDate;
	}

	public void setToDate(String toDate) {
		this.toDate = toDate;
	}

	public String getTournament() {
		return tournament;
	}

	public void setTournament(String tournament) {
		this.tournament = tournament;
	}

	public String getTournamentHiddenId() {
		return tournamentHiddenId;
	}

	public void setTournamentHiddenId(String tournamentHiddenId) {
		this.tournamentHiddenId = tournamentHiddenId;
	}

	public String getPreviousNextFlag() {
		return previousNextFlag;
	}

	public void setPreviousNextFlag(String previousNextFlag) {
		this.previousNextFlag = previousNextFlag;
	}

	public UUID getBoardId() {
		return boardId;
	}

	public void setBoardId(UUID boardId) {
		this.boardId = boardId;
	}

	public String getDateString() {
		return dateString;
	}

	public void setDateString(String dateString) {
		this.dateString = dateString;
	}

	public List<UpcomingMatchesSchedule> getUpComingMatchesList() {
		return upComingMatchesList;
	}

	public void setUpComingMatchesList(
			List<UpcomingMatchesSchedule> upComingMatchesList) {
		this.upComingMatchesList = upComingMatchesList;
	}

	public List<CompletedMatchesSchedule> getCompletedMatchesList() {
		return completedMatchesList;
	}

	public void setCompletedMatchesList(
			List<CompletedMatchesSchedule> completedMatchesList) {
		this.completedMatchesList = completedMatchesList;
	}

	public List<InprogressMatchesSchedule> getInprogressMatchesList() {
		return inprogressMatchesList;
	}

	public void setInprogressMatchesList(
			List<InprogressMatchesSchedule> inprogressMatchesList) {
		this.inprogressMatchesList = inprogressMatchesList;
	}

	public List<UpcomingMatchesSchedule> getIncompleteMatchesList() {
		return incompleteMatchesList;
	}

	public void setIncompleteMatchesList(
			List<UpcomingMatchesSchedule> incompleteMatchesList) {
		this.incompleteMatchesList = incompleteMatchesList;
	}
	
	
	
	
	
}
