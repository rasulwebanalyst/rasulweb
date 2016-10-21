package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.banner.BannerResponse;
import com.cricketsocial.bean.board.BoardAchievements;
import com.cricketsocial.bean.board.BoardAttrbutesResponse;
import com.cricketsocial.bean.board.BoardCancelledMatchList;
import com.cricketsocial.bean.board.BoardProfile;
import com.cricketsocial.bean.board.BoardUmpire;
import com.cricketsocial.bean.board.BoardUpcomingMatchList;
import com.cricketsocial.bean.board.DismissalDTO;
import com.cricketsocial.bean.board.GameSchedule;
import com.cricketsocial.bean.board.GameTypeBean;
import com.cricketsocial.bean.board.InningsScore;
import com.cricketsocial.bean.board.PlayerRestriction;
import com.cricketsocial.bean.board.Roaster;
import com.cricketsocial.bean.board.ScoreCard;
import com.cricketsocial.bean.board.ScoreDetailsDTO;
import com.cricketsocial.bean.board.Tournament;
import com.cricketsocial.bean.board.TournamentScheduler;
import com.cricketsocial.bean.board.UmpireAndScorerDetails;
import com.cricketsocial.bean.buddy.BuddyRequestCount;
import com.cricketsocial.bean.buddy.CountryCodes;
import com.cricketsocial.bean.buddy.PlayerComparisionPerformanceList;
import com.cricketsocial.bean.buddy.PlayerSearchResponse;
import com.cricketsocial.bean.buddy.UserBattingPerformanceDTO;
import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.buddy.Years;
import com.cricketsocial.bean.event.AcceptEventInfo;
import com.cricketsocial.bean.event.BuddyEventInvitationList;
import com.cricketsocial.bean.event.EditEvent;
import com.cricketsocial.bean.event.Event;
import com.cricketsocial.bean.event.EventList;
import com.cricketsocial.bean.event.EventType;
import com.cricketsocial.bean.event.SheduleAcceptEventResponse;
import com.cricketsocial.bean.feed.FeedComment;
import com.cricketsocial.bean.ground.Ground;
import com.cricketsocial.bean.leauge.TournamentDTO;
import com.cricketsocial.bean.leauge.UmpireRating;
import com.cricketsocial.bean.notification.EventNotificationDTO;
import com.cricketsocial.bean.roaster.BattingPerformance;
import com.cricketsocial.bean.roaster.BowlingPerformance;
import com.cricketsocial.bean.roaster.RoasterAttachment;
import com.cricketsocial.bean.roaster.RoasterEventSearch;
import com.cricketsocial.bean.roaster.Roster;
import com.cricketsocial.bean.roaster.RosterProfile;
import com.cricketsocial.bean.role.UserProfileRole;
import com.cricketsocial.bean.updatedevent.EventListingDto;
import com.cricketsocial.bean.updatedevent.EventMatchMap;
import com.cricketsocial.bean.user.MergeDTO;
/**
 * @author Thamaramurthy Devarala
 *
 */
public class ResponseType {

	private List<UserProfile> gettingUserSearchListDetails;

    private SearchResponse searchResponse;
	
    private FeedResponse feedResponse;
    
    private List<FeedComment> commentList;
   
    private List<BullPreferenceVO> ballPrefenrenceList;
   
	private RoleResponse rolesAndSubRoles;
	
	private String boardDetail;
	
	private List<BoardProfile> boardsList;
	
	private List<BoardProfile> boardStatusDetail;
	
	private FeedResponse boardFeedResponse;
	
	// for getting board fans list
	
	private BoardAttrbutesResponse fanDetails;
	
	private List<Roaster> rosterList;
	
	private RoasterResponseById rosterInfo;
		
	// for country codes
	
	// for feedshare
	
	private String status;
	
	// for getting evendt details
	
	private List<Event> eventDetails;
	
	// getting request count
	
	private BuddyRequestCount UserConnection;
	
	private List<UserProfileRole> itemsFound;
	private UserProfileRole itemFound;
	//Ramya Created
	private List<BoardUmpire> boardUmpireList;
	
