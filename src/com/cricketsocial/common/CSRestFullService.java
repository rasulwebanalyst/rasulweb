package com.cricketsocial.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;

import com.cricketsocial.bean.HubRequest;
import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.response.HubResponse;
import com.cricketsocial.bean.response.LoginResponse;
import com.cricketsocial.bean.response.RoleResponse;
import com.cricketsocial.bean.role.UserProfileRole;
import com.cricketsocial.restservice.CricketSocialRestTemplateService;
import com.cricketsocial.restservice.impl.CricketSocialRestTemplateServiceImpl;

public class CSRestFullService {

	
	//@Autowired
	private static CricketSocialRestTemplateService cricketSocialRestTemplateService= new CricketSocialRestTemplateServiceImpl();
	
	
	public static void main(String[] args) throws CSException
	{
		UserProfileRole profile=getUserDetails("f2afd71a-9b6e-423a-903d-61745966e2bf");
		getRoleAndSubCatInfo();
		//System.out.println("user name : "+profile.getFirstName());
	}
	
	public static UserProfileRole getUserDetails(String userId) throws CSException
	{
		
		UserProfileRole userprofile=null;
	
				 HubRequest hubReq=new HubRequest(13);
				 hubReq.setMsgType(13);	
				 ModelMap map=new ModelMap();
				 map.put("userId", userId);				
				 hubReq.setRequestParam(map);
				 String result=cricketSocialRestTemplateService.userRegistration(hubReq);				
				 LoginResponse profile = null;
				 if(result!=null)
				 {
					 /*  profile=GsonConverters.getGsonObject().fromJson(result, LoginResponse.class);
					  if(profile!=null && profile.getResults()!=null)
					  {
						  userprofile=  profile.getResults().getItemsFound()[0];
					  }*/
					 HubResponse userDetails=GsonConverters.getGsonObject().fromJson(result, HubResponse.class);
					 
					 if(userDetails!=null && userDetails.getResults()!=null && userDetails.getResults().getItemsFound()!=null && userDetails.getResults().getItemsFound().size()>0)
					 {
						 userprofile=userDetails.getResults().getItemsFound().get(0);
					 }
					 
				 }
		return userprofile;
	}
	
	public static RoleResponse getRoleAndSubCatInfo() throws CSException
	{
		
		RoleResponse roleResponse=null;
	
				 HubRequest hubReq=new HubRequest();
				 hubReq.setMsgType(14);						
				 hubReq.setRequestParam("");
				 String result=cricketSocialRestTemplateService.userRegistration(hubReq);				
				if(result!=null)
				{					
					 HubResponse role=GsonConverters.getGsonObject().fromJson(result, HubResponse.class);
					 if(role.getResults()!=null)
					 {
						 roleResponse=role.getResults().getRolesAndSubRoles();
					 }
				 
				}
		return roleResponse;
	}
	
}
