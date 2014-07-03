/*
 * Created on 05.01.2006
 *
 */
package de.hopfit.model;

/**
 * @author Hopf
 *
 */
public class Customer {
	private String name;
	private String str;
	private String plz;
	private String ort;
	private String email;
	private String tel;
	private String bemerkung;


	/**
	 * 
	 */
	public Customer() {
		super();
	}
	/**
	 * @param name
	 * @param str
	 * @param plz
	 * @param ort
	 * @param email
	 * @param tel
	 */
	public Customer(String name, String str, String plz, String ort,
			String email, String tel, String bemerkung) {
		super();
		this.name = name;
		this.str = str;
		this.plz = plz;
		this.ort = ort;
		this.email = email;
		this.tel = tel;
		this.bemerkung = bemerkung;
	}

	/**
	 * @return Returns the bemerkung.
	 */
	public String getBemerkung() {
		return bemerkung;
	}
	/**
	 * @param bemerkung The bemerkung to set.
	 */
	public void setBemerkung(String bemerkung) {
		this.bemerkung = bemerkung;
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
	 * @return Returns the name.
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
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
	 * @return Returns the tel.
	 */
	public String getTel() {
		return tel;
	}
	/**
	 * @param tel The tel to set.
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}
}
