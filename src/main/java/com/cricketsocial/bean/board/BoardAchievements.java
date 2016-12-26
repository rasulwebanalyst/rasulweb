package com.cricketsocial.bean.board;

import java.util.List;

public class BoardAchievements {

	public List<CompletedMatches> completedMatchesList;
	public int startNode;
	public int endNode;
	public int loseTeamPoints;
	public int winTeamPoints;
	public int noOfTournaments;
	public int noOfMatchesPlayed;
	public int noOfMatchesWon;
	public int noOfMatchesLost;
	public int noOfMatchesTie;
	public List<Tournament> tournamentList;
	public List<TournamentScheduler> matchesPlayedList;
	public List<TournamentScheduler> matchesWonList;
	public List<TournamentScheduler> matchesLostList;
	public List<TournamentScheduler> matchesTieList;
	public List<CompletedMatches> getCompletedMatchesList() {
		return completedMatchesList;
	}
	public void setCompletedMatchesList(List<CompletedMatches> completedMatchesList) {
		this.completedMatchesList = completedMatchesList;
	}
	public int getStartNode() {
		return startNode;
	}
	public void setStartNode(int startNode) {
		this.startNode = startNode;
	}
	public int getEndNode() {
		return endNode;
	}
	public void setEndNode(int endNode) {
		this.endNode = endNode;
	}
	public int getLoseTeamPoints() {
		return loseTeamPoints;
	}
	public void setLoseTeamPoints(int loseTeamPoints) {
		this.loseTeamPoints = loseTeamPoints;
	}
	public int getWinTeamPoints() {
		return winTeamPoints;
	}
	public void setWinTeamPoints(int winTeamPoints) {
		this.winTeamPoints = winTeamPoints;
	}
	public int getNoOfTournaments() {
		return noOfTournaments;
	}
	public void setNoOfTournaments(int noOfTournaments) {
		this.noOfTournaments = noOfTournaments;
	}
	public int getNoOfMatchesPlayed() {
		return noOfMatchesPlayed;
	}
	public void setNoOfMatchesPlayed(int noOfMatchesPlayed) {
		this.noOfMatchesPlayed = noOfMatchesPlayed;
	}
	public int getNoOfMatchesWon() {
		return noOfMatchesWon;
	}
	public void setNoOfMatchesWon(int noOfMatchesWon) {
		this.noOfMatchesWon = noOfMatchesWon;
	}
	public int getNoOfMatchesLost() {
		return noOfMatchesLost;
	}
	public void setNoOfMatchesLost(int noOfMatchesLost) {
		this.noOfMatchesLost = noOfMatchesLost;
	}
	public int getNoOfMatchesTie() {
		return noOfMatchesTie;
	}
	public void setNoOfMatchesTie(int noOfMatchesTie) {
		this.noOfMatchesTie = noOfMatchesTie;
	}
	public List<Tournament> getTournamentList() {
		return tournamentList;
	}
	public void setTournamentList(List<Tournament> tournamentList) {
		this.tournamentList = tournamentList;
	}
	public List<TournamentScheduler> getMatchesPlayedList() {
		return matchesPlayedList;
	}
	public void setMatchesPlayedList(List<TournamentScheduler> matchesPlayedList) {
		this.matchesPlayedList = matchesPlayedList;
	}
	public List<TournamentScheduler> getMatchesWonList() {
		return matchesWonList;
	}
	public void setMatchesWonList(List<TournamentScheduler> matchesWonList) {
		this.matchesWonList = matchesWonList;
	}
	public List<TournamentScheduler> getMatchesLostList() {
		return matchesLostList;
	}
	public void setMatchesLostList(List<TournamentScheduler> matchesLostList) {
		this.matchesLostList = matchesLostList;
	}
	public List<TournamentScheduler> getMatchesTieList() {
		return matchesTieList;
	}
	public void setMatchesTieList(List<TournamentScheduler> matchesTieList) {
		this.matchesTieList = matchesTieList;
	}
	
	
	
	
	
}
