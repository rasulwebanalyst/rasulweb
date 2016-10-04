package com.cricketsocial.restservice;

import com.cricketsocial.bean.HubRequest;
import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.common.CSException;

public interface CricketSocialRestTemplateService {

	public String userRegistration(HubRequest hubRequest) throws CSException;
	
	public UserProfile userLogin(UserProfile userProfile)throws CSException;
	
	public String userRegistration1(HubRequest hubRequest) throws CSException;
	
	
}
