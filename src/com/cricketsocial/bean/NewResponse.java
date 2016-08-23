package com.cricketsocial.bean;

import com.cricketsocial.bean.board.ScoreCard;


public class NewResponse {

	public String requestStatus;
	public ScoreCard results;

	
	public String getRequestStatus() {
		return requestStatus;
	}

	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}

	public ScoreCard getResults() {
		return results;
	}

	public void setResults(ScoreCard results) {
		this.results = results;
	}

	
	
	
	
}
