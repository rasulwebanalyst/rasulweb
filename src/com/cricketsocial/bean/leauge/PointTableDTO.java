package com.cricketsocial.bean.leauge;

import java.util.UUID;

public class PointTableDTO {

private String teamName;
private int totalMatches;
private int wonmatches;
private int lostmatches;
private int adj;
private int points;
private double netRunRate;
private String for1;
private String against;
private double winpercentage;

private String teamfor;
private String teamgainst;

private int retunteamruns;
private double returntemovers;
private int returnaginstteamruns;
private double returnagainstteamovers;
private int returnteamwicket;

private double averageRunsPerWicket;

private String teamBoardId;

private String tie;



/*
 
 "teamfor": 5.3,
                        "teamgainst": 5.3, 
 * */

public String getTeamName() {
	return teamName;
}
public void setTeamName(String teamName) {
	this.teamName = teamName;
}
public int getTotalMatches() {
	return totalMatches;
}
public void setTotalMatches(int totalMatches) {
	this.totalMatches = totalMatches;
}
public int getWonmatches() {
	return wonmatches;
}
public void setWonmatches(int wonmatches) {
	this.wonmatches = wonmatches;
}
public int getLostmatches() {
	return lostmatches;
}
public void setLostmatches(int lostmatches) {
	this.lostmatches = lostmatches;
}
public int getAdj() {
	return adj;
}
public void setAdj(int adj) {
	this.adj = adj;
}
public int getPoints() {
	return points;
}
public void setPoints(int points) {
	this.points = points;
}

public double getNetRunRate() {
	return netRunRate;
}
public void setNetRunRate(double netRunRate) {
	this.netRunRate = netRunRate;
}
public String getFor1() {
	return for1;
}
public void setFor1(String for1) {
	this.for1 = for1;
}
public String getAgainst() {
	return against;
}
public void setAgainst(String against) {
	this.against = against;
}
public double getWinpercentage() {
	return winpercentage;
}
public void setWinpercentage(double winpercentage) {
	this.winpercentage = winpercentage;
}
public String getTeamfor() {
	return teamfor;
}
public void setTeamfor(String teamfor) {
	this.teamfor = teamfor;
}
public String getTeamgainst() {
	return teamgainst;
}
public void setTeamgainst(String teamgainst) {
	this.teamgainst = teamgainst;
}
public int getRetunteamruns() {
	return retunteamruns;
}
public void setRetunteamruns(int retunteamruns) {
	this.retunteamruns = retunteamruns;
}
public double getReturntemovers() {
	return returntemovers;
}
public void setReturntemovers(double returntemovers) {
	this.returntemovers = returntemovers;
}
public int getReturnaginstteamruns() {
	return returnaginstteamruns;
}
public void setReturnaginstteamruns(int returnaginstteamruns) {
	this.returnaginstteamruns = returnaginstteamruns;
}
public double getReturnagainstteamovers() {
	return returnagainstteamovers;
}
public void setReturnagainstteamovers(double returnagainstteamovers) {
	this.returnagainstteamovers = returnagainstteamovers;
}
public int getReturnteamwicket() {
	return returnteamwicket;
}
public void setReturnteamwicket(int returnteamwicket) {
	this.returnteamwicket = returnteamwicket;
}
public double getAverageRunsPerWicket() {
	return averageRunsPerWicket;
}
public void setAverageRunsPerWicket(double averageRunsPerWicket) {
	this.averageRunsPerWicket = averageRunsPerWicket;
}
public String getTeamBoardId() {
	return teamBoardId;
}
public void setTeamBoardId(String teamBoardId) {
	this.teamBoardId = teamBoardId;
}
public String getTie() {
	return tie;
}
public void setTie(String tie) {
	this.tie = tie;
}




}
