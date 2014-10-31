/*
 * Created on 23.01.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.model;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import de.hopfit.util.Logger;


/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public abstract class Tarif {

	// Tarife
	public static final String FREE_TARIF_TEXT = "Free";
	public static final double FREE_TARIF_BASE_PRICE = 0.0; // €
	public static final double FREE_TARIF_TX_RATE = 0.0; // %
	public static final double FREE_TARIF_MIN_TX_PRICE = 0.0; // €
	
	public static final String BASIC_TARIF_TEXT = "Basic";
	public static final double BASIC_TARIF_BASE_PRICE = 0.0; // €
	public static final double BASIC_TARIF_TX_RATE = 1.0; // %
	public static final double BASIC_TARIF_MIN_TX_PRICE = 0.1; // €

	public static final String PRO_TARIF_TEXT = "Pro";
	public static final double PRO_TARIF_BASE_PRICE = 0.0; // €
	public static final double PRO_TARIF_TX_RATE = 1.0; // %
	public static final double PRO_TARIF_MIN_TX_PRICE = 0.2; // €
	
	
	protected String description;       
	protected String create_date;      
	protected String expire_date;      
	protected double baseprice;
	protected double tx_rate;     
	protected double min_tx_price; 
	// Dummy für Expression Language in JSPs
	protected String expired = "";
	
	protected Priv priv;
	

	public Tarif() {
		super();
		this.description = "";
		this.create_date = "";
		this.expire_date = "";
		this.baseprice = 0;
		this.tx_rate = 0;
		this.min_tx_price = 0;
		this.expired = "";
	}
	
	/**
	 * @param desc
	 * @param date
	 * @param baseprice
	 * @param tx_rate
	 * @param min_tx_price
	 */
	public Tarif(String description, String create_date, String expire_date, double baseprice, double tx_rate,
			double min_tx_price) {
		super();
		this.description = description;
		this.create_date = create_date;
		this.expire_date = expire_date;
		this.baseprice = baseprice;
		this.tx_rate = tx_rate;
		this.min_tx_price = min_tx_price;
	}
	

	
	
	/**
	 * Prüft, ob das expired datum des partnern erreicht ist
	 * @return null = expired, sonst = "not expired!"
	 */
	public String getExpired() {	
        Calendar now = Calendar.getInstance(); 
	    String arr[] = expire_date.split("-");
       	String arr2[] = arr[2].split(" ");
        int partner_year = new Integer(arr[0]).intValue();
        int partner_mm = new Integer(arr[1]).intValue();
        partner_mm = partner_mm-1; // fängt von 0 an zu zaählen!
        int partner_dd = new Integer(arr2[0]).intValue();      	

        GregorianCalendar partner_expire_date = new GregorianCalendar(partner_year, partner_mm, partner_dd);
//		Logger.log("partner_expire_date.getTime: " + partner_expire_date.getTime());
        if(partner_expire_date.before(new GregorianCalendar())){
        	return null; // abgelaufen!
        }else{
    		return "not expired!";
        }
//		Logger.log("partner_year: " + partner_year);
//		Logger.log("now.get(Calendar.YEAR): " + (now.get(Calendar.YEAR)));
//		Logger.log("now.get(Calendar.YEAR)+1: " + (now.get(Calendar.YEAR)+1));
//     	if(partner_year <= now.get(Calendar.YEAR)){
//		    if(partner_mm <= now.get(Calendar.MONTH)+1){
//				if(partner_dd <= now.get(Calendar.DAY_OF_MONTH)){				
//					// alert("Der Tarif ist abglaufen.\nLoggen Sie sich ein und updaten Sie Ihren Tarif unter Menüpunkt Status->Tarif.");
//					return null;
//				}
//			}	
//		}
//		return "not expired!";
	}
	

	public Priv getPriv() {
		return priv;
	}

	public void setPriv(Priv priv) {
		this.priv = priv;
	}

	/**
	 * @param expired The expired to set.
	 */
	public void setExpired(String expired) {
		this.expired = expired;
	}
	
public static String getExpiredDate(){
  	Calendar now = Calendar.getInstance();

  	String expire_date = "" + (now.get(Calendar.YEAR)+1) + "-" +
	+ (1+now.get(Calendar.MONTH)) + "-" +
	+ now.get(Calendar.DAY_OF_MONTH) + " " +
	+ now.get(Calendar.HOUR_OF_DAY) + ":" +
	+ now.get(Calendar.MINUTE) + ":" +
	+ now.get(Calendar.SECOND);	
	
	return expire_date;
}	
    /**
	 * @return Returns the baseprice.
	 */
	public double getBaseprice() {
		return baseprice;
	}


/**
	 * @param baseprice The baseprice to set.
	 */
	public void setBaseprice(double baseprice) {
		this.baseprice = baseprice;
	}
	/**
	 * @return Returns the create_date.
	 */
	public String getCreate_date() {
		return create_date;
	}
	/**
	 * @param create_date The create_date to set.
	 */
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	/**
	 * @return Returns the expire_date.
	 */
	public String getExpire_date() {
		return expire_date;
	}
	/**
	 * @param expire_date The expire_date to set.
	 */
	public void setExpire_date(String expire_date) {
		this.expire_date = expire_date;
	}
	/**
	 * @return Returns the desc.
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param desc The desc to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return Returns the min_tx_price.
	 */
	public double getMin_tx_price() {
		return min_tx_price;
	}
	/**
	 * @param min_tx_price The min_tx_price to set.
	 */
	public void setMin_tx_price(double min_tx_price) {
		this.min_tx_price = min_tx_price;
	}
	/**
	 * @return Returns the tx_rate.
	 */
	public double getTx_rate() {
		return tx_rate;
	}
	/**
	 * @param tx_rate The tx_rate to set.
	 */
	public void setTx_rate(double tx_rate) {
		this.tx_rate = tx_rate;
	}
}
