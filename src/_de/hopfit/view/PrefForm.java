package de.hopfit.view;

// Struts imports
import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

import de.hopfit.util.Const;


public class PrefForm extends ActionForm {

  /**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;	
	private String infotext;
	private String bestelltext;
	private String summerytext;
	private String agb;
	private String bgcolor;
	private String shop_open ;
	private FormFile myRequestFile;
	private String minorderamount;	 
	private String deliverfee;	 
	private String currency;	 
    private String show_deliverfee;
    private String show_minorderamount;
    private String show_delivery;
    private String show_pickup;
    private String show_deliverkind_not_applicable;
    private String show_transfer;
    private String show_cash;
	
  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();

    
    // Form verification
    if ( currency.equals("")) {
        errors.add("currency",
  		 new ActionMessage("error.currencyField.required"));
    }
      
    if ( bgcolor.length() != 6 ) {
        errors.add("bgcolor",
  		 new ActionMessage("error.bgcolorField.required"));
    }
    else
    {
    	try{
    		Integer.parseInt(bgcolor, 16);	
    	}catch(NumberFormatException e){
            errors.add("bgcolor", new ActionMessage("error.bgcolorField.required"));    		
    	}
    }
      
    if ( myRequestFile.getFileSize() > Const.FILE_SIZE ) {
        errors.add("picFile", new ActionMessage("error.picField.required", Const.FILE_SIZE));
    }
    if ( (!myRequestFile.getFileName().equals("")) && (!myRequestFile.getFileName().toUpperCase().contains(".GIF")) ) {
        errors.add("pickindFile", new ActionMessage("error.pickindField.required", Const.FILE_SIZE));
    }

    if ( minorderamount == null || minorderamount.length() == 0 ) {
        errors.add("minorderamount", new ActionMessage("error.minorderamountField.required"));
    }
    else {
    	try{  		  
	  	    DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
	  	    String s = minorderamount.replace(',','.');
	   		s = df.format(Double.parseDouble(s));
    	}catch(Exception e){
            errors.add("minorderamount", new ActionMessage("error.minorderamountField.required"));    		
    	}
    }
    
    if ( deliverfee == null || deliverfee.length() == 0 ) {
        errors.add("deliverfee", new ActionMessage("error.deliverfeeField.required"));
    }
    else {
    	try{  		  
	  	    DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
	  	    String s = deliverfee.replace(',','.');
	   		s = df.format(Double.parseDouble(s));
    	}catch(Exception e){
            errors.add("deliverfee", new ActionMessage("error.deliverfeeField.required"));    		
    	}
    }
    
    if(show_cash == null && show_transfer == null)
        errors.add("show_cashshow_transfer", new ActionMessage("error.show_cashshow_transfer.required"));
    if(show_delivery == null && show_pickup == null && show_deliverkind_not_applicable == null)
        errors.add("show_deliveryshow_pickupshow_deliverkind_not_applicable", new ActionMessage("error.show_deliveryshow_pickupshow_deliverkind_not_applicable.required"));
  
	if (infotext.length() > Const.INFO_TEXT_LENGTH) {
		errors.add("infotext", new ActionMessage("error.infoField.tooLong"));
	}
	if (bestelltext.length() > Const.BESTELL_TEXT_LENGTH) {
		errors.add("bestelltext", new ActionMessage("error.bestellField.tooLong"));
	}
	if (summerytext.length() > Const.SUMMERY_TEXT_LENGTH) {
		errors.add("summerytext", new ActionMessage("error.summeryField.tooLong"));
	}
	if (agb.length() > Const.AGB_TEXT_LENGTH) {
		errors.add("agb", new ActionMessage("error.agbField.tooLong"));
	}
    
    return errors;
  }
  
  
	/**
	 * @return Returns the show_cash.
	 */
	public String getShow_cash() {
		return show_cash;
	}
	/**
	 * @param show_cash The show_cash to set.
	 */
	public void setShow_cash(String show_cash) {
		this.show_cash = show_cash;
	}
	/**
	 * @return Returns the show_deliverfee.
	 */
	public String getShow_deliverfee() {
		return show_deliverfee;
	}
	/**
	 * @param show_deliverfee The show_deliverfee to set.
	 */
	public void setShow_deliverfee(String show_deliverfee) {
		this.show_deliverfee = show_deliverfee;
	}
	/**
	 * @return Returns the show_deliverkind_not_applicable.
	 */
	public String getShow_deliverkind_not_applicable() {
		return show_deliverkind_not_applicable;
	}
	/**
	 * @param show_deliverkind_not_applicable The show_deliverkind_not_applicable to set.
	 */
	public void setShow_deliverkind_not_applicable(
			String show_deliverkind_not_applicable) {
		this.show_deliverkind_not_applicable = show_deliverkind_not_applicable;
	}
	/**
	 * @return Returns the show_delivery.
	 */
	public String getShow_delivery() {
		return show_delivery;
	}
	/**
	 * @param show_delivery The show_delivery to set.
	 */
	public void setShow_delivery(String show_delivery) {
		this.show_delivery = show_delivery;
	}
	/**
	 * @return Returns the show_minorderamount.
	 */
	public String getShow_minorderamount() {
		return show_minorderamount;
	}
	/**
	 * @param show_minorderamount The show_minorderamount to set.
	 */
	public void setShow_minorderamount(String show_minorderamount) {
		this.show_minorderamount = show_minorderamount;
	}
	/**
	 * @return Returns the show_pickup.
	 */
	public String getShow_pickup() {
		return show_pickup;
	}
	/**
	 * @param show_pickup The show_pickup to set.
	 */
	public void setShow_pickup(String show_pickup) {
		this.show_pickup = show_pickup;
	}
	/**
	 * @return Returns the show_transfer.
	 */
	public String getShow_transfer() {
		return show_transfer;
	}
	/**
	 * @param show_transfer The show_transfer to set.
	 */
	public void setShow_transfer(String show_transfer) {
		this.show_transfer = show_transfer;
	}
	/**
	 * @return Returns the agb.
	 */
	public String getAgb() {
		return agb.replace(Const.JAVA_SCRIPT_ANFUEHRUNGSZEICHEN, Const.ERSATZ_ANFUEHRUNGSZEICHEN);
	}
	
