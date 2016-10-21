package com.cricketsocial.bean.board;

import java.util.List;
import java.util.Map;

import com.cricketsocial.bean.buddy.UserProfile;

public class BoardAttrbutesResponse {
	
	private String requestStatus;
	private BoardAttrbutesResults results;
	
	
	// for getting board fans list response
	private String userProfileCount;
	private List<BoardProfile> boardProfileList;
	private List<UserProfile> userProfileList;
	private String boardCount;
	
	
	
	
	
	public String getUserProfileCount() {
		return userProfileCount;
	}
	public void setUserProfileCount(String userProfileCount) {
		this.userProfileCount = userProfileCount;
	}
	public List<BoardProfile> getBoardProfileList() {
		return boardProfileList;
	}
	public void setBoardProfileList(List<BoardProfile> boardProfileList) {
		this.boardProfileList = boardProfileList;
	}
	public List<UserProfile> getUserProfileList() {
		return userProfileList;
	}
	public void setUserProfileList(List<UserProfile> userProfileList) {
		this.userProfileList = userProfileList;
	}
	public String getBoardCount() {
		return boardCount;
	}
	public void setBoardCount(String boardCount) {
		this.boardCount = boardCount;
	}
	//private Map<String,Object> results;
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	public BoardAttrbutesResults getResults() {
		return results;
	}
	public void setResults(BoardAttrbutesResults results) {
		this.results = results;
	}
	

}
