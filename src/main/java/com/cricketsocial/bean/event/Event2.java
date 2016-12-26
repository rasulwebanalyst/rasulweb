package com.cricketsocial.bean.event;

import java.util.Date;
import java.util.UUID;

public class Event2 {

	/**
	 * @param args
	 */
	
	private String eventId;
	private int active;
	private String[] createdAs;
	private String createdBy;
	private String createdBycheck;
	
	//private Date createdDate;
	private String eventDateAndTime;
	private String eventDescription;
	private String eventTypeId;
	private String modifiedBy;
	//private Date modifiedDate;
	private String venue;
	
	private String statusId;
	private String userId;
	private String eventName;
	private String[] userIds;
	private String[] rosterIds;
	
	private String arrayUserids;
	private String strDate;
	private String strTime;
	
	private String eventCreatedFrom;
	
	private String arrayRoasterIds;
	
	
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
	public String getEventDateAndTime() {
		return eventDateAndTime;
	}
	public void setEventDateAndTime(String eventDateAndTime) {
		this.eventDateAndTime = eventDateAndTime;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public String getEventTypeId() {
		return eventTypeId;
	}
	public void setEventTypeId(String eventTypeId) {
		this.eventTypeId = eventTypeId;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String[] getUserIds() {
		return userIds;
	}
	public void setUserIds(String[] userIds) {
		this.userIds = userIds;
	}
	public String getArrayUserids() {
		return arrayUserids;
	}
	public void setArrayUserids(String arrayUserids) {
		this.arrayUserids = arrayUserids;
	}
	public String getStrDate() {
		return strDate;
	}
	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}
	public String getStrTime() {
		return strTime;
	}
	public void setStrTime(String strTime) {
		this.strTime = strTime;
	}
	public String getEventCreatedFrom() {
		return eventCreatedFrom;
	}
	public void setEventCreatedFrom(String eventCreatedFrom) {
		this.eventCreatedFrom = eventCreatedFrom;
	}
	public String[] getCreatedAs() {
		return createdAs;
	}
	public void setCreatedAs(String[] createdAs) {
		this.createdAs = createdAs;
	}
	public String getCreatedBycheck() {
		return createdBycheck;
	}
	public void setCreatedBycheck(String createdBycheck) {
		this.createdBycheck = createdBycheck;
	}
	public String[] getRosterIds() {
		return rosterIds;
	}
	public void setRosterIds(String[] rosterIds) {
		this.rosterIds = rosterIds;
	}
	public String getArrayRoasterIds() {
		return arrayRoasterIds;
	}
	public void setArrayRoasterIds(String arrayRoasterIds) {
		this.arrayRoasterIds = arrayRoasterIds;
	}
	public String getEventId() {
		return eventId;
	}
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	
	
}
