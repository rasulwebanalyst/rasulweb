package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

public class ScoreDetailsDTO {
	
	private String awayTeamId;
	private String homeTeamId;
	private String teamType;
	private String  tournamnetId;
	private  String tournamentName;
	private String awayTeamName;
	private String homeTeamName;
	private String awayTeamImageURl;
	private String homeTeamImageURL;
	private UUID tosWonBy;
	private String electTo;
	private String matchType;
	private int runs;
	private int ballnumber;
	private int overNumber;
	private int six;
	private int four;
	private int noOfOvers;
	/*private UUID battingId;
	private String battingName;
	private UUID bowlerId;
	private String bowlerName;*/
	private UUID fielderId;
	private String fielderName;
	/*private UUID runnerId;
	private String runnerName;*/
	private  UUID battingTeamId;
	private UUID bowlingTeamId;
	private UUID tournamentSchedulerId;
	
	private BattingDTO battingInfo;
	private BowlingDTO bowlingInfo;
	private RunnerDTO runnerInfo;
	//private List<RunsInfo> runsInfoList;
	
	
	

	public String getMatchType() {
		return matchType;
	}
	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}
	public UUID getTosWonBy() {
		return tosWonBy;
	}
	public void setTosWonBy(UUID tosWonBy) {
		this.tosWonBy = tosWonBy;
	}
	public String getElectTo() {
		return electTo;
	}
	public void setElectTo(String electTo) {
		this.electTo = electTo;
	}
	public BattingDTO getBattingInfo() {
		return battingInfo;
	}
	public void setBattingInfo(BattingDTO battingInfo) {
		this.battingInfo = battingInfo;
	}
	public BowlingDTO getBowlingInfo() {
		return bowlingInfo;
	}
	public void setBowlingInfo(BowlingDTO bowlingInfo) {
		this.bowlingInfo = bowlingInfo;
	}
	public RunnerDTO getRunnerInfo() {
		return runnerInfo;
	}
	public void setRunnerInfo(RunnerDTO runnerInfo) {
		this.runnerInfo = runnerInfo;
	}
	public UUID getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(UUID tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public UUID getBattingTeamId() {
		return battingTeamId;
	}
	public void setBattingTeamId(UUID battingTeamId) {
		this.battingTeamId = battingTeamId;
	}
	public UUID getBowlingTeamId() {
		return bowlingTeamId;
	}
	public void setBowlingTeamId(UUID bowlingTeamId) {
		this.bowlingTeamId = bowlingTeamId;
	}
	public String getAwayTeamImageURl() {
		return awayTeamImageURl;
	}
	public void setAwayTeamImageURl(String awayTeamImageURl) {
		this.awayTeamImageURl = awayTeamImageURl;
	}
	public String getHomeTeamImageURL() {
		return homeTeamImageURL;
	}
	public void setHomeTeamImageURL(String homeTeamImageURL) {
		this.homeTeamImageURL = homeTeamImageURL;
	}
	public int getNoOfOvers() {
		return noOfOvers;
	}
	public void setNoOfOvers(int noOfOvers) {
		this.noOfOvers = noOfOvers;
	}
	public String getAwayTeamId() {
		return awayTeamId;
	}
	public void setAwayTeamId(String awayTeamId) {
		this.awayTeamId = awayTeamId;
	}
	public String getHomeTeamId() {
		return homeTeamId;
	}
	public void setHomeTeamId(String homeTeamId) {
		this.homeTeamId = homeTeamId;
	}
	public String getTeamType() {
		return teamType;
	}
	public void setTeamType(String teamType) {
		this.teamType = teamType;
	}
	public String getTournamnetId() {
		return tournamnetId;
	}
	public void setTournamnetId(String tournamnetId) {
		this.tournamnetId = tournamnetId;
	}
	
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public String getAwayTeamName() {
		return awayTeamName;
	}
	public void setAwayTeamName(String awayTeamName) {
		this.awayTeamName = awayTeamName;
	}
	public String getHomeTeamName() {
		return homeTeamName;
	}
	public void setHomeTeamName(String homeTeamName) {
		this.homeTeamName = homeTeamName;
	}
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	public int getBallnumber() {
		return ballnumber;
	}
	public void setBallnumber(int ballnumber) {
		this.ballnumber = ballnumber;
	}
	
	public int getOverNumber() {
		return overNumber;
	}
	public void setOverNumber(int overNumber) {
		this.overNumber = overNumber;
	}
	public int getSix() {
		return six;
	}
	public void setSix(int six) {
		this.six = six;
	}
	public int getFour() {
		return four;
	}
	public void setFour(int four) {
		this.four = four;
	}
/*	public UUID getBattingId() {
		return battingId;
	}
	public void setBattingId(UUID battingId) {
		this.battingId = battingId;
	}
	public String getBattingName() {
		return battingName;
	}
	public void setBattingName(String battingName) {
		this.battingName = battingName;
	}
	public UUID getBowlerId() {
		return bowlerId;
	}
	public void setBowlerId(UUID bowlerId) {
		this.bowlerId = bowlerId;
	}
	public String getBowlerName() {
		return bowlerName;
	}
	public void setBowlerName(String bowlerName) {
		this.bowlerName = bowlerName;
	}*/
	public UUID getFielderId() {
		return fielderId;
	}
	public void setFielderId(UUID fielderId) {
		this.fielderId = fielderId;
	}
	public String getFielderName() {
		return fielderName;
	}
	public void setFielderName(String fielderName) {
		this.fielderName = fielderName;
	}
	
	/*public UUID getRunnerId() {
		return runnerId;
	}
	public void setRunnerId(UUID runnerId) {
		this.runnerId = runnerId;
	}
	public String getRunnerName() {
		return runnerName;
	}
	public void setRunnerName(String runnerName) {
		this.runnerName = runnerName;
	}*/
	
	
	

	
	

}
