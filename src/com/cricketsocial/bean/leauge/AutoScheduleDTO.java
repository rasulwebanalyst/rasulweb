package com.cricketsocial.bean.leauge;

import java.util.List;

public class AutoScheduleDTO {

	private String createdBy;
	private List<String> teamboardstrlist;
	private String tournamentId;
    private String startDateStr;
    private String daySelection;
    private String includeDateStr;
    private String excludeDateStr;
    private String boardIds;
    private String umpireSelection;
    private String scorerSelection;
    private String groundSelection;
    private String newTrophyName;
    
    
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public List<String> getTeamboardstrlist() {
		return teamboardstrlist;
	}
	public void setTeamboardstrlist(List<String> teamboardstrlist) {
		this.teamboardstrlist = teamboardstrlist;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getStartDateStr() {
		return startDateStr;
	}
	public void setStartDateStr(String startDateStr) {
		this.startDateStr = startDateStr;
	}
	public String getDaySelection() {
		return daySelection;
	}
	public void setDaySelection(String daySelection) {
		this.daySelection = daySelection;
	}
	public String getIncludeDateStr() {
		return includeDateStr;
	}
	public void setIncludeDateStr(String includeDateStr) {
		this.includeDateStr = includeDateStr;
	}
	public String getExcludeDateStr() {
		return excludeDateStr;
	}
	public void setExcludeDateStr(String excludeDateStr) {
		this.excludeDateStr = excludeDateStr;
	}
	public String getBoardIds() {
		return boardIds;
	}
	public void setBoardIds(String boardIds) {
		this.boardIds = boardIds;
	}
	public String getUmpireSelection() {
		return umpireSelection;
	}
	public void setUmpireSelection(String umpireSelection) {
		this.umpireSelection = umpireSelection;
	}
	public String getScorerSelection() {
		return scorerSelection;
	}
	public void setScorerSelection(String scorerSelection) {
		this.scorerSelection = scorerSelection;
	}
	public String getGroundSelection() {
		return groundSelection;
	}
	public void setGroundSelection(String groundSelection) {
		this.groundSelection = groundSelection;
	}
	public String getNewTrophyName() {
		return newTrophyName;
	}
	public void setNewTrophyName(String newTrophyName) {
		this.newTrophyName = newTrophyName;
	}
	
	
    
}
