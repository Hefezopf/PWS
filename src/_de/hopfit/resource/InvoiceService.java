package de.hopfit.resource;

import java.sql.Types;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;

import de.hopfit.model.Invoice;
import de.hopfit.model.Order;
import de.hopfit.model.Tarif;
import de.hopfit.util.Const;
import de.hopfit.util.Date;
import de.hopfit.util.HibernateUtil;
import de.hopfit.util.Logger;

public class InvoiceService {

  private InvoiceDAO dao;

  public InvoiceService() {
    this.dao = new InvoiceDAO();
  }
  
  public Invoice createInvoice(int partner_id) {
  	
  	Invoice invoice = null;
  	
  	if(Const.HIBERNATE){
  		// Invoice daten sammeln
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        List order_list = session.createSQLQuery(
        		"select * from Orders where partner_id=" + partner_id + 
        		" and payed_date is null and confirmed_date is not null")
        .addEntity(Order.class)
        .list();
        
        if(!order_list.isEmpty()){        	
	        Iterator orders_it = order_list.iterator();  
	        double order_total = 0;
	        int amount=0;
			while ( orders_it.hasNext() ) {
				Order order = (Order)orders_it.next();
				order_total += order.getAmount();
				amount++;
			}       
			
		    // Tarif Info holen
		    LoginService ls = new LoginService();
		    Tarif tarif = ls.getTarif(partner_id);   	      
		    double invoice_total = tarif.getMin_tx_price() * amount;
			
	   		// Invoice Schreiben
	  		invoice = new Invoice(partner_id, Date.getCurrentDate(),
	  				null, order_total, amount, invoice_total);      
	        session.save(invoice);
	            
		    // Orders updaten	
	        Iterator orders_iterator = order_list.iterator();  
	        while ( orders_iterator.hasNext() ) {
				Order order = (Order)orders_iterator.next();
				order.setPayed_date(Date.getCurrentDate());
				session.save(order);
		    }       
	        
	   		// Invoice Senddate Schreiben
	        invoice.setSend_date(Date.getCurrentDate());
	        session.update(invoice);
        }
              
        session.getTransaction().commit();
  	}
  	else{
  		
	    invoice = dao.createInvoice(partner_id);
	    if(invoice != null)
	    	dao.markInvoiceAsSend(invoice.getInvoice_id());
	}	
    return invoice;
  }
  	
  	
//    Invoice invoice = dao.createInvoice(partner_id);
//    if(invoice != null)
//    	dao.markInvoiceAsSend(invoice.getInvoice_id());
//    return invoice;
  	
}



