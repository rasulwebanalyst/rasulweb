package com.cricketsocial.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;




import org.apache.log4j.Logger;
import org.jsoup.helper.StringUtil;
import org.springframework.security.core.userdetails.User;

import com.cricketsocial.bean.board.BoardCoordinatorMap;
import com.cricketsocial.bean.board.BoardProfile;
import com.cricketsocial.bean.board.CoOrdinator;
import com.cricketsocial.bean.leauge.MenuList;
import com.cricketsocial.bean.leauge.MenuURL;

public class Util {
	
	
	public static String rpHash(String value) {
		int hash = 5381;
		value = value.toUpperCase();
		for(int i = 0; i < value.length(); i++) {
			hash = ((hash << 5) + hash) + value.charAt(i);
		}
		return String.valueOf(hash);
	}
	 public static String replace(String string, String pattern, String replacement) {
	    	if(string != null){
	    		string=string.trim().replaceAll(pattern, " ").replaceAll("\\s+", replacement);
	    	}
	         return string;
	     }
	 
	 public static Boolean contains(String value,List<String> checkingValue)
	 {
		 System.out.println("checkingValue---> "+checkingValue+"-------------> "+value);
		 boolean result=false;
		if(value!=null)
		{
			if(checkingValue.contains(value))
			{
				result=true;
			}
		}
		
		return result;
	 }
	 
	 public static List<String> gettingCoordinaterList(BoardProfile boardProfile, String userId)
	 {
		 List<String> resultList=new ArrayList<String>();
		 try{
			 
					 
			 for(CoOrdinator c : boardProfile.getBoardCoordinatorList())
			 {
				 if(userId.endsWith(c.getCoOrdinatorId()) && c.getCoOrdinatorTypeId()==28)
				 {
					 resultList.add("GroundCoordinator");
					 
				 }
				 
				 if(userId.endsWith(c.getCoOrdinatorId()) && c.getCoOrdinatorTypeId()==15)
				 {
					 resultList.add("UmpireCoordinator");
				 }
				 if(userId.endsWith(c.getCoOrdinatorId()) && c.getCoOrdinatorTypeId()==14)
				 {
					 resultList.add("ScheduleCoordinator");
				 }
				 
			 }
			 
			 for(BoardCoordinatorMap b : boardProfile.getBoardCoOwnerList())
			 {
				 if(b.getCoOwnerId().endsWith(userId))
				 {
					 resultList.add("CoOwner");
				 }
			 }
			 
			 if(userId.endsWith(boardProfile.getCreatedBy()))
			 {
				 resultList.add("Owner");
			 }
			 
		 }catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return resultList;
	 }
	 
