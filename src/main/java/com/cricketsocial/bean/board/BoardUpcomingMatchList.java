package com.cricketsocial.bean.board;

import java.util.List;

import com.cricketsocial.bean.updatedevent.EventMatchMap;

/**
 * @author Thamaramurthy Devarala
 *
 */
public class BoardUpcomingMatchList {

	
	private List<Tournament> upcomingBoardMatchList;
	private List<Tournament> completedBoardMatchList;
	
	private List<EventMatchMap>  buddyMatchInvitationList;
	
	private List<EventMatchMap> buddyCompletedMatchInvitationList;
	
	
	private List<TournamentScheduler> upcomingTeamBoardMatchList;
	
	private List<TournamentScheduler> completedTeamBoardMatchList;
	
	public List<Tournament> getUpcomingBoardMatchList() {
		return upcomingBoardMatchList;
	}
	public void setUpcomingBoardMatchList(List<Tournament> upcomingBoardMatchList) {
		this.upcomingBoardMatchList = upcomingBoardMatchList;
	}
	public List<Tournament> getCompletedBoardMatchList() {
		return completedBoardMatchList;
	}
	public void setCompletedBoardMatchList(List<Tournament> completedBoardMatchList) {
		this.completedBoardMatchList = completedBoardMatchList;
	}
	public List<EventMatchMap> getBuddyMatchInvitationList() {
		return buddyMatchInvitationList;
	}
	public void setBuddyMatchInvitationList(
			List<EventMatchMap> buddyMatchInvitationList) {
		this.buddyMatchInvitationList = buddyMatchInvitationList;
	}
	public List<TournamentScheduler> getUpcomingTeamBoardMatchList() {
		return upcomingTeamBoardMatchList;
	}
	public void setUpcomingTeamBoardMatchList(
			List<TournamentScheduler> upcomingTeamBoardMatchList) {
		this.upcomingTeamBoardMatchList = upcomingTeamBoardMatchList;
	}
	public List<TournamentScheduler> getCompletedTeamBoardMatchList() {
		return completedTeamBoardMatchList;
	}
	public void setCompletedTeamBoardMatchList(
			List<TournamentScheduler> completedTeamBoardMatchList) {
		this.completedTeamBoardMatchList = completedTeamBoardMatchList;
	}
	public List<EventMatchMap> getBuddyCompletedMatchInvitationList() {
		return buddyCompletedMatchInvitationList;
	}
	public void setBuddyCompletedMatchInvitationList(
			List<EventMatchMap> buddyCompletedMatchInvitationList) {
		this.buddyCompletedMatchInvitationList = buddyCompletedMatchInvitationList;
	}
	
	
	
}
