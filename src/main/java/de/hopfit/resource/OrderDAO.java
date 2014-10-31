package de.hopfit.resource;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import javax.sql.rowset.serial.SerialBlob;

import de.hopfit.model.Item;
import de.hopfit.util.Const;
import de.hopfit.util.Date;
import de.hopfit.util.Logger;

public class OrderDAO extends DAO {

	private static final String GET_ITEM = "SELECT item_id, partner_id, title, price, description, detaildescription, item_no, visible, pic FROM Items WHERE partner_id=? and item_id=?";

	private static final String GET_ITEMS = "SELECT item_id, partner_id, title, price, description, detaildescription, item_no, visible, pic FROM Items WHERE partner_id=?";

	private static final String CREATE_ORDER = "INSERT INTO Orders (order_id, customername, partner_id, date, amount, str, plz, ort, email, tel, bemerkung, art)"
			+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	private static final String UPDATE_ORDER = "UPDATE Orders SET confirmed_date=? WHERE order_id=?";

	private static final String CREATE_ITEM = "INSERT INTO Items (item_id, partner_id, title, price, description, detaildescription, pic, date, item_no, visible)"
			+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	private static final String UPDATE_ITEM = "UPDATE Items SET title=?, price=?, description=?, detaildescription=?, item_no=?, date=?, visible=?, pic=? WHERE item_id=?";

	private static final String UPDATE_ITEM_NO_IMAGE = "UPDATE Items SET title=?, price=?, description=?, detaildescription=?, item_no=?, date=?, visible=? WHERE item_id=?";

	private static final String DELETE_ITEM = "DELETE from Items WHERE item_id=? and partner_id=?";

	public OrderDAO() {
	}

	public ArrayList<Item> getItemCollection(int partner_id) {
		ArrayList<Item> items = new ArrayList<Item>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_ITEMS);
			ps.setInt(1, partner_id);

