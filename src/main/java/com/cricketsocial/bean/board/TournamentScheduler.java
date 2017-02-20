package com.cricketsocial.bean.board;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.ground.Ground;
import com.cricketsocial.bean.updatedevent.EventMatchMap;

public class TournamentScheduler {

	private String tournamentSchedulerId;
	private int active;
	private String createdBy;
	private String groundId;
	private Date gameDate;
	private String homeTeamId;
	private int noOfOvers;
	private String tournamentName;
	private int loseTeamRuns;
	private int loseTeamWickets;
	private int winTeamRuns;
	private int winTeamWickets;
	//private List<umpireIdList> umpireList;
	private String homeTeamName;
	private String awayTeamName;
	private String groundName;
	private List<UmpireNameList> umpireNamesList;
	private String tournamentId;
	private String dateString;
	private String awayTeamId;
	private List<ScorerNameList> scorerNamesList;
	private BoardProfile boardInfo;
	private BoardProfile homeTeamInfo;
	private BoardProfile awayTeamInfo;
	private BoardProfile leagueInfo;
	private Tournament tournamentInfo;
	private String homeTeamImageUrl;
	private String awayTeamImageUrl;
	
	private Ground groundDetails;
	
	private String status;
	private String player_role;
	
	private String gameId;
	private String gameName;
	
	// for getting accepted, reject and may be list 
	private String rosterId;
	private String eventMatchMapId;
	
	private int acceptedCount;
	private int rejectedCount;
	private int maybeCount;

	private String scheduleCancelReason;
	private String cancelReason;
	
	private List<TeamDetailsDTO> teamboardslist;
	
	private String startDateString;
	 private String endDateString;
	 private String previousNextFlag;
	 
	 private String winTeamId;
	private String gameTime; 
	
	private int tournamentSelectOption;
	
	
	private String matchStatus;
	
	private String gameType;
	
	private List<ScorerNameList> portalScorerList;
	
	private int runs;
	
	private String runsFlag;
	
	private String teamId;
	
	private String teamName;
	
	private int wickets; 
	
	private int overs;
	
	private String againstTeamName;
	
	private String againstTeamId;
	
	
	
	
	
	private int winPoints;
	private int umpireCheck;
	private String teamboardsId;
	private List<String> teamboardstrlist;
	private boolean scheduleCoordinator;
	private List<BoardDTO> boardSearchBean;	
	private List<TournamentScheduler> tournamentScheduler;
	private String gametypeinTour;
	private String modifiedBy;

	
	private Date createdDate;
	private Date modifiedDate;
	private Date matchDate;
	private UUID matchId;
	private int matchStatusId;
	private UUID playerId;
	private int statusId;
	private UUID teamBoardId;

	private List<EventMatchMap> upcomingMatch;
	private List<TournamentScheduler> tournamentSchedulerList;
	
