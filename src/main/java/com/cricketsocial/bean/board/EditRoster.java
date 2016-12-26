package com.cricketsocial.bean.board;

import java.util.List;

public class EditRoster {

	private String[] teamUserId;
	private String captain;
	private String vice_captian;
	private String coach;
	private String boardId;
	private String rosterId;
	private String rosterName;
	private List<Object> rosterUserMapList;
	private String createdBy;
	private String leagueId;
	private String flag;
	
	private List<String> memberList;
	
	
	
	
	public List<String> getMemberList() {
		return memberList;
	}
	public void setMemberList(List<String> memberList) {
		this.memberList = memberList;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String[] getTeamUserId() {
		return teamUserId;
	}
	public void setTeamUserId(String[] teamUserId) {
		this.teamUserId = teamUserId;
	}
	public String getCaptain() {
		return captain;
	}
	public void setCaptain(String captain) {
		this.captain = captain;
	}
	public String getVice_captian() {
		return vice_captian;
	}
	public void setVice_captian(String vice_captian) {
		this.vice_captian = vice_captian;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getRosterName() {
		return rosterName;
	}
	public void setRosterName(String rosterName) {
		this.rosterName = rosterName;
	}
	public List<Object> getRosterUserMapList() {
		return rosterUserMapList;
	}
	public void setRosterUserMapList(List<Object> rosterUserMapList) {
		this.rosterUserMapList = rosterUserMapList;
	}
	public String getLeagueId() {
		return leagueId;
	}
	public void setLeagueId(String leagueId) {
		this.leagueId = leagueId;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	
	
	
	
	
}
