package de.hopfit.controller;

import java.util.Date;
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

import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;
import de.hopfit.model.Tarif;
import de.hopfit.resource.AdminService;
import de.hopfit.resource.LoginService;
import de.hopfit.resource.MailService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class StatistikAction extends Action {
/*
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		Logger.log(this.getClass().getSimpleName());

		// Use Struts actions to record business processing errors.
		ActionErrors errors = new ActionErrors();
		// Store this set in the request scope, in case we need to
		// send the ErrorPage view.
		saveMessages(request, errors);
		String partner_id = (String) request.getParameter(Const.PARTNER_ID);
		request.setAttribute(Const.PARTNER_ID, partner_id);

		try {
			Tarif tarifInfo = createTarifInfo(partner_id);
			Logger.log("success createInvoice");
			request.setAttribute(Const.INVOICE, tarifInfo);
			return mapping.findForward("success");
			// Handle any unexpected expections
		} catch (RuntimeException e) {
			// Log stack trace
			Logger.log("Fehler: " + e.getCause());
			e.printStackTrace();
			// Record the error
			errors.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage(
					"error.unexpectedError", e.getMessage()));
			request.setAttribute(Globals.ERROR_KEY, errors);

			// and forward to the error handling page (the form itself)
			return mapping.findForward("error");
		}
	}
*/
	public Tarif createStatistikInfo(String partner_id) {
		LoginService is = new LoginService();
		Tarif tarif = is.getTarif(new Integer(partner_id).intValue());

		if (tarif != null) {
			Logger.log("partner_id: " + partner_id);
			
			AdminService as = new AdminService();
			boolean bStatistikPrefs = as.isPrefsTableWrittenYesterday(new Integer(partner_id).intValue());
//			Logger.log("isPrefsTableWrittenYesterday() : " + bStatistikPrefs);
			boolean bStatistikItems = as.isItemsTableWrittenYesterday(new Integer(partner_id).intValue());
//			Logger.log("isItemsTableWrittenYesterday() : " + bStatistikItems);
			boolean bStatistikPartners = as.isPartnersTableWrittenYesterday(new Integer(partner_id).intValue());
//			Logger.log("isPartnersTableWrittenYesterday() : " + bStatistikPartners);
			
			if( (bStatistikPrefs == true) || (bStatistikItems == true)  || (bStatistikPartners == true) ){
				Partner partner = is.getPartner(new Integer(partner_id)
						.intValue());

				// EMail statistik Versandt
//				Locale locale = Locale.GERMANY;
				Locale locale = new Locale(partner.getPartner_language());
				// web-app_xx.properties
				MessageResources resources = MessageResources
						.getMessageResources("web-app");

				// EMail Tarifinfo Text
				Object[] emailvars = { partner_id,
						bStatistikPrefs, 
						bStatistikItems,
						bStatistikPartners,
						Const.TXT_TITLE};
				
				String text = resources.getMessage(locale,
						"shopactiontext.statistik_actionmailtext", emailvars);
				String subject = resources.getMessage(locale,
						"shopactiontext.statistik_actionsubjecttext")
						+ " " + Const.TXT_TITLE;
				Logger.log("Subject Text: " + subject);
				Logger.log("Statistik Text: " + text);
				MailService.sendEmailThread(Const.SENDER_EMAIL,
						Const.SENDER_EMAIL, Const.SENDER_EMAIL, subject, text);
				Logger.log("Statistik created for Partner: " + partner_id);
			}
		}
		return tarif;
	}
}
