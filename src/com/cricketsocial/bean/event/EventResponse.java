package com.cricketsocial.bean.event;

public class EventResponse {

	private EventResult results;
	private String requestStatus;
	public EventResult getResults() {
		return results;
	}
	public void setResults(EventResult results) {
		this.results = results;
	}
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	
	
	
}
