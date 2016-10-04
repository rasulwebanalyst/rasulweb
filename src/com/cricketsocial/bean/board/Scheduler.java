package com.cricketsocial.bean.board;

import java.util.Map;



public class Scheduler {

	private String tournamentId;
	private String tounamentName;
	private String gameDateStr;
	private String homeTeamId;
	private String homeTeamName;
	private String awayTeamName;
	private String awayTeamId;
	private String groundId;
	private String groundName;
	private String userId;
	private int active;
	private String createdBy;
	private String modifiedBy;
	//private String umpireList;
	
	
	private Map<String,String> umpireList;
	private String tournamentSchedulerId;
	private String scorerId;
	
	private String gameId;
	private String gameName;
	private String gameTime;
	
	private String timeZone;
	
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getTounamentName() {
		return tounamentName;
	}
	public void setTounamentName(String tounamentName) {
		this.tounamentName = tounamentName;
	}
	public String getGameDateStr() {
		return gameDateStr;
	}
	public void setGameDateStr(String gameDateStr) {
		this.gameDateStr = gameDateStr;
	}
	public String getHomeTeamId() {
		return homeTeamId;
	}
	public void setHomeTeamId(String homeTeamId) {
		this.homeTeamId = homeTeamId;
	}
	public String getHomeTeamName() {
		return homeTeamName;
	}
	public void setHomeTeamName(String homeTeamName) {
		this.homeTeamName = homeTeamName;
	}
	public String getAwayTeamName() {
		return awayTeamName;
	}
	public void setAwayTeamName(String awayTeamName) {
		this.awayTeamName = awayTeamName;
	}
	public String getAwayTeamId() {
		return awayTeamId;
	}
	public void setAwayTeamId(String awayTeamId) {
		this.awayTeamId = awayTeamId;
	}
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public Map<String, String> getUmpireList() {
		return umpireList;
	}
	public void setUmpireList(Map<String, String> umpireList) {
		this.umpireList = umpireList;
	}
	public String getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(String tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public String getScorerId() {
		return scorerId;
	}
	public void setScorerId(String scorerId) {
		this.scorerId = scorerId;
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
	public String getGameTime() {
		return gameTime;
	}
	public void setGameTime(String gameTime) {
		this.gameTime = gameTime;
	}
	public String getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(String timeZone) {
		this.timeZone = timeZone;
	}


	

	
	
}
