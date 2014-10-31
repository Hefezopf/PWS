/*
 * Created on 05.01.2006
 *
 */
package de.hopfit.model;

/**
 * @author Hopf
 *
 */
public class CreditCard {

	private String kind;
	private String number;
	private String month;
	private String year;
	private String cvv;
	
	/**
	 * 
	 */
	public CreditCard() {
		super();
	}
	/**
	 * @param kind
	 * @param number
	 * @param month
	 * @param year
	 * @param cvv
	 */
	public CreditCard(String kind, String number, String month, String year,
			String cvv) {
		super();
		this.kind = kind;
		this.number = number;
		this.month = month;
		this.year = year;
		this.cvv = cvv;
	}
	/**
	 * @return Returns the cvv.
	 */
	public String getCvv() {
		return cvv;
	}
	/**
	 * @param cvv The cvv to set.
	 */
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	/**
	 * @return Returns the kind.
	 */
	public String getKind() {
		return kind;
	}
	/**
	 * @param kind The kind to set.
	 */
	public void setKind(String kind) {
		this.kind = kind;
	}
	/**
	 * @return Returns the month.
	 */
	public String getMonth() {
		return month;
	}
	/**
	 * @param month The month to set.
	 */
	public void setMonth(String month) {
		this.month = month;
	}
	/**
	 * @return Returns the number.
	 */
	public String getNumber() {
		return number;
	}
	/**
	 * @param number The number to set.
	 */
	public void setNumber(String number) {
		this.number = number;
	}
	/**
	 * @return Returns the year.
	 */
	public String getYear() {
		return year;
	}
	/**
	 * @param year The year to set.
	 */
	public void setYear(String year) {
		this.year = year;
	}
}