	private String umpireStatus;
	
	private List<BoardUmpire> umpireDetails;
	
	private List<BoardUmpire> umpireList;
	
	private List<Ground> groundList;
	
	private String groundStatus;
	
	private String scheduleStatus;
	
	private List<TournamentScheduler> tournamentSchelduleDetails;
	
    private List<TournamentScheduler> tournamentSchedulerList;
	
	private List<TournamentScheduler> umpireListOfSchedule;
	
	private List<BoardUmpire> scorerList;
	
	private List<TournamentScheduler> scorerListOfSchedule;
	
	private GameSchedule gameSchedule;
	
	private String disputeMangementStatus;

	private List<Tournament> tournamentNamestList;
	
	private List<TournamentScheduler> tournamentScheduleList;
	
	private BoardAchievements boardAchievements;
	
	private Years createUmpire;
	
	private String createContactUs;
	
	private String enterScoreStatus;
	
	private List<GameTypeBean> gameList;
	
	
	
	// Roaster info
	 
	private List<RoasterAttachment> rosterAttachment;
	
	private List<Tournament> tournamentDetails;
	
	private List<TournamentScheduler> tournamentsList;
	
	private List<Tournament> tournamentList;
	
	private List<BowlingPerformance> BowlingPerformance;
	

	private List<BattingPerformance> BattingPerformance;
	
	private List<TournamentDTO> tournamentPointTableList;
	
	private List<TournamentDTO> centueryList;
	
	private List<TournamentDTO> halfCenturyList;
	
	private List<TournamentDTO> fiveWicketsPlayerList;
	
	private List<TournamentDTO> topBowlersList;
	
	private List<TournamentDTO> topBatsmanList;
	
	private List<TopUmpire> topUmpireList;
	
	private List<TeamDetailsList> teamDetailsList;
	
	private EventList eventList;
	
	private String saveEvents;
	

	private List<EventListingDto> eventListing;
	
	
	
	private List<UmpireRating> umpireInfo;
	
	private List<UserProfile> eventCount;
	
	//private List<SearchResponse> searchResponse;
	

	private AcceptEventInfo eventAcceptedCount;
	
	private AcceptEventInfo eventMayBeCount;
	
	private AcceptEventInfo eventRejectCount;
		
	
	private RosterProfile rosterSearchList;
	
	
	private List<UserBattingPerformanceDTO> userBattingPerformanceList;
	
	private List<UserBattingPerformanceDTO> userBowlingPerformanceList;
	
	private List<UserBattingPerformanceDTO> useronedaymatchsachivements;
	
	private List<RoasterEventSearch> rosterEventSearchList;
	
	
	private List<UserProfile> UmpireNameList;
	
	private String createUmpireRating;
	
	private List<PlayerSearchResponse> playerSearchList;
	
	private PlayerComparisionPerformanceList playerComparisionPerformanceList;  
	
	private List<EditEvent> editEventDeatils;

	private SheduleAcceptEventResponse matchAcceptedCount;
	private SheduleAcceptEventResponse matchMayBeCount;
	private SheduleAcceptEventResponse matchRejectCount;
	
	private List<UserProfile> rosterMatchAcceptedPlayerList;
	private List<UserProfile> rosterMatchMayBePlayerList;
	private List<UserProfile> rosterMatchRejectedPlayerList;
	
	private String cancelTournamentResponse;
	
	private List<BoardProfile> mergeAccountBoradSearch;
	
	private List<UserProfile> boardDetailsForMergeAccount;
	
	private MergeDTO mergeOTPResult;
	
	private String UserValidationSuccess;
	
	private List<DismissalDTO> dismissalTypeList;
	
	private String mergeAccountStatus;
	
	// for score card info
	private List<ScoreCard> scoreCardList;
	
	private BannerResponse bannerListByLatLang;
	
	private List<TournamentScheduler> teamList;
	
	private int eventNotificationCount;
	
	private List<EventNotificationDTO> eventnotificationList;
	
