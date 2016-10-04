package com.cricketsocial.bean.board;

import java.util.List;

public class BoardResponse {

	private List<BoardDirectorsList> boardDirectorsList;
	private List<FileDetails> uploadFileAttachementsList;
	
	public List<BoardDirectorsList> getBoardDirectorsList() {
		return boardDirectorsList;
	}
	public void setBoardDirectorsList(List<BoardDirectorsList> boardDirectorsList) {
		this.boardDirectorsList = boardDirectorsList;
	}
	public List<FileDetails> getUploadFileAttachementsList() {
		return uploadFileAttachementsList;
	}
	public void setUploadFileAttachementsList(
			List<FileDetails> uploadFileAttachementsList) {
		this.uploadFileAttachementsList = uploadFileAttachementsList;
	}
	
	
	
}
