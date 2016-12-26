package com.cricketsocial.bean.roaster;

import java.io.Serializable;

public class Extras implements Serializable{
	
	private String extraType;
	private int extraRuns;
	
	
	public String getExtraType() {
		return extraType;
	}
	public void setExtraType(String extraType) {
		this.extraType = extraType;
	}
	public int getExtraRuns() {
		return extraRuns;
	}
	public void setExtraRuns(int extraRuns) {
		this.extraRuns = extraRuns;
	}
	
		
}
