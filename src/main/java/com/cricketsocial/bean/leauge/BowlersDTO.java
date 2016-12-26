package com.cricketsocial.bean.leauge;

import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.BoardProfile;

public class BowlersDTO implements Comparable<BowlersDTO>{

	
	private UUID userId;
	private String userName;
	private int totalruns;
	private int wickets;
	private double overs;
	private String team;
	private String games;
	private int innings;
	private int notOuts;
	private long runs;
	private double average;
	private float sumOfRuns;
	private String homeTeamId;
	private String homeTeamName;
	private String homeTeamImgUrl;
	private String awayTeamId;
	private String awayTeamName;
	private String awayTeamImgUrl;
	private BoardProfile teamBoardInfo;
	private String userImageUrl;
	
	private String bowlingOvers;
	private String maidenOvers;
	private String bowlingRuns;
	private String economy;
	private String strikeRate;
	private String fourFer;
	private String fiveFer;
	private String bbi;
	
	
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
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getGames() {
		return games;
	}
	public void setGames(String games) {
		this.games = games;
	}
	public int getInnings() {
		return innings;
	}
	public void setInnings(int innings) {
		this.innings = innings;
	}
	public int getNotOuts() {
		return notOuts;
	}
	public void setNotOuts(int notOuts) {
		this.notOuts = notOuts;
	}
	public long getRuns() {
		return runs;
	}
	public void setRuns(long runs) {
		this.runs = runs;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}
	public float getSumOfRuns() {
		return sumOfRuns;
	}
	public void setSumOfRuns(float sumOfRuns) {
		this.sumOfRuns = sumOfRuns;
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

	
	
	public BoardProfile getTeamBoardInfo() {
		return teamBoardInfo;
	}
	public void setTeamBoardInfo(BoardProfile teamBoardInfo) {
		this.teamBoardInfo = teamBoardInfo;
	}
	public int compareTo(BowlersDTO playerDTO){
		// TODO Auto-generated method stub
		float compareWickets=((BowlersDTO)playerDTO).getWickets();
		if(this.getWickets()-compareWickets >0){
			return 1;
		}else if((this.getWickets()-compareWickets) < 0){
			return -1;
		}else{
			return 0;
		}
		
	}
	public String getUserImageUrl() {
		return userImageUrl;
	}
	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}
	public String getBowlingOvers() {
		return bowlingOvers;
	}
	public void setBowlingOvers(String bowlingOvers) {
		this.bowlingOvers = bowlingOvers;
	}
	public String getMaidenOvers() {
		return maidenOvers;
	}
	public void setMaidenOvers(String maidenOvers) {
		this.maidenOvers = maidenOvers;
	}
	public String getBowlingRuns() {
		return bowlingRuns;
	}
	public void setBowlingRuns(String bowlingRuns) {
		this.bowlingRuns = bowlingRuns;
	}
	public String getEconomy() {
		return economy;
	}
	public void setEconomy(String economy) {
		this.economy = economy;
	}
	public String getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(String strikeRate) {
		this.strikeRate = strikeRate;
	}
	public String getFourFer() {
		return fourFer;
	}
	public void setFourFer(String fourFer) {
		this.fourFer = fourFer;
	}
	public String getFiveFer() {
		return fiveFer;
	}
	public void setFiveFer(String fiveFer) {
		this.fiveFer = fiveFer;
	}
	public String getBbi() {
		return bbi;
	}
	public void setBbi(String bbi) {
		this.bbi = bbi;
	}
	
	
	
}
