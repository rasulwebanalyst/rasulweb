package com.cricketsocial.bean.response;

import org.springframework.ui.ModelMap;

public class FanResponse {
	private int requestStatus;
	private FanResult results;
	public int getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(int requestStatus) {
		this.requestStatus = requestStatus;
	}
	public FanResult getResults() {
		return results;
	}
	public void setResults(FanResult results) {
		this.results = results;
	}
	
	
}