	private String startDateStr;
	private String endDateStr;
	private List<Roster> rosterDetails;
	
	 private Event createdEventList;
	
	 private List<EventMatchMap> buddyCancelledMatchList;
	 
	 private BoardCancelledMatchList boardCancelledMatchList;
	 
	 private BoardUpcomingMatchList boardUpcomingMatchList;
	
	 private BoardUpcomingMatchList upcomingBuddyMatchList;
	 
	 
	 private BuddyEventInvitationList getBuddyEventInvitationList;
	 
	 private List<EventType> eventTypeList;
	 
	 // Umpire And Scorer Details
	 private UmpireAndScorerDetails umpireAndScorerDetails;
	 
	 private String statusMsg ;
	 
	 private PlayerRestriction playesrRestriction;
	 
	 
	 
	
	public String getStatusMsg() {
		return statusMsg;
	}

	public void setStatusMsg(String statusMsg) {
		this.statusMsg = statusMsg;
	}

	public PlayerRestriction getPlayesrRestriction() {
		return playesrRestriction;
	}

	public void setPlayesrRestriction(PlayerRestriction playesrRestriction) {
		this.playesrRestriction = playesrRestriction;
	}

	public List<TournamentDTO> getTopBatsmanList() {
		return topBatsmanList;
	}

	public void setTopBatsmanList(List<TournamentDTO> topBatsmanList) {
		this.topBatsmanList = topBatsmanList;
	}

	public List<BattingPerformance> getBattingPerformance() {
		return BattingPerformance;
	}

	public void setBattingPerformance(List<BattingPerformance> battingPerformance) {
		BattingPerformance = battingPerformance;
	}

	public List<UserProfileRole> getItemsFound() {
		return itemsFound;
	}

	public void setItemsFound(List<UserProfileRole> itemsFound) {
		this.itemsFound = itemsFound;
	}

	public List<Event> getEventDetails() {
		return eventDetails;
	}

	public void setEventDetails(List<Event> eventDetails) {
		this.eventDetails = eventDetails;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public BoardAttrbutesResponse getFanDetails() {
		return fanDetails;
	}

	public void setFanDetails(BoardAttrbutesResponse fanDetails) {
		this.fanDetails = fanDetails;
	}

	public FeedResponse getBoardFeedResponse() {
		return boardFeedResponse;
	}

	public void setBoardFeedResponse(FeedResponse boardFeedResponse) {
		this.boardFeedResponse = boardFeedResponse;
	}

	public List<BoardProfile> getBoardStatusDetail() {
		return boardStatusDetail;
	}

	public void setBoardStatusDetail(List<BoardProfile> boardStatusDetail) {
		this.boardStatusDetail = boardStatusDetail;
	}

	public List<BoardProfile> getBoardsList() {
		return boardsList;
	}

	public void setBoardsList(List<BoardProfile> boardsList) {
		this.boardsList = boardsList;
	}
	
	public RoleResponse getRolesAndSubRoles() {
		return rolesAndSubRoles;
	}

	public void setRolesAndSubRoles(RoleResponse rolesAndSubRoles) {
		this.rolesAndSubRoles = rolesAndSubRoles;
	}

	public List<FeedComment> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<FeedComment> commentList) {
		this.commentList = commentList;
	}

	public FeedResponse getFeedResponse() {
		return feedResponse;
	}

	public void setFeedResponse(FeedResponse feedResponse) {
		this.feedResponse = feedResponse;
	}

	public SearchResponse getSearchResponse() {
		return searchResponse;
	}

	public void setSearchResponse(SearchResponse searchResponse) {
		this.searchResponse = searchResponse;
	}

	public List<UserProfile> getGettingUserSearchListDetails() {
		return gettingUserSearchListDetails;
	}

	public void setGettingUserSearchListDetails(
			List<UserProfile> gettingUserSearchListDetails) {
		this.gettingUserSearchListDetails = gettingUserSearchListDetails;
	}

	public List<BullPreferenceVO> getBallPrefenrenceList() {
		return ballPrefenrenceList;
	}

