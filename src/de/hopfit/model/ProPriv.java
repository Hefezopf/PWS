package de.hopfit.model;

public class ProPriv extends FreePriv{

	public ProPriv() {
		super();
	}

	public int getErlaubteAnzahlItems() {
		return PRIV_PRO_ALLOWED_AMOUNT_OF_ITEMS;
	}

	public boolean isFaxVersandt() {
		return true;
	}
	
}
