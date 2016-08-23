package com.cricketsocial.bean.event;

import java.util.List;

import com.cricketsocial.bean.updatedevent.EventMatchMap;

public class MatchAllStatusResponse {

	
	private List<EventMatchMap> acceptedMatchList;
	private List<EventMatchMap> maybeMatchList;
	private List<EventMatchMap> rejectMatchList;
	
	public List<EventMatchMap> getAcceptedMatchList() {
		return acceptedMatchList;
	}
	public void setAcceptedMatchList(List<EventMatchMap> acceptedMatchList) {
		this.acceptedMatchList = acceptedMatchList;
	}
	public List<EventMatchMap> getMaybeMatchList() {
		return maybeMatchList;
	}
	public void setMaybeMatchList(List<EventMatchMap> maybeMatchList) {
		this.maybeMatchList = maybeMatchList;
	}
	public List<EventMatchMap> getRejectMatchList() {
		return rejectMatchList;
	}
	public void setRejectMatchList(List<EventMatchMap> rejectMatchList) {
		this.rejectMatchList = rejectMatchList;
	}
	
	
}