	public void setBallPrefenrenceList(List<BullPreferenceVO> ballPrefenrenceList) {
		this.ballPrefenrenceList = ballPrefenrenceList;
	}

	public String getBoardDetail() {
		return boardDetail;
	}

	public void setBoardDetail(String boardDetail) {
		this.boardDetail = boardDetail;
	}

	public List<Roaster> getRosterList() {
		return rosterList;
	}

	public void setRosterList(List<Roaster> rosterList) {
		this.rosterList = rosterList;
	}

	public RoasterResponseById getRosterInfo() {
		return rosterInfo;
	}

	public void setRosterInfo(RoasterResponseById rosterInfo) {
		this.rosterInfo = rosterInfo;
	}

	public BuddyRequestCount getUserConnection() {
		return UserConnection;
	}

	public void setUserConnection(BuddyRequestCount userConnection) {
		UserConnection = userConnection;
	}

	public List<BoardUmpire> getBoardUmpireList() {
		return boardUmpireList;
	}

	public void setBoardUmpireList(List<BoardUmpire> boardUmpireList) {
		this.boardUmpireList = boardUmpireList;
	}

	public String getUmpireStatus() {
		return umpireStatus;
	}

	public void setUmpireStatus(String umpireStatus) {
		this.umpireStatus = umpireStatus;
	}

	public List<BoardUmpire> getUmpireDetails() {
		return umpireDetails;
	}

	public void setUmpireDetails(List<BoardUmpire> umpireDetails) {
		this.umpireDetails = umpireDetails;
	}

	public List<BoardUmpire> getUmpireList() {
		return umpireList;
	}

	public void setUmpireList(List<BoardUmpire> umpireList) {
		this.umpireList = umpireList;
	}

	public List<Ground> getGroundList() {
		return groundList;
	}

	public void setGroundList(List<Ground> groundList) {
		this.groundList = groundList;
	}

	public String getGroundStatus() {
		return groundStatus;
	}

	public void setGroundStatus(String groundStatus) {
		this.groundStatus = groundStatus;
	}

	public List<RoasterAttachment> getRosterAttachment() {
		return rosterAttachment;
	}

	public void setRosterAttachment(List<RoasterAttachment> rosterAttachment) {
		this.rosterAttachment = rosterAttachment;
	}

	public List<Tournament> getTournamentDetails() {
		return tournamentDetails;
	}

	public void setTournamentDetails(List<Tournament> tournamentDetails) {
		this.tournamentDetails = tournamentDetails;
	}

	public List<TournamentScheduler> getTournamentsList() {
		return tournamentsList;
	}

	public void setTournamentsList(List<TournamentScheduler> tournamentsList) {
		this.tournamentsList = tournamentsList;
	}

	public List<Tournament> getTournamentList() {
		return tournamentList;
	}

	public void setTournamentList(List<Tournament> tournamentList) {
		this.tournamentList = tournamentList;
	}


	public String getScheduleStatus() {
		return scheduleStatus;
	}

	public void setScheduleStatus(String scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}

	public List<TournamentScheduler> getTournamentSchelduleDetails() {
		return tournamentSchelduleDetails;
	}

	public void setTournamentSchelduleDetails(List<TournamentScheduler> tournamentSchelduleDetails) {
		this.tournamentSchelduleDetails = tournamentSchelduleDetails;
	}

	public List<BowlingPerformance> getBowlingPerformance() {
		return BowlingPerformance;
	}

	public void setBowlingPerformance(List<BowlingPerformance> bowlingPerformance) {
		BowlingPerformance = bowlingPerformance;
	}

	public List<TournamentDTO> getTournamentPointTableList() {
		return tournamentPointTableList;
	}

	public void setTournamentPointTableList(
			List<TournamentDTO> tournamentPointTableList) {
		this.tournamentPointTableList = tournamentPointTableList;
	}

	public List<TournamentDTO> getCentueryList() {
		return centueryList;
	}

	public void setCentueryList(List<TournamentDTO> centueryList) {
		this.centueryList = centueryList;
	}

