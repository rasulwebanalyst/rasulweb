package com.cricketsocial.bean.event;

import java.util.List;

public class EventList {

	private String active;
	private List<EventResp>  pastEvents;
	private List<EventResp> upComingEvents;
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public List<EventResp> getPastEvents() {
		return pastEvents;
	}
	public void setPastEvents(List<EventResp> pastEvents) {
		this.pastEvents = pastEvents;
	}
	public List<EventResp> getUpComingEvents() {
		return upComingEvents;
	}
	public void setUpComingEvents(List<EventResp> upComingEvents) {
		this.upComingEvents = upComingEvents;
	}
	
	
	
	
}
