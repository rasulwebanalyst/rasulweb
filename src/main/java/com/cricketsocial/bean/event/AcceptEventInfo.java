package com.cricketsocial.bean.event;

public class AcceptEventInfo {

	private String eventId;	
	private int eventInfoId;
	private String matchid;
	private String rosterId;
	
	private String userId;
	
	private int active;
	
	private int eventCount;
	
	
	
	public String getEventId() {
		return eventId;
	}

	public void setEventId(String eventId) {
		this.eventId = eventId;
	}

	public int getEventInfoId() {
		return eventInfoId;
	}

	public void setEventInfoId(int eventInfoId) {
		this.eventInfoId = eventInfoId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public int getEventCount() {
		return eventCount;
	}

	public void setEventCount(int eventCount) {
		this.eventCount = eventCount;
	}

	public String getMatchid() {
		return matchid;
	}

	public void setMatchid(String matchid) {
		this.matchid = matchid;
	}

	public String getRosterId() {
		return rosterId;
	}

	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}

	
	
	
	
}
