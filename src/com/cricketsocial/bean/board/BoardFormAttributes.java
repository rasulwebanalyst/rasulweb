package com.cricketsocial.bean.board;

import java.util.List;

public class BoardFormAttributes {
	private List<CodeVO> posting_ability;
	private List<CodeVO> category;
	private List<CodeVO> notification;
	private List<CodeVO> page_visibility;
	
	public List<CodeVO> getPosting_ability() {
		return posting_ability;
	}
	public void setPosting_ability(List<CodeVO> posting_ability) {
		this.posting_ability = posting_ability;
	}
	public List<CodeVO> getCategory() {
		return category;
	}
	public void setCategory(List<CodeVO> category) {
		this.category = category;
	}
	public List<CodeVO> getNotification() {
		return notification;
	}
	public void setNotification(List<CodeVO> notification) {
		this.notification = notification;
	}
	public List<CodeVO> getPage_visibility() {
		return page_visibility;
	}
	public void setPage_visibility(List<CodeVO> page_visibility) {
		this.page_visibility = page_visibility;
	}
	
	
}
