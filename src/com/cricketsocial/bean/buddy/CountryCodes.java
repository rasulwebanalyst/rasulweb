package com.cricketsocial.bean.buddy;

import java.io.Serializable;

public class CountryCodes implements Serializable{

	
	private String id;
	private String countryName;
	private String countryCode;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	
	
	
	
}
