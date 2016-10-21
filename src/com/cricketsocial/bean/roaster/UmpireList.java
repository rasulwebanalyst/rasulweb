package com.cricketsocial.bean.roaster;

import java.util.Date;

public class UmpireList {

	private String schedualId;

	private String comments;
	private String gameDate;
	private String matchId;
	private String rating;
	private String teamCaptainId;
	private String teamId;
	private String umpireId;
	private String tournamentId;
	private String matchDate;
	
	private String resultStatus;
	
	private String captainId;
	
	/*sfdsfds
	 
	 "msgType":129,
"requestParam": {

"comments":"Test",
"gameDate":"2015-10-26 14:56:00",
"matchId":"29facada-8cc6-4d81-934d-0dbfc56725ce",
"rating" :5,
"teamCaptainId":"833fbe1c-a83c-4870-a2e4-7613977a9008",
"teamId":"ccab6010-9484-4385-9466-e094e1a51109",
"umpireId":"2766cc60-8267-4afc-a86a-6f6a2cfd263b",
"tournamentId":"2e3f1f13-1817-4d23-8779-344761545722"
 
	 * */
	
	
	public String getMatchDate() {
		return matchDate;
	}

	public void setMatchDate(String matchDate) {
		this.matchDate = matchDate;
	}

	public String getSchedualId() {
		return schedualId;
	}

	public void setSchedualId(String schedualId) {
		this.schedualId = schedualId;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	
	public String getGameDate() {
		return gameDate;
	}

	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}

	public String getMatchId() {
		return matchId;
	}

	public void setMatchId(String matchId) {
		this.matchId = matchId;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getTeamCaptainId() {
		return teamCaptainId;
	}

	public void setTeamCaptainId(String teamCaptainId) {
		this.teamCaptainId = teamCaptainId;
	}

	public String getTeamId() {
		return teamId;
	}

	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}

	public String getUmpireId() {
		return umpireId;
	}

	public void setUmpireId(String umpireId) {
		this.umpireId = umpireId;
	}

	public String getTournamentId() {
		return tournamentId;
	}

	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}

	public String getResultStatus() {
		return resultStatus;
	}

	public void setResultStatus(String resultStatus) {
		this.resultStatus = resultStatus;
	}

	public String getCaptainId() {
		return captainId;
	}

	public void setCaptainId(String captainId) {
		this.captainId = captainId;
	}
	
	
	
}
