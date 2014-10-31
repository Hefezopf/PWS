package de.hopfit.model;

import de.hopfit.util.Date;

public class ProTarif extends Tarif{

	public ProTarif() {
		super();
		this.description = Tarif.PRO_TARIF_TEXT;
		this.create_date = Date.getCurrentDate();
		this.expire_date = Tarif.getExpiredDate();
		this.baseprice = Tarif.PRO_TARIF_BASE_PRICE;
		this.tx_rate = Tarif.PRO_TARIF_TX_RATE;
		this.min_tx_price = Tarif.PRO_TARIF_MIN_TX_PRICE;	
		this.priv = new ProPriv();
	}

	public ProTarif(String description, String create_date, String expire_date, double baseprice, double tx_rate, double min_tx_price) {
		super(description, create_date, expire_date, baseprice, tx_rate, min_tx_price);
		this.priv = new ProPriv();
	}

}
