package com.cricketsocial.common;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.jsoup.helper.StringUtil;

import com.cricketsocial.bean.buddy.UserPlayrInfo;
import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.buddy.UserRole;
import com.cricketsocial.bean.response.RoleResponse;
import com.cricketsocial.bean.role.Role;
import com.cricketsocial.bean.role.SubRoleLevelFour;
import com.cricketsocial.bean.role.SubRoleLevelOne;
import com.cricketsocial.bean.role.SubRoleLevelThree;
import com.cricketsocial.bean.role.SubRoleLevelTwo;
import com.cricketsocial.bean.role.UserProfileRole;
import com.cricketsocial.bean.role.UserRoleMap;
import com.cricketsocial.bean.role.UserSubRoleLevelFourMap;
import com.cricketsocial.bean.role.UserSubRoleLevelOneMap;
import com.cricketsocial.bean.role.UserSubRoleLevelThreeMap;
import com.cricketsocial.bean.role.UserSubRoleLevelTwoMap;



public class UserCommons {

	
	public static void main(String arg[])
	{
		List<String> numbers = Arrays.asList("Aaron","Chris","James","John","Travis","Steven","Matthew","cameron","Shaun","Shane");
		System.out.println(numbers);
		String result=StringUtil.join(numbers, ",");
		System.out.println(""+result);
		
	}
	
	public static UserPlayrInfo getUserPlayerInfo(UserProfileRole profile) throws CSException
	{
		UserPlayrInfo info=new UserPlayrInfo();
		RoleResponse roleResponse=null;
		roleResponse=CSRestFullService.getRoleAndSubCatInfo();
		String role=null;
		List<String> listrole=new ArrayList<String>();
			
		info.setUserName(profile.getFirstName()+" "+profile.getLastName());
		info.setUserID(profile.getUserId()+"");
		info.setImgURL(profile.getUserImageUrl());
		
		for(UserRoleMap map2 : profile.getUserRoleMap())
		 {
			 System.out.println("Role id : "+map2.getRoleId());
			 System.out.println("UserId : "+map2.getUserId());
			 if(map2.getRoleId()!=null)
			 {
				 listrole.add(map2.getRoleId());				 
				
			 }
			
		 }
		for(Role r : roleResponse.getRole())
		{
			if(listrole.contains(r.getRole_id()))
			{
				if(role.equals(null))
				{
					role=r.getRole();
				}else{
					role =role+","+r.getRole();
				}
			}
		}
		
		info.setRoleInfo(role);
		
		List<String> subRole1= new ArrayList<String>();
		 for(UserSubRoleLevelOneMap k: profile.getUsersubrolelevelonemap())
		 {
			 subRole1.add(k.getSubRoleLevelOneId());
			
		 }
		 
		 List<String> subRole2= new ArrayList<String>(); 
		 for(UserSubRoleLevelTwoMap k : profile.getUsersubroleleveltwomap())
		 {
			 subRole2.add(k.getSubRoleLevelTwoId());
			 
		 }
		 
		 
		 List<String> subRole3= new ArrayList<String>();
		 for(UserSubRoleLevelThreeMap k : profile.getUsersubrollevelthreemap())
		 {
			 subRole3.add(k.getSubRoleLevelThreeId());
			
		 }
		
		 List<String> subRole4= new ArrayList<String>();
		 for(UserSubRoleLevelFourMap k : profile.getUsersubrolelevelfourmap())
		 {
			 subRole4.add(k.getSubRoleLevelFourId());
			 
		 }
		 String strsubRole1=null;
		 String strsubRole2=null;
		 String strsubRole3=null;
		 String strsubRole4=null;
		 String batsMan=null;
		/* for(SubRoleLevelOne s : roleResponse.getSubroleLevelOne() )
		 {
			 if(s.getSub_role_level_one_id().equalsIgnoreCase("707e510b-c018-4305-b4d2-6864bf85958c"))
			 {
				 if(batsMan==null)
				 {
					 batsMan=s.getSub_role_level_one();
				 }else{
					 batsMan=batsMan+","+s.getSub_role_level_one();
				 }
			 }else if(s.getSub_role_level_one_id().equalsIgnoreCase("18d09d29-aaef-46d6-8785-b587e9ed5c22"))
			 {
				 
				
				 
				 if(strsubRole1==null)
				 {
					 strsubRole1=s.getSub_role_level_one();
				 }else{
					 
				 }
			 }
			 
			 
		 }*/
		 if(subRole1.contains("707e510b-c018-4305-b4d2-6864bf85958c") || subRole1.contains("18d09d29-aaef-46d6-8785-b587e9ed5c22"))
		 {
			 for(SubRoleLevelTwo s : roleResponse.getSubroleLevelTwo())
			 {
				 if(s.getSub_role_level_one_id().endsWith("707e510b-c018-4305-b4d2-6864bf85958c"))
				 {
					 	if(subRole2.contains(s.getSub_role_level_two_id()))
					 	{
					 		if(batsMan==null)
							 {
								 batsMan=s.getSub_role_level_two();
							 }else{
								 batsMan=batsMan+","+s.getSub_role_level_two();
							 }
					 	}
					 
				 }
				 
				 if(s.getSub_role_level_one_id().endsWith("18d09d29-aaef-46d6-8785-b587e9ed5c22"))
				 {
					 
					 if(subRole2.contains(s.getSub_role_level_two_id()))
					 {
						 strsubRole2=s.getSub_role_level_two();	
					 }
					if(subRole3.size()>0)
					{
						for(SubRoleLevelThree s2 : roleResponse.getSubroleLevelThree())
						{
							if(subRole3.contains(s2.getSubRoleLevelThreeId()))
							{
								strsubRole3=s2.getSubRoleLevelThree();
							}
							
							if(subRole4.size()>0)
							{
								for(SubRoleLevelFour s3 : roleResponse.getSubroleLevelFour())
								{
									if(subRole4.contains(s3.getSubRoleLevelFourId()))
									{
										strsubRole4=s3.getSubRoleLevelFour();
									}
								}
							}
						}
					}
				 }
				 
				 
			 }
		 }
		 
		 String bowler=null;
		 if(strsubRole2!=null)
		 {
			 bowler=strsubRole2;
			 if(strsubRole3!=null)
			 {
				 bowler=bowler+", "+strsubRole3;
				 if(strsubRole4!=null)
				 {
					 bowler=bowler+", "+strsubRole4;
				 }
			 }
			 
		 }
		 
		 info.setBattingInfo(batsMan);
		 info.setBowlingInfo(bowler);
		return info;
	}
}
