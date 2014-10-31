package de.hopfit.resource;

import de.hopfit.model.BasicTarif;
import de.hopfit.model.FreeTarif;
import de.hopfit.model.Item;
import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;
import de.hopfit.model.ProTarif;
import de.hopfit.model.Tarif;
import de.hopfit.util.Const;

public class LoginService {

	private LoginDAO dao;

	public LoginService() {
		this.dao = new LoginDAO();
	}

	public int login(String username, String password) {
		int partner_id = Const.INVALID_ID;

		if (dao.isUserExisting(username) > Const.INVALID_ID) {
			if (!dao.isValidPassword(username, password))
				return Const.INVALID_ID;
			partner_id = dao.login(username, password);
		} else
			partner_id = Const.INVALID_ID;

		return partner_id;
	}

	public Tarif getTarif(int partner_id) {
		return dao.getTarif(partner_id);
	}

	public boolean logout(String name) {
		boolean result = true;

		if (dao.isUserExisting(name) > Const.INVALID_ID) {
			if (!dao.logout(name))
				result = false;
		} else
			result = false;

		return result;
	}

	/**
	 * @param username
	 * @param password
	 * @param loggedin
	 * @param email
	 * @param shoptarif
	 * @return
	 */
	public int addPartner(String username, String password, String loggedin,
			String email, String shoptarif) {
		int partner_id = dao.addPartner(username, password, loggedin, email);
		if (partner_id > -1) {
			// Preferenzen setzen
			Prefs prefs = new Prefs(Const.PREF_BGCOLOR, Const.PREF_SHOP_ON, // Const.PREF_SHOP_OFF,
					null, Const.PREF_INFOTEXT, Const.PREF_BESTELLTEXT,
					Const.PREF_SUMMERYTEXT, Const.PREF_AGB,
					Const.PREF_CURRENCY, Const.PREF_MINORDERAMOUNT,
					Const.PREF_DELIVERFEE, null, null, null, null, null, null,
					null);
			dao.addPreferences("" + partner_id, prefs);

			// Tarif setzen
			Tarif tarif = null;
			if (shoptarif.equals(Tarif.BASIC_TARIF_TEXT)) {
				tarif = new BasicTarif();
			} else if (shoptarif.equals(Tarif.PRO_TARIF_TEXT)) {
				tarif = new ProTarif();
			} else { // FREE
				tarif = new FreeTarif();
			}
			dao.addTarif("" + partner_id, tarif);

			// Demo Item hinzufügen
			OrderService os = new OrderService(partner_id);
			Item i = new Item("Demo1", "0,01", "Demo2", "Demo3", null, "1", "on");
			os.insertItem(i);

		}
		return partner_id;
	}

	public String getPartnerName(int partner_id) {
		return dao.getPartnerName(partner_id);
	}

	public Partner getPartner(int partner_id) {
		return dao.getPartner(partner_id);
	}

	public boolean addTarif(String partner_id, Tarif tarif) {
		return dao.addTarif(partner_id, tarif);
	}

	public String[][] getPartnerIds() {
		return dao.getPartnerIds();
	}

}
