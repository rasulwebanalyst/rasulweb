package com.cricketsocial.bean.leauge;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.BoardProfile;

public class PlayerDTO {

	private UUID userId;
	private String userName;
	private int totalruns;
	private int wickets;
	private double overs;
	
	private String homeTeamId;
	private String homeTeamName;
	private String homeTeamImgUrl;
	private String awayTeamId;
	private String awayTeamName;
	private String awayTeamImgUrl;
	
	private String team;
	private String innings;
	private String notOuts;
	private String runs;
	private double average;
	private String games;
	private int sumOfRuns;
	private BoardProfile teamBoardInfo;
	private String userImageUrl;
	
	private String highest;
	private String centuryCount;
	private String halfCenturyCount;
	private String sixsCount;
	private String foursCount;
	private String strikeRate;
	private String notOutFlag;
	private int battingBalls;
	private UUID tournamentSchedulerId;
	private UUID createdBy;
	
	private UUID sheduledId;
	private String groundName;
	private Date gameDate;
	
	
	
	
	
	
	public UUID getSheduledId() {
		return sheduledId;
	}
	public void setSheduledId(UUID sheduledId) {
		this.sheduledId = sheduledId;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public UUID getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(UUID tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public UUID getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(UUID createdBy) {
		this.createdBy = createdBy;
	}
	public int getBattingBalls() {
		return battingBalls;
	}
	public void setBattingBalls(int battingBalls) {
		this.battingBalls = battingBalls;
	}
	public String getNotOutFlag() {
		return notOutFlag;
	}
	public void setNotOutFlag(String notOutFlag) {
		this.notOutFlag = notOutFlag;
	}
	public String getHighest() {
		return highest;
	}
	public void setHighest(String highest) {
		this.highest = highest;
	}
	public String getCenturyCount() {
		return centuryCount;
	}
	public void setCenturyCount(String centuryCount) {
		this.centuryCount = centuryCount;
	}
	public String getHalfCenturyCount() {
		return halfCenturyCount;
	}
	public void setHalfCenturyCount(String halfCenturyCount) {
		this.halfCenturyCount = halfCenturyCount;
	}
	public String getSixsCount() {
		return sixsCount;
	}
	public void setSixsCount(String sixsCount) {
		this.sixsCount = sixsCount;
	}
	public String getFoursCount() {
		return foursCount;
	}
	public void setFoursCount(String foursCount) {
		this.foursCount = foursCount;
	}
	public String getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(String strikeRate) {
		this.strikeRate = strikeRate;
	}
	public UUID getUserId() {
		return userId;
	}
	public void setUserId(UUID userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getTotalruns() {
		return totalruns;
	}
	public void setTotalruns(int totalruns) {
		this.totalruns = totalruns;
	}
	public int getWickets() {
		return wickets;
	}
	public void setWickets(int wickets) {
		this.wickets = wickets;
	}
	public double getOvers() {
		return overs;
	}
	public void setOvers(double overs) {
		this.overs = overs;
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
	public String getHomeTeamImgUrl() {
		return homeTeamImgUrl;
	}
	public void setHomeTeamImgUrl(String homeTeamImgUrl) {
		this.homeTeamImgUrl = homeTeamImgUrl;
	}
	public String getAwayTeamId() {
		return awayTeamId;
	}
	public void setAwayTeamId(String awayTeamId) {
		this.awayTeamId = awayTeamId;
	}
	public String getAwayTeamName() {
		return awayTeamName;
	}
	public void setAwayTeamName(String awayTeamName) {
		this.awayTeamName = awayTeamName;
	}
	public String getAwayTeamImgUrl() {
		return awayTeamImgUrl;
	}
	public void setAwayTeamImgUrl(String awayTeamImgUrl) {
		this.awayTeamImgUrl = awayTeamImgUrl;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getInnings() {
		return innings;
	}
	public void setInnings(String innings) {
		this.innings = innings;
	}
	public String getNotOuts() {
		return notOuts;
	}
	public void setNotOuts(String notOuts) {
		this.notOuts = notOuts;
	}
	public String getRuns() {
		return runs;
	}
	public void setRuns(String runs) {
		this.runs = runs;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}
	public String getGames() {
		return games;
	}
	public void setGames(String games) {
		this.games = games;
	}
	
	public int getSumOfRuns() {
		return sumOfRuns;
	}
	public void setSumOfRuns(int sumOfRuns) {
		this.sumOfRuns = sumOfRuns;
	}
	public BoardProfile getTeamBoardInfo() {
		return teamBoardInfo;
	}
	public void setTeamBoardInfo(BoardProfile teamBoardInfo) {
		this.teamBoardInfo = teamBoardInfo;
	}
	public String getUserImageUrl() {
		return userImageUrl;
	}
	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}

	
	
	
}