	public List<TournamentDTO> getHalfCenturyList() {
		return halfCenturyList;
	}

	public void setHalfCenturyList(List<TournamentDTO> halfCenturyList) {
		this.halfCenturyList = halfCenturyList;
	}

	public List<TournamentDTO> getFiveWicketsPlayerList() {
		return fiveWicketsPlayerList;
	}

	public void setFiveWicketsPlayerList(List<TournamentDTO> fiveWicketsPlayerList) {
		this.fiveWicketsPlayerList = fiveWicketsPlayerList;
	}

	public List<TournamentDTO> getTopBowlersList() {
		return topBowlersList;
	}

	public void setTopBowlersList(List<TournamentDTO> topBowlersList) {
		this.topBowlersList = topBowlersList;
	}

	public List<TopUmpire> getTopUmpireList() {
		return topUmpireList;
	}

	public void setTopUmpireList(List<TopUmpire> topUmpireList) {
		this.topUmpireList = topUmpireList;
	}

	public List<TeamDetailsList> getTeamDetailsList() {
		return teamDetailsList;
	}

	public void setTeamDetailsList(List<TeamDetailsList> teamDetailsList) {
		this.teamDetailsList = teamDetailsList;
	}

	public List<TournamentScheduler> getTournamentSchedulerList() {
		return tournamentSchedulerList;
	}

	public void setTournamentSchedulerList(
			List<TournamentScheduler> tournamentSchedulerList) {
		this.tournamentSchedulerList = tournamentSchedulerList;
	}

	public List<TournamentScheduler> getUmpireListOfSchedule() {
		return umpireListOfSchedule;
	}

	public void setUmpireListOfSchedule(
			List<TournamentScheduler> umpireListOfSchedule) {
		this.umpireListOfSchedule = umpireListOfSchedule;
	}

	public List<BoardUmpire> getScorerList() {
		return scorerList;
	}

	public void setScorerList(List<BoardUmpire> scorerList) {
		this.scorerList = scorerList;
	}

	public List<TournamentScheduler> getScorerListOfSchedule() {
		return scorerListOfSchedule;
	}

	public void setScorerListOfSchedule(
			List<TournamentScheduler> scorerListOfSchedule) {
		this.scorerListOfSchedule = scorerListOfSchedule;
	}

	public EventList getEventList() {
		return eventList;
	}

	public void setEventList(EventList eventList) {
		this.eventList = eventList;
	}

	public List<UmpireRating> getUmpireInfo() {
		return umpireInfo;
	}

	public void setUmpireInfo(List<UmpireRating> umpireInfo) {
		this.umpireInfo = umpireInfo;
	}

	public String getSaveEvents() {
		return saveEvents;
	}

	public void setSaveEvents(String saveEvents) {
		this.saveEvents = saveEvents;
	}

	public List<EventListingDto> getEventListing() {
		return eventListing;
	}

	public void setEventListing(List<EventListingDto> eventListing) {
		this.eventListing = eventListing;
	}

	public List<UserProfile> getEventCount() {
		return eventCount;
	}

	public void setEventCount(List<UserProfile> eventCount) {
		this.eventCount = eventCount;
	}

	public GameSchedule getGameSchedule() {
		return gameSchedule;
	}

	public void setGameSchedule(GameSchedule gameSchedule) {
		this.gameSchedule = gameSchedule;
	}

	public String getDisputeMangementStatus() {
		return disputeMangementStatus;
	}

	public void setDisputeMangementStatus(String disputeMangementStatus) {
		this.disputeMangementStatus = disputeMangementStatus;
	}

	public AcceptEventInfo getEventAcceptedCount() {
		return eventAcceptedCount;
	}

	public void setEventAcceptedCount(AcceptEventInfo eventAcceptedCount) {
		this.eventAcceptedCount = eventAcceptedCount;
	}

	public RosterProfile getRosterSearchList() {
		return rosterSearchList;
	}

	public void setRosterSearchList(RosterProfile rosterSearchList) {
		this.rosterSearchList = rosterSearchList;
	}

