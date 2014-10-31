/*
 * Created on 15.03.2006
 *
 */
package de.hopfit.model;

/**
 * @author Hopf
 *
 */
public class Order {

	  private Integer order_id;
	  private String customername;
	  private int partner_id;
	  private String date;
	  private double amount;
	  private String str;
	  private String plz;
	  private String ort;
	  private String email;
	  private String tel;
      private String bemerkung;			  
	  private String art;
	  private String payed_date;
	  private String confirmed_date;
	
	  
	  
	/**
	 * 
	 */
	public Order() {
		super();
	}
	
	/**
	 * @param order_id
	 * @param customername
	 * @param partner_id
	 * @param date
	 * @param amount
	 * @param str
	 * @param plz
	 * @param ort
	 * @param email
	 * @param tel
	 * @param art
	 * @param payed_date
	 * @param confirmed_date
	 */
	public Order(String customername, int partner_id,
			String date, double amount, String str, String plz, String ort,
			String email, String tel, String art, String payed_date,
			String confirmed_date) {
		super();
		this.customername = customername;
		this.partner_id = partner_id;
		this.date = date;
		this.amount = amount;
		this.str = str;
		this.plz = plz;
		this.ort = ort;
		this.email = email;
		this.tel = tel;
		this.art = art;
		this.payed_date = payed_date;
		this.confirmed_date = confirmed_date;
	}
//	  `customername` char(30) NOT NULL default '',
//	  `partner_id` int(11) NOT NULL default '0',
//	  `date` datetime NOT NULL default '0000-00-00 00:00:00',
//	  `amount` double NOT NULL default '0',
//	  `str` char(30) default NULL,
//	  `plz` char(7) default NULL,
//	  `ort` char(30) default NULL,
//	  `email` char(30) default NULL,
//	  `tel` char(20) default NULL,
//	  `bemerkung` char(200) default NULL,
//	  `art` char(20) default NULL,
//	  `payed_date` datetime default NULL,
//	  `confirmed_date` datetime default NULL,


	/**
	 * @return Returns the amount.
	 */
	public double getAmount() {
		return amount;
	}
	/**
	 * @param amount The amount to set.
	 */
	public void setAmount(double amount) {
		this.amount = amount;
	}
	/**
	 * @return Returns the art.
	 */
	public String getArt() {
		return art;
	}
	/**
	 * @param art The art to set.
	 */
	public void setArt(String art) {
		this.art = art;
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
	 * @return Returns the confirmed_date.
	 */
	public String getConfirmed_date() {
		return confirmed_date;
	}
	/**
	 * @param confirmed_date The confirmed_date to set.
	 */
	public void setConfirmed_date(String confirmed_date) {
		this.confirmed_date = confirmed_date;
	}
	/**
	 * @return Returns the customername.
	 */
	public String getCustomername() {
		return customername;
	}
	/**
	 * @param customername The customername to set.
	 */
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	/**
	 * @return Returns the date.
	 */
	public String getDate() {
		return date;
	}
	/**
	 * @param date The date to set.
	 */
	public void setDate(String date) {
		this.date = date;
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
	 * @return Returns the order_id.
	 */
	public Integer getOrder_id() {
		return order_id;
	}
	/**
	 * @param order_id The order_id to set.
	 */
	private void setOrder_id(Integer order_id) {
		this.order_id = order_id;
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
	public int getPartner_id() {
		return partner_id;
	}
	/**
	 * @param partner_id The partner_id to set.
	 */
	public void setPartner_id(int partner_id) {
		this.partner_id = partner_id;
	}
	/**
	 * @return Returns the payed_date.
	 */
	public String getPayed_date() {
		return payed_date;
	}
	/**
	 * @param payed_date The payed_date to set.
	 */
	public void setPayed_date(String payed_date) {
		this.payed_date = payed_date;
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
