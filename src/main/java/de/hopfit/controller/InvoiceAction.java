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
import org.apache.struts.action.ActionMessages;
import org.apache.struts.util.MessageResources;

import de.hopfit.model.Invoice;
import de.hopfit.model.Partner;
import de.hopfit.resource.InvoiceService;
import de.hopfit.resource.LoginService;
import de.hopfit.resource.MailService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;


public class InvoiceAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {
  	
    Logger.log(this.getClass().getSimpleName());
   
    // Use Struts actions to record business processing errors.
    ActionErrors errors = new ActionErrors();
    // Store this set in the request scope, in case we need to
    // send the ErrorPage view.
    saveMessages(request, errors);
    String partner_id = (String)request.getParameter(Const.PARTNER_ID);
    request.setAttribute(Const.PARTNER_ID, partner_id);

	try {  	
		Invoice invoice = createInvoice(partner_id);		
		Logger.log("success createInvoice");
	    request.setAttribute(Const.INVOICE, invoice);
        return mapping.findForward("success");   	
    // Handle any unexpected expections
    } catch (RuntimeException e) {
      // Log stack trace
      Logger.log("Fehler: " + e.getCause());
	  e.printStackTrace();
       // Record the error
      errors.add(ActionMessages.GLOBAL_MESSAGE,
                 new ActionMessage("error.unexpectedError", e.getMessage()));
      request.setAttribute(Globals.ERROR_KEY, errors);

      // and forward to the error handling page (the form itself)
      return mapping.findForward("error");
    }
  }
  
  public Invoice createInvoice(String partner_id)
  {
	InvoiceService is = new InvoiceService();  	
 	Invoice invoice = is.createInvoice(new Integer(partner_id).intValue());
  	
 	if( invoice != null)
 	{
	 	LoginService ls = new LoginService();  	
		Partner partner = ls.getPartner(new Integer(partner_id).intValue());
		
	 	// EMail Invoice Versandt
	    Locale locale = new Locale(partner.getPartner_language());	    
	    //web-app_xx.properties
	    MessageResources resources = MessageResources.
	    	getMessageResources("web-app");	    
		
	    // EMail Invoice Text
		Object []emailvars = {
		    partner.getPartnername(),
		    Const.TXT_TITLE,
		    partner.getUsername(),
		    invoice.getInvoice_id(),
		    invoice.getInvoice_total(),
		    Const.INVOICE_INHABER,
		    Const.INVOICE_BANK,
		    Const.INVOICE_BLZ,
		    Const.INVOICE_KTO_NR,
		    Const.INVOICE_IBAN,
		    Const.INVOICE_BIC,
		    Const.TXT_TITLE
			};

		String text = resources.getMessage(locale, 
				"shopactiontext.invoice_actionmailtext", 
				emailvars);	
		String subject = resources.getMessage(locale, 
				"shopactiontext.invoice_actionsubjecttext") 
				+ " " + Const.TXT_TITLE;	
	    Logger.log("Subject Text: "+ subject);
	    Logger.log("Invoice Text: "+ text);
		MailService.sendEmailThread(partner.getEmail(), Const.SENDER_EMAIL, Const.SENDER_EMAIL, subject, text);
		Logger.log("Invoice created for Partner: " + partner_id);		 
 	}
	return invoice;
  }
}