	public List<UserBattingPerformanceDTO> getUserBattingPerformanceList() {
		return userBattingPerformanceList;
	}

	public void setUserBattingPerformanceList(
			List<UserBattingPerformanceDTO> userBattingPerformanceList) {
		this.userBattingPerformanceList = userBattingPerformanceList;
	}

	
	

	public List<Tournament> getTournamentNamestList() {
		return tournamentNamestList;
	}

	public void setTournamentNamestList(List<Tournament> tournamentNamestList) {
		this.tournamentNamestList = tournamentNamestList;
	}

	public List<RoasterEventSearch> getRosterEventSearchList() {
		return rosterEventSearchList;
	}

	public void setRosterEventSearchList(
			List<RoasterEventSearch> rosterEventSearchList) {
		this.rosterEventSearchList = rosterEventSearchList;
	}

	public List<UserBattingPerformanceDTO> getUserBowlingPerformanceList() {
		return userBowlingPerformanceList;
	}

	public void setUserBowlingPerformanceList(List<UserBattingPerformanceDTO> userBowlingPerformanceList) {
		this.userBowlingPerformanceList = userBowlingPerformanceList;
	}

	public List<UserBattingPerformanceDTO> getUseronedaymatchsachivements() {
		return useronedaymatchsachivements;
	}

	public void setUseronedaymatchsachivements(List<UserBattingPerformanceDTO> useronedaymatchsachivements) {
		this.useronedaymatchsachivements = useronedaymatchsachivements;
	}

	public Years getCreateUmpire() {
		return createUmpire;
	}

	public void setCreateUmpire(Years createUmpire) {
		this.createUmpire = createUmpire;
	}

	public List<UserProfile> getUmpireNameList() {
		return UmpireNameList;
	}

	public void setUmpireNameList(List<UserProfile> umpireNameList) {
		UmpireNameList = umpireNameList;
	}

	public String getCreateUmpireRating() {
		return createUmpireRating;
	}

	public void setCreateUmpireRating(String createUmpireRating) {
		this.createUmpireRating = createUmpireRating;
	}
	
	
	public List<TournamentScheduler> getTournamentScheduleList() {
		return tournamentScheduleList;
	}

	public void setTournamentScheduleList(
			List<TournamentScheduler> tournamentScheduleList) {
		this.tournamentScheduleList = tournamentScheduleList;
	}

	public BoardAchievements getBoardAchievements() {
		return boardAchievements;
	}

	public void setBoardAchievements(BoardAchievements boardAchievements) {
		this.boardAchievements = boardAchievements;
	}

	public String getCreateContactUs() {
		return createContactUs;
	}

	public void setCreateContactUs(String createContactUs) {
		this.createContactUs = createContactUs;
	}

	public List<PlayerSearchResponse> getPlayerSearchList() {
		return playerSearchList;
	}

	public void setPlayerSearchList(List<PlayerSearchResponse> playerSearchList) {
		this.playerSearchList = playerSearchList;
	}

	public PlayerComparisionPerformanceList getPlayerComparisionPerformanceList() {
		return playerComparisionPerformanceList;
	}

	public void setPlayerComparisionPerformanceList(
			PlayerComparisionPerformanceList playerComparisionPerformanceList) {
		this.playerComparisionPerformanceList = playerComparisionPerformanceList;
	}
	
	public String getEnterScoreStatus() {
		return enterScoreStatus;
	}

	public void setEnterScoreStatus(String enterScoreStatus) {
		this.enterScoreStatus = enterScoreStatus;
	}
	public List<GameTypeBean> getGameList() {
		return gameList;
	}

	public void setGameList(List<GameTypeBean> gameList) {
		this.gameList = gameList;
	}

	
	public List<EditEvent> getEditEventDeatils() {
		return editEventDeatils;
	}

	public void setEditEventDeatils(List<EditEvent> editEventDeatils) {
		this.editEventDeatils = editEventDeatils;
	}

