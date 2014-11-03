/*
 * Created on 18.03.2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.model;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.struts.upload.FormFile;

import de.hopfit.util.Const;
import de.hopfit.util.Logger;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class Prefs {

	private String   bgcolor = Const.PREF_BGCOLOR;
	private String   infotext;
	private String   bestelltext;
	private String   summerytext;
	private String   agb;
	private String   shop_open;
	private FormFile ff;
	private String   minorderamount;
	private String   deliverfee;
	private String   currency;
    private String show_deliverfee;
    private String show_minorderamount;
    private String show_delivery;
    private String show_pickup;
    private String show_deliverkind_not_applicable;
    private String show_transfer;
    private String show_cash;

	/**
	 * @param bgcolor
	 * @param url
	 */
	public Prefs(String bgcolor, String shop_open, FormFile ff,
			String infotext, String bestelltext, String summerytext, String agb,
			String currency, String minorderamount, String deliverfee,
	        String show_deliverfee, String show_minorderamount, String show_delivery, String show_pickup,
	        String show_deliverkind_not_applicable, String show_transfer, String show_cash) {
		this.infotext = infotext;
		this.bestelltext = bestelltext;
		this.summerytext = summerytext;
		this.agb = agb;
		this.bgcolor = bgcolor;
		this.shop_open = shop_open;
		this.ff = ff;
		this.minorderamount = minorderamount;
		this.deliverfee = deliverfee;
		this.currency = currency;
        this.show_deliverfee = show_deliverfee;
        this.show_minorderamount = show_minorderamount;
        this.show_delivery = show_delivery;
        this.show_pickup = show_pickup;
        this.show_deliverkind_not_applicable = show_deliverkind_not_applicable;
        this.show_transfer = show_transfer;
        this.show_cash = show_cash;
	}
	public Prefs()
	{//	super();
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
		return agb;
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

	/**
	 * @return
	 */
	public String getDeliverfee() {
	  	String s = deliverfee.replace(',','.');
//		try {
//			DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
//			s =  df.format(Double.parseDouble(s));
////			String ret =  df.format(Double.parseDouble(s));
//		//	Logger.log("getDeliverfee:"+ret);
//		} catch (NumberFormatException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	  	return s;
	}

	public void setDeliverfee(String deliverfee) {
		this.deliverfee = deliverfee;
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
	 * @return Returns the minorderamount.
	 */
	public String getMinorderamount() {

	  	String s = minorderamount.replace(',','.');
//		try {
//			DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
//			s =  df.format(Double.parseDouble(s));
////			String ret =  df.format(Double.parseDouble(s));
//		//	Logger.log("getMinorderamount:"+ret);
//		} catch (NumberFormatException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	  	return s;

		//		DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT);
//		return df.format(Double.parseDouble(minorderamount));
		//return minorderamount;
	}

	/**
	 * @param minorderamount The minorderamount to set.
	 */
	public void setMinorderamount(String minorderamount) {
		this.minorderamount = minorderamount;
	}

	public byte [] getFileData() {
		byte []b = null;
		try {
			b = ff.getFileData();
		} catch (FileNotFoundException e) {
			Logger.log(e.toString());
			e.printStackTrace();
		} catch (IOException e) {
			Logger.log(e.toString());
			e.printStackTrace();
		}
		return b;
	}

	public String getFileName() {
		return ff.getFileName();
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
}
