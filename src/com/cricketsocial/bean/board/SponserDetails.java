package com.cricketsocial.bean.board;

import java.util.List;

public class SponserDetails {
	private String boardId;
	private List<Object> boardSponsorsList;
	private List<Object> uploadFileAttachementsList;
	private List<Object> deletedFileAttchementsList;
	private List<Object> boardDirectorsList;
	
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public List<Object> getBoardSponsorsList() {
		return boardSponsorsList;
	}
	public void setBoardSponsorsList(List<Object> boardSponsorsList) {
		this.boardSponsorsList = boardSponsorsList;
	}
	public List<Object> getUploadFileAttachementsList() {
		return uploadFileAttachementsList;
	}
	public void setUploadFileAttachementsList(
			List<Object> uploadFileAttachementsList) {
		this.uploadFileAttachementsList = uploadFileAttachementsList;
	}
	public List<Object> getDeletedFileAttchementsList() {
		return deletedFileAttchementsList;
	}
	public void setDeletedFileAttchementsList(
			List<Object> deletedFileAttchementsList) {
		this.deletedFileAttchementsList = deletedFileAttchementsList;
	}
	public List<Object> getBoardDirectorsList() {
		return boardDirectorsList;
	}
	public void setBoardDirectorsList(List<Object> boardDirectorsList) {
		this.boardDirectorsList = boardDirectorsList;
	}
	
	

}