	public SheduleAcceptEventResponse getMatchAcceptedCount() {
		return matchAcceptedCount;
	}

	public void setMatchAcceptedCount(SheduleAcceptEventResponse matchAcceptedCount) {
		this.matchAcceptedCount = matchAcceptedCount;
	}

	public SheduleAcceptEventResponse getMatchMayBeCount() {
		return matchMayBeCount;
	}

	public void setMatchMayBeCount(SheduleAcceptEventResponse matchMayBeCount) {
		this.matchMayBeCount = matchMayBeCount;
	}

	public SheduleAcceptEventResponse getMatchRejectCount() {
		return matchRejectCount;
	}

	public void setMatchRejectCount(SheduleAcceptEventResponse matchRejectCount) {
		this.matchRejectCount = matchRejectCount;
	}

	public List<UserProfile> getRosterMatchAcceptedPlayerList() {
		return rosterMatchAcceptedPlayerList;
	}

	public void setRosterMatchAcceptedPlayerList(
			List<UserProfile> rosterMatchAcceptedPlayerList) {
		this.rosterMatchAcceptedPlayerList = rosterMatchAcceptedPlayerList;
	}

	public List<UserProfile> getRosterMatchMayBePlayerList() {
		return rosterMatchMayBePlayerList;
	}

	public void setRosterMatchMayBePlayerList(
			List<UserProfile> rosterMatchMayBePlayerList) {
		this.rosterMatchMayBePlayerList = rosterMatchMayBePlayerList;
	}

	public List<UserProfile> getRosterMatchRejectedPlayerList() {
		return rosterMatchRejectedPlayerList;
	}

	public void setRosterMatchRejectedPlayerList(
			List<UserProfile> rosterMatchRejectedPlayerList) {
		this.rosterMatchRejectedPlayerList = rosterMatchRejectedPlayerList;
	}

	public String getCancelTournamentResponse() {
		return cancelTournamentResponse;
	}

	public void setCancelTournamentResponse(String cancelTournamentResponse) {
		this.cancelTournamentResponse = cancelTournamentResponse;
	}

	public List<BoardProfile> getMergeAccountBoradSearch() {
		return mergeAccountBoradSearch;
	}

	public void setMergeAccountBoradSearch(
			List<BoardProfile> mergeAccountBoradSearch) {
		this.mergeAccountBoradSearch = mergeAccountBoradSearch;
	}

	public List<UserProfile> getBoardDetailsForMergeAccount() {
		return boardDetailsForMergeAccount;
	}

	public void setBoardDetailsForMergeAccount(
			List<UserProfile> boardDetailsForMergeAccount) {
		this.boardDetailsForMergeAccount = boardDetailsForMergeAccount;
	}

	public MergeDTO getMergeOTPResult() {
		return mergeOTPResult;
	}

	public void setMergeOTPResult(MergeDTO mergeOTPResult) {
		this.mergeOTPResult = mergeOTPResult;
	}

	public String getUserValidationSuccess() {
		return UserValidationSuccess;
	}

	public void setUserValidationSuccess(String userValidationSuccess) {
		UserValidationSuccess = userValidationSuccess;
	}

	public List<DismissalDTO> getDismissalTypeList() {
		return dismissalTypeList;
	}

	public void setDismissalTypeList(List<DismissalDTO> dismissalTypeList) {
		this.dismissalTypeList = dismissalTypeList;
	}

	public String getMergeAccountStatus() {
		return mergeAccountStatus;
	}

	public void setMergeAccountStatus(String mergeAccountStatus) {
		this.mergeAccountStatus = mergeAccountStatus;
	}

	public List<ScoreCard> getScoreCardList() {
		return scoreCardList;
	}

	public void setScoreCardList(List<ScoreCard> scoreCardList) {
		this.scoreCardList = scoreCardList;
	}

	public BannerResponse getBannerListByLatLang() {
		return bannerListByLatLang;
	}

	public void setBannerListByLatLang(BannerResponse bannerListByLatLang) {
		this.bannerListByLatLang = bannerListByLatLang;
	}

