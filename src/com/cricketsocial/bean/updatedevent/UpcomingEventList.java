package com.cricketsocial.bean.updatedevent;

import java.util.List;

import com.cricketsocial.bean.board.Tournament;
import com.cricketsocial.bean.board.TournamentScheduler;
import com.cricketsocial.bean.event.Event;
import com.cricketsocial.bean.event.MatchAllStatusResponse;
import com.cricketsocial.bean.event.UpcomingAllStatusEvents;

public class UpcomingEventList {

	//private List<EventMatchMap> upcomingMatches;
	

	private List<Tournament> upcomingMatches;
	
	private List<Event> upcomingfanOfBuddyEventsList;
	
	private List<Event> myupcomingevents;
	
	private List<Event> myUpcomingInvitationList;

	private List<Event> upcomingfanOfBoardEventsList;
	
	private List<Event> upcomingBuddyBoardMapForEventsList;
	
	private List<Event> upcomingBoardBoardMapForEventsList;
	
	private List<EventMatchMap> upcomingRosterMatchList;
	
	private List<Tournament> upcomingFanOfBoardMatchesList;
	
	private UpcomingAllStatusEvents upcomingAllStatusEvents;
	
	private List<Event> upcomingRostersInvitationList;
	
	//private List<EventMatchMap> upcomingAllStatusMatchList;
	
	private MatchAllStatusResponse upcomingAllStatusMatchList;
	
	private List<TournamentScheduler> upComingTeamBoardMatchList;
	
	

	public List<Event> getUpcomingfanOfBuddyEventsList() {
		return upcomingfanOfBuddyEventsList;
	}

	public void setUpcomingfanOfBuddyEventsList(
			List<Event> upcomingfanOfBuddyEventsList) {
		this.upcomingfanOfBuddyEventsList = upcomingfanOfBuddyEventsList;
	}

	public List<Event> getMyupcomingevents() {
		return myupcomingevents;
	}

	public void setMyupcomingevents(List<Event> myupcomingevents) {
		this.myupcomingevents = myupcomingevents;
	}

	public List<Event> getMyUpcomingInvitationList() {
		return myUpcomingInvitationList;
	}

	public void setMyUpcomingInvitationList(List<Event> myUpcomingInvitationList) {
		this.myUpcomingInvitationList = myUpcomingInvitationList;
	}

	public List<Event> getUpcomingfanOfBoardEventsList() {
		return upcomingfanOfBoardEventsList;
	}

	public void setUpcomingfanOfBoardEventsList(
			List<Event> upcomingfanOfBoardEventsList) {
		this.upcomingfanOfBoardEventsList = upcomingfanOfBoardEventsList;
	}

	public List<Event> getUpcomingBuddyBoardMapForEventsList() {
		return upcomingBuddyBoardMapForEventsList;
	}

	public void setUpcomingBuddyBoardMapForEventsList(
			List<Event> upcomingBuddyBoardMapForEventsList) {
		this.upcomingBuddyBoardMapForEventsList = upcomingBuddyBoardMapForEventsList;
	}

	public List<Event> getUpcomingBoardBoardMapForEventsList() {
		return upcomingBoardBoardMapForEventsList;
	}

	public void setUpcomingBoardBoardMapForEventsList(
			List<Event> upcomingBoardBoardMapForEventsList) {
		this.upcomingBoardBoardMapForEventsList = upcomingBoardBoardMapForEventsList;
	}

	public List<EventMatchMap> getUpcomingRosterMatchList() {
		return upcomingRosterMatchList;
	}

	public void setUpcomingRosterMatchList(
			List<EventMatchMap> upcomingRosterMatchList) {
		this.upcomingRosterMatchList = upcomingRosterMatchList;
	}

	public List<Tournament> getUpcomingMatches() {
		return upcomingMatches;
	}

	public void setUpcomingMatches(List<Tournament> upcomingMatches) {
		this.upcomingMatches = upcomingMatches;
	}

	public List<Tournament> getUpcomingFanOfBoardMatchesList() {
		return upcomingFanOfBoardMatchesList;
	}

	public void setUpcomingFanOfBoardMatchesList(
			List<Tournament> upcomingFanOfBoardMatchesList) {
		this.upcomingFanOfBoardMatchesList = upcomingFanOfBoardMatchesList;
	}

	public UpcomingAllStatusEvents getUpcomingAllStatusEvents() {
		return upcomingAllStatusEvents;
	}

	public void setUpcomingAllStatusEvents(
			UpcomingAllStatusEvents upcomingAllStatusEvents) {
		this.upcomingAllStatusEvents = upcomingAllStatusEvents;
	}

	public List<Event> getUpcomingRostersInvitationList() {
		return upcomingRostersInvitationList;
	}

	public void setUpcomingRostersInvitationList(
			List<Event> upcomingRostersInvitationList) {
		this.upcomingRostersInvitationList = upcomingRostersInvitationList;
	}

	public MatchAllStatusResponse getUpcomingAllStatusMatchList() {
		return upcomingAllStatusMatchList;
	}

	public void setUpcomingAllStatusMatchList(
			MatchAllStatusResponse upcomingAllStatusMatchList) {
		this.upcomingAllStatusMatchList = upcomingAllStatusMatchList;
	}

	public List<TournamentScheduler> getUpComingTeamBoardMatchList() {
		return upComingTeamBoardMatchList;
	}

	public void setUpComingTeamBoardMatchList(
			List<TournamentScheduler> upComingTeamBoardMatchList) {
		this.upComingTeamBoardMatchList = upComingTeamBoardMatchList;
	}

	
	
	
}
