package com.cricketsocial.bean.board;

import java.util.UUID;

public class BowlingDTO {
	
	private UUID bowlerId;
	private String bowlerName;
	private int ballnumber;
	private int runs;
	private Double overNumber=0.0;
	private int wickets;
	//private double economyRate; 
	private String economyRate;
	
	private int zeroRuns;
	private int fours;
	private int six;
	private int meidan;
	
	
	
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
	}
	public int getBallnumber() {
		return ballnumber;
	}
	public void setBallnumber(int ballnumber) {
		this.ballnumber = ballnumber;
	}
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}

	public Double getOverNumber() {
		return overNumber;
	}
	public void setOverNumber(Double overNumber) {
		this.overNumber = overNumber;
	}
	public int getWickets() {
		return wickets;
	}
	public void setWickets(int wickets) {
		this.wickets = wickets;
	}
	/*public double getEconomyRate() {
		return economyRate;
	}
	public void setEconomyRate(double economyRate) {
		this.economyRate = economyRate;
	}*/
	public String getEconomyRate() {
		return economyRate;
	}
	public void setEconomyRate(String economyRate) {
		this.economyRate = economyRate;
	}
	public int getZeroRuns() {
		return zeroRuns;
	}
	public void setZeroRuns(int zeroRuns) {
		this.zeroRuns = zeroRuns;
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
	public int getMeidan() {
		return meidan;
	}
	public void setMeidan(int meidan) {
		this.meidan = meidan;
	}
	
	

}
