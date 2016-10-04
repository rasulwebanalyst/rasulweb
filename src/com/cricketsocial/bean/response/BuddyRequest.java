package com.cricketsocial.bean.response;

import com.cricketsocial.bean.buddy.UserProfile;

public class BuddyRequest {

	
	private String msgType;
	//private UserProfile requestParam;
	private Object requestParam;
	
	public String getMsgType() {
		return msgType;
	}
	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}
	public Object getRequestParam() {
		return requestParam;
	}
	public void setRequestParam(Object requestParam) {
		this.requestParam = requestParam;
	}
	
	
	
	
}
