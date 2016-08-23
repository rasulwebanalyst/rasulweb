package com.cricketsocial.bean.roaster;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cricketsocial.bean.feed.FeedImage;

public class RoasterMedia {

	
	private List<FeedImage> fileAttachement;
	private String rosterId;
	private String boardId;
	private MultipartFile attachment;
	
	public MultipartFile getAttachment() {
		return attachment;
	}
	public void setAttachment(MultipartFile attachment) {
		this.attachment = attachment;
	}
	public List<FeedImage> getFileAttachement() {
		return fileAttachement;
	}
	public void setFileAttachement(List<FeedImage> fileAttachement) {
		this.fileAttachement = fileAttachement;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	
	
}
