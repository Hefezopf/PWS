package de.hopfit.resource;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import javax.sql.rowset.serial.SerialBlob;

import de.hopfit.model.BankAccount;
import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;
import de.hopfit.util.Const;
import de.hopfit.util.Date;
import de.hopfit.util.Logger;

public class AdminDAO extends DAO {

	private static final String UPDATE_PREFS_OPEN_SHOP = "UPDATE Prefs SET shop_open=? WHERE partner_id=?";

	private static final String GET_PARTNER = "SELECT email, partner_language, telefon, partnername, str, plz, ort, urlhomepage, ktoinhaber, bankname, blz, ktonr, iban, bic FROM Partners WHERE partner_id=?";

	private static final String UPDATE_PARTNER = "UPDATE Partners SET email=?, partner_language=?, telefon=?, partnername=?, str=?, plz=?, ort=?, urlhomepage=?, ktoinhaber=?, bankname=?, blz=?, ktonr=?, iban=?, bic=? WHERE partner_id=?";

	private static final String GET_PREFS = "SELECT bgcolor, infotext, bestelltext, summerytext, agb, shop_open, pic, currency, minorderamount, deliverfee, show_deliverfee, show_minorderamount, show_delivery, show_pickup, show_deliverkind_not_applicable, show_transfer, show_cash FROM Prefs WHERE partner_id=?";

	private static final String GET_PREFS_TODAY = "SELECT partner_id, date FROM Prefs WHERE partner_id=?";

	private static final String GET_ITEMS_TODAY = "SELECT partner_id, date FROM Items WHERE partner_id=?";

	private static final String GET_PARTNERS_TODAY = "SELECT partner_id, date FROM Partners WHERE partner_id=?";

	private static final String UPDATE_PREFS = "UPDATE Prefs SET bgcolor=?, infotext=?, bestelltext=?, summerytext=?, agb=?, shop_open=?, currency=?, date=?, minorderamount=?, deliverfee=?, show_deliverfee=?, show_minorderamount=?, show_delivery=?, show_pickup=?, show_deliverkind_not_applicable=?, show_transfer=?, show_cash=?, pic=? WHERE partner_id=?";

	private static final String UPDATE_PREFS_NO_IMAGE = "UPDATE Prefs SET bgcolor=?, infotext=?, bestelltext=?, summerytext=?, agb=?, shop_open=?, currency=?, date=?, minorderamount=?, deliverfee=?, show_deliverfee=?, show_minorderamount=?, show_delivery=?, show_pickup=?, show_deliverkind_not_applicable=?, show_transfer=?, show_cash=? WHERE partner_id=?";

