package com.cricketsocial.bean.updatedevent;

import java.util.List;

import com.cricketsocial.bean.event.Event;



public class EventListingDto {

	
	private List<UpcomingEventList> upcomingMatches;
	private List<EventMatchMap> completedMatches;
	private List<Event> fanOfBuddyEvents;
	
	private UpcomingEventList upcomingeventObj;
	
	private CompletedEventList completedeventObj;
	
	private EventMatchMap eventMatchMap;
	private Event event;
	private String userId;
	
	
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Event getEvent() {
		return event;
	}
	public void setEvent(Event event) {
		this.event = event;
	}
	
	public List<UpcomingEventList> getUpcomingMatches() {
		return upcomingMatches;
	}
	public void setUpcomingMatches(List<UpcomingEventList> upcomingMatches) {
		this.upcomingMatches = upcomingMatches;
	}
	public List<EventMatchMap> getCompletedMatches() {
		return completedMatches;
	}
	public void setCompletedMatches(List<EventMatchMap> completedMatches) {
		this.completedMatches = completedMatches;
	}
	public List<Event> getFanOfBuddyEvents() {
		return fanOfBuddyEvents;
	}
	public void setFanOfBuddyEvents(List<Event> fanOfBuddyEvents) {
		this.fanOfBuddyEvents = fanOfBuddyEvents;
	}
	public EventMatchMap getEventMatchMap() {
		return eventMatchMap;
	}
	public void setEventMatchMap(EventMatchMap eventMatchMap) {
		this.eventMatchMap = eventMatchMap;
	}
	public UpcomingEventList getUpcomingeventObj() {
		return upcomingeventObj;
	}
	public void setUpcomingeventObj(UpcomingEventList upcomingeventObj) {
		this.upcomingeventObj = upcomingeventObj;
	}
	public CompletedEventList getCompletedeventObj() {
		return completedeventObj;
	}
	public void setCompletedeventObj(CompletedEventList completedeventObj) {
		this.completedeventObj = completedeventObj;
	}
	
	
	
}
