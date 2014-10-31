package de.hopfit.view;

// Struts imports
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;


public class PartnerDataForm extends ActionForm {

  /**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
	  private String email;
	  private String partner_language;
	  private String telefon;
	  private String partnername;
	  private String str;
	  private String plz;
	  private String ort;
	  private String urlhomepage;
	  
	  private String kontoinhaber;
	  private String bank;
	  private String blz;
	  private String kontonummer;
	  private String iban;
	  private String bic;

  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();

    // Form verification
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

//    if ( str == null ) {
//        errors.add("str",
//  		 new ActionMessage("error.strField.required"));
//      }
    
    if ( urlhomepage.length() > 0 && !urlhomepage.startsWith("http://")) {
        errors.add("urlhomepage",
  		 new ActionMessage("error.urlhomepageField.required"));
      }

//
//    if ( plz == null ) {
//        errors.add("plz",
//  		 new ActionMessage("error.plzField.required"));
//      }
//
//    if ( ort == null ) {
//        errors.add("ort",
//  		 new ActionMessage("error.ortField.required"));
//      }

    return errors;
  }

  
	/**
	 * @return Returns the partner_language.
	 */
	public String getPartner_language() {
		return partner_language;
	}
	/**
	 * @param partner_language The partner_language to set.
	 */
	public void setPartner_language(String partner_language) {
		this.partner_language = partner_language;
	}
	
	/**
	 * @return Returns the bic.
	 */
	public String getBic() {
		return bic;
	}
	/**
	 * @param bic The bic to set.
	 */
	public void setBic(String bic) {
		this.bic = bic;
	}
	/**
	 * @return Returns the bank.
	 */
	public String getBank() {
		return bank;
	}
	/**
	 * @param bank The bank to set.
	 */
	public void setBank(String bank) {
		this.bank = bank;
	}
	/**
	 * @return Returns the blz.
	 */
	public String getBlz() {
		return blz;
	}
	/**
	 * @param blz The blz to set.
	 */
	public void setBlz(String blz) {
		this.blz = blz;
	}
	/**
	 * @return Returns the iban.
	 */
	public String getIban() {
		return iban;
	}
	/**
	 * @param iban The iban to set.
	 */
	public void setIban(String iban) {
		this.iban = iban;
	}
	/**
	 * @return Returns the kontoinhaber.
	 */
	public String getKontoinhaber() {
		return kontoinhaber;
	}
	/**
	 * @param kontoinhaber The kontoinhaber to set.
	 */
	public void setKontoinhaber(String kontoinhaber) {
		this.kontoinhaber = kontoinhaber;
	}
	/**
	 * @return Returns the kontonummer.
	 */
	public String getKontonummer() {
		return kontonummer;
	}
	/**
	 * @param kontonummer The kontonummer to set.
	 */
	public void setKontonummer(String kontonummer) {
		this.kontonummer = kontonummer;
	}
  /**
	 * @return Returns the urlhomepage.
	 */
	public String getUrlhomepage() {
		return urlhomepage;
	}
	/**
	 * @param urlhomepage The urlhomepage to set.
	 */
	public void setUrlhomepage(String urlhomepage) {
		this.urlhomepage = urlhomepage;
	}

	  public void setEmail(String email) {
	    this.email = email.trim();
	  }
	  public String getEmail() {
	    return email;
	  }

	  public void setTelefon(String telefon) {
	    this.telefon = telefon.trim();
	  }
	  public String getTelefon() {
	    return telefon;
	  }

		/**
		 * @return Returns the partnername.
		 */
		public String getPartnername() {
			return partnername;
		}
		/**
		 * @param partner The partner to set.
		 */
		public void setPartnername(String partnername) {
			this.partnername = partnername;
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
	

}
