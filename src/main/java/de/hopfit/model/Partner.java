/*
 * Created on 31.03.2005
 *
 */
package de.hopfit.model;

/**
 * @author Hopf
 *
 */
public class Partner {

	private String partner_id;
	private String username;
	private String passwort;
	private String loggedin;
	private String email;
	private String partner_language;
	private String telefon;
	private String partnername;
	private String urlhomepage;
	private String str;
	private String plz;
	private String ort;
	private BankAccount bankaccount;
	/**
	 * 
	 */
	public Partner() {
		super();
	}
	/**
	 * @param partner_id
	 * @param username
	 * @param passwort
	 * @param loggedin
	 * @param email
	 * @param partner_language
	 * @param telefon
	 * @param partnername
	 * @param str
	 * @param plz
	 * @param ort
	 * @param bankaccount TODO
	 */
	public Partner(String partner_id, String username, String passwort,
			String loggedin, String email, String partner_language,
            String telefon, String partnername,
			String str, String plz, String ort, String urlhomepage, BankAccount bankaccount) {
		super();
		this.partner_id = partner_id;
		this.username = username;
		this.passwort = passwort;
		this.loggedin = loggedin;
		this.email = email;
		this.partner_language = partner_language;
		this.telefon = telefon;
		this.partnername = partnername;
		this.str = str;
		this.plz = plz;
		this.ort = ort;
		this.urlhomepage = urlhomepage;
		this.bankaccount = bankaccount;
	}

	/**
	 * @return Returns the bankaccount.
	 */
	public BankAccount getBankaccount() {
		return bankaccount;
	}
	/**
	 * @param bankaccount The bankaccount to set.
	 */
	public void setBankaccount(BankAccount bankaccount) {
		this.bankaccount = bankaccount;
	}
	/**
	 * @return Returns the email.
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email The email to set.
	 */
	public void setEmail(String email) {
		this.email = email;
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
	 * @return Returns the loggedin.
	 */
	public String getLoggedin() {
		return loggedin;
	}
	/**
	 * @param loggedin The loggedin to set.
	 */
	public void setLoggedin(String loggedin) {
		this.loggedin = loggedin;
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
	 * @return Returns the partner_id.
	 */
	public String getPartner_id() {
		return partner_id;
	}
	/**
	 * @param partner_id The partner_id to set.
	 */
	public void setPartner_id(String partner_id) {
		this.partner_id = partner_id;
	}
	/**
	 * @return Returns the partnername.
	 */
	public String getPartnername() {
		return partnername;
	}
	/**
	 * @param partnername The partnername to set.
	 */
	public void setPartnername(String partnername) {
		this.partnername = partnername;
	}
	/**
	 * @return Returns the passwort.
	 */
	public String getPasswort() {
		return passwort;
	}
	/**
	 * @param passwort The passwort to set.
	 */
	public void setPasswort(String passwort) {
		this.passwort = passwort;
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
	/**
	 * @return Returns the telefon.
	 */
	public String getTelefon() {
		return telefon;
	}
	/**
	 * @param telefon The telefon to set.
	 */
	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	/**
	 * @return Returns the username.
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username The username to set.
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return Returns the urlHomepage.
	 */
	public String getUrlhomepage() {
		return urlhomepage;
	}
	/**
	 * @param urlHomepage The urlHomepage to set.
	 */
	public void setUrlhomepage(String urlhomepage) {
		this.urlhomepage = urlhomepage;
	}
}
