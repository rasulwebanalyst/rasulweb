package com.cricketsocial.restservice;

import com.cricketsocial.bean.event.EditEvent;
import com.cricketsocial.bean.event.Event;
import com.cricketsocial.bean.response.HubResponse;

public interface CSRestTemplateService {

	public EditEvent gettingEventDetail(String eid);
	
	public HubResponse checkBoadFanToBaoad(String boardId, String fanBoarId);
	
	public HubResponse checkBoadFanToBuddy(String buddyId, String fanBoarId);
	
	
}
