/*
 * Created on 23.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.ws;

import de.hopfit.util.Logger;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class Info {

	  public String getVersion(String s)
	  {
	  	 String version = "Version: " + "1.1";
		 Logger.log("Info: getVersion()->" + version);
	     return version;
	  } 
}
