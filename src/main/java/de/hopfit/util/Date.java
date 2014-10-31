/*
 * Created on 29.01.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.util;

import java.util.Calendar;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class Date {

	  //
	  public static String getCurrentDate()
	  { 
	  	Calendar c = Calendar.getInstance();
    	// 2000-10-10 05:00:00
    	String current_date = "" + c.get(Calendar.YEAR) + "-" +
    	+ (1+c.get(Calendar.MONTH)) + "-" +
    	+ c.get(Calendar.DAY_OF_MONTH) + " " +
    	+ c.get(Calendar.HOUR_OF_DAY) + ":" +
    	+ c.get(Calendar.MINUTE) + ":" +
    	+ c.get(Calendar.SECOND);
    	
 	    return current_date;
	  }
}
