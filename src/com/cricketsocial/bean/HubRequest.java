package com.cricketsocial.bean;

import java.util.Properties;

public class HubRequest {

	private int msgType;
	private Properties properties = new Properties();

	private Object requestParam;
	
	
	public Properties getProperties() {
		return properties;
	}

	public void setProperties(Properties properties) {
		this.properties = properties;
	}

	public Object getRequestParam() {
		return requestParam;
	}

	public void setRequestParam(Object requestParam) {
		this.requestParam = requestParam;
	}

	public HubRequest(int msgType) {
		this.setMsgType(msgType);
	}

	public HubRequest() {
		// TODO Auto-generated constructor stub
	}

	public int getMsgType() {
		return msgType;
	}

	public void setMsgType(int msgType) {
		this.msgType = msgType;
	}

	public void setProperty(String itemKey, Object itemValue) {
		this.properties.put(itemKey, itemValue);
	}

	public Object getProperty(String itemKey) {
		return this.properties.get(itemKey);
	}
	
	
	
}
