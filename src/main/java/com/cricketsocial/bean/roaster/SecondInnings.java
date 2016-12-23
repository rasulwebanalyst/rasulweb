package com.cricketsocial.bean.roaster;

import java.util.List;

public class SecondInnings {

	private List<BattingBean> battingBeanList;
	private List<BowlingBean> bowlingBeanList;
	private List<Extras> extrasList;
	private List<FallowOfWickets> fallowOfWickets;
	private List<String> secondInningsDNBList;

	public List<Extras> getExtrasList() {
		return extrasList;
	}
	public void setExtrasList(List<Extras> extrasList) {
		this.extrasList = extrasList;
	}
	public List<FallowOfWickets> getFallowOfWickets() {
		return fallowOfWickets;
	}
	public void setFallowOfWickets(List<FallowOfWickets> fallowOfWickets) {
		this.fallowOfWickets = fallowOfWickets;
	}
	public List<BattingBean> getBattingBeanList() {
		return battingBeanList;
	}
	public void setBattingBeanList(List<BattingBean> battingBeanList) {
		this.battingBeanList = battingBeanList;
	}
	public List<BowlingBean> getBowlingBeanList() {
		return bowlingBeanList;
	}
	public void setBowlingBeanList(List<BowlingBean> bowlingBeanList) {
		this.bowlingBeanList = bowlingBeanList;
	}
	public List<String> getSecondInningsDNBList() {
		return secondInningsDNBList;
	}
	public void setSecondInningsDNBList(List<String> secondInningsDNBList) {
		this.secondInningsDNBList = secondInningsDNBList;
	}
	
	
}
