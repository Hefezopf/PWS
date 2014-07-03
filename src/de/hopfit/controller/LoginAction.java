package de.hopfit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import de.hopfit.model.Tarif;
import de.hopfit.resource.LoginService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.LoginForm;


public class LoginAction extends Action {
    
  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    Logger.log(this.getClass().getSimpleName());
  
 	// Use Struts actions to record business processing errors.
	ActionErrors errors = new ActionErrors();
	// Store this set in the request scope, in case we need to
	// send the ErrorPage view.
	saveMessages(request, errors);

    LoginForm lf = (LoginForm)form;
    String username = lf.getUser();
    String password = lf.getPassword();
	HttpSession session = request.getSession();

	LoginService ls = new LoginService();
	int partner_id = ls.login(username, password);
	if(partner_id>Const.INVALID_ID)
	{  
		//??
		String name = ls.getPartnerName(partner_id);
		session.setAttribute(Const.PARTNERNAME, name);
		
		// Tarif holen
		Tarif tarif = ls.getTarif(partner_id);
		session.setAttribute(Const.TARIF, tarif);
		
		session.setAttribute(Const.PARTNER_ID, ""+partner_id);
		session.setAttribute(Const.USER, username);
	    Logger.log("User: " + username + "SID=" + session.getId());
		return mapping.findForward("success");
	}
	else
	{ 
//		errors.add("databaseconnection", new ActionMessage(
//				"error.databaseconnection"));
//	    request.setAttribute(Globals.ERROR_KEY, errors);
		return mapping.findForward("error");
	}
  }
}
