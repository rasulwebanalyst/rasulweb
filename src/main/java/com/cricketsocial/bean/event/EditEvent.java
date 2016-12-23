package com.cricketsocial.bean.event;

import java.util.Date;

public class EditEvent {

	
	
	private String eventId;
	private String active;
	private String[] createdAs;
	private String createdBy;
	private String eventDescription;
	private String eventTypeId;
	private String venue;
	private String statusId;
	private String eventName;
	private String eventDate;
	private String acceptedCount;
	private String rejectedCount;
	private String maybeCount;
	private String eventCreatedFrom;
	private Date eventDateAndTime;
	
	public String getEventId() {
		return eventId;
	}
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String[] getCreatedAs() {
		return createdAs;
	}
	public void setCreatedAs(String[] createdAs) {
		this.createdAs = createdAs;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
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
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public String getAcceptedCount() {
		return acceptedCount;
	}
	public void setAcceptedCount(String acceptedCount) {
		this.acceptedCount = acceptedCount;
	}
	public String getRejectedCount() {
		return rejectedCount;
	}
	public void setRejectedCount(String rejectedCount) {
		this.rejectedCount = rejectedCount;
	}
	public String getMaybeCount() {
		return maybeCount;
	}
	public void setMaybeCount(String maybeCount) {
		this.maybeCount = maybeCount;
	}
	public String getEventCreatedFrom() {
		return eventCreatedFrom;
	}
	public void setEventCreatedFrom(String eventCreatedFrom) {
		this.eventCreatedFrom = eventCreatedFrom;
	}
	public Date getEventDateAndTime() {
		return eventDateAndTime;
	}
	public void setEventDateAndTime(Date eventDateAndTime) {
		this.eventDateAndTime = eventDateAndTime;
	}
	
	
	
	
	
	/*
	 * 
	 "eventId": "4400a741-f100-4704-84f0-93ee2f80e4c2",
                "active": 1,
                "createdAs": [
                    "Buddy",
                    "Roster"
                ],
                "createdBy": "25434436-6e27-4fbb-b311-d2419e230165",
                "eventDescription": "sd sadlkf sdlkfjlksdkjf",
                "eventTypeId": "General",
                "venue": "Kaay labs",
                "statusId": "24",
                "eventName": "Roaster edit event test  3",
                "eventDate": "Jan 14, 2016 3:54:46 PM",
                "acceptedCount": 0,
                "rejectedCount": 0,
                "maybeCount": 0,
                "eventCreatedFrom": "Board",
	
	
	 * */
}
