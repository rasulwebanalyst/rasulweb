package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.board.Roaster;
import com.cricketsocial.bean.board.RoasterMemembers;
import com.cricketsocial.bean.feed.Feeds;

public class RoasterResponseById {
	private Long feedsCount;
	private Roaster rosterDetails;
	private List<Feeds> feedsList;
	
	private List<RoasterMemembers> rosterMembers;
	
	public Long getFeedsCount() {
		return feedsCount;
	}
	public void setFeedsCount(Long feedsCount) {
		this.feedsCount = feedsCount;
	}

	public List<Feeds> getFeedsList() {
		return feedsList;
	}
	public void setFeedsList(List<Feeds> feedsList) {
		this.feedsList = feedsList;
	}
	public Roaster getRosterDetails() {
		return rosterDetails;
	}
	public void setRosterDetails(Roaster rosterDetails) {
		this.rosterDetails = rosterDetails;
	}
	public List<RoasterMemembers> getRosterMembers() {
		return rosterMembers;
	}
	public void setRosterMembers(List<RoasterMemembers> rosterMembers) {
		this.rosterMembers = rosterMembers;
	}
	
	
	
	
}