			rs = ps.executeQuery();
			while (rs.next()) {
				Item item = new Item(rs.getInt("item_id"), rs
						.getInt("partner_id"), rs.getString("title"), rs
						.getString("price"), rs.getString("description"), rs
						.getString("detaildescription"), null, rs
						.getString("item_no"), rs.getString("visible"));

				try {
					byte[] image = rs.getBytes("pic");
					String s = Const.PATH_IMAGE_CUSTOMER + partner_id + "_"
							+ rs.getInt("item_id") + "."
							+ Const.IMAGE_EXTENTION;
					File file = new File(s);
					if (image != null) {
						item.setImage(s);
						if ((!file.exists()) && (image != null)) {
							FileOutputStream fos = new FileOutputStream(s);
							fos.write(image);
							fos.flush();
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

				items.add(item);

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
		return items;
	}

	public Item getItem(int partner_id, int item_id) {
		Item item = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			con = Const.getConnection();
			ps = con.prepareStatement(GET_ITEM);
			ps.setInt(1, partner_id);
			ps.setInt(2, item_id);

			rs = ps.executeQuery();
			while (rs.next()) {
				item = new Item(rs.getInt("item_id"), rs.getInt("partner_id"),
						rs.getString("title"), rs.getString("price"), rs
								.getString("description"), rs
								.getString("detaildescription"), null, rs
								.getString("item_no"), rs.getString("visible"));

				Blob b = rs.getBlob("pic");
				if (b == null)
					item.setImage(null);
				else
					item.setImage("ein Bild vorhanden");

				try {
					byte[] image = rs.getBytes("pic");
					// String s =
					// "C:\\jakarta-tomcat-5.5.7\\webapps\\html\\images\\customer\\";
					String s = Const.PATH_IMAGE_CUSTOMER + partner_id + "_"
							+ rs.getInt("item_id") + "."
							+ Const.IMAGE_EXTENTION;
					File file = new File(s);
					if ((!file.exists()) && (image != null)) {
						FileOutputStream fos = new FileOutputStream(s);
						fos.write(image);
						fos.flush();
					}
				} catch (Exception e) {
					// Logger.log("fehler beim ItemImage schreiben!!!" + e);
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
		return item;
	}

	/**
	 * @param it
	 * @return
	 */
	public boolean saveItem(int partner_id, Item it) {
		boolean result = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Const.getConnection();

			// Keines neues Bild angegben
			if (it.getFormfile().getFileName().equals(""))
				ps = con.prepareStatement(UPDATE_ITEM_NO_IMAGE);
			else
				ps = con.prepareStatement(UPDATE_ITEM);

			ps.setString(1, it.getTitle());
			ps.setString(2, it.getDoublePrice());
			ps.setString(3, it.getDescription());
			ps.setString(4, it.getDetaildescription());
			ps.setString(5, it.getItem_no());

			String s = Date.getCurrentDate();
			ps.setString(6, s);
			ps.setString(7, it.getVisible());

			// Keines neues Bild angegben
			// UPDATE_ITEM_NO_IMAGE
			if (it.getFormfile().getFileName().equals(""))
				ps.setInt(8, it.getItemId());
			else // UPDATE_ITEM
			{
				ps.setBlob(8, new SerialBlob(it.getFormfile().getFileData()));
				ps.setInt(9, it.getItemId());
			}

			ps.executeUpdate();
			result = true;

		} catch (SQLException se) {
			se.printStackTrace();

		} catch (FileNotFoundException e) {
			Logger.log(e.toString());
			e.printStackTrace();
		} catch (IOException e) {
			Logger.log(e.toString());
			e.printStackTrace();

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
			String s = Const.PATH_IMAGE_CUSTOMER + partner_id + "_"
					+ it.getItemId() + "." + Const.IMAGE_EXTENTION;
			File file = new File(s);

			if (!it.getFormfile().getFileName().equals("")) {
				file.delete();
			}
		}
		return result;
	}

	public boolean deleteItem(int partner_id, int item_id) {
		boolean result = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Const.getConnection();
			ps = con.prepareStatement(DELETE_ITEM);
			ps.setInt(1, item_id);
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

		if (result) {
			String s = Const.PATH_IMAGE_CUSTOMER + partner_id + "_" + item_id
					+ "." + Const.IMAGE_EXTENTION;
			File file = new File(s);
			file.delete();
		}

		return result;
	}

	public int addOrder(String customername, int partner_id, String date,
			double amount, String str, String plz, String ort, String email,
			String tel, String bemerkung, String art) {
		Connection con = null;
		PreparedStatement ps = null;
		int order_id = -1;
		try {
			order_id = getNextID("Orders");
			con = Const.getConnection();
			ps = con.prepareStatement(CREATE_ORDER);
			ps.setInt(1, order_id);
			ps.setString(2, customername);
			ps.setInt(3, partner_id);
			ps.setString(4, date);
			ps.setDouble(5, amount);
			ps.setString(6, str);
			ps.setString(7, plz);
			ps.setString(8, ort);
			ps.setString(9, email);
			ps.setString(10, tel);
			ps.setString(11, bemerkung);
			ps.setString(12, art);
			ps.executeUpdate();
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
		return order_id;
	}

	public void insertItem(int partner_id, Item it) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			int item_id = getNextID("Items");
			con = Const.getConnection();
			ps = con.prepareStatement(CREATE_ITEM);
			ps.setInt(1, item_id);
			ps.setInt(2, partner_id);
			ps.setString(3, it.getTitle());
			ps.setDouble(4, new Double(it.getDoublePrice()).doubleValue());
			ps.setString(5, it.getDescription());
			ps.setString(6, it.getDetaildescription());

//			if (it.getFormfile() != null) {
				if ( (it.getFormfile() == null) || (it.getFormfile().getFileName().equals("")) )
					ps.setNull(7, Types.BLOB);
				else
					ps.setBlob(7,
							new SerialBlob(it.getFormfile().getFileData()));
//			}
//			else{
//				ps.setNull(7, Types.BLOB);
//			}
			
			String s = Date.getCurrentDate();
			ps.setString(8, s);
			ps.setString(9, it.getItem_no());
			ps.setString(10, it.getVisible());

			ps.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (FileNotFoundException e) {
			Logger.log(e.toString());
			e.printStackTrace();
		} catch (IOException e) {
			Logger.log(e.toString());
			e.printStackTrace();
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
	}

	public boolean confirmOrder(int order_id) {
		boolean result = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Const.getConnection();

			ps = con.prepareStatement(UPDATE_ORDER);

			// 2000-10-10 05:00:00
			String date = Date.getCurrentDate();
			ps.setString(1, date);
			ps.setInt(2, order_id);

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

}
