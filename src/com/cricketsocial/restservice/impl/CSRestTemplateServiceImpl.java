package com.cricketsocial.restservice.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.cricketsocial.bean.HubRequest;
import com.cricketsocial.bean.event.EditEvent;
import com.cricketsocial.bean.event.Event;
import com.cricketsocial.bean.response.HubResponse;
import com.cricketsocial.bean.response.LoginResponse;
import com.cricketsocial.common.GsonConverters;
import com.cricketsocial.restservice.CSRestTemplateService;
import com.cricketsocial.restservice.CricketSocialRestTemplateService;

@Service
public class CSRestTemplateServiceImpl implements CSRestTemplateService{

	@Autowired
	private CricketSocialRestTemplateService cricketSocialRestTemplateService;

	@Override
	
	public EditEvent gettingEventDetail(String eid) {
		
		EditEvent event=null;
		try{
			 HubRequest hubReq=new HubRequest();
			 hubReq.setMsgType(174);	
			 ModelMap map=new ModelMap();
			 map.put("eventId", eid);				
			 hubReq.setRequestParam(map);
			 String result=cricketSocialRestTemplateService.userRegistration(hubReq);				
			 if(result!=null)
			 {
				HubResponse eventDetail=GsonConverters.getGsonObject().fromJson(result, HubResponse.class);
				
				if(eventDetail!=null && eventDetail.getResults()!=null)
				{
					System.out.println("eventDetail.getResults().getEventDetails()--> "+eventDetail.getResults().getEditEventDeatils().get(0));
					event=eventDetail.getResults().getEditEventDeatils().get(0);
				}
			 }
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return event;
	}

	@Override
	public HubResponse checkBoadFanToBaoad(String boardId, String fanBoarId) {
		System.out.println("fandid ---> "+fanBoarId);
		HubResponse buddyResponse=null;
		try{
			 HubRequest hubReq=new HubRequest();
			 hubReq.setMsgType(185);	
			 ModelMap map=new ModelMap();
			 map.put("boardId", boardId);
			 map.put("fanboardId", fanBoarId);	
			 hubReq.setRequestParam(map);
			 String buddyDetails=cricketSocialRestTemplateService.userRegistration(hubReq);			
			 if(buddyDetails!=null)
			 {
				  buddyResponse= GsonConverters.getGsonObject().fromJson(buddyDetails, HubResponse.class);				 				 
			 }
		}catch(Exception e)
		{
			e.printStackTrace();
		} 
		
		return buddyResponse;
		
	}

	@Override
	public HubResponse checkBoadFanToBuddy(String buddyId, String fanBoarId) {
		HubResponse buddyResponse=null;
		try{
			 HubRequest hubReq=new HubRequest();
			 hubReq.setMsgType(186);	
			 ModelMap map=new ModelMap();
			 map.put("buddyUserId", buddyId);
			 map.put("boardfanId", fanBoarId);	
			 hubReq.setRequestParam(map);
			 String buddyDetails=cricketSocialRestTemplateService.userRegistration(hubReq);			
			 if(buddyDetails!=null)
			 {
				  buddyResponse= GsonConverters.getGsonObject().fromJson(buddyDetails, HubResponse.class);				 				 
			 }
		}catch(Exception e)
		{
			e.printStackTrace();
		} 
		
		return buddyResponse;
	}
	
	
	
	
	
	
}
