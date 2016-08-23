package com.cricketsocial.bean.feed;

import java.util.Date;
import java.util.UUID;

public class FeedComment {
	
	private String feedId;
	private String commentedBy;
	private String comments;
	private String commentedByName;
	private String active;
	//private String createdDate;
	private Date createdDate;
	private String userProfilePic;
	private UUID userId;
	
	private String feedCommentId;
	
	
	
	public String getUserProfilePic() {
		return userProfilePic;
	}
	public void setUserProfilePic(String userProfilePic) {
		this.userProfilePic = userProfilePic;
	}
	public UUID getUserId() {
		return userId;
	}
	public void setUserId(UUID userId) {
		this.userId = userId;
	}
	/*public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}*/
	public String getFeedId() {
		return feedId;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public void setFeedId(String feedId) {
		this.feedId = feedId;
	}
	public String getCommentedBy() {
		return commentedBy;
	}
	public void setCommentedBy(String commentedBy) {
		this.commentedBy = commentedBy;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getCommentedByName() {
		return commentedByName;
	}
	public void setCommentedByName(String commentedByName) {
		this.commentedByName = commentedByName;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getFeedCommentId() {
		return feedCommentId;
	}
	public void setFeedCommentId(String feedCommentId) {
		this.feedCommentId = feedCommentId;
	}
	
	
	
	
	
	

}
