package com.cricketsocial.bean.response;

import com.cricketsocial.bean.user.CodeVerification;

public class CodeVerificationResponse {
	private String requestStatus;
	private CodeVerification results;
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	public CodeVerification getResults() {
		return results;
	}
	public void setResults(CodeVerification results) {
		this.results = results;
	}
	
	
}
