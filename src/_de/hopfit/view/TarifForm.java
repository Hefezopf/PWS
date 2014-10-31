package de.hopfit.view;

// Struts imports
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import de.hopfit.model.Tarif;


public class TarifForm extends ActionForm {

	  /**
	 * Comment for <code>serialVersionUID</code>
	 */
	  private static final long serialVersionUID = 3544956549702235698L;
      
	  private String tarif;
      
	  
  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();
	
  // Form verification
  if ( tarif == null ) {
    errors.add("tarif",
		 new ActionMessage("error.tarifField.required"));
  }
  else{
  	if(tarif.equals(Tarif.PRO_TARIF_TEXT))
  	    errors.add("noproyettarif",
  	 		 new ActionMessage("error.noproyettarifField.required"));
  }

    return errors;
  }

 	/**
	 * @return Returns the tarif.
	 */
	public String getTarif() {
		return tarif;
	}
	/**
	 * @param tarif The tarif to set.
	 */
	public void setTarif(String tarif) {
		this.tarif = tarif;
	}
}
