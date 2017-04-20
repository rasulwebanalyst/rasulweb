package com.cricketsocial.bean.banner;

import java.io.Serializable;

public class BannerInformation implements Serializable {
    private static final long serialVersionUID = 1L;
	
	 private String active;
     private String bannerImageUrl;
     private String bannerType;
     private String geolocation;
     private String bid;
     private String userId;
     private String imageExtention;
     private String imageContent;
     
     
     
     
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getImageExtention() {
		return imageExtention;
	}
	public void setImageExtention(String imageExtention) {
		this.imageExtention = imageExtention;
	}
	public String getImageContent() {
		return imageContent;
	}
	public void setImageContent(String imageContent) {
		this.imageContent = imageContent;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getBannerImageUrl() {
		return bannerImageUrl;
	}
	public void setBannerImageUrl(String bannerImageUrl) {
		this.bannerImageUrl = bannerImageUrl;
	}
	public String getBannerType() {
		return bannerType;
	}
	public void setBannerType(String bannerType) {
		this.bannerType = bannerType;
	}
	public String getGeolocation() {
		return geolocation;
	}
	public void setGeolocation(String geolocation) {
		this.geolocation = geolocation;
	}
     
   
     
     
     
     
	
}
