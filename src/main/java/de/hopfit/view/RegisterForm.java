package de.hopfit.view;

// Struts imports
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import de.hopfit.model.Tarif;


public class RegisterForm extends ActionForm {

	  /**
	 * Comment for <code>serialVersionUID</code>
	 */
	  private static final long serialVersionUID = 3544956549702235698L;
      
	  private String tarif;
      
	  private String user;
	  private String email;
//	  private String telefon;
	  private String password;
	  private String password2;
//	  private String urlhomepage;
//	  private String str;
//	  private String plz;
//	  private String ort;
//	  private String partnername;
      private String agbs;

	  
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

    // Form verification
    if ( user.length() == 0 ) {
        errors.add("user",
  		 new ActionMessage("error.userField.required"));
      }

    if ( (email.length() == 0) || (!email.contains(".")) || (!email.contains("@"))) {
        errors.add("email",
  		 new ActionMessage("error.emailField.required"));
      }

//    if ( telefon.length() == 0 ) {
//        errors.add("telefon",
//  		 new ActionMessage("error.telefonField.required"));
//      }
//    
//    if ( partnername.length() == 0 ) {
//        errors.add("partnername",
//  		 new ActionMessage("error.partnerField.required"));
//      }

    if ( password.length() == 0 ) {
        errors.add("password",
  		 new ActionMessage("error.passwordField.required"));
      }

    if ( !password.equals(password2) ) {
        errors.add("passwordequal",
  		 new ActionMessage("error.passwordequalField.required"));
      }

    if ( password2.length() == 0 ) {
        errors.add("password2",
  		 new ActionMessage("error.password2Field.required"));
      }

    if ( agbs == null ) {
        errors.add("agbs",
  		 new ActionMessage("error.agbsField.required"));
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
  public void setUser(String user) {
    this.user = user.trim();
  }
  public String getUser() {
    return user;
  }

  public void setEmail(String email) {
    this.email = email.trim();
  }
  public String getEmail() {
    return email;
  }


  public void setPassword(String password) {
    this.password = password.trim();
  }
  public String getPassword() {
    return password;
  }

  public void setPassword2(String password2) {
    this.password2 = password2.trim();
  }
  public String getPassword2() {
    return password2;
  }

	/**
	 * @return Returns the agbs.
	 */
	public String getAgbs() {
		return agbs;
	}
	/**
	 * @param agbs The agbs to set.
	 */
	public void setAgbs(String agbs) {
		this.agbs = agbs;
	}
	
}
