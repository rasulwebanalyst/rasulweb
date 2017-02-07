package com.cricketsocial.bean.board;

import java.io.Serializable;
import java.util.List;

public class UmpireAndScorerDetails implements Serializable{

	private List<UmpireNameList> umpireNamesList;
	private List<ScorerNameList> scorerNamesList;
	private int winPoints;
	private String groundId;
	
	
	
	
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public List<UmpireNameList> getUmpireNamesList() {
		return umpireNamesList;
	}
	public void setUmpireNamesList(List<UmpireNameList> umpireNamesList) {
		this.umpireNamesList = umpireNamesList;
	}
	public List<ScorerNameList> getScorerNamesList() {
		return scorerNamesList;
	}
	public void setScorerNamesList(List<ScorerNameList> scorerNamesList) {
		this.scorerNamesList = scorerNamesList;
	}
	public int getWinPoints() {
		return winPoints;
	}
	public void setWinPoints(int winPoints) {
		this.winPoints = winPoints;
	}

	
	
}
