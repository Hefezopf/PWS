package de.hopfit.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.util.MessageResources;

import de.hopfit.resource.LoginService;
import de.hopfit.resource.MailService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.RegisterForm;


public class RegisterAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    Logger.log(this.getClass().getSimpleName());

    RegisterForm regForm = (RegisterForm)form;
    ActionErrors errors = new ActionErrors();
        
    try {
    	LoginService ls = new LoginService();
    	int partner_id = ls.addPartner(regForm.getUser(), regForm.getPassword(), "0", 
    			regForm.getEmail(), regForm.getTarif());  		
		
    	request.setAttribute(Const.USER, regForm.getUser());
		
        if(partner_id > -1)
        {  	
        	
     	 	// EMail Register Versandt
        	String browser_lang = request.getHeader("Accept-Language").substring(0,2);
      	    Locale locale = new Locale(browser_lang);	    
    	    //web-app_xx.properties
    	    MessageResources resources = MessageResources.
    	    	getMessageResources("web-app");	    
    		
    	    // EMail Register Text
    		Object []emailvars = {
    				regForm.getUser(),
    				regForm.getPassword(),
    				regForm.getTarif(),
    				Const.URL_WEB_APP,
    				partner_id,
    				Const.TXT_TITLE
    			};

    		String text = resources.getMessage(locale, 
    				"shopactiontext.register_actionmailtext", 
    				emailvars);	
    		String subject = resources.getMessage(locale, 
    				"shopactiontext.register_actionsubjecttext") 
    				+ " " + Const.TXT_TITLE;	
    	    Logger.log("Subject Register Text: "+ subject);
    	    Logger.log("Register Text: "+ text);
		    // String to, String bcc, String from, String subject, String body
			if (MailService.sendEmail(regForm.getEmail(), Const.SENDER_EMAIL, Const.SENDER_EMAIL, subject, text)) {
				Logger.log("success -> sendEmail ");
				return mapping.findForward("success");
			}
			else
			{
				Logger.log("RegisterAction: error -> sendEmail ");
	            errors.add("registerEMailProblems", new ActionMessage("error.registerEMailProblems"));
	            request.setAttribute(Globals.ERROR_KEY, errors);	            
				return mapping.findForward("error");
			}			
        }
    	else
    	{ 
            Logger.log("RegisterAction: error!!");
            errors.add("registerUserExists", new ActionMessage("error.registerUserExists"));
            request.setAttribute(Globals.ERROR_KEY, errors);          
     		return mapping.findForward("error");
    	}
    // Handle any unexpected expections
    } catch (RuntimeException e) {
      // Log stack trace
      Logger.log("An unexpected error: " + e);
	  e.printStackTrace();
      // and forward to the error handling page (the form itself)
      return mapping.findForward("error");
    }
  }

}