	 public static MenuList leaugeMenuList(BoardProfile boardProfile, String userId, String domain)
	 {
		 List<String> resultList=new ArrayList<String>();
		 MenuList menuList=null;
		 try{
			 
			 Map menu= new HashMap();	 
			 String workingDir = System.getProperty("user.dir");		
			  int index= workingDir.lastIndexOf("\\");
			  String project= workingDir.substring(index+1, workingDir.length());
			  System.out.println("projectname-----------> "+project);
			  menu.put(4, "<a href='"+domain+"/ground-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Ground List</a></li>");
			  menu.put(2, "<a href='"+domain+"/umpire-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Umpire List</a></li>");
			  menu.put(9, "<a href='"+domain+"/Scheduler-List/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule List</a>");
			  menu.put(13, "<a href='"+domain+"/GameSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule & Scores</a>");
			  if(boardProfile.getBoardCoordinatorList()!=null){
				  for(CoOrdinator c : boardProfile.getBoardCoordinatorList())
					 {
						 if(userId.endsWith(c.getCoOrdinatorId()) && c.getCoOrdinatorTypeId()==28)
						 {
							 resultList.add("GroundCoordinator");
							 menu.put(3, "<a href='"+domain+"/create-ground/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Ground</a></li>");
							 menu.put(4, "<a href='"+domain+"/ground-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Ground List</a></li>");
							 menu.put(2, "<a href='"+domain+"/umpire-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Umpire List</a></li>");
							 menu.put(9, "<a href='"+domain+"/Scheduler-List/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule List</a>");
						 }
						 
						 if(userId.endsWith(c.getCoOrdinatorId()) && c.getCoOrdinatorTypeId()==15)
						 {
							 resultList.add("UmpireCoordinator");
							 menu.put(1, "<a href='"+domain+"/Create-Umpire/boardId/"+boardProfile.getBoardId()+"' class='active'><i class='fa fa-angle-right'></i> Create Umpire</a></li>");
							 menu.put(2, "<a href='"+domain+"/umpire-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Umpire List</a></li>");
							 menu.put(7, "<a href='"+domain+"/AssignUmpire/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Umpire to Schedule </a>");
							 menu.put(9, "<a href='"+domain+"/Scheduler-List/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule List</a>");
						 }
						 if(userId.endsWith(c.getCoOrdinatorId()) && c.getCoOrdinatorTypeId()==14)
						 {
							 resultList.add("ScheduleCoordinator");
							 menu.put(5, "<a href='"+domain+"/CreateSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Schedule</a>");
							 /*menu.put(6, "<a href='"+domain+"/AmendSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Amend Schedule</a>");*/
							 menu.put(7, "<a href='"+domain+"/AssignUmpire/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Umpire to Schedule </a>");
							 menu.put(8, "<a href='"+domain+"/AssignScorer/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Scorer to Schedule</a>");
							 menu.put(9, "<a href='"+domain+"/ScheduleListPubProfWithEdit/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule List</a>");
							 menu.put(10, "<a href='"+domain+"/CancelGameByDatePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Cancel Game by date</a>");
							 menu.put(11, "<a href='"+domain+"/CancelTournamentPublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Cancel Tournment</a>");
							 
							 menu.put(3, "<a href='"+domain+"/create-ground/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Ground</a></li>");
							 menu.put(4, "<a href='"+domain+"/ground-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Ground List</a></li>");
							 
							 menu.put(1, "<a href='"+domain+"/Create-Umpire/boardId/"+boardProfile.getBoardId()+"' class='active'><i class='fa fa-angle-right'></i> Create Umpire</a></li>");
							 menu.put(2, "<a href='"+domain+"/umpire-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Umpire List</a></li>");
							 
							 
						 }
						 
					 }
			  }
				  
			 
			 
			if(boardProfile.getBoardCoOwnerList()!=null){
				 for(BoardCoordinatorMap b : boardProfile.getBoardCoOwnerList())
				 {
					 if(b.getCoOwnerId().endsWith(userId))
					 {
						 resultList.add("CoOwner");
						 menu.put(1, "<a href='"+domain+"/Create-Umpire/boardId/"+boardProfile.getBoardId()+"' class='active'><i class='fa fa-angle-right'></i> Create Umpire</a></li>");
						 menu.put(2, "<a href='"+domain+"/umpire-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Umpire List</a></li>");
						 menu.put(3, "<a href='"+domain+"/create-ground/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Ground</a></li>");
						 menu.put(4, "<a href='"+domain+"/ground-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Ground List</a></li>");
						 menu.put(5, "<a href='"+domain+"/CreateSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Schedule</a>");
						/* menu.put(6, "<a href='"+domain+"/AmendSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Amend Schedule</a>");*/
						 menu.put(7, "<a href='"+domain+"/AssignUmpire/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Umpire to Schedule </a>");
						 menu.put(8, "<a href='"+domain+"/AssignScorer/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Scorer to Schedule</a>");
						 menu.put(9, "<a href='"+domain+"/ScheduleListPubProfWithEdit/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule List</a>");
						 menu.put(10, "<a href='"+domain+"/CancelGameByDatePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Cancel Game by date</a>");
						 menu.put(11, "<a href='"+domain+"/CancelTournamentPublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Cancel Tournment</a>");
						 menu.put(12, "<a href='"+domain+"/DisputeManagementPublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Dispute Management</a>");
					 }
				 }
			}
			 
			 if(userId.endsWith(boardProfile.getCreatedBy()))
			 {
				 resultList.add("Owner");
				 menu.put(1, "<a href='"+domain+"/Create-Umpire/boardId/"+boardProfile.getBoardId()+"' class='active'><i class='fa fa-angle-right'></i> Create Umpire</a></li>");
				 menu.put(2, "<a href='"+domain+"/umpire-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Umpire List</a></li>");
				 menu.put(3, "<a href='"+domain+"/create-ground/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Ground</a></li>");
				 menu.put(4, "<a href='"+domain+"/ground-list/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Ground List</a></li>");
				 menu.put(5, "<a href='"+domain+"/CreateSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Create Schedule</a>");
				 /*menu.put(6, "<a href='"+domain+"/AmendSchedulePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Amend Schedule</a>");*/
				 menu.put(7, "<a href='"+domain+"/AssignUmpire/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Umpire to Schedule </a>");
				 menu.put(8, "<a href='"+domain+"/AssignScorer/profile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Assign Scorer to Schedule</a>");
				 menu.put(9, "<a href='"+domain+"/ScheduleListPubProfWithEdit/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Schedule List</a>");
				 menu.put(10, "<a href='"+domain+"/CancelGameByDatePublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Cancel Game by date</a>");
				 menu.put(11, "<a href='"+domain+"/CancelTournamentPublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Cancel Tournment</a>");
				 menu.put(12, "<a href='"+domain+"/DisputeManagementPublicProfile/boardId/"+boardProfile.getBoardId()+"'><i class='fa fa-angle-right'></i> Dispute Management</a>");
			 }
			 
			 
			 
			 
			 
			if(menu.size()>0)
			{
				List<MenuURL> umpire=new ArrayList<MenuURL>();
				List<MenuURL> schedule= new ArrayList<MenuURL>();
				List<MenuURL> ground= new ArrayList<MenuURL>();
				List<MenuURL> owner= new ArrayList<MenuURL>();
				String disput=null;
				 for(Object key : menu.keySet())
				 {
					 
					 if(key.equals(1)|| key.equals(2))
					 {
						 MenuURL url= new MenuURL();
						 url.setURL(menu.get(key).toString());
						 url.setURLType(key.toString());
						 umpire.add(url);
						 //umpire.add(menu.get(key).toString());
					 }
					 
					 if(key.equals(3)||key.equals(4))
					 {
						// ground.add(menu.get(key).toString());
						 MenuURL url= new MenuURL();
						 url.setURL(menu.get(key).toString());
						 url.setURLType(key.toString());
						 ground.add(url);
					 }
					 
					 if(key.equals(5) || key.equals(6)|| key.equals(7)||key.equals(8)||key.equals(9)||key.equals(10)||key.equals(11)||key.equals(13) )
					 {
						// schedule.add(menu.get(key).toString());
						 MenuURL url= new MenuURL();
						 url.setURL(menu.get(key).toString());
						 url.setURLType(key.toString());
						 schedule.add(url);
					 }
					 
					 if(key.equals(12))
					 {
						 disput=menu.get(key).toString();
					 }
				 }
				 
				 
				 menuList= new MenuList();
				 menuList.setUmpireList(umpire);
				 menuList.setScheduleList(schedule);
				 menuList.setGroundList(ground);
				 //menuList.setOwnerList(owner);
				 
				 
			}
			
			 
			 
		 }catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return menuList;
	 }
	 
