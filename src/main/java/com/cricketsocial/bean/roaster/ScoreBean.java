package com.cricketsocial.bean.roaster;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author KRengaraj
 *
 */
public class ScoreBean {

	
	
	private FirstInnings firstInnings;
	private SecondInnings secondInnings;
/*	private Date createdDate;
	private String currentPlayerStatus;
	private Date modifiedDate;
	private String positionOfStanding;*/
	private String status;
//***************
	private Map<String,String> umpireList;
	private String playerOfTheMatch;
	private String homeTeamCoach;
	private String awayTeamCoach;
	
	private String matchId;
	
	private double winTeamOvers;
	private int winTeamPoints;
	private int winTeamRuns;
	private int winTeamWickets;
	private double loseTeamOvers;
	private int loseTeamRuns;
	private int loseTeamPoints;
	private int loseTeamWickets;
	private String umpireId;
	private String gameType;
	private String homeTeamId;
	private String awayTeamId;
	private String result;
	
	private String gameDate;
	
	private int firstInningsTotalRuns;
	private int secondInningsTotalRuns;
	private String firstInningsTeamId;
	private String secondInningsTeamId;
	private int noOfOvers;
	private String groundId;
	private String scorerId;
	
	
	
	
	
	
	public String getScorerId() {
		return scorerId;
	}
	public void setScorerId(String scorerId) {
		this.scorerId = scorerId;
	}
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public double getWinTeamOvers() {
		return winTeamOvers;
	}
	public void setWinTeamOvers(double winTeamOvers) {
		this.winTeamOvers = winTeamOvers;
	}
	public int getWinTeamPoints() {
		return winTeamPoints;
	}
	public void setWinTeamPoints(int winTeamPoints) {
		this.winTeamPoints = winTeamPoints;
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
	public int getLoseTeamPoints() {
		return loseTeamPoints;
	}
	public void setLoseTeamPoints(int loseTeamPoints) {
		this.loseTeamPoints = loseTeamPoints;
	}
	public int getLoseTeamWickets() {
		return loseTeamWickets;
	}
	public void setLoseTeamWickets(int loseTeamWickets) {
		this.loseTeamWickets = loseTeamWickets;
	}
	public String getMatchId() {
		return matchId;
	}
	public void setMatchId(String matchId) {
		this.matchId = matchId;
	}
	public Map<String, String> getUmpireList() {
		return umpireList;
	}
	public void setUmpireList(Map<String, String> umpireList) {
		this.umpireList = umpireList;
	}
	public String getPlayerOfTheMatch() {
		return playerOfTheMatch;
	}
	public void setPlayerOfTheMatch(String playerOfTheMatch) {
		this.playerOfTheMatch = playerOfTheMatch;
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
	public FirstInnings getFirstInnings() {
		return firstInnings;
	}
	public void setFirstInnings(FirstInnings firstInnings) {
		this.firstInnings = firstInnings;
	}
	public SecondInnings getSecondInnings() {
		return secondInnings;
	}
	public void setSecondInnings(SecondInnings secondInnings) {
		this.secondInnings = secondInnings;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUmpireId() {
		return umpireId;
	}
	public void setUmpireId(String umpireId) {
		this.umpireId = umpireId;
	}
	public String getGameType() {
		return gameType;
	}
	public void setGameType(String gameType) {
		this.gameType = gameType;
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
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getGameDate() {
		return gameDate;
	}
	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}
	public int getFirstInningsTotalRuns() {
		return firstInningsTotalRuns;
	}
	public void setFirstInningsTotalRuns(int firstInningsTotalRuns) {
		this.firstInningsTotalRuns = firstInningsTotalRuns;
	}
	public int getSecondInningsTotalRuns() {
		return secondInningsTotalRuns;
	}
	public void setSecondInningsTotalRuns(int secondInningsTotalRuns) {
		this.secondInningsTotalRuns = secondInningsTotalRuns;
	}
	public String getFirstInningsTeamId() {
		return firstInningsTeamId;
	}
	public void setFirstInningsTeamId(String firstInningsTeamId) {
		this.firstInningsTeamId = firstInningsTeamId;
	}
	public String getSecondInningsTeamId() {
		return secondInningsTeamId;
	}
	public void setSecondInningsTeamId(String secondInningsTeamId) {
		this.secondInningsTeamId = secondInningsTeamId;
	}
	public int getNoOfOvers() {
		return noOfOvers;
	}
	public void setNoOfOvers(int noOfOvers) {
		this.noOfOvers = noOfOvers;
	}
	
	
	
	
}
