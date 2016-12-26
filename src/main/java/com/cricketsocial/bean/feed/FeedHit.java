package com.cricketsocial.bean.feed;

public class FeedHit {
	private String feedId;
	private String hittedBy;
	private String hittedByName;
	private String active;
	
	
	private String itemsFound;
	private String hitCount;
	
	private String sharedFrom;
	
	private String sharedTo;
	
	
	
	
	public String getSharedTo() {
		return sharedTo;
	}
	public void setSharedTo(String sharedTo) {
		this.sharedTo = sharedTo;
	}
	public String getSharedFrom() {
		return sharedFrom;
	}
	public void setSharedFrom(String sharedFrom) {
		this.sharedFrom = sharedFrom;
	}
	public String getItemsFound() {
		return itemsFound;
	}
	public void setItemsFound(String itemsFound) {
		this.itemsFound = itemsFound;
	}
	public String getHitCount() {
		return hitCount;
	}
	public void setHitCount(String hitCount) {
		this.hitCount = hitCount;
	}
	public String getFeedId() {
		return feedId;
	}
	public void setFeedId(String feedId) {
		this.feedId = feedId;
	}
	public String getHittedBy() {
		return hittedBy;
	}
	public void setHittedBy(String hittedBy) {
		this.hittedBy = hittedBy;
	}
	public String getHittedByName() {
		return hittedByName;
	}
	public void setHittedByName(String hittedByName) {
		this.hittedByName = hittedByName;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	
	
	

}
