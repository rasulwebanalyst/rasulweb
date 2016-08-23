package com.cricketsocial.bean.leauge;

import java.util.Date;
import java.util.List;
import java.util.UUID;

public class MatchSheduleDTO {
	private UUID sheduledId;
	private String groundName;
	private String homeTeam;
	private String awayTeam;
	private Date gameDate;
	private List<PlayerDTO> playerlist;
	private String hometeamId;
	private String awayteamId;
	private List<BowlersDTO> bowlerlist;
	
	
	
	public UUID getSheduledId() {
		return sheduledId;
	}
	public void setSheduledId(UUID sheduledId) {
		this.sheduledId = sheduledId;
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
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public List<PlayerDTO> getPlayerlist() {
		return playerlist;
	}
	public void setPlayerlist(List<PlayerDTO> playerlist) {
		this.playerlist = playerlist;
	}
	public String getHometeamId() {
		return hometeamId;
	}
	public void setHometeamId(String hometeamId) {
		this.hometeamId = hometeamId;
	}
	public String getAwayteamId() {
		return awayteamId;
	}
	public void setAwayteamId(String awayteamId) {
		this.awayteamId = awayteamId;
	}
	public List<BowlersDTO> getBowlerlist() {
		return bowlerlist;
	}
	public void setBowlerlist(List<BowlersDTO> bowlerlist) {
		this.bowlerlist = bowlerlist;
	}
	
	
	
}
