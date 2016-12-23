package com.cricketsocial.bean.event;

import java.util.List;

public class UpcomingAllStatusEvents {

	/**
	 * @param args
	 */
	private List<Event> acceptedEvents;	
	private List<Event> mayBeEvents;
	private List<Event> rejectedEvents;
	
	public List<Event> getAcceptedEvents() {
		return acceptedEvents;
	}
	public void setAcceptedEvents(List<Event> acceptedEvents) {
		this.acceptedEvents = acceptedEvents;
	}
	public List<Event> getMayBeEvents() {
		return mayBeEvents;
	}
	public void setMayBeEvents(List<Event> mayBeEvents) {
		this.mayBeEvents = mayBeEvents;
	}
	public List<Event> getRejectedEvents() {
		return rejectedEvents;
	}
	public void setRejectedEvents(List<Event> rejectedEvents) {
		this.rejectedEvents = rejectedEvents;
	}
	

	
	
	
	
}
