package com.cricketsocial.bean.board;

public class CancelScheduleDTO {

	private String boardId;
	private String[] shedulerArray;
	private  String scheduleCancelReason;
	private String tournamentId;
	
	
	public String getBoardId() {
		return boardId;
	}
	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}
	public String[] getShedulerArray() {
		return shedulerArray;
	}
	public void setShedulerArray(String[] shedulerArray) {
		this.shedulerArray = shedulerArray;
	}
	public String getScheduleCancelReason() {
		return scheduleCancelReason;
	}
	public void setScheduleCancelReason(String scheduleCancelReason) {
		this.scheduleCancelReason = scheduleCancelReason;
	}
	public String getTournamentId() {
		return tournamentId;
	}
	public void setTournamentId(String tournamentId) {
		this.tournamentId = tournamentId;
	}
	
	
	
}
