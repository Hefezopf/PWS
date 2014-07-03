package de.hopfit.model;

import java.math.BigDecimal;
import java.math.MathContext;

public class Invoice {
	
	private Integer    invoice_id;
	//private int    invoice_id;
	private int    partner_id;
	private String create_date;
	private String send_date;
	private double order_total;
	private int    order_amount;
	private double invoice_total;

	public Invoice(){}
	
	public Invoice(int partner_id, 
			String create_date, String send_date,
			double order_total, int order_amount, double invoice_total) {
		this.partner_id = partner_id;
		this.create_date = create_date;
		this.send_date = send_date;
		this.order_total = order_total;
		this.order_amount = order_amount;
		this.invoice_total = invoice_total;		
	}
	
	public Invoice(int invoice_id, int partner_id, 
			String create_date, String send_date,
			double order_total, int order_amount, double invoice_total) {
		this(partner_id, create_date, send_date,
			 order_total, order_amount, invoice_total);
		this.invoice_id = invoice_id;	
	}

	public String getCreate_date() {
		return this.create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public Integer getInvoice_id() {
		return this.invoice_id;
	}
	
//	public int getInvoice_id() {
//		return invoice_id;
//	}

//	public void setInvoice_id(int invoice_id) {
//		this.invoice_id = invoice_id;
//	}
	private void setInvoice_id(Integer invoice_id) {
		this.invoice_id = invoice_id;
	}

	public double getInvoice_total() {
		double temp = new BigDecimal(invoice_total, new MathContext(2) ).doubleValue();
		return temp;
	}

	public void setInvoice_total(double invoice_total) {
		this.invoice_total = invoice_total;
	}

	public int getOrder_amount() {
		return this.order_amount;
	}

	public void setOrder_amount(int order_amount) {
		this.order_amount = order_amount;
	}


	public double getOrder_total() {
		return order_total;
	}

	public void setOrder_total(double order_total) {
		this.order_total = order_total;
	}

	public int getPartner_id() {
		return partner_id;
	}

	public void setPartner_id(int partner_id) {
		this.partner_id = partner_id;
	}

	public String getSend_date() {
		return send_date;
	}

	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}

	

}
