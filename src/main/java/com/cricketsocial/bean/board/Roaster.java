package com.cricketsocial.bean.board;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.cricketsocial.bean.buddy.UserProfile;

public class Roaster {
	private String rosterId;
	private String rosterName;
	private String captain;
	private String vice_captian;
	private String cratedBy;
	private String coach;
	private String boardId;
	private boolean checkAffiliatedFlag;
	private String boardName;
	private ModelMap RosterUserMapList;
	
	private  BoardDTO rosterBoardDto;
	
	private BoardDTO leagueBoardDto;
	private String rosterCreatedDate;
	private String affiliateto;
	private List<UserProfile> playerList;
	
private String designation;
	
	private String teamBoardName;
	
	
	
	
	
	
	
	
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getTeamBoardName() {
		return teamBoardName;
	}
	public void setTeamBoardName(String teamBoardName) {
		this.teamBoardName = teamBoardName;
	}
	public String getRosterCreatedDate() {
		return rosterCreatedDate;
	}
	public void setRosterCreatedDate(String rosterCreatedDate) {
		this.rosterCreatedDate = rosterCreatedDate;
	}
	public String getAffiliateto() {
		return affiliateto;
	}
	public void setAffiliateto(String affiliateto) {
		this.affiliateto = affiliateto;
	}
	public List<UserProfile> getPlayerList() {
		return playerList;
	}
	public void setPlayerList(List<UserProfile> playerList) {
		this.playerList = playerList;
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
	public ModelMap getRosterUserMapList() {
		return RosterUserMapList;
	}
	public void setRosterUserMapList(ModelMap rosterUserMapList) {
		RosterUserMapList = rosterUserMapList;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public boolean isCheckAffiliatedFlag() {
		return checkAffiliatedFlag;
	}
	public void setCheckAffiliatedFlag(boolean checkAffiliatedFlag) {
		this.checkAffiliatedFlag = checkAffiliatedFlag;
	}
	public String getBoardName() {
		return boardName;
	}
	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	public BoardDTO getRosterBoardDto() {
		return rosterBoardDto;
	}
	public void setRosterBoardDto(BoardDTO rosterBoardDto) {
		this.rosterBoardDto = rosterBoardDto;
	}
	public BoardDTO getLeagueBoardDto() {
		return leagueBoardDto;
	}
	public void setLeagueBoardDto(BoardDTO leagueBoardDto) {
		this.leagueBoardDto = leagueBoardDto;
	}
	
	
	
}
