package de.hopfit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import de.hopfit.model.Partner;
import de.hopfit.resource.AdminService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class PartnerDataLoadAction extends Action {

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

		try{
			
	    	String pid = (String)session.getAttribute(Const.PARTNER_ID);
		    if(pid == null)
		    {
		        return mapping.findForward("notloggedin");	    	
		    }
			
			AdminService as = new AdminService();
			int id = new Integer((String) session.getAttribute(Const.PARTNER_ID)).intValue();
			Partner partner = as.getPartnerData(id);
			session.setAttribute(Const.PARTNER_DATA, partner);
	
			return mapping.findForward("success");
	
		}
		catch(Exception e){
			e.printStackTrace();
			return mapping.findForward("error");
		}
	}
}