	public List<TournamentScheduler> getTeamList() {
		return teamList;
	}

	public void setTeamList(List<TournamentScheduler> teamList) {
		this.teamList = teamList;
	}

	public int getEventNotificationCount() {
		return eventNotificationCount;
	}

	public void setEventNotificationCount(int eventNotificationCount) {
		this.eventNotificationCount = eventNotificationCount;
	}

	public List<EventNotificationDTO> getEventnotificationList() {
		return eventnotificationList;
	}

	public void setEventnotificationList(
			List<EventNotificationDTO> eventnotificationList) {
		this.eventnotificationList = eventnotificationList;
	}

	public String getStartDateStr() {
		return startDateStr;
	}

	public void setStartDateStr(String startDateStr) {
		this.startDateStr = startDateStr;
	}

	public String getEndDateStr() {
		return endDateStr;
	}

	public void setEndDateStr(String endDateStr) {
		this.endDateStr = endDateStr;
	}

	public Event getCreatedEventList() {
		return createdEventList;
	}

	public void setCreatedEventList(Event createdEventList) {
		this.createdEventList = createdEventList;
	}

	public List<EventMatchMap> getBuddyCancelledMatchList() {
		return buddyCancelledMatchList;
	}

	public void setBuddyCancelledMatchList(
			List<EventMatchMap> buddyCancelledMatchList) {
		this.buddyCancelledMatchList = buddyCancelledMatchList;
	}

	

	public BoardCancelledMatchList getBoardCancelledMatchList() {
		return boardCancelledMatchList;
	}

	public void setBoardCancelledMatchList(
			BoardCancelledMatchList boardCancelledMatchList) {
		this.boardCancelledMatchList = boardCancelledMatchList;
	}

	public BoardUpcomingMatchList getBoardUpcomingMatchList() {
		return boardUpcomingMatchList;
	}

	public void setBoardUpcomingMatchList(
			BoardUpcomingMatchList boardUpcomingMatchList) {
		this.boardUpcomingMatchList = boardUpcomingMatchList;
	}

	public BoardUpcomingMatchList getUpcomingBuddyMatchList() {
		return upcomingBuddyMatchList;
	}

	public void setUpcomingBuddyMatchList(
			BoardUpcomingMatchList upcomingBuddyMatchList) {
		this.upcomingBuddyMatchList = upcomingBuddyMatchList;
	}

	public BuddyEventInvitationList getGetBuddyEventInvitationList() {
		return getBuddyEventInvitationList;
	}

	public void setGetBuddyEventInvitationList(
			BuddyEventInvitationList getBuddyEventInvitationList) {
		this.getBuddyEventInvitationList = getBuddyEventInvitationList;
	}

	public AcceptEventInfo getEventMayBeCount() {
		return eventMayBeCount;
	}

	public void setEventMayBeCount(AcceptEventInfo eventMayBeCount) {
		this.eventMayBeCount = eventMayBeCount;
	}

	public AcceptEventInfo getEventRejectCount() {
		return eventRejectCount;
	}

	public void setEventRejectCount(AcceptEventInfo eventRejectCount) {
		this.eventRejectCount = eventRejectCount;
	}

	public List<EventType> getEventTypeList() {
		return eventTypeList;
	}

	public void setEventTypeList(List<EventType> eventTypeList) {
		this.eventTypeList = eventTypeList;
	}

	public UserProfileRole getItemFound() {
		return itemFound;
	}

	public void setItemFound(UserProfileRole itemFound) {
		this.itemFound = itemFound;
	}

	public List<Roster> getRosterDetails() {
		return rosterDetails;
	}

	public void setRosterDetails(List<Roster> rosterDetails) {
		this.rosterDetails = rosterDetails;
	}

	public UmpireAndScorerDetails getUmpireAndScorerDetails() {
		return umpireAndScorerDetails;
	}

	public void setUmpireAndScorerDetails(
			UmpireAndScorerDetails umpireAndScorerDetails) {
		this.umpireAndScorerDetails = umpireAndScorerDetails;
	}




}


