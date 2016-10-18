package com.cricketsocial.bean.roaster;


import java.util.Date;
import java.util.List;
import java.util.UUID;

public class MatchResult {

	
	private UUID matchWonBy;
	private double loseTeamOvers;
	private int loseTeamRuns;
	private int loseTeamWickets;
	private double winTeamOvers;
	private int winTeamRuns;
	private int winTeamWickets;
	private List<String> manOfTheMatch;
	private String message;
	private String gameType;
	private String groundName;
	private String LeagueName;
	private String homeTeamName;
	private String awayTeamName;
	private Date gameDate;
	private String tournamentName;
	private String homeTeamId;
	private String awayTeamId;
	private String endMatchReason;

	
	
	public String getEndMatchReason() {
		return endMatchReason;
	}
	public void setEndMatchReason(String endMatchReason) {
		this.endMatchReason = endMatchReason;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getGameType() {
		return gameType;
	}
	public void setGameType(String gameType) {
		this.gameType = gameType;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public String getLeagueName() {
		return LeagueName;
	}
	public void setLeagueName(String leagueName) {
		LeagueName = leagueName;
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
	
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public String getHomeTeamId() {
		return homeTeamId;
	}
	public void setHomeTeamId(String homeTeamId) {
		this.homeTeamId = homeTeamId;
	}
	public String getAwayTeamId() {
		return awayTeamId;
	}
	public void setAwayTeamId(String awayTeamId) {
		this.awayTeamId = awayTeamId;
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
	public List<String> getManOfTheMatch() {
		return manOfTheMatch;
	}
	public void setManOfTheMatch(List<String> manOfTheMatch) {
		this.manOfTheMatch = manOfTheMatch;
	}
	
	
	
	
}
