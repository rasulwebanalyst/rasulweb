package com.cricketsocial.bean.updatedevent;

import java.util.List;

import com.cricketsocial.bean.board.Tournament;
import com.cricketsocial.bean.event.Event;
import com.cricketsocial.bean.event.UpcomingAllStatusEvents;

public class CompletedEventList {

	
	//private List<EventMatchMap> completedMatches;
	
	private List<Tournament> completedMatches;
	private List<Event> completedfanOfBuddyEventsList;
	private List<Event> mycompletedevents;
	private List<Event> completedfanOfBuddyEventsLis;
	private List<Event> completedfanOfBoardEventsList;
	
	private List<Event> completedBuddyBoardMapForEventsList;
	private List<Event> completedBoardBoardMapForEventsList;
	private UpcomingAllStatusEvents completedAllStatusEvents;
	private List<EventMatchMap> buddyCancelledMatchesList;
	private List<Tournament> boardCancelledmatchList;
	
	
	public List<Event> getMycompletedevents() {
		return mycompletedevents;
	}
	public void setMycompletedevents(List<Event> mycompletedevents) {
		this.mycompletedevents = mycompletedevents;
	}
	
	public List<Event> getCompletedfanOfBuddyEventsList() {
		return completedfanOfBuddyEventsList;
	}
	public void setCompletedfanOfBuddyEventsList(
			List<Event> completedfanOfBuddyEventsList) {
		this.completedfanOfBuddyEventsList = completedfanOfBuddyEventsList;
	}
	public List<Event> getCompletedfanOfBuddyEventsLis() {
		return completedfanOfBuddyEventsLis;
	}
	public void setCompletedfanOfBuddyEventsLis(
			List<Event> completedfanOfBuddyEventsLis) {
		this.completedfanOfBuddyEventsLis = completedfanOfBuddyEventsLis;
	}
	public List<Event> getCompletedfanOfBoardEventsList() {
		return completedfanOfBoardEventsList;
	}
	public void setCompletedfanOfBoardEventsList(
			List<Event> completedfanOfBoardEventsList) {
		this.completedfanOfBoardEventsList = completedfanOfBoardEventsList;
	}
	public List<Event> getCompletedBuddyBoardMapForEventsList() {
		return completedBuddyBoardMapForEventsList;
	}
	public void setCompletedBuddyBoardMapForEventsList(
			List<Event> completedBuddyBoardMapForEventsList) {
		this.completedBuddyBoardMapForEventsList = completedBuddyBoardMapForEventsList;
	}
	public List<Event> getCompletedBoardBoardMapForEventsList() {
		return completedBoardBoardMapForEventsList;
	}
	public void setCompletedBoardBoardMapForEventsList(
			List<Event> completedBoardBoardMapForEventsList) {
		this.completedBoardBoardMapForEventsList = completedBoardBoardMapForEventsList;
	}
	public List<Tournament> getCompletedMatches() {
		return completedMatches;
	}
	public void setCompletedMatches(List<Tournament> completedMatches) {
		this.completedMatches = completedMatches;
	}
	public UpcomingAllStatusEvents getCompletedAllStatusEvents() {
		return completedAllStatusEvents;
	}
	public void setCompletedAllStatusEvents(
			UpcomingAllStatusEvents completedAllStatusEvents) {
		this.completedAllStatusEvents = completedAllStatusEvents;
	}
	public List<EventMatchMap> getBuddyCancelledMatchesList() {
		return buddyCancelledMatchesList;
	}
	public void setBuddyCancelledMatchesList(
			List<EventMatchMap> buddyCancelledMatchesList) {
		this.buddyCancelledMatchesList = buddyCancelledMatchesList;
	}
	public List<Tournament> getBoardCancelledmatchList() {
		return boardCancelledmatchList;
	}
	public void setBoardCancelledmatchList(List<Tournament> boardCancelledmatchList) {
		this.boardCancelledmatchList = boardCancelledmatchList;
	}
	
	
	
}
