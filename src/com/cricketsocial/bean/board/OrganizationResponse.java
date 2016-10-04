package com.cricketsocial.bean.board;

import java.util.List;

public class OrganizationResponse {
	
	private String boardId;
	private String boardInfoType;
	private String text;
	private List<FileDetails> fileDetails;
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getBoardInfoType() {
		return boardInfoType;
	}
	public void setBoardInfoType(String boardInfoType) {
		this.boardInfoType = boardInfoType;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public List<FileDetails> getFileDetails() {
		return fileDetails;
	}
	public void setFileDetails(List<FileDetails> fileDetails) {
		this.fileDetails = fileDetails;
	}

	
	
}
