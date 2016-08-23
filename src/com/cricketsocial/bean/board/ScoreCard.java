package com.cricketsocial.bean.board;

import java.util.List;

import com.cricketsocial.bean.leauge.FollowOfWickets;
import com.cricketsocial.bean.leauge.TournamentScheduler;
import com.cricketsocial.bean.roaster.Commentary;
import com.cricketsocial.bean.roaster.MatchResult;


public class ScoreCard {

	private ScorerCardDTO firstInnings;
	private ScorerCardDTO secondInnings;
	private double rpo;
	private double totalOvers;
	private int totalRuns;
	private List<String> doNotBatList;
	private List<FollowOfWickets> followOfWickets;
	private TournamentScheduler matchDetails;
	private MatchResult matchResult;
	
	
	public ScorerCardDTO getFirstInnings() {
		return firstInnings;
	}
	public MatchResult getMatchResult() {
		return matchResult;
	}
	public void setMatchResult(MatchResult matchResult) {
		this.matchResult = matchResult;
	}
	public void setFirstInnings(ScorerCardDTO firstInnings) {
		this.firstInnings = firstInnings;
	}
	public ScorerCardDTO getSecondInnings() {
		return secondInnings;
	}
	public void setSecondInnings(ScorerCardDTO secondInnings) {
		this.secondInnings = secondInnings;
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
	public List<FollowOfWickets> getFollowOfWickets() {
		return followOfWickets;
	}
	public void setFollowOfWickets(List<FollowOfWickets> followOfWickets) {
		this.followOfWickets = followOfWickets;
	}
	public TournamentScheduler getMatchDetails() {
		return matchDetails;
	}
	public void setMatchDetails(TournamentScheduler matchDetails) {
		this.matchDetails = matchDetails;
	}
	
	
}
