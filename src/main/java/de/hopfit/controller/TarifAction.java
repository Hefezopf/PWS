package de.hopfit.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import de.hopfit.model.BasicTarif;
import de.hopfit.model.FreeTarif;
import de.hopfit.model.ProTarif;
import de.hopfit.model.Tarif;
import de.hopfit.resource.LoginService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.TarifForm;


public class TarifAction extends Action {

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request,
                               HttpServletResponse response) {

    Logger.log(this.getClass().getSimpleName());
	HttpSession session = request.getSession();

    TarifForm tarifForm = (TarifForm)form;
        
	String partner_id = (String)session.getAttribute(Const.PARTNER_ID);
    if(partner_id == null)
    {
		Logger.log("partner id ist null!!");
        return mapping.findForward("notloggedin");	    	
    }
	
    try {    	    
        Tarif tarif = null;
      	String shoptarif = tarifForm.getTarif();      

      	if(shoptarif.equals(Tarif.BASIC_TARIF_TEXT)){	
      		tarif = new BasicTarif();
      	}else if(shoptarif.equals(Tarif.PRO_TARIF_TEXT)){	
      		tarif = new ProTarif();
      	}else{ // FREE
      		tarif = new FreeTarif();
      	}
      	
    	LoginService ls = new LoginService();
      	ls.addTarif(partner_id, tarif);
      	
		session.setAttribute(Const.TARIF, tarif);
		
        return mapping.findForward("success");
   	
    	
     // Handle any unexpected expections
    } catch (RuntimeException e) {
      // Log stack trace
      Logger.log("An unexpected error: " + e);
	  e.printStackTrace();
      // and forward to the error handling page (the form itself)
      return mapping.findForward("error");
    }
  }
}
