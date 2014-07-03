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
import de.hopfit.view.NewKundenItemForm;

/**
 * @author hopfma
 *
 */
public class NewKundenItemAction extends Action {

	/* (non-Javadoc)
	 * @see org.apache.struts.action.Action#execute(org.apache.struts.action.ActionMapping, org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	    Logger.log(this.getClass().getSimpleName());
		HttpSession session = request.getSession();

		// Use Struts actions to record business processing errors.
		ActionErrors errors = new ActionErrors();
		// Store this set in the request scope, in case we need to
		// send the ErrorPage view.
		saveMessages(request, errors);
		NewKundenItemForm myForm = (NewKundenItemForm) form;

		try {
			String s = ((String) session.getAttribute(Const.PARTNER_ID));
			int partner_id = new Integer(s).intValue();
			OrderService os = new OrderService(partner_id);

			Item i = new Item(myForm.getTitle(), myForm.getPrice(),
					myForm.getDescription(), myForm.getDetaildescription(),
					myForm.getMyItemFile(), myForm.getItem_no(), myForm.getVisible());
			os.insertItem(i);
			Logger.log("myForm.getVisible() "+ myForm.getVisible());
			Logger.log("myForm.getDescription() "+ myForm.getDescription());
			
			Logger.log("success");
			// Dispatch to Success view
			return mapping.findForward("success");

			// Handle any unexpected expections
		} catch (RuntimeException e) {
			// Log stack trace
			Logger.log("An unexpected error: " + e);
  		    e.printStackTrace();
			// Record the error
			errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(
					"error.unexpectedError", e.getMessage()));
		      request.setAttribute(Globals.ERROR_KEY, errors);
		      // and forward to the error handling page (the form itself)
			return mapping.findForward("error");
		}
	}

}
