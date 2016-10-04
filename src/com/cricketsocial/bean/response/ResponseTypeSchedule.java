package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.board.GameSchedule;
import com.cricketsocial.bean.board.GameScheduleFilter;
import com.cricketsocial.bean.board.TournamentScheduler;

public class ResponseTypeSchedule {
	
	private List<ScheduleResponse> tournamentSchedulerList;
	private String startDateStr;
	private String endDateStr;
	private GameScheduleFilter gameSchedule;
	
	
	public List<ScheduleResponse> getTournamentSchedulerList() {
		return tournamentSchedulerList;
	}
	public void setTournamentSchedulerList(
			List<ScheduleResponse> tournamentSchedulerList) {
		this.tournamentSchedulerList = tournamentSchedulerList;
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
	public GameScheduleFilter getGameSchedule() {
		return gameSchedule;
	}
	public void setGameSchedule(GameScheduleFilter gameSchedule) {
		this.gameSchedule = gameSchedule;
	}
	

}
