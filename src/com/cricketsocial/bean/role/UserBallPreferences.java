package com.cricketsocial.bean.role;

import java.util.Date;
import java.util.UUID;

public class UserBallPreferences {

	private UUID user_id;
	private UUID ball_id;
	private String ball_type;
	private Date created_date;
	private Date modified_date;
	private int active;
	
	public UUID getBall_id() {
		return ball_id;
	}
	public void setBall_id(UUID ball_id) {
		this.ball_id = ball_id;
	}
	public String getBall_type() {
		return ball_type;
	}
	public void setBall_type(String ball_type) {
		this.ball_type = ball_type;
	}
	public UUID getUser_id() {
		return user_id;
	}
	public void setUser_id(UUID user_id) {
		this.user_id = user_id;
	}
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	public Date getModified_date() {
		return modified_date;
	}
	public void setModified_date(Date modified_date) {
		this.modified_date = modified_date;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	
	
	
}
