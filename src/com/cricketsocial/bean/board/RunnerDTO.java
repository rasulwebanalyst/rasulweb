package com.cricketsocial.bean.board;

import java.util.UUID;

public class RunnerDTO {
	private UUID runnerId;
	private String runnerName;
	private int six;
	private int four;
	private int ballnumber;
	//private double strikeRate;
	private String strikeRate;
	private int runs;
	
	
	
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	public UUID getRunnerId() {
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
	public int getBallnumber() {
		return ballnumber;
	}
	public void setBallnumber(int ballnumber) {
		this.ballnumber = ballnumber;
	}
	/*public double getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(double strikeRate) {
		this.strikeRate = strikeRate;
	}*/
	public String getStrikeRate() {
		return strikeRate;
	}
	public void setStrikeRate(String strikeRate) {
		this.strikeRate = strikeRate;
	}
	
	
	
}