	private TournamentScheduler tournamentSchedulerObj;
	
	
	private UUID eventId;
	private String eventDescription;
	private String venue;
	private Date eventDate;
	private String eventName;
	private UserProfile creatorDetails;
	
	
	
	
	
	
	
	
	
	
	public int getWinPoints() {
		return winPoints;
	}
	public void setWinPoints(int winPoints) {
		this.winPoints = winPoints;
	}
	public int getUmpireCheck() {
		return umpireCheck;
	}
	public void setUmpireCheck(int umpireCheck) {
		this.umpireCheck = umpireCheck;
	}
	public String getTeamboardsId() {
		return teamboardsId;
	}
	public void setTeamboardsId(String teamboardsId) {
		this.teamboardsId = teamboardsId;
	}
	public List<String> getTeamboardstrlist() {
		return teamboardstrlist;
	}
	public void setTeamboardstrlist(List<String> teamboardstrlist) {
		this.teamboardstrlist = teamboardstrlist;
	}
	public boolean isScheduleCoordinator() {
		return scheduleCoordinator;
	}
	public void setScheduleCoordinator(boolean scheduleCoordinator) {
		this.scheduleCoordinator = scheduleCoordinator;
	}
	public List<BoardDTO> getBoardSearchBean() {
		return boardSearchBean;
	}
	public void setBoardSearchBean(List<BoardDTO> boardSearchBean) {
		this.boardSearchBean = boardSearchBean;
	}
	public List<TournamentScheduler> getTournamentScheduler() {
		return tournamentScheduler;
	}
	public void setTournamentScheduler(List<TournamentScheduler> tournamentScheduler) {
		this.tournamentScheduler = tournamentScheduler;
	}
	public String getGametypeinTour() {
		return gametypeinTour;
	}
	public void setGametypeinTour(String gametypeinTour) {
		this.gametypeinTour = gametypeinTour;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
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
	public TournamentScheduler getTournamentSchedulerObj() {
		return tournamentSchedulerObj;
	}
	public void setTournamentSchedulerObj(TournamentScheduler tournamentSchedulerObj) {
		this.tournamentSchedulerObj = tournamentSchedulerObj;
	}
	public UUID getEventId() {
		return eventId;
	}
	public void setEventId(UUID eventId) {
		this.eventId = eventId;
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
	public String getAgainstTeamId() {
		return againstTeamId;
	}
	public void setAgainstTeamId(String againstTeamId) {
		this.againstTeamId = againstTeamId;
	}
	public String getAgainstTeamName() {
		return againstTeamName;
	}
	public void setAgainstTeamName(String againstTeamName) {
		this.againstTeamName = againstTeamName;
	}
	public int getOvers() {
		return overs;
	}
	public void setOvers(int overs) {
		this.overs = overs;
	}
	public int getWickets() {
		return wickets;
	}
	public void setWickets(int wickets) {
		this.wickets = wickets;
	}
	public int getRuns() {
		return runs;
	}
	public void setRuns(int runs) {
		this.runs = runs;
	}
	public String getRunsFlag() {
		return runsFlag;
	}
	public void setRunsFlag(String runsFlag) {
		this.runsFlag = runsFlag;
	}
	public String getTeamId() {
		return teamId;
	}
	public void setTeamId(String teamId) {
		this.teamId = teamId;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public List<ScorerNameList> getPortalScorerList() {
		return portalScorerList;
	}
	public void setPortalScorerList(List<ScorerNameList> portalScorerList) {
		this.portalScorerList = portalScorerList;
	}
	public String getGameType() {
		return gameType;
	}
	public void setGameType(String gameType) {
		this.gameType = gameType;
	}
	public String getMatchStatus() {
		return matchStatus;
	}
	public void setMatchStatus(String matchStatus) {
		this.matchStatus = matchStatus;
	}
	public String getTournamentSchedulerId() {
		return tournamentSchedulerId;
	}
	public void setTournamentSchedulerId(String tournamentSchedulerId) {
		this.tournamentSchedulerId = tournamentSchedulerId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getGroundId() {
		return groundId;
	}
	public void setGroundId(String groundId) {
		this.groundId = groundId;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public String getHomeTeamId() {
		return homeTeamId;
	}
	public void setHomeTeamId(String homeTeamId) {
		this.homeTeamId = homeTeamId;
	}
	public int getNoOfOvers() {
		return noOfOvers;
	}
	public void setNoOfOvers(int noOfOvers) {
		this.noOfOvers = noOfOvers;
	}
	public String getTournamentName() {
		return tournamentName;
	}
	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}
	public int getLoseTeamRuns() {
		return loseTeamRuns;
	}
	public void setLoseTeamRuns(int loseTeamRuns) {
		this.loseTeamRuns = loseTeamRuns;
	}
	public int getLoseTeamWickets() {
		return loseTeamWickets;
	}
	public void setLoseTeamWickets(int loseTeamWickets) {
		this.loseTeamWickets = loseTeamWickets;
	}
	public int getWinTeamRuns() {
		return winTeamRuns;
	}
	public void setWinTeamRuns(int winTeamRuns) {
		this.winTeamRuns = winTeamRuns;
	}
	public int getWinTeamWickets() {
		return winTeamWickets;
	}
	public void setWinTeamWickets(int winTeamWickets) {
		this.winTeamWickets = winTeamWickets;
	}
	public String getHomeTeamName() {
		return homeTeamName;
	}
	public void setHomeTeamName(String homeTeamName) {
		this.homeTeamName = homeTeamName;
	}
	public String getAwayTeamName() {
		return awayTeamName;
	}
	public void setAwayTeamName(String awayTeamName) {
		this.awayTeamName = awayTeamName;
	}
	public String getGroundName() {
		return groundName;
	}
	public void setGroundName(String groundName) {
		this.groundName = groundName;
	}
	public List<UmpireNameList> getUmpireNamesList() {
		return umpireNamesList;
	}
	public void setUmpireNamesList(List<UmpireNameList> umpireNamesList) {
		this.umpireNamesList = umpireNamesList;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	public String getDateString() {
		return dateString;
	}
	public void setDateString(String dateString) {
		this.dateString = dateString;
	}
	public String getAwayTeamId() {
		return awayTeamId;
	}
	public void setAwayTeamId(String awayTeamId) {
		this.awayTeamId = awayTeamId;
	}
	public List<ScorerNameList> getScorerNamesList() {
		return scorerNamesList;
	}
	public void setScorerNamesList(List<ScorerNameList> scorerNamesList) {
		this.scorerNamesList = scorerNamesList;
	}
	public BoardProfile getBoardInfo() {
		return boardInfo;
	}
	public void setBoardInfo(BoardProfile boardInfo) {
		this.boardInfo = boardInfo;
	}
	public BoardProfile getHomeTeamInfo() {
		return homeTeamInfo;
	}
	public void setHomeTeamInfo(BoardProfile homeTeamInfo) {
		this.homeTeamInfo = homeTeamInfo;
	}
	public BoardProfile getAwayTeamInfo() {
		return awayTeamInfo;
	}
	public void setAwayTeamInfo(BoardProfile awayTeamInfo) {
		this.awayTeamInfo = awayTeamInfo;
	}
	public Tournament getTournamentInfo() {
		return tournamentInfo;
	}
	public void setTournamentInfo(Tournament tournamentInfo) {
		this.tournamentInfo = tournamentInfo;
	}
	public Ground getGroundDetails() {
		return groundDetails;
	}
	public void setGroundDetails(Ground groundDetails) {
		this.groundDetails = groundDetails;
	}
		
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPlayer_role() {
		return player_role;
	}
	public void setPlayer_role(String player_role) {
		this.player_role = player_role;
	}
	
	public String getHomeTeamImageUrl() {
		return homeTeamImageUrl;
	}
	public void setHomeTeamImageUrl(String homeTeamImageUrl) {
		this.homeTeamImageUrl = homeTeamImageUrl;
	}
	public String getAwayTeamImageUrl() {
		return awayTeamImageUrl;
	}
	public void setAwayTeamImageUrl(String awayTeamImageUrl) {
		this.awayTeamImageUrl = awayTeamImageUrl;
	}
	public String getGameId() {
		return gameId;
	}
	public void setGameId(String gameId) {
		this.gameId = gameId;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public String getRosterId() {
		return rosterId;
	}
	public void setRosterId(String rosterId) {
		this.rosterId = rosterId;
	}
	public String getEventMatchMapId() {
		return eventMatchMapId;
	}
	public void setEventMatchMapId(String eventMatchMapId) {
		this.eventMatchMapId = eventMatchMapId;
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
	public String getScheduleCancelReason() {
		return scheduleCancelReason;
	}
	public void setScheduleCancelReason(String scheduleCancelReason) {
		this.scheduleCancelReason = scheduleCancelReason;
	}
	public String getCancelReason() {
		return cancelReason;
	}
	public void setCancelReason(String cancelReason) {
		this.cancelReason = cancelReason;
	}
	public List<TeamDetailsDTO> getTeamboardslist() {
		return teamboardslist;
	}
	public void setTeamboardslist(List<TeamDetailsDTO> teamboardslist) {
		this.teamboardslist = teamboardslist;
	}
	public BoardProfile getLeagueInfo() {
		return leagueInfo;
	}
	public void setLeagueInfo(BoardProfile leagueInfo) {
		this.leagueInfo = leagueInfo;
	}
	public String getStartDateString() {
		return startDateString;
	}
	public void setStartDateString(String startDateString) {
		this.startDateString = startDateString;
	}
	public String getEndDateString() {
		return endDateString;
	}
	public void setEndDateString(String endDateString) {
		this.endDateString = endDateString;
	}
	public String getPreviousNextFlag() {
		return previousNextFlag;
	}
	public void setPreviousNextFlag(String previousNextFlag) {
		this.previousNextFlag = previousNextFlag;
	}
	public String getWinTeamId() {
		return winTeamId;
	}
	public void setWinTeamId(String winTeamId) {
		this.winTeamId = winTeamId;
	}
	public String getGameTime() {
		return gameTime;
	}
	public void setGameTime(String gameTime) {
		this.gameTime = gameTime;
	}
	public int getTournamentSelectOption() {
		return tournamentSelectOption;
	}
	public void setTournamentSelectOption(int tournamentSelectOption) {
		this.tournamentSelectOption = tournamentSelectOption;
	}
	
    
}