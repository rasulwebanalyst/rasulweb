package com.cricketsocial.bean.response;

public class UserFeedResponse {
	private FeedResponse results;
	private String requestStatus;
	
	
	public FeedResponse getResults() {
		return results;
	}
	public void setResults(FeedResponse results) {
		this.results = results;
	}
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	
	
}
