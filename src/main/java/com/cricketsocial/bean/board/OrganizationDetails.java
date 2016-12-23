package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

public class OrganizationDetails {

	private UUID boardId;
	private String boardInfoType;
	private String text;
	private List<Object> fileDetails;
	private List<Object> deletedFileDetails;
	
	public UUID getBoardId() {
		return boardId;
	}
	public void setBoardId(UUID boardId) {
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
	public List<Object> getFileDetails() {
		return fileDetails;
	}
	public void setFileDetails(List<Object> fileDetails) {
		this.fileDetails = fileDetails;
	}
	public List<Object> getDeletedFileDetails() {
		return deletedFileDetails;
	}
	public void setDeletedFileDetails(List<Object> deletedFileDetails) {
		this.deletedFileDetails = deletedFileDetails;
	}
	
	
	
}
