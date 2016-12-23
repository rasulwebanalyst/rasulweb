package com.cricketsocial.bean.board;

public class SummaryResponse {

	private ScoreDetailsDTO itemFound;
	private InningsScore InningsSCore;
	public ScoreDetailsDTO getItemFound() {
		return itemFound;
	}
	public void setItemFound(ScoreDetailsDTO itemFound) {
		this.itemFound = itemFound;
	}
	public InningsScore getInningsSCore() {
		return InningsSCore;
	}
	public void setInningsSCore(InningsScore inningsSCore) {
		InningsSCore = inningsSCore;
	}
	
	
	
}
