package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.user.ForgotPasswordResult;

public class ForgotPasswordResults {
	private List<UserProfile> userProfile;
	private ForgotPasswordResult forgotPasswordResult;
	public List<UserProfile> getUserProfile() {
		return userProfile;
	}
	public void setUserProfile(List<UserProfile> userProfile) {
		this.userProfile = userProfile;
	}
	public ForgotPasswordResult getForgotPasswordResult() {
		return forgotPasswordResult;
	}
	public void setForgotPasswordResult(ForgotPasswordResult forgotPasswordResult) {
		this.forgotPasswordResult = forgotPasswordResult;
	}
	
	
}