	/**
	 * @param agb The agb to set.
	 */
	public void setAgb(String agb) {
		this.agb = agb;
	}
	
	/**
	 * @return Returns the summerytext.
	 */
	public String getSummerytext() {
		return summerytext;
	}
	
	/**
	 * @param summerytext The summerytext to set.
	 */
	public void setSummerytext(String summerytext) {
		this.summerytext = summerytext;
	}
	
	 public String getDeliverfee() {
	 	return deliverfee;
	}
	
	public void setDeliverfee(String deliverfee) {
		this.deliverfee = deliverfee;
	}

	public FormFile getMyRequestFile() {
		 return myRequestFile;
	}
		 
	public void setMyRequestFile(FormFile myRequestFile) {
		 this.myRequestFile = myRequestFile;
	}		

	/**
	 * @return Returns the minorderamount.
	 */
	public String getMinorderamount() {
		return minorderamount;
	}
	
	/**
	 * @param minorderamount The minorderamount to set.
	 */
	public void setMinorderamount(String minorderamount) {
		this.minorderamount = minorderamount;
	}
		/**
		 * @return Returns the bgcolor.
		 */
		public String getBgcolor() {
			return bgcolor;
		}
		/**
		 * @param bgcolor The bgcolor to set.
		 */
		public void setBgcolor(String bgcolor) {
			this.bgcolor = bgcolor;
		}
		/**
		 * @return Returns the url.
		 */

		/**
		 * @return Returns the shop_open.
		 */
		public String getShop_open() {
			return shop_open;
		}
		/**
		 * @param shop_open The shop_open to set.
		 */
		public void setShop_open(String shop_open) {
			this.shop_open = shop_open;
		}

		/**
	 * @return Returns the bestelltext.
	 */
	public String getBestelltext() {
		return bestelltext;
	}
	/**
	 * @param bestelltext The bestelltext to set.
	 */
	public void setBestelltext(String bestelltext) {
		this.bestelltext = bestelltext;
	}
	/**
	 * @return Returns the infotext.
	 */
	public String getInfotext() {
		return infotext;
	}
	/**
	 * @param infotext The infotext to set.
	 */
	public void setInfotext(String infotext) {
		this.infotext = infotext;
	}
	/**
	 * @return Returns the currency.
	 */
	public String getCurrency() {
		return currency;
	}
	/**
	 * @param currency The currency to set.
	 */
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	 
}
