package com.cricketsocial.bean.board;

public class InningsMap {

	private String innings;
	private String boardId;
	private Double overs;
	private int wickets;
	private int runs;
	public String getInnings() {
		return innings;
	}
	public void setInnings(String innings) {
		this.innings = innings;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public Double getOvers() {
		return overs;
	}
	public void setOvers(Double overs) {
		this.overs = overs;
	}
	public int getWickets() {
		return wickets;
	}
	public void setWickets(int wickets) {
		this.wickets = wickets;
	}
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	private String boardName;
	
	
	
	
}
