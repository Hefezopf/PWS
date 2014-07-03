package de.hopfit.resource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import de.hopfit.model.Invoice;
import de.hopfit.model.Tarif;
import de.hopfit.util.Const;
import de.hopfit.util.Date;
import de.hopfit.util.Logger;

public class InvoiceDAO extends DAO{

  private static final String GET_ORDERS_PAYED_DATE_IS_NULL
  = "SELECT amount FROM Orders where partner_id=? and payed_date is null and confirmed_date is not null";
  private static final String INSERT_INVOICE
  = "INSERT INTO Invoices (invoice_id, partner_id, create_date, send_date, order_total, order_amount, invoice_total)"
  + " VALUES (?, ?, ?, ?, ?, ?, ?)";
  private static final String UPDATE_ORDERS_PAYED_DATE
  = "UPDATE Orders SET payed_date=? WHERE partner_id=? and payed_date is null and confirmed_date is not null";
  private static final String UPDATE_INVOICES_SEND_DATE
  = "UPDATE Invoices SET send_date=? WHERE invoice_id=?";
  

  public Invoice createInvoice(int partner_id) {
		double invoice_total = 0;
		double order_total = 0;
		int order_amount = 0;
		Invoice invoice = null;
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    try {
	      // Orders lesen	
	      con = Const.getConnection();
	      ps = con.prepareStatement(GET_ORDERS_PAYED_DATE_IS_NULL);
	      ps.setInt(1, partner_id);               
	      rs = ps.executeQuery();
	      while(rs.next()) {
	    	  order_total += rs.getDouble("amount");
	    	  order_amount++;
	      }	      
            
	      if(order_amount > 0){ 	  
		      // Tarif Info holen
		      LoginService ls = new LoginService();
		      Tarif tarif = ls.getTarif(partner_id);   	      
		      invoice_total = tarif.getMin_tx_price() * order_amount;
		      
		      // Invoice schreiben
		      String current_date = Date.getCurrentDate();
		      int invoice_id = getNextID("Invoices");
		      ps = con.prepareStatement(INSERT_INVOICE);
		      ps.setInt(1, invoice_id);               
		      ps.setInt(2, partner_id);               
		      ps.setString(3, current_date);               
	          ps.setNull(4, Types.DATE);
		      ps.setDouble(5, order_total);                        
		      ps.setInt(6, order_amount);                        
		      ps.setDouble(7, invoice_total);                        
		      ps.executeUpdate();
	
		      invoice = new Invoice(invoice_id, partner_id, current_date,
		    		  			null, order_total, order_amount, invoice_total);

		      // Orders updaten	
	          ps = con.prepareStatement(UPDATE_ORDERS_PAYED_DATE);      
		      ps.setString(1, current_date);
		      ps.setInt(2, partner_id);
		      ps.executeUpdate();
	      }
	  	      
	      
	      
//	      con.commit();
	      
	    } catch (SQLException se) {
		  Logger.log(se.toString());
	      se.printStackTrace();
//		    try {
//				con.rollback();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
	    } finally {
	      if(rs != null) {
	        try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
	      }
	      if(ps != null) {
	        try { ps.close(); } catch (Exception e) { e.printStackTrace(); }
	      }
	      if(con != null) {
	        try { con.close(); } catch (Exception e) { e.printStackTrace(); }
	      }
	    }
	    return invoice;
		
	}
  

  public boolean markInvoiceAsSend(int invoice_id) {
		boolean ret = false;
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    try {
	      // Invoices updaten
		  con = Const.getConnection();
          ps = con.prepareStatement(UPDATE_INVOICES_SEND_DATE);      
	      ps.setString(1, Date.getCurrentDate());
	      ps.setInt(2, invoice_id);
	      ps.executeUpdate();
	      ret = true;
	    } catch (Exception se) {
		      System.out.println("se.getMessage()" + se.getMessage());
		      System.out.println("se.getStackTrace()" + se.getStackTrace());
	      ;
	    } finally {
	      if(rs != null) {
	        try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
	      }
	      if(ps != null) {
	        try { ps.close(); } catch (Exception e) { e.printStackTrace(); }
	      }
	      if(con != null) {
	        try { con.close(); } catch (Exception e) { e.printStackTrace(); }
	      }
	    }
	    return ret;	
	}
  
}
