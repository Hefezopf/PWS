package de.hopfit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import de.hopfit.resource.LoginService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;

public class LogoutAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    Logger.log(this.getClass().getSimpleName());
	HttpSession session = request.getSession();
	String user = (String)session.getAttribute(Const.USER);
    Logger.log("user="+ user);
    
	LoginService l = new LoginService();
	if(l.logout(user))
	{
		session.invalidate();
		return mapping.findForward("success");
	}
	else
	{ 
		return mapping.findForward("error");
	}
  }

}
