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

import de.hopfit.model.Item;
import de.hopfit.resource.OrderService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.SaveKundenItemForm;


public class SaveKundenItemAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {
  	
    Logger.log(this.getClass().getSimpleName());
    HttpSession session = request.getSession();
    int partner_id = -1;
    
    String s = (String)request.getParameter(Const.PARTNER_ID);
    if(s==null){
    	s = ((String)session.getAttribute(Const.PARTNER_ID));
        Logger.log("getParameter()partner:"+s);
    }
    session.setAttribute(Const.PARTNER_ID, s);
    Logger.log("partner:"+s);
    partner_id = new Integer(s).intValue();
    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveMessages(request, errors);

    String sid = (String)request.getParameter(Const.ITEM_ID);
  	int item_id = new Integer(sid).intValue();
	SaveKundenItemForm myForm = (SaveKundenItemForm) form;
	Logger.log("item_id:"+ item_id+"  Title:"+ myForm.getTitle()+"  Visible:"+ myForm.getVisible());
	
  try {    	
      OrderService os = new OrderService(partner_id);
	  Item item = new Item(item_id, partner_id, myForm.getTitle(), myForm.getPrice(),
	  		myForm.getDescription(), myForm.getDetaildescription(),
	  		myForm.getMyItemFile(), myForm.getItem_no(), myForm.getVisible());
      os.saveItem(item);

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
