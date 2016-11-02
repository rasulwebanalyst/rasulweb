package com.cricketsocial.bean.board;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.cricketsocial.bean.buddy.UserProfile;

public class BoardProfile {
	private String boardName;
	private String shortDescription;
	private String longDescription;
	private String emailId;
	private String website;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String category;	
	private int active;
	private MultipartFile boardImagefile;
	private byte[] boardProfilePic;
	private String boardImageURL;
	private String imageData;	
	private String classification;
	private String country;
	private String createdBy;

	private String notification;

	private String latlang;
	private int likesReceived;
	private Date createdDate;
	private String modifiedBy;
	private Date modifiedDate;
	private int pageVisibility;
	private int postingAbility;
	private String statusId;
	private UUID boardId;
	private String boardDefaultfan;  
	private List<Integer> ampireList;
	private List<Integer> schedulerList;  
	private String ampires;
	private String schedulesr;  
	//private List<String> boardCoOwnerList;
	//private List<ModelMap> boardCoOwnerList;
	private List<BoardCoordinatorMap> boardCoOwnerList;

	private String boardCoOwners;
	private String fansCount="0";

	// Board Fans
	private boolean isYourBoard;
	private String hasAdminRights;
	private String boardfancount;


	private List<CoOrdinator> boardCoordinatorList;
	private UserProfile user;
	private String id;
	private String zipcode;

	private boolean scheduleFlag;

	private String oldlatLang;

	private String imageExtension;

	private String coOwnerId;

	private Long phoneNumber1;
	private Long phoneNumber2;
	private String countryCode1;
	private String countryCode2;

	public String getCoOwnerId() {
		return coOwnerId;
	}

	public void setCoOwnerId(String coOwnerId) {
		this.coOwnerId = coOwnerId;
	}

	public String getBoardfancount() {
		return boardfancount;
	}

	public void setBoardfancount(String boardfancount) {
		this.boardfancount = boardfancount;
	}

	public UserProfile getUser() {
		return user;
	}

	public void setUser(UserProfile user) {
		this.user = user;
	}

	public String getNotification() {
		return notification;
	}

	public void setNotification(String notification) {
		this.notification = notification;
	}

	public String getHasAdminRights() {
		return hasAdminRights;
	}

	public void setHasAdminRights(String hasAdminRights) {
		this.hasAdminRights = hasAdminRights;
	}




	public List<BoardCoordinatorMap> getBoardCoOwnerList() {
		return boardCoOwnerList;
	}

	public void setBoardCoOwnerList(List<BoardCoordinatorMap> boardCoOwnerList) {
		this.boardCoOwnerList = boardCoOwnerList;
	}

	public List<CoOrdinator> getBoardCoordinatorList() {
		return boardCoordinatorList;
	}

	public void setBoardCoordinatorList(List<CoOrdinator> boardCoordinatorList) {
		this.boardCoordinatorList = boardCoordinatorList;
	}

	public String getFansCount() {
		return fansCount;
	}

	public void setFansCount(String fansCount) {
		this.fansCount = fansCount;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}



	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}



	public String getBoardImageURL() {
		return boardImageURL;
	}

	public void setBoardImageURL(String boardImageURL) {
		this.boardImageURL = boardImageURL;
	}

	public byte[] getBoardProfilePic() {
		return boardProfilePic;
	}

	public void setBoardProfilePic(byte[] boardProfilePic) {
		this.boardProfilePic = boardProfilePic;
	}



	public boolean isYourBoard() {
		return isYourBoard;
	}

	public void setYourBoard(boolean isYourBoard) {
		this.isYourBoard = isYourBoard;
	}

	public  String getImageData() {
		return imageData;
	}

	public void setImageData( String imageData) {
		this.imageData = imageData;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getLatlang() {
		return latlang;
	}

	public void setLatlang(String latlang) {
		this.latlang = latlang;
	}

	public int getLikesReceived() {
		return likesReceived;
	}

	public void setLikesReceived(int likesReceived) {
		this.likesReceived = likesReceived;
	}

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public int getPageVisibility() {
		return pageVisibility;
	}

	public void setPageVisibility(int pageVisibility) {
		this.pageVisibility = pageVisibility;
	}


	public int getPostingAbility() {
		return postingAbility;
	}

	public void setPostingAbility(int postingAbility) {
		this.postingAbility = postingAbility;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStatusId() {
		return statusId;
	}

	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public UUID getBoardId() {
		return boardId;
	}

	public void setBoardId(UUID boardId) {
		this.boardId = boardId;
	}



	public List<Integer> getAmpireList() {
		return ampireList;
	}

	public void setAmpireList(List<Integer> ampireList) {
		this.ampireList = ampireList;
	}



	public List<Integer> getSchedulerList() {
		return schedulerList;
	}

	public void setSchedulerList(List<Integer> schedulerList) {
		this.schedulerList = schedulerList;
	}

	public String getAmpires() {
		return ampires;
	}

	public void setAmpires(String ampires) {
		this.ampires = ampires;
	}

	public String getSchedulesr() {
		return schedulesr;
	}

	public void setSchedulesr(String schedulesr) {
		this.schedulesr = schedulesr;
	}

	public String getBoardCoOwners() {
		return boardCoOwners;
	}

	public void setBoardCoOwners(String boardCoOwners) {
		this.boardCoOwners = boardCoOwners;
	}

	public MultipartFile getBoardImagefile() {
		return boardImagefile;
	}

	public void setBoardImagefile(MultipartFile boardImagefile) {
		this.boardImagefile = boardImagefile;
	}

	public String getBoardDefaultfan() {
		return boardDefaultfan;
	}

	public void setBoardDefaultfan(String boardDefaultfan) {
		this.boardDefaultfan = boardDefaultfan;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public boolean isScheduleFlag() {
		return scheduleFlag;
	}

	public void setScheduleFlag(boolean scheduleFlag) {
		this.scheduleFlag = scheduleFlag;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getOldlatLang() {
		return oldlatLang;
	}

	public void setOldlatLang(String oldlatLang) {
		this.oldlatLang = oldlatLang;
	}

	public String getImageExtension() {
		return imageExtension;
	}

	public void setImageExtension(String imageExtension) {
		this.imageExtension = imageExtension;
	}

	public Long getPhoneNumber1() {
		return phoneNumber1;
	}

	public void setPhoneNumber1(Long phoneNumber1) {
		this.phoneNumber1 = phoneNumber1;
	}

	public Long getPhoneNumber2() {
		return phoneNumber2;
	}

	public void setPhoneNumber2(Long phoneNumber2) {
		this.phoneNumber2 = phoneNumber2;
	}

	public String getCountryCode1() {
		return countryCode1;
	}

	public void setCountryCode1(String countryCode1) {
		this.countryCode1 = countryCode1;
	}

	public String getCountryCode2() {
		return countryCode2;
	}

	public void setCountryCode2(String countryCode2) {
		this.countryCode2 = countryCode2;
	}

}
