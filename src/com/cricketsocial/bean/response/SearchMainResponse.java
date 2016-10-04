package com.cricketsocial.bean.response;

public class SearchMainResponse {
private int requestStatus;
	
	private SearchResults results;

	public int getRequestStatus() {
		return requestStatus;
	}

	public void setRequestStatus(int requestStatus) {
		this.requestStatus = requestStatus;
	}

	public SearchResults getResults() {
		return results;
	}

	public void setResults(SearchResults results) {
		this.results = results;
	}
	
	
	
	
}
