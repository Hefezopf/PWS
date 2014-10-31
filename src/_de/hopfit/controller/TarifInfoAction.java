package de.hopfit.controller;

import java.util.Date;
import java.util.Locale;

import org.apache.struts.action.Action;
import org.apache.struts.util.MessageResources;

import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;
import de.hopfit.model.Tarif;
import de.hopfit.resource.AdminService;
import de.hopfit.resource.LoginService;
import de.hopfit.resource.MailService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class TarifInfoAction extends Action {
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
			Logger.log("success tarifInfo");
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
	public Tarif createTarifInfo(String partner_id) {
		LoginService is = new LoginService();
		Tarif tarif = is.getTarif(new Integer(partner_id).intValue());

		if (tarif != null) {
			Logger.log("partner_id: " + partner_id);
			Logger.log("tarif.getExpired(): " + tarif.getExpired());
			Logger.log("tarif.getExpire_date(): " + tarif.getExpire_date());
			
			AdminService as = new AdminService();
			Prefs prefs = as.getPrefs(new Integer(partner_id).intValue(), false);
			Logger.log("prefs.getShop_open() : " + prefs.getShop_open());
			
			// Wenn abgelaufen und shop offen -> Mail senden und Shop schliessen
			if( (tarif.getExpired() == null) && (prefs.getShop_open() != null) ){

				// Shop schliessen
				boolean bResult = as.setOpenShop(new Integer(partner_id).intValue(), false);

//				LoginService ls = new LoginService();
				Partner partner = is.getPartner(new Integer(partner_id)
						.intValue());

				// EMail Tarifinfo Versandt
				Locale locale = new Locale(partner.getPartner_language());
				// web-app_xx.properties
				MessageResources resources = MessageResources
						.getMessageResources("web-app");

				// EMail Tarifinfo Text
				Object[] emailvars = { partner.getPartnername(),
						tarif.getExpire_date(), 
						partner.getUsername(),
						partner.getPasswort(),
						tarif.getDescription(),
						Const.URL_WEB_APP,
						is.getPartner(new Integer(partner_id).intValue()).getPartner_id(),
						is.getPartner(new Integer(partner_id).intValue()).getPartner_language(),
						Const.TXT_TITLE};
				
				String text = resources.getMessage(locale,
						"shopactiontext.tarifinfo_actionmailtext", emailvars);
				String subject = resources.getMessage(locale,
						"shopactiontext.tarifinfo_actionsubjecttext")
						+ " " + Const.TXT_TITLE;
				Logger.log("Subject Text: " + subject);
				Logger.log("TarifInfo Text: " + text);
				MailService.sendEmailThread(partner.getEmail(),
						Const.SENDER_EMAIL, Const.SENDER_EMAIL, subject, text);
				Logger.log("TarifInfo created for Partner: " + partner_id);
			}
		}
		return tarif;
	}
}
