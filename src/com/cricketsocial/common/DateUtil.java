package com.cricketsocial.common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
/** 
 * This class used for date calculations.
 * 
 * @author KDintakurthi
 * @version 1.0
 * @since   2014-12-01
 */
public class DateUtil {
	
	public static void main(String[] args) {
		//System.out.println("getYesterdayDateString()--> "+getYesterdayDateString());
		
		//System.out.println("21/11/2015 4:00 AM ----> "+getUtilDateWithPassingDateAndTimes("21/01/2015 4:00 PM"));
	//	String dateInString = "Jun 7, 2013 1:10 PM";
	//	MM/dd/yyyy hh:mm a
		String dateInString = "11/7/2013 1:10 PM";
		System.out.println("date----> "+getDatabaseDateString2(dateInString));
		String date=getDatabaseDateString2(dateInString);
		System.out.println("fffffffff--------> "+date);
	}

	public static String getYesterdayDateString() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);    
        return dateFormat.format(cal.getTime());
	}
	
	public static String getLastWeekDateString() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -7);    
        return dateFormat.format(cal.getTime());
	}
	
	public static String getLastMonthDateString() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, -1);    
        return dateFormat.format(cal.getTime());
	}
	
	public static String getTodaysDateString() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        return dateFormat.format(cal.getTime());
	}
	
	
	public static java.sql.Date getSqlDate(String dateInString){
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date sqlDate = null;
		try {
			Date date = formatter.parse(dateInString);
			Date utilDate = date;
		    sqlDate = new java.sql.Date(utilDate.getTime());
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return sqlDate;
	}
	
	public static java.util.Date getUtilDateWithPassingDateAndTimes(String dateInString)
	{
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy hh:mm a");
		Date utileDate = null;
		try {
			System.out.println("string date : "+dateInString);
			utileDate= formatter.parse(dateInString);
					
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return utileDate;
	}
	
	public static String  getDBFormateWithPassingDateAndTimes(String dateInString)
	{
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy hh:mm a");
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date utileDate = null;
		String resultDate=null;
		try {
			System.out.println("string date : "+dateInString);
			utileDate= formatter.parse(dateInString);
		    resultDate=formatter2.format(utileDate);	
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return resultDate;
	}
	
	public static Date getDateObjectPassingStringDate(String dateInString)
	{
		SimpleDateFormat formatter = new SimpleDateFormat("MMM dd, yyyy hh:mm:ss a");
		Date date = null;
		try {
			date = formatter.parse(dateInString);
			System.out.println(date);
			System.out.println(formatter.format(date));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return date;	
	}
	public static String getDatabaseDateString(String date) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat formatter2 = new SimpleDateFormat("MM/dd/yyyy");
        Date utileDate = null;
        String resultDate="";
        Calendar cal = Calendar.getInstance();
        try {
			utileDate= formatter2.parse(date);
			resultDate=dateFormat.format(utileDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        cal.add(Calendar.DATE, -1);    
       // return dateFormat.format(cal.getTime());
        return resultDate;
	}
	
	public static String getDatabaseDateString2(String date) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat formatter2 = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
        Date utileDate = null;
        String resultDate="";
        Calendar cal = Calendar.getInstance();
        try {
			utileDate= formatter2.parse(date);
			resultDate=dateFormat.format(utileDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        cal.add(Calendar.DATE, -1);    
       // return dateFormat.format(cal.getTime());
        return resultDate;
	}
	
	public static String getDatabaseDateString2UTC(String date) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat formatter2 = new SimpleDateFormat("MM/dd/yyyy hh:mm a");
        Date utileDate = null;
        String resultDate="";
        Calendar cal = Calendar.getInstance();
        dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));  
        try {
			utileDate= formatter2.parse(date);
			resultDate=dateFormat.format(utileDate);
			System.out.println("result Date :"+resultDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        cal.add(Calendar.DATE, -1);    
       // return dateFormat.format(cal.getTime());
        return resultDate;
	}
	
	public static String getUTCDate1(String date, String browserTimeZone) throws Exception{
		System.out.println("string date "+date);
		SimpleDateFormat sdf1= new SimpleDateFormat("MM/dd/yyyy hh:mm a");
		sdf1.setTimeZone(TimeZone.getTimeZone(browserTimeZone));
		Date inDate=sdf1.parse(date); 
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
        String outDate=sdf.format(inDate);
        return outDate;
	}
	

	
	
}