	/**
	 * @param partner_id
	 * @param bOpen
	 * @return
	 */
	public boolean setOpenShop(int partner_id, boolean bOpen) {
		boolean result = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Const.getConnection();
			// shop_open=?, partner_id
			ps = con.prepareStatement(UPDATE_PREFS_OPEN_SHOP);
			if (bOpen == true)
				ps.setString(1, "on");
			else
				ps.setString(1, null);
			ps.setInt(2, partner_id);

			ps.executeUpdate();
			result = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	/**
	 * @param partner_id
	 * @param partner
	 * @return
	 */
	public boolean setPartnerData(int partner_id, Partner partner) {
		boolean result = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Const.getConnection();
			// email=?, partner_language=?, telefon=?, partnername=?, str=?,
			// plz=?, ort=?
			ps = con.prepareStatement(UPDATE_PARTNER);
			ps.setString(1, partner.getEmail());
			ps.setString(2, partner.getPartner_language());
			ps.setString(3, partner.getTelefon());
			ps.setString(4, partner.getPartnername());
			ps.setString(5, partner.getStr());
			ps.setString(6, partner.getPlz());
			ps.setString(7, partner.getOrt());
			ps.setString(8, partner.getUrlhomepage());
			ps.setString(9, partner.getBankaccount().getKontoinhaber());
			ps.setString(10, partner.getBankaccount().getBankname());
			ps.setString(11, partner.getBankaccount().getBlz());
			ps.setString(12, partner.getBankaccount().getKontonummer());
			ps.setString(13, partner.getBankaccount().getIban());
			ps.setString(14, partner.getBankaccount().getBic());
			ps.setInt(15, partner_id);

			ps.executeUpdate();
			result = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	/**
	 * @param partner_id
	 * @return
	 */
	public boolean isPrefsTableWrittenYesterday(int partner_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_PREFS_TODAY);
			ps.setInt(1, partner_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				// 2006-12-04
				if (isEqualsWithToday(rs.getString("date"))) {
					return true;
				}
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

	/**
	 * @param partner_id
	 * @return
	 */
	public boolean isItemsTableWrittenYesterday(int partner_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_ITEMS_TODAY);
			ps.setInt(1, partner_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				// 2006-12-04
				if (isEqualsWithToday(rs.getString("date"))) {
					return true;
				}
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

	/**
	 * @param partner_id
	 * @return
	 */
	public boolean isPartnersTableWrittenYesterday(int partner_id) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_PARTNERS_TODAY);
			ps.setInt(1, partner_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				if (isEqualsWithToday(rs.getString("date"))) {
					return true;
				}
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

	/**
	 * @return
	 */
     private boolean isEqualsWithToday(String str_db_date) {
		// 2006-12-04
		java.sql.Date db_datum = java.sql.Date.valueOf(str_db_date.substring(0,10));
//		Logger.log("db_datum : " + db_datum);
		Calendar cal = Calendar.getInstance();
		cal.roll(Calendar.DATE, -1);
		java.util.Date yesterday = cal.getTime();
//		Logger.log("yesterday : " + yesterday);

		if( (yesterday.getYear() == db_datum.getYear()) &&
				(yesterday.getMonth() == db_datum.getMonth()) &&
				(yesterday.getDate() == db_datum.getDate()) )
			return true;
		return false;
    }

	/**
	 * @param partner_id
	 * @return
	 */
	public Partner getPartnerData(int partner_id) {
		Partner partner = new Partner();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_PARTNER);
			ps.setInt(1, partner_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				// email, partner_language, telefon, partnername, str, plz, ort
				partner.setEmail(rs.getString("email"));
				partner.setPartner_language(rs.getString("partner_language"));
				partner.setTelefon(rs.getString("telefon"));
				partner.setPartnername(rs.getString("partnername"));
				partner.setStr(rs.getString("str"));
				partner.setPlz(rs.getString("plz"));
				partner.setOrt(rs.getString("ort"));
				partner.setUrlhomepage(rs.getString("urlhomepage"));
				partner.setBankaccount(new BankAccount(rs
						.getString("ktoinhaber"), rs.getString("bankname"), rs
						.getString("blz"), rs.getString("ktonr"), rs
						.getString("iban"), rs.getString("bic")));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return partner;
	}

	/**
	 * @param partner_id
	 * @param prefs
	 * @return
	 */
	public boolean setPrefs(int partner_id, Prefs prefs) {
		boolean result = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Const.getConnection();
			if (prefs.getFileName().equals(""))
				ps = con.prepareStatement(UPDATE_PREFS_NO_IMAGE);
			else
				ps = con.prepareStatement(UPDATE_PREFS);

			ps.setString(1, prefs.getBgcolor());
			ps.setString(2, prefs.getInfotext());
			ps.setString(3, prefs.getBestelltext());
			ps.setString(4, prefs.getSummerytext());
			ps.setString(5, prefs.getAgb());
			ps.setString(6, prefs.getShop_open());
			ps.setString(7, prefs.getCurrency());

			// 2000-10-10 05:00:00
			String s = Date.getCurrentDate();
			ps.setString(8, s);

			ps.setString(9, prefs.getMinorderamount());
			ps.setString(10, prefs.getDeliverfee());
			ps.setString(11, prefs.getShow_deliverfee());
			ps.setString(12, prefs.getShow_minorderamount());
			ps.setString(13, prefs.getShow_delivery());
			ps.setString(14, prefs.getShow_pickup());
			ps.setString(15, prefs.getShow_deliverkind_not_applicable());
			ps.setString(16, prefs.getShow_transfer());
			ps.setString(17, prefs.getShow_cash());

			// Keines neues Bild angegben
			// UPDATE_ITEM_NO_IMAGE
			if (prefs.getFileName().equals(""))
				ps.setInt(18, partner_id);
			else // UPDATE_ITEM
			{
				ps.setBlob(18, new SerialBlob(prefs.getFileData()));
				ps.setInt(19, partner_id);
			}

			ps.executeUpdate();
			result = true;
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		if (result) {
			// String s =
			// "C:\\jakarta-tomcat-5.5.7\\webapps\\html\\images\\customer\\";
			String s = Const.PATH_IMAGE_CUSTOMER + partner_id + "."
					+ Const.IMAGE_EXTENTION;
			File file = new File(s);

			if (!prefs.getFileName().equals("")) {
				file.delete();
			}
		}

		return result;
	}

	/**
	 * @param partner_id
	 * @param bWithPicture
	 * @return
	 */
	public Prefs getPrefs(int partner_id, boolean bWithPicture) {
		Prefs prefs = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_PREFS);
			ps.setInt(1, partner_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				prefs = new Prefs();
				prefs.setBgcolor(rs.getString("bgcolor"));
				prefs.setInfotext(rs.getString("infotext"));
				prefs.setBestelltext(rs.getString("bestelltext"));
				prefs.setSummerytext(rs.getString("summerytext"));
				prefs.setAgb(rs.getString("agb"));
				prefs.setShop_open(rs.getString("shop_open"));
				prefs.setCurrency(rs.getString("currency"));
				prefs.setMinorderamount(rs.getString("minorderamount"));
				prefs.setDeliverfee(rs.getString("deliverfee"));
				prefs.setShow_deliverfee(rs.getString("show_deliverfee"));
				prefs.setShow_minorderamount(rs
						.getString("show_minorderamount"));
				prefs.setShow_delivery(rs.getString("show_delivery"));
				prefs.setShow_pickup(rs.getString("show_pickup"));
				prefs.setShow_deliverkind_not_applicable(rs
						.getString("show_deliverkind_not_applicable"));
				prefs.setShow_transfer(rs.getString("show_transfer"));
				prefs.setShow_cash(rs.getString("show_cash"));
				try {
					byte[] image = rs.getBytes("pic");
					if (image != null) {
						String image_path = Const.PATH_IMAGE_CUSTOMER
								+ partner_id + "." + Const.IMAGE_EXTENTION;
						File file = new File(image_path);
						if (!file.exists() && bWithPicture) {
							FileOutputStream fos = null;
							try {
								// File erneut auf Platte schreiben
								fos = new FileOutputStream(image_path);
								fos.write(image);
								fos.flush();
							} catch (FileNotFoundException e) {
								Logger
										.log("Fehler bei: File erneut auf Platte schreiben");
								e.printStackTrace();
							}
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return prefs;
	}
}
