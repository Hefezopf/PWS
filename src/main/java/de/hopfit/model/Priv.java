package de.hopfit.model;

public abstract class Priv {

	// Konstanten
	public static final int PRIV_FREE_ALLOWED_AMOUNT_OF_ITEMS = 3;
	public static final int PRIV_BASIC_ALLOWED_AMOUNT_OF_ITEMS = 100;
	public static final int PRIV_PRO_ALLOWED_AMOUNT_OF_ITEMS = 1000;
	
	public Priv() {
		super();
	}
	
	public abstract int getErlaubteAnzahlItems(); 	
	public abstract boolean isFaxVersandt();
	
}
