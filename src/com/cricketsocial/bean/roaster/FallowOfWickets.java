package com.cricketsocial.bean.roaster;

import java.io.Serializable;
import java.util.Date;



public class FallowOfWickets implements Serializable{
	
	public int wicketNumber;
	private int runs;
	
	
	
	public int getWicketNumber() {
		return wicketNumber;
	}
	public void setWicketNumber(int wicketNumber) {
		this.wicketNumber = wicketNumber;
	}
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	
}
