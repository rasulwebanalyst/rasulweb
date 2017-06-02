package com.cricketsocial.bean.board;

import java.util.UUID;

public class CancelScheduleDTO {

	private String boardId;
	private String[] shedulerArray;
	private  String scheduleCancelReason;
	private String tournamentId;
	private String statusType;
	private UUID playerId;
	
	
	
	
	public String getStatusType() {
		return statusType;
	}
	public void setStatusType(String statusType) {
		this.statusType = statusType;
	}
	public UUID getPlayerId() {
		return playerId;
	}
	public void setPlayerId(UUID playerId) {
		this.playerId = playerId;
	}
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
