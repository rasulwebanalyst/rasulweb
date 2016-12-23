package com.cricketsocial.bean.board;

import java.util.List;

public class SponserResponse {

	private List<BoardSponserList> boardSponsorsList;
	private List<FileDetails> uploadFileAttachementsList;
	public List<BoardSponserList> getBoardSponsorsList() {
		return boardSponsorsList;
	}
	public void setBoardSponsorsList(List<BoardSponserList> boardSponsorsList) {
		this.boardSponsorsList = boardSponsorsList;
	}
	public List<FileDetails> getUploadFileAttachementsList() {
		return uploadFileAttachementsList;
	}
	public void setUploadFileAttachementsList(
			List<FileDetails> uploadFileAttachementsList) {
		this.uploadFileAttachementsList = uploadFileAttachementsList;
	}
	
	
	
	
	
}
