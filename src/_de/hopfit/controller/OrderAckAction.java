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

import de.hopfit.model.Customer;
import de.hopfit.model.Payment;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.OrderAckForm;

public class OrderAckAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	    Logger.log(this.getClass().getSimpleName());
		HttpSession session = request.getSession();

		// Use Struts actions to record business processing errors.
		ActionErrors errors = new ActionErrors();
		// Store this set in the request scope, in case we need to
		// send the ErrorPage view.
		saveMessages(request, errors);

	    String s_rq_partner_id = (String)request.getParameter(Const.PARTNER_ID);
	    Logger.log("s_rq_partner_id=" + s_rq_partner_id);
	    String	s_sess_partner_id = ((String)session.getAttribute(Const.PARTNER_ID));
	    if(!s_sess_partner_id.equals(s_rq_partner_id)){
	        Logger.log("errors.add(toomanyshopsopen" );
			errors.add("toomanyshopsopen", new ActionMessage("error.toomanyshopsopen"));
	        request.setAttribute(Globals.ERROR_KEY, errors);
	        return mapping.findForward("error");      
	    }
	    
	    OrderAckForm f = (OrderAckForm)form;
		
		String name = f.getName();
		String str = f.getStr();
		String plz = f.getPlz();
		String ort = f.getOrt();
		String customer_email = f.getEmail();
		String tel = f.getTel();
		String bemerkung = f.getBemerkung();
		Customer customer = new Customer(name, str, plz, ort, customer_email, tel, bemerkung);
		session.setAttribute(Const.CUSTOMER, customer);
		
		session.setAttribute(Const.DELIVERKIND, f.getDeliverkind());
		
		Payment payment = new Payment();
		payment.setZahlungsart(f.getZahlungsart());
		session.setAttribute(Const.PAYMENT, payment);
			
		// Dispatch to Success view
		return mapping.findForward("success");
	}
}
