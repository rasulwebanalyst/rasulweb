package com.cricketsocial.bean.response;

import java.util.Map;

public class MailInvitaionResponse {
	private int requestStatus;
	private Map<String,String> results;
	public int getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(int requestStatus) {
		this.requestStatus = requestStatus;
	}
	public Map<String, String> getResults() {
		return results;
	}
	public void setResults(Map<String, String> results) {
		this.results = results;
	}
	
	
	
	
}
