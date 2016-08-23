package com.cricketsocial.bean.board;

import java.util.List;

public class Tournament {

	private String tournamentName;
	private String createdBy;
	private int winPoints;
	private int umpireCheck;
	private String teamboardsId;
	private List<String> teamboardstrlist;
	private List<UmpireIds> teamboardslist;
	private String tournamentId;
	private int active;
	private boolean scheduleCoordinator;
	private List<BoardDTO> boardSearchBean;	
	private List<TournamentScheduler> tournamentScheduler;
	private String gameId;
	private String gameName;
	private String gameType;
	
	private TournamentScheduler tournamentSchedulerObj;
	
	
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public int getWinPoints() {
		return winPoints;
	}
	public void setWinPoints(int winPoints) {
		this.winPoints = winPoints;
	}
	public int getUmpireCheck() {
		return umpireCheck;
	}
	public void setUmpireCheck(int umpireCheck) {
		this.umpireCheck = umpireCheck;
	}
	public String getTeamboardsId() {
		return teamboardsId;
	}
	public void setTeamboardsId(String teamboardsId) {
		this.teamboardsId = teamboardsId;
	} 
	public List<String> getTeamboardstrlist() {
		return teamboardstrlist;
	}
	public void setTeamboardstrlist(List<String> teamboardstrlist) {
		this.teamboardstrlist = teamboardstrlist;
	}
	public List<UmpireIds> getTeamboardslist() {
		return teamboardslist;
	}
	public void setTeamboardslist(List<UmpireIds> teamboardslist) {
		this.teamboardslist = teamboardslist;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public List<BoardDTO> getBoardSearchBean() {
		return boardSearchBean;
	}
	public void setBoardSearchBean(List<BoardDTO> boardSearchBean) {
		this.boardSearchBean = boardSearchBean;
	}
	public List<TournamentScheduler> getTournamentScheduler() {
		return tournamentScheduler;
	}
	public void setTournamentScheduler(List<TournamentScheduler> tournamentScheduler) {
		this.tournamentScheduler = tournamentScheduler;
	}
	public boolean isScheduleCoordinator() {
		return scheduleCoordinator;
	}
	public void setScheduleCoordinator(boolean scheduleCoordinator) {
		this.scheduleCoordinator = scheduleCoordinator;
	}
	
	
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public String getGameType() {
		return gameType;
	}
	public void setGameType(String gameType) {
		this.gameType = gameType;
	}
	public TournamentScheduler getTournamentSchedulerObj() {
		return tournamentSchedulerObj;
	}
	public void setTournamentSchedulerObj(TournamentScheduler tournamentSchedulerObj) {
		this.tournamentSchedulerObj = tournamentSchedulerObj;
	}
	
	
}
