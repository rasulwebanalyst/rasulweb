package com.cricketsocial.bean.event;

public class AcceptEventInfo {

	private String eventId;	
	private int eventInfoId;
	private String matchid;
	private String rosterId;
	
	private String userId;
	
	private int active;
	
	private int eventCount;
	
	private String status;
	
	private int acceptedCount;
	private int rejectedCount;
	private int maybeCount;
	

	public int getAcceptedCount() {
		return acceptedCount;
	}

	public void setAcceptedCount(int acceptedCount) {
		this.acceptedCount = acceptedCount;
	}

	public int getRejectedCount() {
		return rejectedCount;
	}

	public void setRejectedCount(int rejectedCount) {
		this.rejectedCount = rejectedCount;
	}

	public int getMaybeCount() {
		return maybeCount;
	}

	public void setMaybeCount(int maybeCount) {
		this.maybeCount = maybeCount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

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
