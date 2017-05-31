package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

public class GameSchedule {

	private List<UpcomingMatches> upComingMatchesList;
	private List<CompletedMatches> completedMatchesList;
	private UUID boardId;
	private String fromDateString;
	private String toDateString;
	private String tournamentName;
	private int startNode;
	private int endNode;
	private String tournamentId;
	private List<InprogressMatches> inprogressMatchesList;
	private List<UpcomingMatches> incompleteMatchesList;
	private String filterByYear;
	private String userId;
	private String flag;
	private String fromDate;
	private String toDate;
	
	private String tournament;
	private String tournamentHiddenId;
	
	
	
	
	
	public String getTournamentHiddenId() {
		return tournamentHiddenId;
	}
	public void setTournamentHiddenId(String tournamentHiddenId) {
		this.tournamentHiddenId = tournamentHiddenId;
	}
	public String getTournament() {
		return tournament;
	}
	public void setTournament(String tournament) {
		this.tournament = tournament;
	}
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
	public List<UpcomingMatches> getUpComingMatchesList() {
		return upComingMatchesList;
	}
	public void setUpComingMatchesList(List<UpcomingMatches> upComingMatchesList) {
		this.upComingMatchesList = upComingMatchesList;
	}
	public List<CompletedMatches> getCompletedMatchesList() {
		return completedMatchesList;
	}
	public void setCompletedMatchesList(List<CompletedMatches> completedMatchesList) {
		this.completedMatchesList = completedMatchesList;
	}
	public UUID getBoardId() {
		return boardId;
	}
	public void setBoardId(UUID boardId) {
		this.boardId = boardId;
	}
	public String getFromDateString() {
		return fromDateString;
	}
	public void setFromDateString(String fromDateString) {
		this.fromDateString = fromDateString;
	}
	public String getToDateString() {
		return toDateString;
	}
	public void setToDateString(String toDateString) {
		this.toDateString = toDateString;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public int getStartNode() {
		return startNode;
	}
	public void setStartNode(int startNode) {
		this.startNode = startNode;
	}
	public int getEndNode() {
		return endNode;
	}
	public void setEndNode(int endNode) {
		this.endNode = endNode;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public List<InprogressMatches> getInprogressMatchesList() {
		return inprogressMatchesList;
	}
	public void setInprogressMatchesList(List<InprogressMatches> inprogressMatchesList) {
		this.inprogressMatchesList = inprogressMatchesList;
	}
	public String getFilterByYear() {
		return filterByYear;
	}
	public void setFilterByYear(String filterByYear) {
		this.filterByYear = filterByYear;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public List<UpcomingMatches> getIncompleteMatchesList() {
		return incompleteMatchesList;
	}
	public void setIncompleteMatchesList(List<UpcomingMatches> incompleteMatchesList) {
		this.incompleteMatchesList = incompleteMatchesList;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}

	
	
	
	
	
}
