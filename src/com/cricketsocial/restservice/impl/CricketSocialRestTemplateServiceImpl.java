package com.cricketsocial.restservice.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.cricketsocial.bean.HubRequest;
import com.cricketsocial.bean.buddy.UserProfile;
import com.cricketsocial.bean.response.BuddyRequest;
import com.cricketsocial.bean.response.LoginResponse;
import com.cricketsocial.common.CSException;
import com.cricketsocial.common.GsonConverters;
import com.cricketsocial.common.Util;
import com.cricketsocial.restservice.CricketSocialRestTemplateService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
@Service
public class CricketSocialRestTemplateServiceImpl  implements CricketSocialRestTemplateService{

//	private static String domain="http://KL-WKST16:8060/cricketsocialwebservices/"; // kalpana
    //  private static String domain="http://172.16.19.27:8068/cricketsocialwebservices/"; // kiran
   // private static String domain="http://172.16.19.16:8068/cricketsocialwebservices/"; // Hyderali
  // private static String domain="http://172.16.19.103:8068/cricketsocialwebservices/"; //Bavitra
//	 private static String domain="http://localhost:8068/cricketsocialwebservices/";  // local   
   //private static String domain="http://52.4.189.30:8068/cricketsocialwebservices/";//public machine
 
     //private static String domain="http://172.16.19.30:8068/cricketsocialwebservices/"; // kalpana dev system ip
<<<<<<< HEAD
     //private static String domain="http://52.73.86.69:8068/cricketsocialwebservices/";//QA
=======
    // private static String domain="http://52.73.86.69:8068/cricketsocialwebservices/";//QA
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
	//private static String domain="http://52.73.236.168:8068/cricketsocialwebservices/";// PROD
             private static String domain=Util.webServiceDomainName("Web_Service_URL");
     //private static String domain="http://192.168.0.52:8068/cricketsocialwebservices/"; // Hyderali(temp)
     //private static String domain="http://172.16.19.30:8068/cricketsocialwebservices/"; // kalpana   
<<<<<<< HEAD
      //private static String domain="http://172.16.19.27:8068/cricketsocialwebservices/";
=======
     // private static String domain="http://172.16.19.27:8068/cricketsocialwebservices/";
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
	//private static String domain=Util.webServiceDomainName("Web_Service_URL1");
    //  private static String domain="http://172.16.19.50:8068/cricketsocialwebservices/"; //priyanga

   //private static String domain2="http://52.4.189.30:8040/ScoringFrontEndServices/"; //public machine mobile
   //private static String domain2="http://localhost:8040/ScoringFrontEndServices/";
<<<<<<< HEAD
	 //private static String domain2="http://services.scoring.cricketsocial.com/ScoringBackEndService/"; //pROD
                        private static String domain2=Util.webServiceDomainName("ScroingApp_URL");
   // private static String domain2="http://172.16.19.30:8040/ScoringFrontEndServices/";
    //private static String domain2="http://52.73.86.69:8040/ScoringFrontEndServices/";
=======
	// private static String domain2="http://services.scoring.cricketsocial.com/ScoringBackEndService/"; //pROD
                        private static String domain2=Util.webServiceDomainName("ScroingApp_URL");
   // private static String domain2="http://172.16.19.30:8040/ScoringFrontEndServices/";
   // private static String domain2="http://52.73.86.69:8040/ScoringFrontEndServices/";
>>>>>>> 9c4a9b6dae78b87b70036fc211fbe261dc7e18f2
	//private static String domain2=Util.webServiceDomainName("ScroingApp_URL1");
    
  
	private RestTemplate restTemplate=null;
	GsonBuilder builder=null;
	@Override
	public String userRegistration(HubRequest hubRequest)throws CSException {
		
		String result=null;
		try{
			System.out.println("Domin : --------------------- >"+domain);
			String URL=domain+"getResult";
			String reqString = GsonConverters.getGsonObject().toJson(hubRequest);			
			System.out.println("request : --------------------- >userRegistration "+reqString);
			restTemplate=new RestTemplate();
			result = restTemplate.postForObject(URL,hubRequest,String.class);
			System.out.println("response : =============== > "+result);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public UserProfile userLogin(UserProfile userProfile)throws CSException {
		
		String URL=domain+"getResult";
		restTemplate=new RestTemplate();
		UserProfile user= new UserProfile();
		user.setFirstName("thamara");
		
		List<UserProfile> te= Arrays.asList(restTemplate.postForObject(URL,user,UserProfile.class));
		
			for(UserProfile u : te)
			{
				System.out.println("email address : "+u.getEmailAddress());
			}
			
		
			
		return null;
	}
	
	public UserProfile userLogin2(Object obj) {
		
		String URL=domain+"getResult";
		restTemplate=new RestTemplate();
		
		String ee = restTemplate.postForObject(URL,obj,String.class);
		System.out.println("d"+ee);
		BuddyRequest request=(BuddyRequest) obj;
		System.out.println("firstname : "+request.getRequestParam());
		UserProfile user=(UserProfile) request.getRequestParam();
			
		GsonBuilder builder = new GsonBuilder();
	    Gson gson = builder.create();
	    LoginResponse he=gson.fromJson(ee, LoginResponse.class);
		System.out.println("");
			for(UserProfile u : he.getResults().getGettingUserSearchListDetails() )
		{
			System.out.println("email address : "+u.getEmailAddress());
		}
		return null;
	}
	public static void main(String[] args) {		
		 CricketSocialRestTemplateServiceImpl te = new CricketSocialRestTemplateServiceImpl();
		 UserProfile user= new UserProfile();
			user.setFirstName("thamara");
			BuddyRequest  request= new BuddyRequest();
			request.setMsgType("15");
			request.setRequestParam(user);
			//List l= new ArrayList();
		//	l.add(request);
		 te.userLogin2(request);
	}
//createdby ramya
	@Override
	public String userRegistration1(HubRequest hubRequest)throws CSException {
		
		String result=null;
		try{
			String URL=domain2+"getresults";
			System.out.println("URL : "+URL);		
			String reqString = GsonConverters.getGsonObject().toJson(hubRequest);			
			System.out.println("request : --------------------- > "+reqString);
			restTemplate=new RestTemplate();
			result = restTemplate.postForObject(URL,hubRequest,String.class);
			System.out.println("response : =============== > "+result);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
	
}
