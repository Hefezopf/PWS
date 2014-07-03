package de.hopfit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import de.hopfit.model.Prefs;
import de.hopfit.resource.AdminService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class PrefLoadAction extends Action {

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
	
	String pid = (String)session.getAttribute(Const.PARTNER_ID);
    if(pid == null)
    {
		Logger.log("partner id ist null!!");
        return mapping.findForward("notloggedin");	    	
    }
	
	AdminService as = new AdminService();
	int id = new Integer((String) session.getAttribute(Const.PARTNER_ID)).intValue();
	Prefs prefs = as.getPrefs(id, true);
	session.setAttribute(Const.PREFS, prefs);
	Logger.log("getCurrency=" + prefs.getCurrency());
	Logger.log("getDeliverfee=" + prefs.getDeliverfee());

	return mapping.findForward("success");

}

}
