package de.hopfit.controller;

import java.util.ArrayList;

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

import de.hopfit.resource.OrderService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;


public class ListKundenItemsAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    Logger.log(this.getClass().getSimpleName());
    HttpSession session = request.getSession();
    int partner = -1;
    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveMessages(request, errors);
    
    try {
    	String pid = (String)session.getAttribute(Const.PARTNER_ID);
	    if(pid == null)
	    {
	        return mapping.findForward("notloggedin");	    	
	    }
	    else
	    	partner = new Integer(pid).intValue();
	    
	  Logger.log("partner: "+partner);

      OrderService os = new OrderService(partner);
      ArrayList list = os.getItemCollection();
      session.setAttribute(Const.ITEMLIST,list);
      Logger.log("success anzahl:"+list.size());
      // Dispatch to Success view
      return mapping.findForward("success");

    // Handle any unexpected expections
    } catch (RuntimeException e) {
      // Log stack trace
      Logger.log("An unexpected error: " + e);
	  e.printStackTrace();

      // Record the error
      errors.add(ActionMessages.GLOBAL_MESSAGE,
                 new ActionMessage("error.unexpectedError",
                                 e.getMessage()));
      request.setAttribute(Globals.ERROR_KEY, errors);
      // and forward to the error handling page (the form itself)
      return mapping.findForward("error");
    }
  }

}
