package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.buddy.UserProfile;

public class UserResponse {

	private UserProfile itemsFound[];
	private String userName;
	
	
	private String userExist;
	private String loginStatus;
	
	
	private List<UserProfile> gettingUserSearchListDetails;
	
	private String captchaValidation;

	private String signupWarningMessage;
	
	public List<UserProfile> getGettingUserSearchListDetails() {
		return gettingUserSearchListDetails;
	}
	public void setGettingUserSearchListDetails(
			List<UserProfile> gettingUserSearchListDetails) {
		this.gettingUserSearchListDetails = gettingUserSearchListDetails;
	}
	public String getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(String loginStatus) {
		this.loginStatus = loginStatus;
	}
	
	public UserProfile[] getItemsFound() {
		return itemsFound;
	}
	public void setItemsFound(UserProfile[] itemsFound) {
		this.itemsFound = itemsFound;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserExist() {
		return userExist;
	}
	public void setUserExist(String userExist) {
		this.userExist = userExist;
	}
	public String getCaptchaValidation() {
		return captchaValidation;
	}
	public void setCaptchaValidation(String captchaValidation) {
		this.captchaValidation = captchaValidation;
	}
	public String getSignupWarningMessage() {
		return signupWarningMessage;
	}
	public void setSignupWarningMessage(String signupWarningMessage) {
		this.signupWarningMessage = signupWarningMessage;
	}

	
	
	
	
}
