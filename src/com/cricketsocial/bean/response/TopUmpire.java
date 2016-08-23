package com.cricketsocial.bean.response;

public class TopUmpire {

	private String comments;
	private int rating;
	private String umpireId;
	private String userId;
	private String firstName;
	private String imageUrl;
	
	private int average;
	
	private long sumRating;
	
	
	
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getUmpireId() {
		return umpireId;
	}
	public void setUmpireId(String umpireId) {
		this.umpireId = umpireId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public int getAverage() {
		return average;
	}
	public void setAverage(int average) {
		this.average = average;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public long getSumRating() {
		return sumRating;
	}
	public void setSumRating(long sumRating) {
		this.sumRating = sumRating;
	}
	
	
	
	
	
}
