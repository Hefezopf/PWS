package de.hopfit.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Locale;

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
import org.apache.struts.util.MessageResources;

import de.hopfit.model.Customer;
import de.hopfit.model.Item;
import de.hopfit.model.Partner;
import de.hopfit.model.Payment;
import de.hopfit.model.Prefs;
import de.hopfit.resource.MailService;
import de.hopfit.resource.OrderService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class SummeryAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	    Logger.log(this.getClass().getSimpleName());
		HttpSession session = request.getSession();

	    MessageResources resources = (MessageResources)
	       request.getSession().getServletContext().getAttribute("org.apache.struts.action.MESSAGE");
	    String userLang = (String)request.getSession().getAttribute(Const.LANGUAGE); 
	    Locale locale = new Locale(userLang);
	    
		// Use Struts actions to record business processing errors.
		ActionErrors errors = new ActionErrors();
		// Store this set in the request scope, in case we need to
		// send the ErrorPage view.
		saveMessages(request, errors);

		Customer customer = (Customer)session.getAttribute(Const.CUSTOMER);		
		String deliverkind = (String)session.getAttribute(Const.DELIVERKIND);
		
		Payment payment = (Payment)session.getAttribute(Const.PAYMENT);

		try {
			Partner partner = ((Partner) session.getAttribute(Const.PARTNER));
			Prefs prefs = (Prefs) session.getAttribute(Const.PREFS);
			
			String pid = ((String) session.getAttribute(Const.PARTNER_ID));
			int partner_id = new Integer(pid).intValue();
			OrderService os = new OrderService(partner_id);
			// Store the item on the request-scope
			ArrayList ol = (ArrayList) session.getAttribute(Const.ORDERLIST);
			double amount = 0.0;
			double gesamt = 0.0;

			if (ol != null) {
				for (int i = 0; i < ol.size(); i++) {
					amount += ((Item) ol.get(i)).getWert();
					Logger.log("amount " + amount);
				}
                gesamt = Double.valueOf(prefs.getDeliverfee()) + amount;
                
          	    DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);       	  
        	    String s_gesamt = df.format(gesamt);
                      	
        	    // Insert Order in DB
				Logger.log("os=" + os);
				Logger.log("customer=" + customer);
				int ordernummer = os.addOrder(customer.getName(), partner_id, 
						amount, customer.getStr(), customer.getPlz(), 
						customer.getOrt(), customer.getEmail(), 
						customer.getTel(), customer.getBemerkung(), deliverkind);
				
				// Betreff Text
			    String betrefftext = resources.getMessage(locale, 
				                     "shopactiontext.summery_actionmailbetreff");			    
			   // if (Const.TESTDATA) 
			    //	betrefftext = "DEMO - " + betrefftext + " - DEMO";
	
				// Artikel Text
				String artikeltext = ""; 
				for (int i = 0; i < ol.size(); i++) {
					artikeltext += "\n\t" + ((Item) ol.get(i)).getMenge() + 
					"\t" + ((Item) ol.get(i)).getTitle() + 
					"\t\t" + df.format(((Item) ol.get(i)).getWert()) + " " +
					prefs.getCurrency(); 
				}				

		        if(prefs.getShow_deliverfee() == null)
		        {
		            Object artikelvars[] = {
		                s_gesamt, prefs.getCurrency()
		            };
					artikeltext += resources.getMessage(locale, 
                            "shopactiontext.summery_actionmailitemsII", artikelvars);			    
		        }
		        else
		        {
					Object []artikelvars = {
							prefs.getDeliverfee(),
							prefs.getCurrency(),
							s_gesamt,
							prefs.getCurrency()
					        };
					artikeltext += resources.getMessage(locale, 
	                               "shopactiontext.summery_actionmailitems", 
	                               artikelvars);			    
		        }
								
				// EMail Summary Text
				Object []emailvars = {
					customer.getName(),
					partner.getPartnername().toUpperCase(),
					s_gesamt,
					prefs.getCurrency(),
					""+ordernummer,
					partner.getBankaccount().getKontoinhaber(),
					partner.getBankaccount().getBankname(),
					partner.getBankaccount().getBlz(),
					partner.getBankaccount().getKontonummer(),
					partner.getBankaccount().getIban(),
					partner.getBankaccount().getBic(),
					customer.getName(),
					customer.getStr(),
					customer.getPlz(),
					customer.getOrt(),
					customer.getEmail(),
					customer.getTel(),
					customer.getBemerkung(),
					deliverkind,
					payment.getZahlungsart(),
					artikeltext,
					Const.TXT_TITLE
					};

				String ordertext = resources.getMessage(locale, 
						"shopactiontext.summery_actionmailtext", 
						emailvars);	
				Logger.log("Order Text: "+ ordertext);
				
				// EMail versenden
				Logger.log("sendEmail...");
				// to,from,subject,body
				if (MailService.sendEmail(customer.getEmail(), partner.getEmail(),  
						Const.SENDER_EMAIL, betrefftext, ordertext)) {
					os.confirmOrder(ordernummer);
					Logger.log("confirmOrder-ordernummer"+ ordernummer);
					session.removeAttribute(Const.ORDERLIST);
					Logger.log("success -> sendEmail, removed OrderList");
				    // Dispatch to Success view
					return mapping.findForward("success");
				} else
					return mapping.findForward("error");
			} else {
				Logger.log("Error keine Waren!");
				// Dispatch to Success view
				return mapping.findForward("error");
			}
			
			
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

		} catch (Exception e) {
			// Log stack trace
			Logger.log("SendFailedException: " + e);
			// Record the error
			errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(
					"error.unexpectedError", e.getMessage()));
		    request.setAttribute(Globals.ERROR_KEY, errors);
			// and forward to the error handling page (the form itself)
			return mapping.findForward("error");
		}
	}
}
