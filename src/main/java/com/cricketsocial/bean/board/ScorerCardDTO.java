package com.cricketsocial.bean.board;

import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.leauge.PlayerDTO;
import com.cricketsocial.bean.roaster.Commentary;
import com.cricketsocial.bean.roaster.CommentaryDetails;
import com.cricketsocial.bean.roaster.FollowOfWickets;

public class ScorerCardDTO {
	private UUID battingTeamId;
	private String battingTeamName;
	private UUID bowlingTeamId;
	private String bowlingTeamName;
	private List<BattingPlayerSummary> battingPlayer;
	private List<BowlingPlayerSummary> bowlingPlayer;
	private double rpo;
	private double totalOvers;
	private int totalRuns;
	private List<String> doNotBatList;
	private List<FollowOfWickets> fallOfWickets;
	private int totalWickets;
	private String manOfTheMatch;
	private List<String> totalExtras;	
	private String totalNumExtras;
	private CommentaryDetails commentary;
	private String isInningsCompleted;
	private int firstInningsTotalRuns;
	private int secondInningsTotalRuns;
	private List<ExtrasDTO> extrasvalue;
    private List<PlayerDTO> doNotBatPlayersList;
	
	
	
	public List<PlayerDTO> getDoNotBatPlayersList() {
		return doNotBatPlayersList;
	}
	public void setDoNotBatPlayersList(List<PlayerDTO> doNotBatPlayersList) {
		this.doNotBatPlayersList = doNotBatPlayersList;
	}
	public List<ExtrasDTO> getExtrasvalue() {
		return extrasvalue;
	}
	public void setExtrasvalue(List<ExtrasDTO> extrasvalue) {
		this.extrasvalue = extrasvalue;
	}
	public int getSecondInningsTotalRuns() {
		return secondInningsTotalRuns;
	}
	public void setSecondInningsTotalRuns(int secondInningsTotalRuns) {
		this.secondInningsTotalRuns = secondInningsTotalRuns;
	}
	public int getFirstInningsTotalRuns() {
		return firstInningsTotalRuns;
	}
	public void setFirstInningsTotalRuns(int firstInningsTotalRuns) {
		this.firstInningsTotalRuns = firstInningsTotalRuns;
	}
	public String getIsInningsCompleted() {
		return isInningsCompleted;
	}
	public void setIsInningsCompleted(String isInningsCompleted) {
		this.isInningsCompleted = isInningsCompleted;
	}
	public UUID getBattingTeamId() {
		return battingTeamId;
	}
	public void setBattingTeamId(UUID battingTeamId) {
		this.battingTeamId = battingTeamId;
	}
	public String getBattingTeamName() {
		return battingTeamName;
	}
	public void setBattingTeamName(String battingTeamName) {
		this.battingTeamName = battingTeamName;
	}
	public UUID getBowlingTeamId() {
		return bowlingTeamId;
	}
	public void setBowlingTeamId(UUID bowlingTeamId) {
		this.bowlingTeamId = bowlingTeamId;
	}
	public String getBowlingTeamName() {
		return bowlingTeamName;
	}
	public void setBowlingTeamName(String bowlingTeamName) {
		this.bowlingTeamName = bowlingTeamName;
	}
	public List<BattingPlayerSummary> getBattingPlayer() {
		return battingPlayer;
	}
	public void setBattingPlayer(List<BattingPlayerSummary> battingPlayer) {
		this.battingPlayer = battingPlayer;
	}
	public List<BowlingPlayerSummary> getBowlingPlayer() {
		return bowlingPlayer;
	}
	public void setBowlingPlayer(List<BowlingPlayerSummary> bowlingPlayer) {
		this.bowlingPlayer = bowlingPlayer;
	}
	public double getRpo() {
		return rpo;
	}
	public void setRpo(double rpo) {
		this.rpo = rpo;
	}
	public double getTotalOvers() {
		return totalOvers;
	}
	public void setTotalOvers(double totalOvers) {
		this.totalOvers = totalOvers;
	}
	public int getTotalRuns() {
		return totalRuns;
	}
	public void setTotalRuns(int totalRuns) {
		this.totalRuns = totalRuns;
	}
	public List<String> getDoNotBatList() {
		return doNotBatList;
	}
	public void setDoNotBatList(List<String> doNotBatList) {
		this.doNotBatList = doNotBatList;
	}
	public int getTotalWickets() {
		return totalWickets;
	}
	public void setTotalWickets(int totalWickets) {
		this.totalWickets = totalWickets;
	}
	public List<String> getTotalExtras() {
		return totalExtras;
	}
	public void setTotalExtras(List<String> totalExtras) {
		this.totalExtras = totalExtras;
	}
	public String getTotalNumExtras() {
		return totalNumExtras;
	}
	public void setTotalNumExtras(String totalNumExtras) {
		this.totalNumExtras = totalNumExtras;
	}
	public String getManOfTheMatch() {
		return manOfTheMatch;
	}
	public void setManOfTheMatch(String manOfTheMatch) {
		this.manOfTheMatch = manOfTheMatch;
	}
	public List<FollowOfWickets> getFallOfWickets() {
		return fallOfWickets;
	}
	public void setFallOfWickets(List<FollowOfWickets> fallOfWickets) {
		this.fallOfWickets = fallOfWickets;
	}
	public CommentaryDetails getCommentary() {
		return commentary;
	}
	public void setCommentary(CommentaryDetails commentary) {
		this.commentary = commentary;
	}
	
	
}
