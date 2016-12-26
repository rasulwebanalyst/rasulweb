package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

public class BowlingPlayerSummary {

	
	private UUID playerId;
	private String playerName;
	private String playerFullName;
	private UUID matchId;
	private double bowlingOvers;	
	private int wickets;
	private double average;	
	private int runs;
	private int meidan;
	private String econamyRate;
	private int zeroRuns;
	private int four;
	private int six;
	private int bowlingZeros;
	
	private List<String> extras;

	
	
	public int getZeroRuns() {
		return zeroRuns;
	}
	public void setZeroRuns(int zeroRuns) {
		this.zeroRuns = zeroRuns;
	}
	public int getFour() {
		return four;
	}
	public void setFour(int four) {
		this.four = four;
	}
	public int getSix() {
		return six;
	}
	public void setSix(int six) {
		this.six = six;
	}
	public int getMeidan() {
		return meidan;
	}
	public void setMeidan(int meidan) {
		this.meidan = meidan;
	}
	public UUID getPlayerId() {
		return playerId;
	}
	public void setPlayerId(UUID playerId) {
		this.playerId = playerId;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public UUID getMatchId() {
		return matchId;
	}
	public void setMatchId(UUID matchId) {
		this.matchId = matchId;
	}
	public double getBowlingOvers() {
		return bowlingOvers;
	}
	public void setBowlingOvers(double bowlingOvers) {
		this.bowlingOvers = bowlingOvers;
	}
	public int getWickets() {
		return wickets;
	}
	public void setWickets(int wickets) {
		this.wickets = wickets;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}	
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	public String getEconamyRate() {
		return econamyRate;
	}
	public void setEconamyRate(String econamyRate) {
		this.econamyRate = econamyRate;
	}
	public String getPlayerFullName() {
		return playerFullName;
	}
	public void setPlayerFullName(String playerFullName) {
		this.playerFullName = playerFullName;
	}
	public List<String> getExtras() {
		return extras;
	}
	public void setExtras(List<String> extras) {
		this.extras = extras;
	}
	public int getBowlingZeros() {
		return bowlingZeros;
	}
	public void setBowlingZeros(int bowlingZeros) {
		this.bowlingZeros = bowlingZeros;
	}


}
