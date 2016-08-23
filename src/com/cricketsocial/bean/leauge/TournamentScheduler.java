package com.cricketsocial.bean.leauge;

import java.util.Date;
import java.util.List;
import java.util.UUID;

public class TournamentScheduler {
	
	private UUID tournamentSchedulerId;
	private int active;
	private String awayTeamId;
	private String createdBy;
	private Date createdDate;
	private String groundId;
	private String homeTeamId;
	private String modifiedBy;
	private Date modifiedDate;
	private int noOfOvers;
	private String tournamentId;
	private String status;
	private List<UUID> umpireIds;
	private Date gameDate;
	private String tournamentName;
	
	
	private UUID tosWonBy;
	private String matchType;
	private String electTo;
	
	private UUID matchWonBy;
	private double loseTeamOvers;
	private int loseTeamRuns;
	private int loseTeamWickets;
	private double winTeamOvers;
	private int winTeamRuns;
	private int winTeamWickets;

	
	
	
	private String matchScoreBoardId;
	private String scorerId;
	private int innings;
	private String matchStatus;
	private String matchDate;
	
	
	
	public String getScorerId() {
		return scorerId;
	}
	public void setScorerId(String scorerId) {
		this.scorerId = scorerId;
	}
	public UUID getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(UUID tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getAwayTeamId() {
		return awayTeamId;
	}
	public void setAwayTeamId(String awayTeamId) {
		this.awayTeamId = awayTeamId;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public String getHomeTeamId() {
		return homeTeamId;
	}
	public void setHomeTeamId(String homeTeamId) {
		this.homeTeamId = homeTeamId;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public int getNoOfOvers() {
		return noOfOvers;
	}
	public void setNoOfOvers(int noOfOvers) {
		this.noOfOvers = noOfOvers;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<UUID> getUmpireIds() {
		return umpireIds;
	}
	public void setUmpireIds(List<UUID> umpireIds) {
		this.umpireIds = umpireIds;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public UUID getTosWonBy() {
		return tosWonBy;
	}
	public void setTosWonBy(UUID tosWonBy) {
		this.tosWonBy = tosWonBy;
	}
	public String getMatchType() {
		return matchType;
	}
	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}
	public String getElectTo() {
		return electTo;
	}
	public void setElectTo(String electTo) {
		this.electTo = electTo;
	}
	
	public String getMatchScoreBoardId() {
		return matchScoreBoardId;
	}
	public void setMatchScoreBoardId(String matchScoreBoardId) {
		this.matchScoreBoardId = matchScoreBoardId;
	}
	public UUID getMatchWonBy() {
		return matchWonBy;
	}
	public void setMatchWonBy(UUID matchWonBy) {
		this.matchWonBy = matchWonBy;
	}
	public double getLoseTeamOvers() {
		return loseTeamOvers;
	}
	public void setLoseTeamOvers(double loseTeamOvers) {
		this.loseTeamOvers = loseTeamOvers;
	}
	public int getLoseTeamRuns() {
		return loseTeamRuns;
	}
	public void setLoseTeamRuns(int loseTeamRuns) {
		this.loseTeamRuns = loseTeamRuns;
	}
	public int getLoseTeamWickets() {
		return loseTeamWickets;
	}
	public void setLoseTeamWickets(int loseTeamWickets) {
		this.loseTeamWickets = loseTeamWickets;
	}
	public double getWinTeamOvers() {
		return winTeamOvers;
	}
	public void setWinTeamOvers(double winTeamOvers) {
		this.winTeamOvers = winTeamOvers;
	}
	public int getWinTeamRuns() {
		return winTeamRuns;
	}
	public void setWinTeamRuns(int winTeamRuns) {
		this.winTeamRuns = winTeamRuns;
	}
	public int getWinTeamWickets() {
		return winTeamWickets;
	}
	public void setWinTeamWickets(int winTeamWickets) {
		this.winTeamWickets = winTeamWickets;
	}
	public int getInnings() {
		return innings;
	}
	public void setInnings(int innings) {
		this.innings = innings;
	}
	public String getMatchStatus() {
		return matchStatus;
	}
	public void setMatchStatus(String matchStatus) {
		this.matchStatus = matchStatus;
	}
	public String getMatchDate() {
		return matchDate;
	}
	public void setMatchDate(String matchDate) {
		this.matchDate = matchDate;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	
	
}
