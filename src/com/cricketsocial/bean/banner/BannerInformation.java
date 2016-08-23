package com.cricketsocial.bean.banner;

import java.io.Serializable;

public class BannerInformation implements Serializable {
    private static final long serialVersionUID = 1L;
	
	 private String active;
     private String bannerImageUrl;
     private String bannerType;
     private String geolocation;
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
