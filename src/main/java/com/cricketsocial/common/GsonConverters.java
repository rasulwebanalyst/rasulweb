package com.cricketsocial.common;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class GsonConverters {

	
	public static Gson getGsonObject()
	{
		Gson gson=null;
		try{
			GsonBuilder builder = new GsonBuilder();		
			gson=builder.create();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return gson;
	}
	
	
	
	
	
}
