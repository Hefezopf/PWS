/*
 * Created on 07.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.timer;

import de.hopfit.resource.MailService;
import de.hopfit.util.Logger;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class MailThread extends Thread{
	
	private String to;
	private String bcc;
	private String from;
	private String subject;
	private String body;
	private static int counter = 0;
	
	public MailThread(String to, String bcc, String from, String subject, String body) {
		super();
		this.to = to;
		this.bcc = bcc;
		this.from = from;
		this.subject = subject;
		this.body = body;
	}
	
	
	public static void resetCounter(){
		counter = 0;
	}
	
	public void run(){
		Logger.log("MailThread: run() ...");
		
		try {
			counter += 10000;
			Logger.log("Thread.wait(" + counter + ")...");
			Thread.sleep(counter);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		MailService.sendEmail(to, bcc, from, subject, body);
		Logger.log("... run()");		 
	}

}
