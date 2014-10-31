package de.hopfit.resource;

import java.util.ArrayList;

import de.hopfit.model.Item;
import de.hopfit.util.Date;

public class OrderService {

	private int partner_id;

	private ArrayList<Item> itemCollection = null;

	private OrderDAO dao = null;

	public OrderService(int partner_id) {
		this.partner_id = partner_id;
		this.dao = new OrderDAO();
	}

	public int getPartner() {
		return partner_id;
	}

	/**
	 * @param l
	 * @return
	 */
	public boolean saveItemCollection(ArrayList l) {
		boolean result = false;

		if (l != null) {
			for (int i = 0; i < l.size(); i++) {
				Item it = (Item) l.get(i);
				result = dao.saveItem(partner_id, it);
			}
		}
		return result;
	}

	public void saveItem(Item it) {
		dao.saveItem(partner_id, it);
	}

	public Item getItem(int item_id) {
		return dao.getItem(partner_id, item_id);
	}

	public void insertItem(Item it) {
		if (it != null) {
			dao.insertItem(partner_id, it);
		}
	}

	public void deleteItem(int item_id) {
		dao.deleteItem(partner_id, item_id);
	}

	public ArrayList<Item> getItemCollection() {
		if (itemCollection == null) {
			itemCollection = dao.getItemCollection(partner_id);
		}
		return itemCollection;
	}

	public int addOrder(String user, int partner, double amount, String str,
			String plz, String ort, String email, String tel, String bemerkung,
			String art) {
		// Store in the database
		// Calendar c = Calendar.getInstance();
		// 2000-10-10 05:00:00
		String s = Date.getCurrentDate();
		// "" + c.get(Calendar.YEAR) + "-" +
		// + (1+c.get(Calendar.MONTH)) + "-" +
		// + c.get(Calendar.DAY_OF_MONTH) + " " +
		// + c.get(Calendar.HOUR_OF_DAY) + ":" +
		// + c.get(Calendar.MINUTE) + ":" +
		// + c.get(Calendar.SECOND);
		//  	

		return dao.addOrder(user, partner, s, amount, str, plz, ort, email,
				tel, bemerkung, art);
	}

	public boolean confirmOrder(int order_id) {
		return dao.confirmOrder(order_id);
	}
}
