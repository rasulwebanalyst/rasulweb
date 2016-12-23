package com.cricketsocial.bean.leauge;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.buddy.UserProfile;

public class UmpireRating {

	private UUID umpireRatigid;
	private String comments;
	private Date createdDate;
	private Date modifiedDate;
	private String gameDate;
	private Date dateVal;
	private UUID matchId;
	private double rating;
	private UUID teamCaptainId;
	private UUID teamId;
	private UUID tournamentId;
	private UUID umpireId;
	private UUID userId;
	private String firstName;
	private double average;
	private String imageUrl;
	
	private List<UserProfile> userprofile;
	
	public UUID getUmpireRatigid() {
		return umpireRatigid;
	}
	public void setUmpireRatigid(UUID umpireRatigid) {
		this.umpireRatigid = umpireRatigid;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
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
	
	public String getGameDate() {
		return gameDate;
	}
	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}
	public UUID getMatchId() {
		return matchId;
	}
	public void setMatchId(UUID matchId) {
		this.matchId = matchId;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public UUID getTeamCaptainId() {
		return teamCaptainId;
	}
	public void setTeamCaptainId(UUID teamCaptainId) {
		this.teamCaptainId = teamCaptainId;
	}
	public UUID getTeamId() {
		return teamId;
	}
	public void setTeamId(UUID teamId) {
		this.teamId = teamId;
	}
	public UUID getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(UUID tournamentId) {
		this.tournamentId = tournamentId;
	}
	public UUID getUmpireId() {
		return umpireId;
	}
	public void setUmpireId(UUID umpireId) {
		this.umpireId = umpireId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public UUID getUserId() {
		return userId;
	}
	public void setUserId(UUID userId) {
		this.userId = userId;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public List<UserProfile> getUserprofile() {
		return userprofile;
	}
	public void setUserprofile(List<UserProfile> userprofile) {
		this.userprofile = userprofile;
	}
	public Date getDateVal() {
		return dateVal;
	}
	public void setDateVal(Date dateVal) {
		this.dateVal = dateVal;
	}
	
	
}
