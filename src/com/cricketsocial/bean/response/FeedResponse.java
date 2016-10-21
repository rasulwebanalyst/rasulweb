package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.feed.Feeds;

public class FeedResponse {

	
	private List<Feeds> itemsFound;

	private List<Feeds> feedList;
	
	

	public List<Feeds> getFeedList() {
		return feedList;
	}

	public void setFeedList(List<Feeds> feedList) {
		this.feedList = feedList;
	}

	public List<Feeds> getItemsFound() {
		return itemsFound;
	}

	public void setItemsFound(List<Feeds> itemsFound) {
		this.itemsFound = itemsFound;
	}

	
}
