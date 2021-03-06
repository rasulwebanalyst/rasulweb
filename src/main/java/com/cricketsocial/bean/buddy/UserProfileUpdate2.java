package com.cricketsocial.bean.buddy;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.cricketsocial.bean.role.SubRoleLevelFour;
import com.cricketsocial.bean.role.SubRoleLevelOne;
import com.cricketsocial.bean.role.SubRoleLevelThree;
import com.cricketsocial.bean.role.SubRoleLevelTwo;

public class UserProfileUpdate2 {


	private UUID userId;
	private int active;
	private String address1;
	private String address2;
	private String city;
	private String country;	
	private Date createdDate;
	private String dateOfBirth;
	private String emailAddress;
	private String firstName;
	private String gender;
	private String landLineNumber;
	private String lastName;
	private String loginTypeId;
	private Date modifiedDate;
	private String password;
	private String phoneNumber;
	private String state;
	private String userImageUrl;
	private String zipcode;
	private String loginType;	
	private String bod;
	private String latLang;
	private MultipartFile userimgfile;	
	private ImageDetails imageDetails;	
	private String[] subcat1;
	private String[] subcat2;
	private String[] subcat3;
	private String[] subcat4;
	private String userRoleMapString;	
	private List<SubRoleLevelOne> subRoleLevelOne;
	private List<SubRoleLevelTwo> subRoleLevelTwo;
	private List<SubRoleLevelThree> subroleLevelThree;
	private List<SubRoleLevelFour> subroleLevelFour;
	private List<SubRoleLevelThree> subRoleLevelThreeList;
	private List<SubRoleLevelFour> subRoleLevelFourList;
	private String imageData;	
	private String teamBoard;
	private String leagueBoard;
	private String ballId;	
	// for getting subcatgory2 details	
	private String subcat2Allrounder;
	private String subcat2BowlerOptions;
	private String subcat2BatsmanOptions;
	// for getting role info 
	private String roleinfo;
	private String placesMapString;
	private String strDate;
	private String userLanguageMapString;
	//private String placesMapString;
	private byte[] upload;
	private byte[] userProfilePic;

	private String countryCode;
	private String landLineCountrycode;
	private String landLineContry;
	private String landLineSTDcode;

	private String leagueBoardId;
	private String teamBoardId;

	private String oldLatlong;

	private String profileStrength;

	private String imageExtension;
	
	private String placeOfBirth;
	private Integer enablePhoneNo;
	private Integer enableEmailAddress;
	
	private String oldFname;
	private String oldLname;
	private String oldDob;
	
	private List<String> associatedLeagues;
	private List<String> associatedTeams;
	private List<String> hiddenLeagues;
	private List<String> hiddenTeams;
	
	
	
	

	public List<String> getAssociatedLeagues() {
		return associatedLeagues;
	}
	public void setAssociatedLeagues(List<String> associatedLeagues) {
		this.associatedLeagues = associatedLeagues;
	}
	public List<String> getAssociatedTeams() {
		return associatedTeams;
	}
	public void setAssociatedTeams(List<String> associatedTeams) {
		this.associatedTeams = associatedTeams;
	}
	public List<String> getHiddenLeagues() {
		return hiddenLeagues;
	}
	public void setHiddenLeagues(List<String> hiddenLeagues) {
		this.hiddenLeagues = hiddenLeagues;
	}
	public List<String> getHiddenTeams() {
		return hiddenTeams;
	}
	public void setHiddenTeams(List<String> hiddenTeams) {
		this.hiddenTeams = hiddenTeams;
	}
	public String getOldFname() {
		return oldFname;
	}
	public void setOldFname(String oldFname) {
		this.oldFname = oldFname;
	}
	public String getOldLname() {
		return oldLname;
	}
	public void setOldLname(String oldLname) {
		this.oldLname = oldLname;
	}
	public String getOldDob() {
		return oldDob;
	}
	public void setOldDob(String oldDob) {
		this.oldDob = oldDob;
	}
	public String getSubcat2Allrounder() {
		return subcat2Allrounder;
	}
	public void setSubcat2Allrounder(String subcat2Allrounder) {
		this.subcat2Allrounder = subcat2Allrounder;
	}
	public String getSubcat2BowlerOptions() {
		return subcat2BowlerOptions;
	}
	public void setSubcat2BowlerOptions(String subcat2BowlerOptions) {
		this.subcat2BowlerOptions = subcat2BowlerOptions;
	}
	public String getSubcat2BatsmanOptions() {
		return subcat2BatsmanOptions;
	}
	public void setSubcat2BatsmanOptions(String subcat2BatsmanOptions) {
		this.subcat2BatsmanOptions = subcat2BatsmanOptions;
	}
	public String[] getSubcat1() {
		return subcat1;
	}
	public void setSubcat1(String[] subcat1) {
		this.subcat1 = subcat1;
	}
	public String[] getSubcat2() {
		return subcat2;
	}
	public void setSubcat2(String[] subcat2) {
		this.subcat2 = subcat2;
	}
	public String[] getSubcat3() {
		return subcat3;
	}
	public void setSubcat3(String[] subcat3) {
		this.subcat3 = subcat3;
	}
	public String[] getSubcat4() {
		return subcat4;
	}
	public void setSubcat4(String[] subcat4) {
		this.subcat4 = subcat4;
	}






