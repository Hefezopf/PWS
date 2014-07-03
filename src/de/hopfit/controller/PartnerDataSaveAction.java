package de.hopfit.controller;

//import java.io.ByteArrayOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import de.hopfit.model.BankAccount;
import de.hopfit.model.Partner;
import de.hopfit.resource.AdminService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.PartnerDataForm;

public class PartnerDataSaveAction extends Action {

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.apache.struts.action.Action#execute(org.apache.struts.action.ActionMapping,
	 *      org.apache.struts.action.ActionForm,
	 *      javax.servlet.http.HttpServletRequest,
	 *      javax.servlet.http.HttpServletResponse)
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

	    Logger.log(this.getClass().getSimpleName());
		HttpSession session = request.getSession();
		PartnerDataForm pdf = (PartnerDataForm) form;		

		try {
			String s_pid = (String) session.getAttribute(Const.PARTNER_ID);
			if (s_pid == null) {
				return mapping.findForward("notloggedin");
			}

			AdminService as = new AdminService();
			int partner_id = new Integer(s_pid);

			BankAccount bankaccount = new BankAccount(pdf.getKontoinhaber(),
					pdf.getBank(),pdf.getBlz(),pdf.getKontonummer(),
					pdf.getIban(),pdf.getBic());
			Partner partner = new Partner(s_pid, "", "", "", 
					pdf.getEmail(), pdf.getPartner_language(),
					pdf.getTelefon(),pdf.getPartnername(), pdf.getStr(),
					pdf.getPlz(), pdf.getOrt(), pdf.getUrlhomepage(),
					bankaccount);
			as.setPartnerData(partner_id, partner);
			session.setAttribute(Const.PARTNER_DATA, partner);
			
			return mapping.findForward("success");
		} catch (Exception e) {
			e.printStackTrace();
			return mapping.findForward("error");
		}
	}

}
