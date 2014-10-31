package de.hopfit.util;

/**
 * @author hopfma
 *
 */
public class Logger {

	/**
	 * @param msg
	 */
	public static void log(String msg){
		System.out.println("* " + Date.getCurrentDate() + "\t" + msg);
	}	
}
