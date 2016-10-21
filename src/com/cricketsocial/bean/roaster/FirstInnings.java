package com.cricketsocial.bean.roaster;

import java.util.List;

public class FirstInnings {

	private List<BattingBean> battingBeanList;
	private List<BowlingBean> bowlingBeanList;
	private List<Extras> extrasList;
	private List<FallowOfWickets> fallowOfWickets;
    private List<String> firstInningsDNBList;
		

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
	public List<String> getFirstInningsDNBList() {
		return firstInningsDNBList;
	}
	public void setFirstInningsDNBList(List<String> firstInningsDNBList) {
		this.firstInningsDNBList = firstInningsDNBList;
	}
	
	
}
