package com.cricketsocial.bean;

public class BoardSearchRequest {

	
	private String latlang;
	private String startNode;
	private String endNode;
	private String category;
	private String userId;
	private String[] placesLivedArray;
	
	
	private String fullName;
	private String city;
	private String emailAddress;
	
	public String getLatlang() {
		return latlang;
	}
	public void setLatlang(String latlang) {
		this.latlang = latlang;
	}
	public String getStartNode() {
		return startNode;
	}
	public void setStartNode(String startNode) {
		this.startNode = startNode;
	}
	public String getEndNode() {
		return endNode;
	}
	public void setEndNode(String endNode) {
		this.endNode = endNode;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String[] getPlacesLivedArray() {
		return placesLivedArray;
	}
	public void setPlacesLivedArray(String[] placesLivedArray) {
		this.placesLivedArray = placesLivedArray;
	}
	
	
	
	
	
}
