package com.cricketsocial.bean.event;

public class SchedulAcceptEventInfo {

	
			private String eventMatchMapId;
			private String matchId;
			private String playerId;
			private String rosterId;
			private int status;
			
			public String getEventMatchMapId() {
				return eventMatchMapId;
			}
			public void setEventMatchMapId(String eventMatchMapId) {
				this.eventMatchMapId = eventMatchMapId;
			}
			public String getMatchId() {
				return matchId;
			}
			public void setMatchId(String matchId) {
				this.matchId = matchId;
			}
			
			public String getRosterId() {
				return rosterId;
			}
			public void setRosterId(String rosterId) {
				this.rosterId = rosterId;
			}
			public int getStatus() {
				return status;
			}
			public void setStatus(int status) {
				this.status = status;
			}
			public String getPlayerId() {
				return playerId;
			}
			public void setPlayerId(String playerId) {
				this.playerId = playerId;
			}
			
			
			
	
}
