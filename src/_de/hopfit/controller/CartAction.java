package de.hopfit.controller;

 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

import de.hopfit.model.Prefs;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
//import java.text.*;

public class CartAction extends Action {
 
  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

//  	ServletContext context = getServlet().getServletContext();
    HttpSession session = request.getSession();
    Logger.log(this.getClass().getSimpleName());

    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveMessages(request, errors);
    
	String leeren = (String)request.getParameter("leeren");
    Logger.log("Btn leeren ="+leeren);
	String rq_partner_id = (String)request.getParameter(Const.PARTNER_ID);
    Logger.log("rq_partner_id ="+rq_partner_id);
    if(leeren != null)
    {
        Logger.log("Warenkorb leeren....");   	
		session.removeAttribute(Const.ORDERLIST);
        return mapping.findForward("error");
    }
    	
  try {
 
    Prefs prefs = (Prefs)session.getAttribute(Const.PREFS);
	double minorderamount = Double.parseDouble(prefs.getMinorderamount());
	String gesamt = (String)request.getParameter("gesamtwert");
    Logger.log("gesamt ="+gesamt);
    double differenz = minorderamount - Double.parseDouble(gesamt);
    
	if(differenz > 0){
		errors.add("minorderamount", new ActionMessage("error.minorderamount", prefs.getMinorderamount()));
        request.setAttribute(Globals.ERROR_KEY, errors);
        return mapping.findForward("error");      
	}
    return mapping.findForward("success");

    // Handle any unexpected expections
    } catch (RuntimeException e) {

      // Log stack trace
      Logger.log("An unexpected error: " + e);
	  e.printStackTrace();
      // Record the error
      errors.add(ActionMessages.GLOBAL_MESSAGE,//Errors.GLOBAL_ERROR,
                 new ActionMessage("error.unexpectedError",
                                 e.getMessage()));
      request.setAttribute(Globals.ERROR_KEY, errors);

      // and forward to the error handling page (the form itself)
      return mapping.findForward("error");
    }
  }

}
