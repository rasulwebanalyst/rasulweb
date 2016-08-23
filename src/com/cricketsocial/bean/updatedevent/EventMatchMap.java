package com.cricketsocial.bean.updatedevent;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.TournamentScheduler;

public class EventMatchMap {

	private UUID eventMatchMapId;
	private Date createdDate;
	private Date modifiedDate;
	private Date matchDate;
	private UUID matchId;
	private int matchStatusId;
	private UUID playerId;
	private UUID rosterId;
	private int statusId;
	private UUID teamBoardId;
	private UUID tournamentId;

	private List<EventMatchMap> upcomingMatch;
	private List<TournamentScheduler> tournamentSchedulerList;
	
	private TournamentScheduler tournamentSchedulerObj;
	
	

	private int acceptedCount;
	private int rejectedCount;
	private int maybeCount;
	
	public UUID getEventMatchMapId() {
		return eventMatchMapId;
	}
	public void setEventMatchMapId(UUID eventMatchMapId) {
		this.eventMatchMapId = eventMatchMapId;
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
	public Date getMatchDate() {
		return matchDate;
	}
	public void setMatchDate(Date matchDate) {
		this.matchDate = matchDate;
	}
	public UUID getMatchId() {
		return matchId;
	}
	public void setMatchId(UUID matchId) {
		this.matchId = matchId;
	}
	public int getMatchStatusId() {
		return matchStatusId;
	}
	public void setMatchStatusId(int matchStatusId) {
		this.matchStatusId = matchStatusId;
	}
	public UUID getPlayerId() {
		return playerId;
	}
	public void setPlayerId(UUID playerId) {
		this.playerId = playerId;
	}
	public UUID getRosterId() {
		return rosterId;
	}
	public void setRosterId(UUID rosterId) {
		this.rosterId = rosterId;
	}
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public UUID getTeamBoardId() {
		return teamBoardId;
	}
	public void setTeamBoardId(UUID teamBoardId) {
		this.teamBoardId = teamBoardId;
	}
	public UUID getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(UUID tournamentId) {
		this.tournamentId = tournamentId;
	}
	public List<EventMatchMap> getUpcomingMatch() {
		return upcomingMatch;
	}
	public void setUpcomingMatch(List<EventMatchMap> upcomingMatch) {
		this.upcomingMatch = upcomingMatch;
	}
	public List<TournamentScheduler> getTournamentSchedulerList() {
		return tournamentSchedulerList;
	}
	public void setTournamentSchedulerList(
			List<TournamentScheduler> tournamentSchedulerList) {
		this.tournamentSchedulerList = tournamentSchedulerList;
	}
	public int getAcceptedCount() {
		return acceptedCount;
	}
	public void setAcceptedCount(int acceptedCount) {
		this.acceptedCount = acceptedCount;
	}
	public int getRejectedCount() {
		return rejectedCount;
	}
	public void setRejectedCount(int rejectedCount) {
		this.rejectedCount = rejectedCount;
	}
	public int getMaybeCount() {
		return maybeCount;
	}
	public void setMaybeCount(int maybeCount) {
		this.maybeCount = maybeCount;
	}
	public TournamentScheduler getTournamentSchedulerObj() {
		return tournamentSchedulerObj;
	}
	public void setTournamentSchedulerObj(TournamentScheduler tournamentSchedulerObj) {
		this.tournamentSchedulerObj = tournamentSchedulerObj;
	}
	
	
	
	
	
	
}
