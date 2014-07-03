/*
 * Created on 07.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.util;

import javax.servlet.http.HttpServlet;

import de.hopfit.timer.ContextThread;
import de.hopfit.timer.DeployWSListener;
import de.hopfit.timer.InvoiceListener;
import de.hopfit.timer.StatistikListener;
import de.hopfit.timer.TarifListener;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class InitServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	public InitServlet() {
		super();
		Logger.log("InitServlet()");	
	}
		
	  public void init() {
		Logger.log("InitServlet init()");	
	    InvoiceListener il = new InvoiceListener();
	    TarifListener tl = new TarifListener();	 
	    DeployWSListener dWSl = new DeployWSListener();	 
	    StatistikListener sl = new StatistikListener();	 
	    // Globale variabeln aus der const.java initialisieren
	    Const.invoiceTimer = new ContextThread(il, Const.TIMER_INTERVAL/2);
	    Const.tarifTimer = new ContextThread(tl, Const.TIMER_INTERVAL*2);
	    Const.deployWSTimer = new ContextThread(dWSl, Const.TIMER_INTERVAL/1);
	    Const.statistikTimer = new ContextThread(sl, Const.TIMER_INTERVAL/3);
    	Const.invoiceTimer.start();
    	Const.tarifTimer.start();
    	Const.deployWSTimer.start();
    	Const.statistikTimer.start();
		new Const();
	 }
        				  
	  public void destroy() {
		Logger.log("InitServlet destroy()");		 
	  	Const.invoiceTimer.interrupt();
	  	Const.tarifTimer.interrupt();
	  	Const.deployWSTimer.interrupt();
	  	Const.statistikTimer.interrupt();
	  }
}
