package com.cricketsocial.bean.roaster;

import java.util.Date;
import java.util.List;
import java.util.UUID;



/**
 * @author KDintakurthi
 *
 */
public class Roster {
	private UUID rosterId;
	private String rosterName;
	private String  boardId;
	private String  captain;
	private String vice_captian;
	private String createdBy;
	private String coach;
	public Date createdDate;
	private Date modifiedDate;
	private List<RosterUserMap>  rosterUserMapList;
	private int active;
	private String boardName; 
	private String teamType;	
	private List<TeamSelectedPlayers> selectedPlayerList;
	
	
	
	
	
	public String getTeamType() {
		return teamType;
	}
	public void setTeamType(String teamType) {
		this.teamType = teamType;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public UUID getRosterId() {
		return rosterId;
	}
	public void setRosterId(UUID rosterId) {
		this.rosterId = rosterId;
	}
	public String getRosterName() {
		return rosterName;
	}
	public void setRosterName(String rosterName) {
		this.rosterName = rosterName;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
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
	
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public List<RosterUserMap> getRosterUserMapList() {
		return rosterUserMapList;
	}
	public void setRosterUserMapList(List<RosterUserMap> rosterUserMapList) {
		this.rosterUserMapList = rosterUserMapList;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public List<TeamSelectedPlayers> getSelectedPlayerList() {
		return selectedPlayerList;
	}
	public void setSelectedPlayerList(List<TeamSelectedPlayers> selectedPlayerList) {
		this.selectedPlayerList = selectedPlayerList;
	}

}
