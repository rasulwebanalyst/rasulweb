package com.cricketsocial.bean.role;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.BoardProfile;
import com.cricketsocial.bean.buddy.CountryCodes;

/**
 * @author KRengaraj
 *
 */
public class UserProfileRole {

	private UUID userId;
	private int active;
	private String address1;
	private String address2;
	private String city;
	private String country;
	private String teamBoard;
	private String leagueBoard;
	private UUID teamBoardId;
	private UUID leagueBoardId;
	List<UserRoleMap> userRoleMap;
	List<SubRoleLevelOne> subRoleLevelOne;
	List<SubRoleLevelTwo> subRoleLevelTwo;

	
	List<SubRoleLevelThree> subroleLevelThree;
	List<SubRoleLevelFour> subroleLevelFour;
	private byte[] userProfilePic;

	private String mailPurpose;

	private String forgotPasswordFlag = "email";
	private String code;
	private String latLang;

	private String fullName;

	private String ballId;
	private Date createdDate;
	private String dateOfBirth;
	private String emailAddress;
	private String firstName;
	private String gender;
	private Long landLineNumber;
	private String lastName;

	private Date modifiedDate;
	private Long phoneNumber;
	private String state;

	private String zipcode;
	private String loginType;
	private String countryCode;

	private int userFanCount;
	private String imageData;

	private Date dob;
	
	
	private String boardId;
	private List<CountryCodes> countryCodes;
	
	private String placeOfBirth;
	private Integer enablePhoneNo;
	private Integer enableEmailAddress;
	
	//**** hyder

List<UserPlaceMap> userplacemap;
List<UserLanguageMap> userlanguagemap;
List<UserSubRoleLevelOneMap> usersubrolelevelonemap;
List<UserSubRoleLevelTwoMap> usersubroleleveltwomap;
List<UserSubRoleLevelThreeMap> usersubrollevelthreemap;
List<UserSubRoleLevelFourMap> usersubrolelevelfourmap;
List<UserBallPreferences> userballpreferences;
List<UserBoardMap> userboardmap;
	
private List<BoardProfile>leagueboardlist;
private List<BoardProfile> teamboardlist;

//private String countryCode;
private String landLineCountrycode;
private String landLineContry;
private String landLineSTDcode;


private String profileStrength;


private int buddyFansBoardsCount;


