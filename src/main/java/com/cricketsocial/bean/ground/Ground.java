package com.cricketsocial.bean.ground;

import java.util.List;

import com.cricketsocial.bean.board.TournamentScheduler;
import com.cricketsocial.bean.leauge.PlayerDTO;

public class Ground {
	private String groundId;
	private int active;
	private String address1;
	private String address2;
	private String city;
	private String country;
	private String createdBy;
	private String createdDate;
	private String groundName;
	private String state;
	private String tournamentId;
	private long zipcode;
	private String latLang;
	private String boardId;
	private String homeTeamId;
	private String modifiedBy;
	private String homeTeamName;
	private long tokenId;

	private String paginationFlag;
	
	
     private List<TournamentScheduler> teamScores;
	 
	 private List<PlayerDTO> playerStatistics;
	
	 private String groundFacilities;
	 
	 private String directionsToGround;
	 
	 
	 
	

	public String getGroundFacilities() {
		return groundFacilities;
	}
	public void setGroundFacilities(String groundFacilities) {
		this.groundFacilities = groundFacilities;
	}
	public String getDirectionsToGround() {
		return directionsToGround;
	}
	public void setDirectionsToGround(String directionsToGround) {
		this.directionsToGround = directionsToGround;
	}
	public List<TournamentScheduler> getTeamScores() {
		return teamScores;
	}
	public void setTeamScores(List<TournamentScheduler> teamScores) {
		this.teamScores = teamScores;
	}
	public List<PlayerDTO> getPlayerStatistics() {
		return playerStatistics;
	}
	public void setPlayerStatistics(List<PlayerDTO> playerStatistics) {
		this.playerStatistics = playerStatistics;
	}
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public long getZipcode() {
		return zipcode;
	}
	public void setZipcode(long zipcode) {
		this.zipcode = zipcode;
	}
	public String getLatLang() {
		return latLang;
	}
	public void setLatLang(String latLang) {
		this.latLang = latLang;
	}
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String getHomeTeamId() {
		return homeTeamId;
	}
	public void setHomeTeamId(String homeTeamId) {
		this.homeTeamId = homeTeamId;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public String getHomeTeamName() {
		return homeTeamName;
	}
	public void setHomeTeamName(String homeTeamName) {
		this.homeTeamName = homeTeamName;
	}
	public long getTokenId() {
		return tokenId;
	}
	public void setTokenId(long tokenId) {
		this.tokenId = tokenId;
	}
	public String getPaginationFlag() {
		return paginationFlag;
	}
	public void setPaginationFlag(String paginationFlag) {
		this.paginationFlag = paginationFlag;
	}
	
	
}
