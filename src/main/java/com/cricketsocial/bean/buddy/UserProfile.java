package com.cricketsocial.bean.buddy;

import java.util.Date;
import java.util.List;
import java.util.UUID;

public class UserProfile {
	
	
	private UUID userId;
	private int active;
	private String address1;
	private String address2;
	private String city;
	private String country;
	
	private Date createdDate;
	private Date dateOfBirth;
	private String emailAddress;
	private String firstName;
	private String gender;
	private Long landLineNumber;
	private String lastName;
	private String loginTypeId;
	private Date modifiedDate;
	private String password;
	private Long phoneNumber;
	private String state;
	private String userImageUrl;
	//private Long zipcode;	
	private String zipcode;	

	private String loginType;
	
	private boolean isYourBuddy;
	
	private byte[] upload;
	
	
	private String defaultReal;
	private String defaultRealHash;
	
	private String latLang;
	
	
	private String startNode;
	private String endNode;
	private String searchQuery;
	
	private String searchType;
	
	
	private String  userFanCount;
	
	private List<UserRole> userRoleMap;
	
	private String strdateOfBirth;
	
	
	private Date dob;
	
	private String imageData;

	private String fullName;
	
	private String boardId;
	
	private List<String> cityList;
	private List<String> zipList;
	
	private String codeNumber;
	private String placeOfBirth;
	
	private String checkConnect;//Ramya added for req check
	private int buddyFansBoardsCount;
	private Integer enablePhoneNo;
	private Integer enableEmailAddress;
	
	private String type;
	
	private String playerAddedtoRosterDate;
	
	private String profileCreatedDate;
	
	private String designation;
	
	
	
	
	
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getProfileCreatedDate() {
		return profileCreatedDate;
	}
	public void setProfileCreatedDate(String profileCreatedDate) {
		this.profileCreatedDate = profileCreatedDate;
	}
	public String getPlayerAddedtoRosterDate() {
		return playerAddedtoRosterDate;
	}
	public void setPlayerAddedtoRosterDate(String playerAddedtoRosterDate) {
		this.playerAddedtoRosterDate = playerAddedtoRosterDate;
	}
	public String getCheckConnect() {
		return checkConnect;
	}
	public void setCheckConnect(String checkConnect) {
		this.checkConnect = checkConnect;
	}
	
	
	public String getUserFanCount() {
		return userFanCount;
	}
	public void setUserFanCount(String userFanCount) {
		this.userFanCount = userFanCount;
	}
	public boolean isYourBuddy() {
		return isYourBuddy;
	}
	public void setYourBuddy(boolean isYourBuddy) {
		this.isYourBuddy = isYourBuddy;
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
	public String getSearchQuery() {
		return searchQuery;
	}
	public void setSearchQuery(String searchQuery) {
		this.searchQuery = searchQuery;
	}
	public String getLatLang() {
		return latLang;
	}
	public void setLatLang(String latLang) {
		this.latLang = latLang;
	}
	public byte[] getUpload() {
		return upload;
	}
	public void setUpload(byte[] upload) {
		this.upload = upload;
	}
	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	public UUID getUserId() {
		return userId;
	}
	public void setUserId(UUID userId) {
		this.userId = userId;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Long getLandLineNumber() {
		return landLineNumber;
	}
	public void setLandLineNumber(Long landLineNumber) {
		this.landLineNumber = landLineNumber;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getLoginTypeId() {
		return loginTypeId;
	}
	public void setLoginTypeId(String loginTypeId) {
		this.loginTypeId = loginTypeId;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getUserImageUrl() {
		return userImageUrl;
	}
	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}
	/*public Long getZipcode() {
		return zipcode;
	}
	public void setZipcode(Long zipcode) {
		this.zipcode = zipcode;
	}*/
	public String getDefaultReal() {
		return defaultReal;
	}
	public void setDefaultReal(String defaultReal) {
		this.defaultReal = defaultReal;
	}
	public String getDefaultRealHash() {
		return defaultRealHash;
	}
	public void setDefaultRealHash(String defaultRealHash) {
		this.defaultRealHash = defaultRealHash;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public List<UserRole> getUserRoleMap() {
		return userRoleMap;
	}
	public void setUserRoleMap(List<UserRole> userRoleMap) {
		this.userRoleMap = userRoleMap;
	}
	public String getImageData() {
		return imageData;
	}
	public void setImageData(String imageData) {
		this.imageData = imageData;
	}
	public String getStrdateOfBirth() {
		return strdateOfBirth;
	}
	public void setStrdateOfBirth(String strdateOfBirth) {
		this.strdateOfBirth = strdateOfBirth;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public List<String> getCityList() {
		return cityList;
	}
	public void setCityList(List<String> cityList) {
		this.cityList = cityList;
	}
	public List<String> getZipList() {
		return zipList;
	}
	public void setZipList(List<String> zipList) {
		this.zipList = zipList;
	}
	public String getCodeNumber() {
		return codeNumber;
	}
	public void setCodeNumber(String codeNumber) {
		this.codeNumber = codeNumber;
	}
	public int getBuddyFansBoardsCount() {
		return buddyFansBoardsCount;
	}
	public void setBuddyFansBoardsCount(int buddyFansBoardsCount) {
		this.buddyFansBoardsCount = buddyFansBoardsCount;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getPlaceOfBirth() {
		return placeOfBirth;
	}
	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}
	public Integer getEnablePhoneNo() {
		return enablePhoneNo;
	}
	public void setEnablePhoneNo(Integer enablePhoneNo) {
		this.enablePhoneNo = enablePhoneNo;
	}
	public Integer getEnableEmailAddress() {
		return enableEmailAddress;
	}
	public void setEnableEmailAddress(Integer enableEmailAddress) {
		this.enableEmailAddress = enableEmailAddress;
	}
	
}
