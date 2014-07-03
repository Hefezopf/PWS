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

import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;
import de.hopfit.model.Tarif;
import de.hopfit.resource.AdminService;
import de.hopfit.resource.LoginService;
import de.hopfit.resource.OrderService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;


public class ListItemsAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {
  	
//    ServletContext context = getServlet().getServletContext();
    HttpSession session = request.getSession();
    Logger.log(this.getClass().getSimpleName());
    
    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveMessages(request, errors);

    String s_partner_id = (String)request.getParameter(Const.PARTNER_ID);
    if(s_partner_id == null){
    	s_partner_id = ((String)session.getAttribute(Const.PARTNER_ID));
    }
    Logger.log("request.getParameter(Const.PARTNER_ID)=" + s_partner_id);
    session.setAttribute(Const.PARTNER_ID, s_partner_id);
        
    int partner_id = -1;

    try{
        partner_id = new Integer(s_partner_id).intValue();    	
    }
    catch(NumberFormatException e){
	      Logger.log("Fehler: partner_id ist keine Nummer");
	      return mapping.findForward("error");    		    	
    }
     
    // Evtl andere Item im Warenkorb löschen
    // Es sollten keine Waren anderer Shops auftauchen!
    Logger.log("Warenkorb leeren....");   	
	session.removeAttribute(Const.ORDERLIST);

	try {  	
    	LoginService ls = new LoginService();
    	Partner partner = ls.getPartner(partner_id);
    	if(partner == null){
    	      Logger.log("Fehler: partner ist null");
    	      return mapping.findForward("error");    		
    	}
    	
    	session.setAttribute(Const.PARTNER, partner);
    	session.setAttribute(Const.PARTNERNAME, partner.getPartnername());
    	
        AdminService as = new AdminService();
        Prefs prefs = as.getPrefs(partner_id, true);
    	session.setAttribute(Const.PREFS, prefs);
   	
    	Tarif tarif = ls.getTarif(partner_id);
    	session.setAttribute(Const.TARIF, tarif);
        Logger.log("tarif getDescription:"+tarif.getDescription());
        Logger.log("tarif getExpire_date:"+tarif.getExpire_date());
    	
      OrderService os = new OrderService(partner_id);
      ArrayList itemlist = os.getItemCollection();
      session.setAttribute(Const.ITEMLIST, itemlist);
      Logger.log("success anzahl:"+itemlist.size());
      // Dispatch to Success view
      return mapping.findForward("success");

    // Handle any unexpected expections
    } catch (RuntimeException e) {
      // Log stack trace
      Logger.log("Fehler: " + e.getCause());
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
