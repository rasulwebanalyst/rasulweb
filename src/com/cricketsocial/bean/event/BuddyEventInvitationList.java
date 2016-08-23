package com.cricketsocial.bean.event;

import java.util.List;

public class BuddyEventInvitationList {

	
	private List<Event> buddyEventInvitationList;
	private List<Event> rosterEventInvitationList;
	
	private List<Event> buddyCompletedInvitationList;
	private List<Event> rosterCompletedInvitationList;
	
	
	public List<Event> getBuddyEventInvitationList() {
		return buddyEventInvitationList;
	}
	public void setBuddyEventInvitationList(List<Event> buddyEventInvitationList) {
		this.buddyEventInvitationList = buddyEventInvitationList;
	}
	public List<Event> getRosterEventInvitationList() {
		return rosterEventInvitationList;
	}
	public void setRosterEventInvitationList(List<Event> rosterEventInvitationList) {
		this.rosterEventInvitationList = rosterEventInvitationList;
	}
	public List<Event> getBuddyCompletedInvitationList() {
		return buddyCompletedInvitationList;
	}
	public void setBuddyCompletedInvitationList(
			List<Event> buddyCompletedInvitationList) {
		this.buddyCompletedInvitationList = buddyCompletedInvitationList;
	}
	public List<Event> getRosterCompletedInvitationList() {
		return rosterCompletedInvitationList;
	}
	public void setRosterCompletedInvitationList(
			List<Event> rosterCompletedInvitationList) {
		this.rosterCompletedInvitationList = rosterCompletedInvitationList;
	}
	
	
	
}
