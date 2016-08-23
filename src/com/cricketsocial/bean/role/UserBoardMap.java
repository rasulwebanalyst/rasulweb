package com.cricketsocial.bean.role;

import java.util.Date;
import java.util.UUID;

public class UserBoardMap {

	
/*
CREATE TABLE cricketsocial.user_board_map (
	user_board_map_id uuid,
	active int,
	board_id text,
	created_date timestamp,
	modified_date timestamp,
	user_id text,
	PRIMARY KEY (user_board_map_id)
);*/
	
	private UUID userBoardMapId;
	private int active;
	private String boardId;
	private Date createdDate;
	private Date modifiedDate;
	private String userId;
	public UUID getUserBoardMapId() {
		return userBoardMapId;
	}
	public void setUserBoardMapId(UUID userBoardMapId) {
		this.userBoardMapId = userBoardMapId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
}
