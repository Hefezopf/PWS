package de.hopfit.view;

// Struts imports
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.util.MessageResources;

import de.hopfit.util.Const;


public class OrderAckForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private String name;
	private String str;
	private String plz;
	private String ort;
	private String email;
	private String tel;
	private String bemerkung;
	private String zahlungsart;
	private String deliverkind;
	
	
  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();
	
    MessageResources resources = (MessageResources)
    request.getSession().getServletContext().getAttribute("org.apache.struts.action.MESSAGE");
    String userLang = (String)request.getSession().getAttribute(Const.LANGUAGE); 
    Locale locale = new Locale(userLang);
    
    if(Const.TESTDATA){    
		name="Test Hopf";
		str="Klara-Ziegler-Bogen 53";
		plz="81739";
		ort="Test-München";
		email="markus@hopf-it.de";
		tel="089/95927841";
		zahlungsart=resources.getMessage(locale, "shoptext.order_acktransfer");
		deliverkind=resources.getMessage(locale, "shoptext.order_ackdelivery");
	}

    request.setAttribute("zahlungsart",zahlungsart);
    request.setAttribute("deliverkind",deliverkind);
    
    // Form verification
    if ( name == null || name.length() == 0 ) {
        errors.add("name", new ActionMessage("error.nameField.required"));
    }  

    if ( str == null || str.length() == 0 ) {
        errors.add("str", new ActionMessage("error.strField.required"));
    }  

    if ( plz == null || plz.length() == 0 ) {
        errors.add("plz", new ActionMessage("error.plzField.required"));
    }  

    if ( ort == null || ort.length() == 0 ) {
       errors.add("ort", new ActionMessage("error.ortField.required"));
    }  

    if ( (email == null ) || (email.length() == 0) || (!email.contains(".")) || (!email.contains("@"))) {
        errors.add("email", new ActionMessage("error.emailField.required"));
      }

    if ( tel == null  || tel.length() == 0) {
        errors.add("tel", new ActionMessage("error.telefonField.required"));
      }

    if ( zahlungsart == null || zahlungsart.length() == 0 ) {
        errors.add("zahlungsart", new ActionMessage("error.zahlungsartField.required"));
    }
    
    if ( deliverkind == null || deliverkind.length() == 0 ) {
        errors.add("deliverkind", new ActionMessage("error.deliverkindField.required"));
    }
    
    return errors;
  }

   	
  public void setName(String name) {
    this.name = name.trim();
  }
  public String getName() {
    return name;
  }

	/**
	 * @return Returns the deliverkind.
	 */
	public String getDeliverkind() {
		return deliverkind;
	}
	/**
	 * @param deliverkind The deliverkind to set.
	 */
	public void setDeliverkind(String art) {
		this.deliverkind = art;
	}
	/**
	 * @return Returns the bemerkung.
	 */
	public String getBemerkung() {
		return bemerkung;
	}
	/**
	 * @param bemerkung The bemerkung to set.
	 */
	public void setBemerkung(String bemerkung) {
		this.bemerkung = bemerkung;
	}
	/**
	 * @return Returns the email.
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email The email to set.
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return Returns the ort.
	 */
	public String getOrt() {
		return ort;
	}
	/**
	 * @param ort The ort to set.
	 */
	public void setOrt(String ort) {
		this.ort = ort;
	}
	/**
	 * @return Returns the plz.
	 */
	public String getPlz() {
		return plz;
	}
	/**
	 * @param plz The plz to set.
	 */
	public void setPlz(String plz) {
		this.plz = plz;
	}
	/**
	 * @return Returns the str.
	 */
	public String getStr() {
		return str;
	}
	/**
	 * @param str The str to set.
	 */
	public void setStr(String str) {
		this.str = str;
	}
	/**
	 * @return Returns the tel.
	 */
	public String getTel() {
		return tel;
	}
	/**
	 * @param tel The tel to set.
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * @return Returns the zahlungsart.
	 */
	public String getZahlungsart() {
		return zahlungsart;
	}
	/**
	 * @param zahlungsart The zahlungsart to set.
	 */
	public void setZahlungsart(String zahlungsart) {
		this.zahlungsart = zahlungsart;
	}
}