	public List<SubRoleLevelThree> getSubRoleLevelThreeList() {
		return subRoleLevelThreeList;
	}
	public String getImageData() {
		return imageData;
	}
	public void setImageData(String imageData) {
		this.imageData = imageData;
	}
	public void setSubRoleLevelThreeList(
			List<SubRoleLevelThree> subRoleLevelThreeList) {
		this.subRoleLevelThreeList = subRoleLevelThreeList;
	}
	public List<SubRoleLevelFour> getSubRoleLevelFourList() {
		return subRoleLevelFourList;
	}
	public void setSubRoleLevelFourList(List<SubRoleLevelFour> subRoleLevelFourList) {
		this.subRoleLevelFourList = subRoleLevelFourList;
	}




	public ImageDetails getImageDetails() {
		return imageDetails;
	}
	public MultipartFile getUserimgfile() {
		return userimgfile;
	}
	public void setUserimgfile(MultipartFile userimgfile) {
		this.userimgfile = userimgfile;
	}
	public void setImageDetails(ImageDetails imageDetails) {
		this.imageDetails = imageDetails;
	}
	public String getUserLanguageMapString() {
		return userLanguageMapString;
	}
	public void setUserLanguageMapString(String userLanguageMapString) {
		this.userLanguageMapString = userLanguageMapString;
	}



	public byte[] getUserProfilePic() {
		return userProfilePic;
	}
	public void setUserProfilePic(byte[] userProfilePic) {
		this.userProfilePic = userProfilePic;
	}
	public byte[] getUpload() {
		return upload;
	}
	public void setUpload(byte[] upload) {
		this.upload = upload;
	}
	public String getStrDate() {
		return strDate;
	}
	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}
	public String getPlacesMapString() {
		return placesMapString;
	}
	public void setPlacesMapString(String placesMapString) {
		this.placesMapString = placesMapString;
	}
	public String getRoleinfo() {
		return roleinfo;
	}
	public void setRoleinfo(String roleinfo) {
		this.roleinfo = roleinfo;
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

	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
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

	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	public String getUserRoleMapString() {
		return userRoleMapString;
	}
	public void setUserRoleMapString(String userRoleMapString) {
		this.userRoleMapString = userRoleMapString;
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
	public String getLandLineNumber() {
		return landLineNumber;
	}
	public void setLandLineNumber(String landLineNumber) {
		this.landLineNumber = landLineNumber;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getBod() {
		return bod;
	}
	public void setBod(String bod) {
		this.bod = bod;
	}
	public String getLatLang() {
		return latLang;
	}
	public void setLatLang(String latLang) {
		this.latLang = latLang;
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

	public String getBallId() {
		return ballId;
	}
	public void setBallId(String ballId) {
		this.ballId = ballId;
	}
	public List<SubRoleLevelThree> getSubroleLevelThree() {
		return subroleLevelThree;
	}
	public void setSubroleLevelThree(List<SubRoleLevelThree> subroleLevelThree) {
		this.subroleLevelThree = subroleLevelThree;
	}
	public List<SubRoleLevelFour> getSubroleLevelFour() {
		return subroleLevelFour;
	}
	public void setSubroleLevelFour(List<SubRoleLevelFour> subroleLevelFour) {
		this.subroleLevelFour = subroleLevelFour;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
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
	public String getLeagueBoardId() {
		return leagueBoardId;
	}
	public void setLeagueBoardId(String leagueBoardId) {
		this.leagueBoardId = leagueBoardId;
	}
	public String getTeamBoardId() {
		return teamBoardId;
	}
	public void setTeamBoardId(String teamBoardId) {
		this.teamBoardId = teamBoardId;
	}
	public String getOldLatlong() {
		return oldLatlong;
	}
	public void setOldLatlong(String oldLatlong) {
		this.oldLatlong = oldLatlong;
	}
	public String getProfileStrength() {
		return profileStrength;
	}
	public void setProfileStrength(String profileStrength) {
		this.profileStrength = profileStrength;
	}
	public String getImageExtension() {
		return imageExtension;
	}
	public void setImageExtension(String imageExtension) {
		this.imageExtension = imageExtension;
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
