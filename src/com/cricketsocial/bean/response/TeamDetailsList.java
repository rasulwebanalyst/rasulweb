package com.cricketsocial.bean.response;

import java.util.List;

public class TeamDetailsList {

	/*
	 
	 "teamBoardId": "743142ed-f43b-4002-81ee-c3496ab1388f",
     "teamBoardName": "DTM  Team Tirupati",
     "tournamentId": "743142ed-f43b-4002-81ee-c3496ab1388f",
     "tournamentName": "ICL Tournamenet 2015 ",
     "homeGround": "Chepak",
     "boardAbbrivation": "DTM  Team Tirupati" 
     
     */
	
	private String teamBoardId;
	private String teamBoardName;
	private String tournamentId;
	private String tournamentName;
	private String homeGround;
	private String boardAbbrivation;
	private String boardUrl;
	private List<TournamentList> tournamentList;
	
	public String getTeamBoardId() {
		return teamBoardId;
	}
	public void setTeamBoardId(String teamBoardId) {
		this.teamBoardId = teamBoardId;
	}
	public String getTeamBoardName() {
		return teamBoardName;
	}
	public void setTeamBoardName(String teamBoardName) {
		this.teamBoardName = teamBoardName;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public String getHomeGround() {
		return homeGround;
	}
	public void setHomeGround(String homeGround) {
		this.homeGround = homeGround;
	}
	public String getBoardAbbrivation() {
		return boardAbbrivation;
	}
	public void setBoardAbbrivation(String boardAbbrivation) {
		this.boardAbbrivation = boardAbbrivation;
	}
	public String getBoardUrl() {
		return boardUrl;
	}
	public void setBoardUrl(String boardUrl) {
		this.boardUrl = boardUrl;
	}
	public List<TournamentList> getTournamentList() {
		return tournamentList;
	}
	public void setTournamentList(List<TournamentList> tournamentList) {
		this.tournamentList = tournamentList;
	}
	
	
	
}
