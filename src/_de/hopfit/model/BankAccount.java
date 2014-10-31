/*
 * Created on 05.01.2006
 *
 */
package de.hopfit.model;

/**
 * @author Hopf
 *
 */
public class BankAccount {

	private String kontoinhaber;
	private String bankname;
	private String kontonummer;
	private String blz;
	private String iban;
	private String bic;

	
	/**
	 * 
	 */
	public BankAccount() {
		super();
	}
	/**
	 * @param bankname
	 * @param kontonummer
	 * @param blz
	 */
	public BankAccount(String kontoinhaber, String bankname, 
			String kontonummer, String blz, String iban, String bic) {
		super();
		this.kontoinhaber = kontoinhaber;
		this.bankname = bankname;
		this.kontonummer = kontonummer;
		this.blz = blz;
		this.iban = iban;
		this.bic = bic;
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
	 * @return Returns the bankname.
	 */
	public String getBankname() {
		return bankname;
	}
	/**
	 * @param bankname The bankname to set.
	 */
	public void setBankname(String name) {
		this.bankname = name;
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
	public void setKontonummer(String number) {
		this.kontonummer = number;
	}
}
