/*
 * Created on 07.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.timer;

import java.util.Calendar;

import de.hopfit.controller.InvoiceAction;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class InvoiceListener implements ContextListener{

	public InvoiceListener() {
		super();
		Logger.log("InvoiceListener()");		 
	}
	
	public synchronized void notify(boolean bstop) {
		boolean bed = false;
		Logger.log("*******************************************");
		Logger.log("InvoiceListener: Check for open invoices...");
		Logger.log("*******************************************");
		
		if(Const.TESTDATA)
		{
			bed = true;
		}
		else
		{
			Calendar c = Calendar.getInstance();
	    	if(c.get(Calendar.DAY_OF_MONTH) == 1)
//		    if(c.get(Calendar.DAY_OF_MONTH) == 15)
	    		bed = true;
		}
	  	
    	if(bed)
    	{
    		MailThread.resetCounter();
    		InvoiceAction ia = new InvoiceAction();
    		// DEMO SHOPS
    		for(int i=1;i<=3;i++){
    			ia.createInvoice("" + i);
    		}
    		// Partners
    		for(int i=Const.START_PARTNER_ID;i<=Const.END_PARTNER_ID;i++){
    			ia.createInvoice("" + i);
    		}
   	    }
		
		if(!bstop){
	    	Const.invoiceTimer = new ContextThread(this, Const.TIMER_INTERVAL);
	    	Const.invoiceTimer.start();
		}
	}
}