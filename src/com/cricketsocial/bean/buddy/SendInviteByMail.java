package com.cricketsocial.bean.buddy;

import java.util.List;

public class SendInviteByMail {
	private String msgcontent;
	private String userId;
	private String emailAddress;
	private List<String> inviteeArray;
	private String boardId;

	
	
	public String getMsgcontent() {
		return msgcontent;
	}
	public void setMsgcontent(String msgcontent) {
		this.msgcontent = msgcontent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public List<String> getInviteeArray() {
		return inviteeArray;
	}
	public void setInviteeArray(List<String> inviteeArray) {
		this.inviteeArray = inviteeArray;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	
	
	
}
