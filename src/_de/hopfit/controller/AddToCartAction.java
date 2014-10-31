package de.hopfit.controller;

import java.util.ArrayList;
import java.util.Iterator;

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

import de.hopfit.model.Item;
import de.hopfit.resource.OrderService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class AddToCartAction extends Action {
 
  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    HttpSession session = request.getSession();
    Logger.log(this.getClass().getSimpleName());

    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveMessages(request, errors);
    
    String s_rq_partner_id = (String)request.getParameter(Const.PARTNER_ID);
    Logger.log("s_rq_partner_id=" + s_rq_partner_id);
    String	s_sess_partner_id = ((String)session.getAttribute(Const.PARTNER_ID));
    if(s_sess_partner_id==null){
    	Logger.log("errors.add(wrongurl" );
		errors.add("wrongurl", new ActionMessage("error.wrongurl"));
        request.setAttribute(Globals.ERROR_KEY, errors);
        return mapping.findForward("error");      
    }

    if(!s_sess_partner_id.equals(s_rq_partner_id)){
    	Logger.log("errors.add(toomanyshopsopen" );
		errors.add("toomanyshopsopen", new ActionMessage("error.toomanyshopsopen"));
        request.setAttribute(Globals.ERROR_KEY, errors);
        return mapping.findForward("error");      
    }

	  try {
	    String s_item_id = request.getParameter(Const.ITEM_ID); 
	    Logger.log("ITEM_ID= " + s_item_id);
	
	    int item_id = new Integer(s_item_id).intValue();
	    
	    ArrayList<Item> orderlist = (ArrayList<Item>) session.getAttribute(Const.ORDERLIST); 
	    if(orderlist==null)
	    {
	      // Leere Orderliste anlegen
	      orderlist = new ArrayList<Item>();
	      session.setAttribute(Const.ORDERLIST, orderlist); 
	    }
	    
	    boolean item_allready_in_list = false;
	    Iterator iterator = orderlist.iterator();
	    while(iterator.hasNext())
	    {
	    	Item item = (Item)iterator.next();
	    	// Item schon vorhanden
	    	if(item.getItemId() == item_id)
	    	{
	    		item_allready_in_list = true;
	    		item.incrementMenge();
	    		break;
	    	}
	    }
	    
	    if(!item_allready_in_list)
	    {
		  	int partner_id = new Integer(s_rq_partner_id).intValue();
		    OrderService os = new OrderService(partner_id);
			Item item = os.getItem(item_id);
			Logger.log("ITEM_ID= " + s_item_id + "  s_rq_partner_id=" + s_rq_partner_id);
			if(item!=null){
				item.incrementMenge();
				orderlist.add(item);
			}
	    }
	 
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
