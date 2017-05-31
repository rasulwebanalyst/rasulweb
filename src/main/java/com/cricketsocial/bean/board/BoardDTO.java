package com.cricketsocial.bean.board;

public class BoardDTO {

	private String boardId;
	private String boardName;
	private String boardImgURL;
	private String matchStatus;
	
	
	
	
	public String getMatchStatus() {
		return matchStatus;
	}
	public void setMatchStatus(String matchStatus) {
		this.matchStatus = matchStatus;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardImgURL() {
		return boardImgURL;
	}
	public void setBoardImgURL(String boardImgURL) {
		this.boardImgURL = boardImgURL;
	}
	
	
	
	
}
