package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

public class ExtrasDTO {
	private List<String> extras;
	private int totalExtras;
	private UUID extrasId;
	private String extraType;
	private int count;
	
	
		
	public UUID getExtrasId() {
		return extrasId;
	}
	public void setExtrasId(UUID extrasId) {
		this.extrasId = extrasId;
	}
	public String getExtraType() {
		return extraType;
	}
	public void setExtraType(String extraType) {
		this.extraType = extraType;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<String> getExtras() {
		return extras;
	}
	public void setExtras(List<String> extras) {
		this.extras = extras;
	}
	public int getTotalExtras() {
		return totalExtras;
	}
	public void setTotalExtras(int totalExtras) {
		this.totalExtras = totalExtras;
	}
	
	
	
	
	

}