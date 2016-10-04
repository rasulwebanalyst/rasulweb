package com.cricketsocial.bean.feed;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Feeds {

	
	
	
	private int active;
	private String content;
	private Date createdDate;
	private String feedType;
	private Date modifiedDate;
	private String postedBy;
	private String postedByName;
	
	
	private String startNode;
	private String endNode;
	private String  userId;
	private String userImageurl;
	
	
	
	private String feedHitCount;
	private String feedCommentCount;
	
	private String feedId;
	private String boardId;
	
	private String rosterId;
	/*private List<MultipartFile> files;
	private MultipartFile dataFile;*/
	private List<FeedImage> fileAttachement;
	

	private String hasAttachement;
	
	//share details
	
	private String sharedBy;
	private String sharedByName;
	
	// roster details
	
	private String rosterName;
	// for video upload
	private FeedImage videoFile;
	
	private String boardName;	
	private String boardImageurl;
	private boolean userFeedHit;
	
	private String feedTo;
	
	private String feedHitUserId;
	
	private String publicProfileUserId;
	
	
	public FeedImage getVideoFile() {
		return videoFile;
	}
	public void setVideoFile(FeedImage videoFile) {
		this.videoFile = videoFile;
	}
	public String getRosterName() {
		return rosterName;
	}
	public void setRosterName(String rosterName) {
		this.rosterName = rosterName;
	}
	public String getSharedBy() {
		return sharedBy;
	}
	public void setSharedBy(String sharedBy) {
		this.sharedBy = sharedBy;
	}
	
	public String getSharedByName() {
		return sharedByName;
	}
	public void setSharedByName(String sharedByName) {
		this.sharedByName = sharedByName;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getFeedId() {
		return feedId;
	}
	public void setFeedId(String feedId) {
		this.feedId = feedId;
	}
	public String getStartNode() {
		return startNode;
	}
	public String getFeedHitCount() {
		return feedHitCount;
	}
	public void setFeedHitCount(String feedHitCount) {
		this.feedHitCount = feedHitCount;
	}
	public String getFeedCommentCount() {
		return feedCommentCount;
	}
	public void setFeedCommentCount(String feedCommentCount) {
		this.feedCommentCount = feedCommentCount;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPostedByName() {
		return postedByName;
	}
	public void setPostedByName(String postedByName) {
		this.postedByName = postedByName;
	}
	
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
	public String getFeedType() {
		return feedType;
	}
	public void setFeedType(String feedType) {
		this.feedType = feedType;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getPostedBy() {
		return postedBy;
	}
	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}
	
	public List<FeedImage> getFileAttachement() {
		return fileAttachement;
	}
	public void setFileAttachement(List<FeedImage> fileAttachement) {
		this.fileAttachement = fileAttachement;
	}
	public String getHasAttachement() {
		return hasAttachement;
	}
	public void setHasAttachement(String hasAttachement) {
		this.hasAttachement = hasAttachement;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getUserImageurl() {
		return userImageurl;
	}
	public void setUserImageurl(String userImageurl) {
		this.userImageurl = userImageurl;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public String getBoardImageurl() {
		return boardImageurl;
	}
	public void setBoardImageurl(String boardImageurl) {
		this.boardImageurl = boardImageurl;
	}
	public boolean isUserFeedHit() {
		return userFeedHit;
	}
	public void setUserFeedHit(boolean userFeedHit) {
		this.userFeedHit = userFeedHit;
	}
	public String getFeedTo() {
		return feedTo;
	}
	public void setFeedTo(String feedTo) {
		this.feedTo = feedTo;
	}
	public String getFeedHitUserId() {
		return feedHitUserId;
	}
	public void setFeedHitUserId(String feedHitUserId) {
		this.feedHitUserId = feedHitUserId;
	}
	public String getPublicProfileUserId() {
		return publicProfileUserId;
	}
	public void setPublicProfileUserId(String publicProfileUserId) {
		this.publicProfileUserId = publicProfileUserId;
	}
	
	
	
}
