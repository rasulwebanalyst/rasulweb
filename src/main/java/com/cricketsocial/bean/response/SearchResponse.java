package com.cricketsocial.bean.response;

import java.util.ArrayList;
import java.util.List;

import com.cricketsocial.bean.banner.BannerInformation;
import com.cricketsocial.bean.board.BoardProfile;
import com.cricketsocial.bean.board.Tournament;
import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.buddy.UserSearchVO;

public class SearchResponse {
	
	private List<UserProfile> userList=new ArrayList<UserProfile>();
    private List<BoardProfile> boardProfileList=new ArrayList<BoardProfile>();
    
    private List<MatchesAroundYouResponse> tournamentScheduler=new ArrayList<MatchesAroundYouResponse>();
    
    private List<UserSearchVO> userSearchBean;
    
    private String requestLatLang;
   
   
    private String playedMatches;
	private String totalMadeRuns;
	private String totalWicketTaken;
    
	 private List<Tournament> tournamentSearchBean;
	 
	 private List<BannerInformation> bannerList;
	 
	 private int userCount;
	 
	 private String serverTime;
	 
	 
	 private String dob;
	 private int manofMatchCount;
	 private int centuryCount;
	 private int halfCenturiesCount;
	 private int fiveFerCount;
	 
	 
	 private List<BoardProfile> leagueBoardList;
	 private List<BoardProfile> teamBoardList;
	 
	 
	 
	 
	 
	 
    
	public List<BoardProfile> getLeagueBoardList() {
		return leagueBoardList;
	}

	public void setLeagueBoardList(List<BoardProfile> leagueBoardList) {
		this.leagueBoardList = leagueBoardList;
	}

	public List<BoardProfile> getTeamBoardList() {
		return teamBoardList;
	}

	public void setTeamBoardList(List<BoardProfile> teamBoardList) {
		this.teamBoardList = teamBoardList;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getManofMatchCount() {
		return manofMatchCount;
	}

	public void setManofMatchCount(int manofMatchCount) {
		this.manofMatchCount = manofMatchCount;
	}

	public int getCenturyCount() {
		return centuryCount;
	}

	public void setCenturyCount(int centuryCount) {
		this.centuryCount = centuryCount;
	}

	public int getHalfCenturiesCount() {
		return halfCenturiesCount;
	}

	public void setHalfCenturiesCount(int halfCenturiesCount) {
		this.halfCenturiesCount = halfCenturiesCount;
	}

	public int getFiveFerCount() {
		return fiveFerCount;
	}

	public void setFiveFerCount(int fiveFerCount) {
		this.fiveFerCount = fiveFerCount;
	}

	public List<BoardProfile> getBoardProfileList() {
		return boardProfileList;
	}

	public void setBoardProfileList(List<BoardProfile> boardProfileList) {
		this.boardProfileList = boardProfileList;
	}

	public List<UserProfile> getUserList() {
		return userList;
	}

	public void setUserList(List<UserProfile> userList) {
		this.userList = userList;
	}

	public String getRequestLatLang() {
		return requestLatLang;
	}

	public void setRequestLatLang(String requestLatLang) {
		this.requestLatLang = requestLatLang;
	}

	public List<UserSearchVO> getUserSearchBean() {
		return userSearchBean;
	}

	public void setUserSearchBean(List<UserSearchVO> userSearchBean) {
		this.userSearchBean = userSearchBean;
	}

	public List<MatchesAroundYouResponse> getTournamentScheduler() {
		return tournamentScheduler;
	}

	public void setTournamentScheduler(
			List<MatchesAroundYouResponse> tournamentScheduler) {
		this.tournamentScheduler = tournamentScheduler;
	}

	public String getPlayedMatches() {
		return playedMatches;
	}

	public void setPlayedMatches(String playedMatches) {
		this.playedMatches = playedMatches;
	}

	public String getTotalMadeRuns() {
		return totalMadeRuns;
	}

	public void setTotalMadeRuns(String totalMadeRuns) {
		this.totalMadeRuns = totalMadeRuns;
	}

	public String getTotalWicketTaken() {
		return totalWicketTaken;
	}

	public void setTotalWicketTaken(String totalWicketTaken) {
		this.totalWicketTaken = totalWicketTaken;
	}

	public List<Tournament> getTournamentSearchBean() {
		return tournamentSearchBean;
	}

	public void setTournamentSearchBean(List<Tournament> tournamentSearchBean) {
		this.tournamentSearchBean = tournamentSearchBean;
	}

	public List<BannerInformation> getBannerList() {
		return bannerList;
	}

	public void setBannerList(List<BannerInformation> bannerList) {
		this.bannerList = bannerList;
	}

	public int getUserCount() {
		return userCount;
	}

	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}

	public String getServerTime() {
		return serverTime;
	}

	public void setServerTime(String serverTime) {
		this.serverTime = serverTime;
	}
	
	
	
	
	}
