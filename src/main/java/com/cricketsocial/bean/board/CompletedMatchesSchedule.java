package com.cricketsocial.bean.board;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class CompletedMatchesSchedule {
	private String awayTeamId;
	private String createdBy;
	private String groundId;
	private Date createdDate;
	private String gameDate;
	private String homeTeamId;
	private String modifiedBy;
	private Date modifiedDate;
	private int noOfOvers;
	private String status;
	private String tournamentId;
	private String tournamentName;
	private String electTo;
	private int loseTeamRuns;
	private int loseTeamWickets;
	private String matchType;
	private UUID matchWonBy;
	private String statusOfMatch;
	private UUID tossWonBy;
	private int winTeamRuns;
	private int winTeamWickets;
    private Map<String,String> umpireList;
    private List<UUID> scorerList;
	private String homeTeamName;
	private String awayTeamName;
	private String groundName;
	private String umpireName;
	private List<UmpireNameList> umpireNamesList;
	private List<ScorerNameList>  scorerNamesList;
	private List<BoardProfile> boardProfList;
	private double loseTeamOvers;
	private double winTeamOvers;
	
	private UUID tournamentSchedulerId;
	
	private int winTeamPoints;
	private int loseTeamPoints;
	private String winTeamName;
	private String loseTeamName;
	
		private int homeTeamPoints;
		private int awayTeamPoints;
	private String manOfTheMatch;

	private String winTeamId;
	private String loseTeamId;
	private String dateString;
	private String leagueCreatedBy;
	
	
	private List<ScorerNameList> portalScorerList;

	private String scorecardLock;
	
	
	
	
	public String getScorecardLock() {
		return scorecardLock;
	}
	public void setScorecardLock(String scorecardLock) {
		this.scorecardLock = scorecardLock;
	}
	public List<ScorerNameList> getPortalScorerList() {
		return portalScorerList;
	}
	public void setPortalScorerList(List<ScorerNameList> portalScorerList) {
		this.portalScorerList = portalScorerList;
	}
	public String getDateString() {
		return dateString;
	}
	public void setDateString(String dateString) {
		this.dateString = dateString;
	}
	public String getLeagueCreatedBy() {
		return leagueCreatedBy;
	}
	public void setLeagueCreatedBy(String leagueCreatedBy) {
		this.leagueCreatedBy = leagueCreatedBy;
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
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	public String getGameDate() {
		return gameDate;
	}
	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public String getElectTo() {
		return electTo;
	}
	public void setElectTo(String electTo) {
		this.electTo = electTo;
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
	public String getMatchType() {
		return matchType;
	}
	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}
	public UUID getMatchWonBy() {
		return matchWonBy;
	}
	public void setMatchWonBy(UUID matchWonBy) {
		this.matchWonBy = matchWonBy;
	}
	public String getStatusOfMatch() {
		return statusOfMatch;
	}
	public void setStatusOfMatch(String statusOfMatch) {
		this.statusOfMatch = statusOfMatch;
	}
	public UUID getTossWonBy() {
		return tossWonBy;
	}
	public void setTossWonBy(UUID tossWonBy) {
		this.tossWonBy = tossWonBy;
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
	public Map<String, String> getUmpireList() {
		return umpireList;
	}
	public void setUmpireList(Map<String, String> umpireList) {
		this.umpireList = umpireList;
	}
	public List<UUID> getScorerList() {
		return scorerList;
	}
	public void setScorerList(List<UUID> scorerList) {
		this.scorerList = scorerList;
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
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public String getUmpireName() {
		return umpireName;
	}
	public void setUmpireName(String umpireName) {
		this.umpireName = umpireName;
	}
	public List<UmpireNameList> getUmpireNamesList() {
		return umpireNamesList;
	}
	public void setUmpireNamesList(List<UmpireNameList> umpireNamesList) {
		this.umpireNamesList = umpireNamesList;
	}
	public List<ScorerNameList> getScorerNamesList() {
		return scorerNamesList;
	}
	public void setScorerNamesList(List<ScorerNameList> scorerNamesList) {
		this.scorerNamesList = scorerNamesList;
	}
	public List<BoardProfile> getBoardProfList() {
		return boardProfList;
	}
	public void setBoardProfList(List<BoardProfile> boardProfList) {
		this.boardProfList = boardProfList;
	}
	public double getLoseTeamOvers() {
		return loseTeamOvers;
	}
	public void setLoseTeamOvers(double loseTeamOvers) {
		this.loseTeamOvers = loseTeamOvers;
	}
	public double getWinTeamOvers() {
		return winTeamOvers;
	}
	public void setWinTeamOvers(double winTeamOvers) {
		this.winTeamOvers = winTeamOvers;
	}
	public UUID getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(UUID tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public int getWinTeamPoints() {
		return winTeamPoints;
	}
	public void setWinTeamPoints(int winTeamPoints) {
		this.winTeamPoints = winTeamPoints;
	}
	public int getLoseTeamPoints() {
		return loseTeamPoints;
	}
	public void setLoseTeamPoints(int loseTeamPoints) {
		this.loseTeamPoints = loseTeamPoints;
	}
	public String getWinTeamName() {
		return winTeamName;
	}
	public void setWinTeamName(String winTeamName) {
		this.winTeamName = winTeamName;
	}
	public String getLoseTeamName() {
		return loseTeamName;
	}
	public void setLoseTeamName(String loseTeamName) {
		this.loseTeamName = loseTeamName;
	}
	public int getHomeTeamPoints() {
		return homeTeamPoints;
	}
	public void setHomeTeamPoints(int homeTeamPoints) {
		this.homeTeamPoints = homeTeamPoints;
	}
	public int getAwayTeamPoints() {
		return awayTeamPoints;
	}
	public void setAwayTeamPoints(int awayTeamPoints) {
		this.awayTeamPoints = awayTeamPoints;
	}
	public String getManOfTheMatch() {
		return manOfTheMatch;
	}
	public void setManOfTheMatch(String manOfTheMatch) {
		this.manOfTheMatch = manOfTheMatch;
	}
	public String getWinTeamId() {
		return winTeamId;
	}
	public void setWinTeamId(String winTeamId) {
		this.winTeamId = winTeamId;
	}
	public String getLoseTeamId() {
		return loseTeamId;
	}
	public void setLoseTeamId(String loseTeamId) {
		this.loseTeamId = loseTeamId;
	}
	
	
}
