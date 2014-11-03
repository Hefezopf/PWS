package de.hopfit.controller;

//import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import de.hopfit.model.Prefs;
import de.hopfit.resource.AdminService;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;
import de.hopfit.view.PrefForm;

public class PrefSaveAction extends Action {

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

		PrefForm lf = (PrefForm) form;
		String infotext = lf.getInfotext();
		String bestelltext = lf.getBestelltext();
		String summerytext = lf.getSummerytext();
		String agb = lf.getAgb();
		String bgcolor = lf.getBgcolor();
		String shop_open = lf.getShop_open();
		String currency = lf.getCurrency();
		String minorderamount = lf.getMinorderamount();
		String deliverfee = lf.getDeliverfee();
        String show_deliverfee = lf.getShow_deliverfee();
        String show_minorderamount = lf.getShow_minorderamount();
        String show_delivery = lf.getShow_delivery();
        String show_pickup = lf.getShow_pickup();
        String show_deliverkind_not_applicable = lf.getShow_deliverkind_not_applicable();
        String show_transfer = lf.getShow_transfer();
        String show_cash = lf.getShow_cash();
		FormFile ff = lf.getMyRequestFile();

		Logger.log("minorderamount: " + minorderamount);

		String s_pid = (String) session.getAttribute(Const.PARTNER_ID);
		if (s_pid == null)
		{
			return mapping.findForward("notloggedin");
		}

		AdminService as = new AdminService();
		int partner_id = new Integer(s_pid);

		Prefs prefs = new Prefs(bgcolor, shop_open, ff, infotext,
				bestelltext, summerytext, agb, currency,
				minorderamount, deliverfee, show_deliverfee,
				show_minorderamount, show_delivery, show_pickup,
				show_deliverkind_not_applicable, show_transfer, show_cash);

		as.setPrefs(partner_id, prefs);
		session.setAttribute(Const.PREFS, prefs);

		FormFile formfile = lf.getMyRequestFile();
	    try {
	        //retrieve the file data
	        InputStream inputstream = formfile.getInputStream();
	    	//write the file to the file specified

	        OutputStream bos = new FileOutputStream(Const.PATH_IMAGE_CUSTOMER
	        		+ s_pid + "." + Const.IMAGE_EXTENTION);

	        int bytesRead = 0;
	        byte[] buffer = new byte[8192];
	        while ((bytesRead = inputstream.read(buffer, 0, 8192)) != -1)
	        {
	              bos.write(buffer, 0, bytesRead);
	        }
            bos.close();
            //close the stream
            inputstream.close();
        }
        catch (FileNotFoundException fnfe) {
        	fnfe.printStackTrace();
        	return mapping.findForward("error");
        }
        catch (IOException ioe) {
        	ioe.printStackTrace();
        	return mapping.findForward("error");
        }

        //destroy the temporary file created
        formfile.destroy();

		return mapping.findForward("success");
	}
}
