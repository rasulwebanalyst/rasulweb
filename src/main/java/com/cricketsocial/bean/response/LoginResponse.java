package com.cricketsocial.bean.response;

import java.util.Map;

import com.cricketsocial.bean.buddy.UserProfile;

public class LoginResponse {

	public static final int SUCCESS = 0;
	public static final int UNSUPPORTED_REQUEST = 1;
	
	public static final int INCOMPLETE_REQUEST_DETAILS = 2;
	public static final int FAILURE = 3;
	public static final int STARTED = 4;
	private int requestStatus;
	private UserResponse results;
	private String userName;
	private String UserExist;
	private String status;

	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(int requestStatus) {
		this.requestStatus = requestStatus;
	}
	
	public UserResponse getResults() {
		return results;
	}
	public void setResults(UserResponse results) {
		this.results = results;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserExist() {
		return UserExist;
	}
	public void setUserExist(String userExist) {
		UserExist = userExist;
	}

	
	
	
	
	
	
}
