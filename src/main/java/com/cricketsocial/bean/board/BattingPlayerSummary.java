package com.cricketsocial.bean.board;

import java.util.UUID;

public class BattingPlayerSummary {
	
	private UUID playerId;
	private String playerName;
	private String playerFullName;
	
	private UUID matchId;
	private int ballNumber;
	private double battingOvers;	
	private int fours;
	private int six;	
	private String wicketBy;
	//private double strikeRate;
	private String strikeRate;
	private int runs;
	
    private UUID wicketTakenBy;
	
	
	//private String strikeRate;
	
	private int posOrder;
	private UUID feilderId;
	private String fielderName;
	private String dismisalType;
	private int minutes;
    private String BowlerName;
    private String dismissalType;
    private int battingRuns;
    private int battingBallnumber;
    private int battingFours;
    private int battingSix;
    private double battingStrikeRating;    
    private UUID battingWicketTakenBy;
    private UUID fielderId;
    
	
	
    
	public UUID getFielderId() {
		return fielderId;
	}
	public void setFielderId(UUID fielderId) {
		this.fielderId = fielderId;
	}
	public UUID getBattingWicketTakenBy() {
		return battingWicketTakenBy;
	}
	public void setBattingWicketTakenBy(UUID battingWicketTakenBy) {
		this.battingWicketTakenBy = battingWicketTakenBy;
	}
	public double getBattingStrikeRating() {
		return battingStrikeRating;
	}
	public void setBattingStrikeRating(double battingStrikeRating) {
		this.battingStrikeRating = battingStrikeRating;
	}
	public int getBattingSix() {
		return battingSix;
	}
	public void setBattingSix(int battingSix) {
		this.battingSix = battingSix;
	}
	public int getBattingFours() {
		return battingFours;
	}
	public void setBattingFours(int battingFours) {
		this.battingFours = battingFours;
	}
	public int getBattingBallnumber() {
		return battingBallnumber;
	}
	public void setBattingBallnumber(int battingBallnumber) {
		this.battingBallnumber = battingBallnumber;
	}
	public int getBattingRuns() {
		return battingRuns;
	}
	public void setBattingRuns(int battingRuns) {
		this.battingRuns = battingRuns;
	}
	public String getDismissalType() {
		return dismissalType;
	}
	public void setDismissalType(String dismissalType) {
		this.dismissalType = dismissalType;
	}
	public UUID getWicketTakenBy() {
		return wicketTakenBy;
	}
	public void setWicketTakenBy(UUID wicketTakenBy) {
		this.wicketTakenBy = wicketTakenBy;
	}
	public int getPosOrder() {
		return posOrder;
	}
	public void setPosOrder(int posOrder) {
		this.posOrder = posOrder;
	}
	public UUID getFeilderId() {
		return feilderId;
	}
	public void setFeilderId(UUID feilderId) {
		this.feilderId = feilderId;
	}
	public String getFielderName() {
		return fielderName;
	}
	public void setFielderName(String fielderName) {
		this.fielderName = fielderName;
	}
	public String getDismisalType() {
		return dismisalType;
	}
	public void setDismisalType(String dismisalType) {
		this.dismisalType = dismisalType;
	}
	public int getMinutes() {
		return minutes;
	}
	public void setMinutes(int minutes) {
		this.minutes = minutes;
	}
	public String getBowlerName() {
		return BowlerName;
	}
	public void setBowlerName(String bowlerName) {
		BowlerName = bowlerName;
	}
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	/*public double getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(double strikeRate) {
		this.strikeRate = strikeRate;
	}*/
	
	public String getPlayerName() {
		return playerName;
	}
	public String getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(String strikeRate) {
		this.strikeRate = strikeRate;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public UUID getPlayerId() {
		return playerId;
	}
	public void setPlayerId(UUID playerId) {
		this.playerId = playerId;
	}
	public UUID getMatchId() {
		return matchId;
	}
	public void setMatchId(UUID matchId) {
		this.matchId = matchId;
	}
	public int getBallNumber() {
		return ballNumber;
	}
	public void setBallNumber(int ballNumber) {
		this.ballNumber = ballNumber;
	}
	public double getBattingOvers() {
		return battingOvers;
	}
	public void setBattingOvers(double battingOvers) {
		this.battingOvers = battingOvers;
	}
	
	public int getFours() {
		return fours;
	}
	public void setFours(int fours) {
		this.fours = fours;
	}
	public int getSix() {
		return six;
	}
	public void setSix(int six) {
		this.six = six;
	}
	public String getWicketBy() {
		return wicketBy;
	}
	public void setWicketBy(String wicketBy) {
		this.wicketBy = wicketBy;
	}
	public String getPlayerFullName() {
		return playerFullName;
	}
	public void setPlayerFullName(String playerFullName) {
		this.playerFullName = playerFullName;
	}
	

	
	
	
	

}
