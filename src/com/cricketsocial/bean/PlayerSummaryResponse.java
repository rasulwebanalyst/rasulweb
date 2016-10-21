package com.cricketsocial.bean;

import com.cricketsocial.bean.board.SummaryResponse;

public class PlayerSummaryResponse {


	public String requestStatus;
	public SummaryResponse results;
	

	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	public SummaryResponse getResults() {
		return results;
	}
	public void setResults(SummaryResponse results) {
		this.results = results;
	}
	
	

	
}

