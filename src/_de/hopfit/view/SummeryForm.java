package de.hopfit.view;

// Struts imports
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;


public class SummeryForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private String shopagbs;
	
	
  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();
    
    if ( shopagbs == null ) {
        errors.add("shopagbs",
  		 new ActionMessage("error.agbsField.required"));
      }
    return errors;
  }
   
	/**
	 * @return Returns the shopagbs.
	 */
	public String getShopagbs() {
		return shopagbs;
	}
	/**
	 * @param shopagbs The shopagbs to set.
	 */
	public void setShopagbs(String shopagbs) {
		this.shopagbs = shopagbs;
	}
}
