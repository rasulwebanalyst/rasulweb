package com.cricketsocial.bean.notification;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.TournamentScheduler;


public class EventNotificationDTO {

	
	private UUID eventId;
	private int active;
	private List<String> createdAs;
	private String createdBy;
	private Date createdDate;
	private String eventDateAndTime;
	private String eventDescription;
	private String eventTypeId;
	private String modifiedBy;
	private Date modifiedDate;
	private String venue;
	private String eventTo;
	private String statusId;
	private String userId;
	private String eventName;
	private Date eventDate;
	private int notificationFlag;
	private List<TournamentScheduler> tournamentScheduler;
	private String firstName;
	private String lastName;
	
	private String oldFname;
	private String oldLname;
	
	private String userImageUrl;
	
	private String oldDob;
	private String newDob;
	
	private String notificationType;
	
	private String cancelReason;
	
	
	
	
	
	
	
	
	
	public String getCancelReason() {
		return cancelReason;
	}
	public void setCancelReason(String cancelReason) {
		this.cancelReason = cancelReason;
	}
	public String getNotificationType() {
		return notificationType;
	}
	public void setNotificationType(String notificationType) {
		this.notificationType = notificationType;
	}
	public String getOldDob() {
		return oldDob;
	}
	public void setOldDob(String oldDob) {
		this.oldDob = oldDob;
	}
	public String getNewDob() {
		return newDob;
	}
	public void setNewDob(String newDob) {
		this.newDob = newDob;
	}
	public String getUserImageUrl() {
		return userImageUrl;
	}
	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}
	public String getOldFname() {
		return oldFname;
	}
	public void setOldFname(String oldFname) {
		this.oldFname = oldFname;
	}
	public String getOldLname() {
		return oldLname;
	}
	public void setOldLname(String oldLname) {
		this.oldLname = oldLname;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public UUID getEventId() {
		return eventId;
	}
	public void setEventId(UUID eventId) {
		this.eventId = eventId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public List<String> getCreatedAs() {
		return createdAs;
	}
	public void setCreatedAs(List<String> createdAs) {
		this.createdAs = createdAs;
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
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getEventTo() {
		return eventTo;
	}
	public void setEventTo(String eventTo) {
		this.eventTo = eventTo;
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
	public Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}
	public int getNotificationFlag() {
		return notificationFlag;
	}
	public void setNotificationFlag(int notificationFlag) {
		this.notificationFlag = notificationFlag;
	}
	public List<TournamentScheduler> getTournamentScheduler() {
		return tournamentScheduler;
	}
	public void setTournamentScheduler(List<TournamentScheduler> tournamentScheduler) {
		this.tournamentScheduler = tournamentScheduler;
	}
	
	
	
	
}
