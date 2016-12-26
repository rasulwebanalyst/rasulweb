package com.cricketsocial.bean.response;

import com.cricketsocial.bean.user.UserResults;

public class UserActivationResponse {

	private String requestStatus;
	private UserResults results;
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	public UserResults getResults() {
		return results;
	}
	public void setResults(UserResults results) {
		this.results = results;
	}	
	
	
	
	
}
