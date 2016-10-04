package com.cricketsocial.bean.board;

import java.util.List;

import com.cricketsocial.bean.leauge.RestrictedPlayers;

public class PlayerRestriction {
	
	private String isAffiliated;
	private List<RestrictedPlayers> restrictedPlayers;
	
	public String getIsAffiliated() {
		return isAffiliated;
	}
	public void setIsAffiliated(String isAffiliated) {
		this.isAffiliated = isAffiliated;
	}
	public List<RestrictedPlayers> getRestrictedPlayers() {
		return restrictedPlayers;
	}
	public void setRestrictedPlayers(List<RestrictedPlayers> restrictedPlayers) {
		this.restrictedPlayers = restrictedPlayers;
	}
	

}
