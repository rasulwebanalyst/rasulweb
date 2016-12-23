package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.board.BoardProfile;
import com.cricketsocial.bean.ground.Ground;

public class MatchesAroundYouResponse {
	private int active;
	private int  noOfOvers;
	private String gameDate;
	private String tournamentName;
	private BoardProfile homeTeamInfo;
	private BoardProfile awayTeamInfo;
	private List<BoardProfile> boardProfList;
	private String gameDateStr;
	private Ground groundDetails;
	private String status;
	private String tournamentSchedulerId;
	private String createdBy;
	private String gameDateWithTime;
	
	private String scoreDetailCreatedDate;
	
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	
	public int getNoOfOvers() {
		return noOfOvers;
	}
	public void setNoOfOvers(int noOfOvers) {
		this.noOfOvers = noOfOvers;
	}
	
	public Ground getGroundDetails() {
		return groundDetails;
	}
	public void setGroundDetails(Ground groundDetails) {
		this.groundDetails = groundDetails;
	}
	public BoardProfile getHomeTeamInfo() {
		return homeTeamInfo;
	}
	public void setHomeTeamInfo(BoardProfile homeTeamInfo) {
		this.homeTeamInfo = homeTeamInfo;
	}
	public BoardProfile getAwayTeamInfo() {
		return awayTeamInfo;
	}
	public void setAwayTeamInfo(BoardProfile awayTeamInfo) {
		this.awayTeamInfo = awayTeamInfo;
	}
	public String getGameDate() {
		return gameDate;
	}
	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public List<BoardProfile> getBoardProfList() {
		return boardProfList;
	}
	public void setBoardProfList(List<BoardProfile> boardProfList) {
		this.boardProfList = boardProfList;
	}
	public String getGameDateStr() {
		return gameDateStr;
	}
	public void setGameDateStr(String gameDateStr) {
		this.gameDateStr = gameDateStr;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(String tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getGameDateWithTime() {
		return gameDateWithTime;
	}
	public void setGameDateWithTime(String gameDateWithTime) {
		this.gameDateWithTime = gameDateWithTime;
	}
	public String getScoreDetailCreatedDate() {
		return scoreDetailCreatedDate;
	}
	public void setScoreDetailCreatedDate(String scoreDetailCreatedDate) {
		this.scoreDetailCreatedDate = scoreDetailCreatedDate;
	}
	
	
	
}
