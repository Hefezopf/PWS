/*
 * Created on 07.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.timer;

import de.hopfit.util.Logger;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ContextThread extends Thread {
	  private ContextListener cl = null;
	  private long millis = 0;
	  private boolean bstop = false;
	  
	  public ContextThread(ContextListener cl, long millis)
	  {
	    this.cl = cl;
	    this.millis = millis;
	  }
	  public void run(){
	    try {
	       sleep(this.millis); 
	    }catch(InterruptedException ie) { 
	    	Logger.log("InteruptedException");
	    	bstop = true;
	    }
	    cl.notify(bstop);       
	   }
	}