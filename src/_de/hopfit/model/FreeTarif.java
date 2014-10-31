package de.hopfit.model;

import java.util.Calendar;

import de.hopfit.util.*;

public class FreeTarif extends Tarif{

	public FreeTarif() {
		super();
		this.description = Tarif.FREE_TARIF_TEXT;
		this.create_date = Date.getCurrentDate();
		this.expire_date = getExpiredDate();
		this.baseprice = Tarif.FREE_TARIF_BASE_PRICE;
		this.tx_rate = Tarif.FREE_TARIF_TX_RATE;
		this.min_tx_price = Tarif.FREE_TARIF_MIN_TX_PRICE;
		this.priv = new FreePriv();
	}

	public FreeTarif(String description, String create_date, String expire_date, double baseprice, double tx_rate, double min_tx_price) {
		super(description, create_date, expire_date, baseprice, tx_rate, min_tx_price);
		this.priv = new FreePriv();
	}

	// monats Erster (max 2 Monate!!)
	public static String getExpiredDate(){
	  	Calendar now = Calendar.getInstance();
	  	String expire_date = null;
		
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH);
		int day = now.get(Calendar.DAY_OF_MONTH);
	
		if(day>=28){ // Februar!
			day = 28;  			
		}
		
		if(month==11){ // Dezember
			month = 0; // Januar
			year++;  			
		}
		else{
			month++;
		}
		
	  	expire_date = "" + year + "-" +
	  	+ (1+month) + "-" +
	  	+ day + " " +
	  	+ now.get(Calendar.HOUR_OF_DAY) + ":" +
	  	+ now.get(Calendar.MINUTE) + ":" +
	  	+ now.get(Calendar.SECOND);
       	System.out.println("expire_date=" + expire_date);
	  	
		return expire_date;
	}	
}
