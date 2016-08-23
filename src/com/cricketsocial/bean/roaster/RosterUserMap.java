package com.cricketsocial.bean.roaster;

import java.util.Date;



public class RosterUserMap {
	private String rosterId;
	private String userId;
	private Date createdDate;
	private Date modifiedDate;
	private String rosterRole;
	private UserProfile userProfile;
	private String boardId;
	private String boardName;
	private String teamType;
	private String BoardImageURL;
	
	
	
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getTeamType() {
		return teamType;
	}
	public void setTeamType(String teamType) {
		this.teamType = teamType;
	}
	public String getBoardImageURL() {
		return BoardImageURL;
	}
	public void setBoardImageURL(String boardImageURL) {
		BoardImageURL = boardImageURL;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getRosterRole() {
		return rosterRole;
	}
	public void setRosterRole(String rosterRole) {
		this.rosterRole = rosterRole;
	}
	public UserProfile getUserProfile() {
		return userProfile;
	}
	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	
	
	
	
	
	
}
