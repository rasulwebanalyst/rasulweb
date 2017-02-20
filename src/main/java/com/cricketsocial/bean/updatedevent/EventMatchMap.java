package com.cricketsocial.bean.updatedevent;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.board.TournamentScheduler;
import com.cricketsocial.bean.buddy.UserProfile;

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
	
	
	private UUID eventId;
	private UUID createdBy;
	private String eventDescription;
	private String venue;
	private Date eventDate;
	private String cancelReason;
	private String eventName;
	private UserProfile creatorDetails;
	
	
	
	
	
	
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	
	
	
	
	
	
	
	
	
	public UserProfile getCreatorDetails() {
		return creatorDetails;
	}
	public void setCreatorDetails(UserProfile creatorDetails) {
		this.creatorDetails = creatorDetails;
	}
	public UUID getEventId() {
		return eventId;
	}
	public void setEventId(UUID eventId) {
		this.eventId = eventId;
	}
	public UUID getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(UUID createdBy) {
		this.createdBy = createdBy;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}
	public String getCancelReason() {
		return cancelReason;
	}
	public void setCancelReason(String cancelReason) {
		this.cancelReason = cancelReason;
	}
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
