package com.cricketsocial.bean.roaster;

import java.util.List;
import java.util.Map;

import org.springframework.ui.ModelMap;

public class RosterProfile {
	private String rosterId;
	private String boardId;
	private String rosterName;
	private String captain;
	private String vice_captian;
	private String cratedBy;
	private String coach;
	private String roasterMembers;
	
	private List<ModelMap> RosterUserMapList;
	
	private boolean checkAffiliatedFlag;
	
	private int active;
	
	
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getRosterName() {
		return rosterName;
	}
	public void setRosterName(String rosterName) {
		this.rosterName = rosterName;
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
	public String getCratedBy() {
		return cratedBy;
	}
	public void setCratedBy(String cratedBy) {
		this.cratedBy = cratedBy;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}

	public String getRoasterMembers() {
		return roasterMembers;
	}
	public void setRoasterMembers(String roasterMembers) {
		this.roasterMembers = roasterMembers;
	}
	public List<ModelMap> getRosterUserMapList() {
		return RosterUserMapList;
	}
	public void setRosterUserMapList(List<ModelMap> rosterUserMapList) {
		RosterUserMapList = rosterUserMapList;
	}
	public boolean isCheckAffiliatedFlag() {
		return checkAffiliatedFlag;
	}
	public void setCheckAffiliatedFlag(boolean checkAffiliatedFlag) {
		this.checkAffiliatedFlag = checkAffiliatedFlag;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	
	
	
	
	
}
