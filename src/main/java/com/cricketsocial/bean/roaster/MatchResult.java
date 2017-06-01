package com.cricketsocial.bean.roaster;


import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.leauge.PlayerDTO;

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
	private Double homeTeamOvers;
	private Double awayTeamOvers;
	private int homeTeamPoints;
	private int awayTeamPoints;
	private int awayTeamWickets;
	private int homeTeamWickets;
	private int homeTeamRuns;
	private int awayTeamRuns;
	private String homeTeamCoach;
	private String awayTeamCoach;
	private UUID homeTeamCoachId;
	private UUID awayTeamCoachId;
	private List<PlayerDTO> manoftheMaTchList;
	private String wonTeam;
	private double totalOvers;
	
	
	
	
	public double getTotalOvers() {
		return totalOvers;
	}
	public void setTotalOvers(double totalOvers) {
		this.totalOvers = totalOvers;
	}
	public String getWonTeam() {
		return wonTeam;
	}
	public void setWonTeam(String wonTeam) {
		this.wonTeam = wonTeam;
	}
	public List<PlayerDTO> getManoftheMaTchList() {
		return manoftheMaTchList;
	}
	public void setManoftheMaTchList(List<PlayerDTO> manoftheMaTchList) {
		this.manoftheMaTchList = manoftheMaTchList;
	}
	public UUID getHomeTeamCoachId() {
		return homeTeamCoachId;
	}
	public void setHomeTeamCoachId(UUID homeTeamCoachId) {
		this.homeTeamCoachId = homeTeamCoachId;
	}
	public UUID getAwayTeamCoachId() {
		return awayTeamCoachId;
	}
	public void setAwayTeamCoachId(UUID awayTeamCoachId) {
		this.awayTeamCoachId = awayTeamCoachId;
	}
	public Double getHomeTeamOvers() {
		return homeTeamOvers;
	}
	public void setHomeTeamOvers(Double homeTeamOvers) {
		this.homeTeamOvers = homeTeamOvers;
	}
	public Double getAwayTeamOvers() {
		return awayTeamOvers;
	}
	public void setAwayTeamOvers(Double awayTeamOvers) {
		this.awayTeamOvers = awayTeamOvers;
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
	public int getAwayTeamWickets() {
		return awayTeamWickets;
	}
	public void setAwayTeamWickets(int awayTeamWickets) {
		this.awayTeamWickets = awayTeamWickets;
	}
	public int getHomeTeamWickets() {
		return homeTeamWickets;
	}
	public void setHomeTeamWickets(int homeTeamWickets) {
		this.homeTeamWickets = homeTeamWickets;
	}
	public int getHomeTeamRuns() {
		return homeTeamRuns;
	}
	public void setHomeTeamRuns(int homeTeamRuns) {
		this.homeTeamRuns = homeTeamRuns;
	}
	public int getAwayTeamRuns() {
		return awayTeamRuns;
	}
	public void setAwayTeamRuns(int awayTeamRuns) {
		this.awayTeamRuns = awayTeamRuns;
	}
	public String getHomeTeamCoach() {
		return homeTeamCoach;
	}
	public void setHomeTeamCoach(String homeTeamCoach) {
		this.homeTeamCoach = homeTeamCoach;
	}
	public String getAwayTeamCoach() {
		return awayTeamCoach;
	}
	public void setAwayTeamCoach(String awayTeamCoach) {
		this.awayTeamCoach = awayTeamCoach;
	}
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
