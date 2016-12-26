package com.cricketsocial.bean.roaster;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author KDintakurthi *
 * @version 1.0
 * @since 23-09-2015
 * 
 */
public class UserProfile {

	private UUID userId;
	private int active;

	private String emailAddress;
	private String firstName;
	private String gender;
	private Long landLineNumber;
	private String lastName;
	private String address1;
	private String address2;
	private String city;
	private String country;
	private String state;
	private String zipcode;
	private Long phoneNumber;

	private String loginType;
	private String userImageUrl;
	private Date dob;
	private String latLang;
	private String fullName;
	private String loginTypeId;
	private String password;
	private String actionType;
	
	private UUID matchId;
	private UUID createdBy;
	private UUID approvedBy;
	private UUID matchScoreBoardId;
	private String sequence;
	

	public String getActionType() {
		return actionType;
	}

	public void setActionType(String actionType) {
		this.actionType = actionType;
	}

	public String getLoginTypeId() {
		return loginTypeId;
	}

	public void setLoginTypeId(String loginTypeId) {
		this.loginTypeId = loginTypeId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
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

	public String getUserImageUrl() {
		return userImageUrl;
	}

	public void setUserImageUrl(String userImageUrl) {
		this.userImageUrl = userImageUrl;
	}


	public UUID getMatchId() {
		return matchId;
	}

	public void setMatchId(UUID matchId) {
		this.matchId = matchId;
	}

	public UUID getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(UUID createdBy) {
		this.createdBy = createdBy;
	}

	public UUID getApprovedBy() {
		return approvedBy;
	}

	public void setApprovedBy(UUID approvedBy) {
		this.approvedBy = approvedBy;
	}

	public UUID getMatchScoreBoardId() {
		return matchScoreBoardId;
	}

	public void setMatchScoreBoardId(UUID matchScoreBoardId) {
		this.matchScoreBoardId = matchScoreBoardId;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getSequence() {
		return sequence;
	}

	public void setSequence(String sequence) {
		this.sequence = sequence;
	}

	

}