	public List<BoardProfile> getTeamboardlist() {
	return teamboardlist;
}
public void setTeamboardlist(List<BoardProfile> teamboardlist) {
	this.teamboardlist = teamboardlist;
}
	public List<BoardProfile> getLeagueboardlist() {
	return leagueboardlist;
}
public void setLeagueboardlist(List<BoardProfile> leagueboardlist) {
	this.leagueboardlist = leagueboardlist;
}
	public List<UserPlaceMap> getUserplacemap() {
	return userplacemap;
}
public void setUserplacemap(List<UserPlaceMap> userplacemap) {
	this.userplacemap = userplacemap;
}
public List<UserLanguageMap> getUserlanguagemap() {
	return userlanguagemap;
}
public void setUserlanguagemap(List<UserLanguageMap> userlanguagemap) {
	this.userlanguagemap = userlanguagemap;
}
public List<UserSubRoleLevelOneMap> getUsersubrolelevelonemap() {
	return usersubrolelevelonemap;
}
public void setUsersubrolelevelonemap(
		List<UserSubRoleLevelOneMap> usersubrolelevelonemap) {
	this.usersubrolelevelonemap = usersubrolelevelonemap;
}
public List<UserSubRoleLevelTwoMap> getUsersubroleleveltwomap() {
	return usersubroleleveltwomap;
}
public void setUsersubroleleveltwomap(
		List<UserSubRoleLevelTwoMap> usersubroleleveltwomap) {
	this.usersubroleleveltwomap = usersubroleleveltwomap;
}
public List<UserSubRoleLevelThreeMap> getUsersubrollevelthreemap() {
	return usersubrollevelthreemap;
}
public void setUsersubrollevelthreemap(
		List<UserSubRoleLevelThreeMap> usersubrollevelthreemap) {
	this.usersubrollevelthreemap = usersubrollevelthreemap;
}
public List<UserSubRoleLevelFourMap> getUsersubrolelevelfourmap() {
	return usersubrolelevelfourmap;
}
public void setUsersubrolelevelfourmap(
		List<UserSubRoleLevelFourMap> usersubrolelevelfourmap) {
	this.usersubrolelevelfourmap = usersubrolelevelfourmap;
}
public List<UserBallPreferences> getUserballpreferences() {
	return userballpreferences;
}
public void setUserballpreferences(List<UserBallPreferences> userballpreferences) {
	this.userballpreferences = userballpreferences;
}
public List<UserBoardMap> getUserboardmap() {
	return userboardmap;
}
public void setUserboardmap(List<UserBoardMap> userboardmap) {
	this.userboardmap = userboardmap;
}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public int getUserFanCount() {
		return userFanCount;
	}
	public void setUserFanCount(int userFanCount) {
		this.userFanCount = userFanCount;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getBallId() {
		return ballId;
	}
	public void setBallId(String ballId) {
		this.ballId = ballId;
	}
	public String getTeamBoard() {
		return teamBoard;
	}
	public void setTeamBoard(String teamBoard) {
		this.teamBoard = teamBoard;
	}
	public String getLeagueBoard() {
		return leagueBoard;
	}
	public void setLeagueBoard(String leagueBoard) {
		this.leagueBoard = leagueBoard;
	}
	public UUID getTeamBoardId() {
		return teamBoardId;
	}
	public void setTeamBoardId(UUID teamBoardId) {
		this.teamBoardId = teamBoardId;
	}
	public UUID getLeagueBoardId() {
		return leagueBoardId;
	}
	public void setLeagueBoardId(UUID leagueBoardId) {
		this.leagueBoardId = leagueBoardId;
	}
	public String getLoginTypeId() {
		return loginTypeId;
	}
	public void setLoginTypeId(String loginTypeId) {
		this.loginTypeId = loginTypeId;
	}
	private String loginTypeId;
	private String password;  //only for getting password
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	public boolean isYourBuddy() {
		return isYourBuddy;
	}
	public void setYourBuddy(boolean isYourBuddy) {
		this.isYourBuddy = isYourBuddy;
	}
	private boolean isYourBuddy;
		
	private String userRoleMapString;
	private String placesMapString;
	private String userImageUrl;
	private String userLanguageMapString;
	
	public String getImageData() {
		return imageData;
	}
	public void setImageData(String imageData) {
		this.imageData = imageData;
	}

	
	
	
	
	public List<SubRoleLevelFour> getSubroleLevelFour() {
		return subroleLevelFour;
	}
	public void setSubroleLevelFour(List<SubRoleLevelFour> subroleLevelFour) {
		this.subroleLevelFour = subroleLevelFour;
	}
	public List<SubRoleLevelThree> getSubroleLevelThree() {
		return subroleLevelThree;
	}
	public void setSubroleLevelThree(List<SubRoleLevelThree> subroleLevelThree) {
		this.subroleLevelThree = subroleLevelThree;
	}
	
	
	
	

	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getLatLang() {
		return latLang;
	}
	public void setLatLang(String latLang) {
		this.latLang = latLang;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getForgotPasswordFlag() {
		return forgotPasswordFlag;
	}
	public void setForgotPasswordFlag(String forgotPasswordFlag) {
		this.forgotPasswordFlag = forgotPasswordFlag;
	}
	public String getMailPurpose() {
		return mailPurpose;
	}
	public void setMailPurpose(String mailPurpose) {
		this.mailPurpose = mailPurpose;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	/*public String getImageData() {
		return imageData;
	}
	public void setImageData(String imageData) {
		this.imageData = imageData;
	}*/
	public String getUserLanguageMapString() {
		return userLanguageMapString;
	}
	public void setUserLanguageMapString(String userLanguageMapString) {
		this.userLanguageMapString = userLanguageMapString;
	}
	public String getPlacesMapString() {
		return placesMapString;
	}
	public void setPlacesMapString(String placesMapString) {
		this.placesMapString = placesMapString;
	}
	public byte[] getUserProfilePic() {
		return userProfilePic;
	}
	public void setUserProfilePic(byte[] userProfilePic) {
		this.userProfilePic = userProfilePic;
	}
	public String getUserRoleMapString() {
		return userRoleMapString;
	}
	public void setUserRoleMapString(String userRoleMapString) {
		this.userRoleMapString = userRoleMapString;
	}
	public List<UserRoleMap> getUserRoleMap() {
		return userRoleMap;
	}
	public void setUserRoleMap(List<UserRoleMap> userRoleMap) {
		this.userRoleMap = userRoleMap;
	}
	public List<SubRoleLevelOne> getSubRoleLevelOne() {
		return subRoleLevelOne;
	}
	public void setSubRoleLevelOne(List<SubRoleLevelOne> subRoleLevelOne) {
		this.subRoleLevelOne = subRoleLevelOne;
	}
	public List<SubRoleLevelTwo> getSubRoleLevelTwo() {
		return subRoleLevelTwo;
	}
	public void setSubRoleLevelTwo(List<SubRoleLevelTwo> subRoleLevelTwo) {
		this.subRoleLevelTwo = subRoleLevelTwo;
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
	/*public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}*/
	
	
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
	
	
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getLandLineCountrycode() {
		return landLineCountrycode;
	}
	public void setLandLineCountrycode(String landLineCountrycode) {
		this.landLineCountrycode = landLineCountrycode;
	}
	public String getLandLineContry() {
		return landLineContry;
	}
	public void setLandLineContry(String landLineContry) {
		this.landLineContry = landLineContry;
	}
	public String getLandLineSTDcode() {
		return landLineSTDcode;
	}
	public void setLandLineSTDcode(String landLineSTDcode) {
		this.landLineSTDcode = landLineSTDcode;
	}
	public String getProfileStrength() {
		return profileStrength;
	}
	public void setProfileStrength(String profileStrength) {
		this.profileStrength = profileStrength;
	}
	public int getBuddyFansBoardsCount() {
		return buddyFansBoardsCount;
	}
	public void setBuddyFansBoardsCount(int buddyFansBoardsCount) {
		this.buddyFansBoardsCount = buddyFansBoardsCount;
	}

	public List<CountryCodes> getCountryCodes() {
		return countryCodes;
	}
	public void setCountryCodes(List<CountryCodes> countryCodes) {
		this.countryCodes = countryCodes;
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
