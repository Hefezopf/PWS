/*
 * Created on 07.02.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.timer;

import org.apache.axis.AxisFault;
import org.apache.axis.client.AdminClient;
import org.apache.axis.utils.Messages;
import org.apache.axis.utils.StringUtils;

import de.hopfit.util.Const;
import de.hopfit.util.Logger;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class DeployWSListener implements ContextListener{

	public DeployWSListener() {
		super();
		Logger.log("DeployWSListener()");		 
	}
	
	public synchronized void notify(boolean bstop) {
		Logger.log("*****************************");
		Logger.log("DeployWSListener: deployWS...");
		Logger.log("*****************************");
		
		String domain = "http://";
		if(Const.WEBRUN)
			domain += "publicwebshop.com";
		else
			domain += "localhost:8080";
	
		String []args = {
				"-l" + domain + "/pws/services/AdminService",
			//	"-l" + "http://publicwebshop.com/pws/services/AdminService",
		//		"-lhttp://localhost:8080/pws/services/AdminService",
	//	"C:\\jakarta-tomcat-5.5.7\\webapps\\pws\\WEB-INF\\DeploymentDescriptor.wsdd"};
			Const.PATH_WEBSERVICE_DD};
	    try {
	             AdminClient admin = new AdminClient();
	             String result = admin.process(args);
	             if (result != null) {
	                 System.out.println( StringUtils.unescapeNumericChar(result) );
	             } else {
	             	Logger.log("EXIT?!?!?!!");	
		     		//System.exit(1);
	             }
	     } catch (AxisFault ae) {
	     		Logger.log(Messages.getMessage("exception00") + " " + ae.dumpToString());	
	     		System.err.println(Messages.getMessage("exception00") + " " + ae.dumpToString());
	             //System.exit(1);
	         } catch (Exception e) {
	         	Logger.log(Messages.getMessage("exception00") + " " + e.getMessage());	
	     		System.err.println(Messages.getMessage("exception00") + " " + e.getMessage());
	            // System.exit(1);
	         }
	}
}
