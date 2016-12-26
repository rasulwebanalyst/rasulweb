package com.cricketsocial.bean.roaster;

public class RoasterAttachment {

/*	 "active": 1,
     "attachmentType": "image",
     "attachmentUrl": "http://s3.amazonaws.com/dev-cricket-social-feeds/photos/44885d97-f349-4c93-8c96-3924035d267f_0.jpg",
     "boardId": "345bca40-e085-449f-909e-66f1f16adc63",
     "rosterId": "44885d97-f349-4c93-8c96-3924035d267f"*/
	
	private String active;
	private String attachmentType;
	private String attachmentUrl;
	private String boardId;
	private String rosterId;
	
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getAttachmentType() {
		return attachmentType;
	}
	public void setAttachmentType(String attachmentType) {
		this.attachmentType = attachmentType;
	}
	public String getAttachmentUrl() {
		return attachmentUrl;
	}
	public void setAttachmentUrl(String attachmentUrl) {
		this.attachmentUrl = attachmentUrl;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	
	
	
}
