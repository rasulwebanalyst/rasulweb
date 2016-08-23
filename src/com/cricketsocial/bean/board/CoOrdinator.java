package com.cricketsocial.bean.board;

import com.cricketsocial.bean.buddy.UserProfile;

public class CoOrdinator {
	private String coOrdinatorId;
	private int  coOrdinatorTypeId;
	private UserProfile user;
	
	
	public UserProfile getUser() {
		return user;
	}
	public void setUser(UserProfile user) {
		this.user = user;
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
	
	
	
}
