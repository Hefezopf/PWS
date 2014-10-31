package de.hopfit.model;

public class FreePriv extends Priv{

	public FreePriv() {
		super();
	}

	@Override
	public int getErlaubteAnzahlItems() {
		return PRIV_FREE_ALLOWED_AMOUNT_OF_ITEMS;
	}

	@Override
	public boolean isFaxVersandt() {
		return false;
	}
	
}
