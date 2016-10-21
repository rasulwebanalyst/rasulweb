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
