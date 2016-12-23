package com.cricketsocial.bean.board;

public class BoardFanRequest {

	/**
	 * @param args
	 */
	private String userId;
	private String boardId;
	private String startNode;
	private String endNode;
	private String fanType;
	
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getStartNode() {
		return startNode;
	}
	public void setStartNode(String startNode) {
		this.startNode = startNode;
	}
	public String getEndNode() {
		return endNode;
	}
	public void setEndNode(String endNode) {
		this.endNode = endNode;
	}
	public String getFanType() {
		return fanType;
	}
	public void setFanType(String fanType) {
		this.fanType = fanType;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
}
