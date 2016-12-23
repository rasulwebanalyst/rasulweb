package com.cricketsocial.bean.board;

import java.util.Date;

import com.cricketsocial.bean.buddy.UserProfile;



public class BoardCoordinatorMap {

	private String boardId;
	private String coOrdinatorId;
	private int coOrdinatorTypeId;
	private int active;
	private String createdBy;
	private Date createdDate;
	private Date modifiedDate;
	private String modifiedBy;
	
	//KIRAN WRIITEN FOR BOARD DETAILS
	private UserProfile user;
	
	private String coOwnerId;
	
	
		
		
		public String getCoOwnerId() {
		return coOwnerId;
	}
	public void setCoOwnerId(String coOwnerId) {
		this.coOwnerId = coOwnerId;
	}
		public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getCoOrdinatorId() {
		return coOrdinatorId;
	}
	public void setCoOrdinatorId(String coOrdinatorId) {
		this.coOrdinatorId = coOrdinatorId;
	}

	public int getCoOrdinatorTypeId() {
		return coOrdinatorTypeId;
	}
	public void setCoOrdinatorTypeId(int coOrdinatorTypeId) {
		this.coOrdinatorTypeId = coOrdinatorTypeId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
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
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	
	public UserProfile getUser() {
		return user;
	}
	public void setUser(UserProfile user) {
		this.user = user;
	}
	
	
}
