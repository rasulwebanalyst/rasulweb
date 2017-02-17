package com.cricketsocial.bean.event;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.BoardProfile;
import com.cricketsocial.bean.buddy.UserProfile;

public class Event {

	private UUID eventId;
	private int active;
	private String[] createdAs;
	private String createdBy;
	private Date createdDate;
	private Date eventDateAndTime;
	private String eventDescription;
	private String eventTypeId;
	private String modifiedBy;
	private Date modifiedDate;
	private String venue;
	
	private String statusId;
	private String userId;
	private String eventName;
	private String[] userIds;
	
	private String arrayUserids;
	private String strDate;
	private String strTime;
	
	//
	
	
	private String eventTo;
	private Date eventDate;
	private int acceptedCount;
	private int rejectedCount;
	private int maybeCount;
	private String eventCreatedFrom;
	
	private List<Event> pastEvents;
	private List<Event> upComingEvents;
	
	private UserProfile usersInfo;
	
	private BoardProfile boardInfo;
	
	
	// for Roster details
	
	private String rosterId;
	private String rosterMemberId;
	
	
	 	private List<Event> upcomingCreatedEventList;
	 	private List<Event> completedCreatedEventList;
	 	
	 	private String cancelResason;
	 	
	 	
	 	
	 	
	 	
	    public String getCancelResason() {
			return cancelResason;
		}
		public void setCancelResason(String cancelResason) {
			this.cancelResason = cancelResason;
		}
		public List<Event> getUpcomingCreatedEventList() {
			return upcomingCreatedEventList;
		}
		public void setUpcomingCreatedEventList(List<Event> upcomingCreatedEventList) {
			this.upcomingCreatedEventList = upcomingCreatedEventList;
		}
		
		
	
	public List<Event> getCompletedCreatedEventList() {
			return completedCreatedEventList;
		}
		public void setCompletedCreatedEventList(List<Event> completedCreatedEventList) {
			this.completedCreatedEventList = completedCreatedEventList;
		}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
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
	public Date getEventDateAndTime() {
		return eventDateAndTime;
	}
	public void setEventDateAndTime(Date eventDateAndTime) {
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
	public String getEventTo() {
		return eventTo;
	}
	public void setEventTo(String eventTo) {
		this.eventTo = eventTo;
	}
	public Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}
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
	public String getEventCreatedFrom() {
		return eventCreatedFrom;
	}
	public void setEventCreatedFrom(String eventCreatedFrom) {
		this.eventCreatedFrom = eventCreatedFrom;
	}
	public List<Event> getPastEvents() {
		return pastEvents;
	}
	public void setPastEvents(List<Event> pastEvents) {
		this.pastEvents = pastEvents;
	}
	public List<Event> getUpComingEvents() {
		return upComingEvents;
	}
	public void setUpComingEvents(List<Event> upComingEvents) {
		this.upComingEvents = upComingEvents;
	}
	
	public BoardProfile getBoardInfo() {
		return boardInfo;
	}
	public void setBoardInfo(BoardProfile boardInfo) {
		this.boardInfo = boardInfo;
	}
	public UserProfile getUsersInfo() {
		return usersInfo;
	}
	public void setUsersInfo(UserProfile usersInfo) {
		this.usersInfo = usersInfo;
	}
	public String[] getCreatedAs() {
		return createdAs;
	}
	public void setCreatedAs(String[] createdAs) {
		this.createdAs = createdAs;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getRosterMemberId() {
		return rosterMemberId;
	}
	public void setRosterMemberId(String rosterMemberId) {
		this.rosterMemberId = rosterMemberId;
	}
	
	
	
}
