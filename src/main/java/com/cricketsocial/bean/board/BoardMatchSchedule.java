package com.cricketsocial.bean.board;

import java.util.List;

import com.cricketsocial.bean.buddy.UserProfile;

public class BoardMatchSchedule
{
	private List<UserProfile> acceptEventList;
	private List<UserProfile> maybeEventList;
	private List<UserProfile> rejectEventList;
	public List<UserProfile> getAcceptEventList() {
		return acceptEventList;
	}
	public void setAcceptEventList(List<UserProfile> acceptEventList) {
		this.acceptEventList = acceptEventList;
	}
	public List<UserProfile> getMaybeEventList() {
		return maybeEventList;
	}
	public void setMaybeEventList(List<UserProfile> maybeEventList) {
		this.maybeEventList = maybeEventList;
	}
	public List<UserProfile> getRejectEventList() {
		return rejectEventList;
	}
	public void setRejectEventList(List<UserProfile> rejectEventList) {
		this.rejectEventList = rejectEventList;
	}
	
}
