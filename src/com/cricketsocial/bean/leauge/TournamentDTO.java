package com.cricketsocial.bean.leauge;

import java.util.List;
import java.util.UUID;


public class TournamentDTO {
	private UUID tournamentId;
	private String tournamentName;
	private String groundName;
	private String homeTeam;
	private String awayTeam;
	private List<PointTableDTO> pointtablelist;	
	private List<MatchSheduleDTO> matchsheduledtolist;
	private List<TopPlayerList> topPlayersList;
	private String size;
	private List<PlayerDTO> playerlist;
	
	
	
	public List<PlayerDTO> getPlayerlist() {
		return playerlist;
	}
	public void setPlayerlist(List<PlayerDTO> playerlist) {
		this.playerlist = playerlist;
	}
	public UUID getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(UUID tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public List<PointTableDTO> getPointtablelist() {
		return pointtablelist;
	}
	public void setPointtablelist(List<PointTableDTO> pointtablelist) {
		this.pointtablelist = pointtablelist;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public String getHomeTeam() {
		return homeTeam;
	}
	public void setHomeTeam(String homeTeam) {
		this.homeTeam = homeTeam;
	}
	public String getAwayTeam() {
		return awayTeam;
	}
	public void setAwayTeam(String awayTeam) {
		this.awayTeam = awayTeam;
	}
	public List<MatchSheduleDTO> getMatchsheduledtolist() {
		return matchsheduledtolist;
	}
	public void setMatchsheduledtolist(List<MatchSheduleDTO> matchsheduledtolist) {
		this.matchsheduledtolist = matchsheduledtolist;
	}
	public List<TopPlayerList> getTopPlayersList() {
		return topPlayersList;
	}
	public void setTopPlayersList(List<TopPlayerList> topPlayersList) {
		this.topPlayersList = topPlayersList;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	
	
	
	
	
}