	 public static String getDomain(HttpServletRequest request)
	 {
		 String context=null;
		 try{
			 context = request.getContextPath();
			 
		 }catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		return context; 
	 }
	 
	 
	 public static String webServiceDomainName(String keyValue) 
	 {
		 String URL=null;
			Properties prop = new Properties();		
			InputStream input = null;
			File file= null;
			String propertyFilePath = "/opt/cricket_social/Config_properties";	//AWS
			String path=propertyFilePath;
			file= new File(path);
			if(!file.exists())
			{
				file.mkdirs();
				//System.out.println("dddddddddddddd");
			}
			file= new File(path+"/cricketsocial_web_config.properties");
			try{
				input= new FileInputStream(file);
		
				prop.load(input);
			
				URL=prop.getProperty(keyValue);
			}catch(Exception e) 
			{
				e.printStackTrace();
			}
			System.out.println("Domain Name : ---> "+URL);
			//logger.error("Domain name -----------> "+URL);
		 return URL;
	 }
	 
  //public MatchEventList gettingMatchList()
	
	public static String getMessage(int messageType)
	{
		String message="";
		
		switch (messageType) {
		case MessageRequest.SERVICE_UNAVAILABLE:
			message="Service unavailable";
			break;
		case MessageRequest.SESSION_EXPIRE : 
			message="Your session has been expired";
			break;
			
		default:
			break;
		}
		
		return message;
	}
	
	public static boolean checkisCoOwner(String userId,List<BoardCoordinatorMap>  coOwerList){
		
		try{
			for(BoardCoordinatorMap m : coOwerList){
				System.out.println("m.getUser().getUserId()---> "+m.getUser().getUserId());
				if(userId.equalsIgnoreCase(m.getCoOwnerId()) ){
					System.out.println("m.getUser().getUserId()---> "+m.getUser().getUserId());

					return true;
				}
			}
				
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	public static String listToStringConvertion(List<String> list){
		String result="";
		try{
			
			System.out.println(list);
			 result=StringUtil.join(list, ", ");
			System.out.println(""+result);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	
	public static void main(String[] args){
		List<String> numbers = Arrays.asList("Aaron","Chris","James","John","Travis","Steven","Matthew","cameron","Shaun","Shane");
		String list=Util.listToStringConvertion(numbers);
	}
	
	
	 
}
