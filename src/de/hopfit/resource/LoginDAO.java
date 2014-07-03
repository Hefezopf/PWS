package de.hopfit.resource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import de.hopfit.model.BankAccount;
import de.hopfit.model.BasicTarif;
import de.hopfit.model.FreeTarif;
import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;
import de.hopfit.model.ProTarif;
import de.hopfit.model.Tarif;
import de.hopfit.util.Const;
import de.hopfit.util.Date;

public class LoginDAO extends DAO{
  private static final String GET_TARIF
  = "SELECT description, create_date, expire_date, baseprice, tx_rate, min_tx_price FROM Tarife WHERE partner_id=?";
  private static final String GET_PARTNER
  = "SELECT partner_id, username, passwort, loggedin, email, partner_language, telefon, partnername, str, plz, ort, urlhomepage, ktoinhaber, bankname, blz, ktonr, iban, bic FROM Partners WHERE partner_id=?";
  private static final String GET_PARTNER_PW
  = "SELECT partner_id, username, passwort FROM Partners WHERE username=? and passwort=?";
  private static final String GET_EXISTING_PARTNER
  = "SELECT partner_id, username FROM Partners WHERE username=?";
  private static final String GET_ALL_PARTNER_IDS
  = "SELECT partner_id, username FROM Partners";
  private static final String GET_PARTNER_NAME
  = "SELECT partnername FROM Partners WHERE partner_id=?";

  private static final String LOGIN_PARTNER
  = "UPDATE Partners SET loggedin='1' WHERE username=? and passwort=?";
  private static final String LOGOUT_PARTNER
  = "UPDATE Partners SET loggedin='0' WHERE username=?";

  private static final String CREATE_PARTNER
  = "INSERT INTO Partners (partner_id, username, passwort, loggedin, email, date)"
    + " VALUES (?, ?, ?, ?, ?, ?)";
  private static final String CREATE_PREFS
  = "INSERT INTO Prefs (pref_id, partner_id, bgcolor, infotext, bestelltext, summerytext, agb, shop_open, currency, date, minorderamount, pic)"
  + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  
  private static final String CREATE_TARIF
  = "INSERT INTO Tarife (tarif_id, partner_id, description, create_date, expire_date, baseprice, tx_rate, min_tx_price)"
  + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
  
  public int addPartner(String username, String password, String loggedin, 
  		String email)
  {
  	int partner_id = -1;
    Connection con = null;
    PreparedStatement ps = null;
    try {
      if(isUserExisting(username)>Const.INVALID_ID)
      	return partner_id;
      partner_id = getNextID("Partners");
      con = Const.getConnection();      
      ps = con.prepareStatement(CREATE_PARTNER);
      ps.setInt(1, partner_id);
      ps.setString(2, username);
      ps.setString(3, password);
      ps.setString(4, loggedin);
      ps.setString(5, email);
      
    	// 2000-10-10 05:00:00
    	String s = Date.getCurrentDate();

    	ps.setString(6, s); 	
      
      ps.executeUpdate();
    } catch (SQLException se) {
      se.printStackTrace();
      partner_id = -1;
    } finally {
      if(ps != null) {
        try { ps.close(); } catch (Exception e) { e.printStackTrace(); }
      }
      if(con != null) {
        try { con.close(); } catch (Exception e) { e.printStackTrace(); }
      }
    }
    return partner_id;
}
  
  public boolean addTarif(String partner_id, Tarif tarif)
  {
  	boolean result = true;
  	
    Connection con = null;
    PreparedStatement ps = null;
    try {
      int tarif_id = getNextID("Tarife");
      con = Const.getConnection();
      ps = con.prepareStatement(CREATE_TARIF);
      ps.setInt(1, tarif_id);
      ps.setString(2, partner_id);
      ps.setString(3, tarif.getDescription());
      ps.setString(4, tarif.getCreate_date());
      ps.setString(5, tarif.getExpire_date());
      ps.setDouble(6, tarif.getBaseprice());
      ps.setDouble(7, tarif.getTx_rate());
      ps.setDouble(8, tarif.getMin_tx_price());
            
      ps.executeUpdate();
    } catch (SQLException se) {
      se.printStackTrace();
      result = false;
	} finally {
      if(ps != null) {
        try { ps.close(); } catch (Exception e) { e.printStackTrace(); }
      }
      if(con != null) {
        try { con.close(); } catch (Exception e) { e.printStackTrace(); }
      }
    }
  	return result;
  }
  
  public boolean addPreferences(String partner_id, Prefs prefs)
  {
  	boolean result = true;
    Connection con = null;
    PreparedStatement ps = null;
    try {
      int id = getNextID("Prefs");
      con = Const.getConnection();
      ps = con.prepareStatement(CREATE_PREFS);
      ps.setInt(1, id);
      ps.setString(2, partner_id);
      ps.setString(3, prefs.getBgcolor());
      ps.setString(4, prefs.getInfotext());
      ps.setString(5, prefs.getBestelltext());
      ps.setString(6, prefs.getSummerytext());
      ps.setString(7, prefs.getAgb());
      ps.setString(8, prefs.getShop_open());
      ps.setString(9, prefs.getCurrency());
      
//      Calendar c = Calendar.getInstance();
    	// 2000-10-10 05:00:00
    	String s = Date.getCurrentDate();
//    		"" + c.get(Calendar.YEAR) + "-" +
//    	+ (1+c.get(Calendar.MONTH)) + "-" +
//    	+ c.get(Calendar.DAY_OF_MONTH) + " " +
//    	+ c.get(Calendar.HOUR_OF_DAY) + ":" +
//    	+ c.get(Calendar.MINUTE) + ":" +
//    	+ c.get(Calendar.SECOND);
//    	

    	ps.setString(10, s); 	
        ps.setString(11, prefs.getMinorderamount());
        ps.setNull(12, Types.BLOB);
            
      ps.executeUpdate();
    } catch (SQLException se) {
      se.printStackTrace();
      result = false;
	} finally {
      if(ps != null) {
        try { ps.close(); } catch (Exception e) { e.printStackTrace(); }
      }
      if(con != null) {
        try { con.close(); } catch (Exception e) { e.printStackTrace(); }
      }
    }
    return result;
}
  
   
  public boolean isValidPassword(String username, String password)
  {
    boolean result = false;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
//      Logger.log("LoginDAO:isValidPassword()");
      con = Const.getConnection();
      ps = con.prepareStatement(GET_PARTNER_PW);
      ps.setString(1, username);
      ps.setString(2, password);
      rs = ps.executeQuery();
      while(rs.next()) {
      	result = true;
      }
    } catch (SQLException se) {
      se.printStackTrace();
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
  	return result;
  }  
  
  public int isUserExisting(String username)
  {
//    Logger.log("LoginDAO:isUserExisting()username="+username);
    int result = Const.INVALID_ID;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
      con = Const.getConnection();
      if(con==null)
    	  return result;
      ps = con.prepareStatement(GET_EXISTING_PARTNER);
      ps.setString(1, username);
      rs = ps.executeQuery();    
      
      while(rs.next()) {
      	int partner_id = rs.getInt("partner_id");
      	if(partner_id > Const.INVALID_ID)
      		result = partner_id;
      }
    } catch (SQLException se) {
      se.printStackTrace();
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
  	return result;
  }
  
  public Partner getPartner(int partner_id)
  {
    Partner partner = null;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
    //  System.out.println("LoginDAO:getPartner():partner_id="+partner_id);
      con = Const.getConnection();
      ps = con.prepareStatement(GET_PARTNER);
      ps.setInt(1, partner_id);
      rs = ps.executeQuery();
      while(rs.next()) {
      	partner = new Partner(rs.getString("partner_id"),
					rs.getString("username"),
					rs.getString("passwort"),
					rs.getString("loggedin"),
					rs.getString("email"),
					rs.getString("partner_language"),
					rs.getString("telefon"),
					rs.getString("partnername"),
					rs.getString("str"),
					rs.getString("plz"),
					rs.getString("ort"),
		            rs.getString("urlhomepage"),
					new BankAccount(rs.getString("ktoinhaber"),
									rs.getString("bankname"),	
									rs.getString("blz"),
									rs.getString("ktonr"),
									rs.getString("iban"),
      								rs.getString("bic")));
      	      }
    } catch (SQLException se) {
      se.printStackTrace();
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
  	return partner;
  }
  
public Tarif getTarif(int partner_id)
{
	Tarif tarif = null;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
      con = Const.getConnection();
      ps = con.prepareStatement(GET_TARIF);
      ps.setInt(1, partner_id);
      rs = ps.executeQuery();
      while(rs.next()) {
      	String desc_shoptarif = rs.getString("description");
      	if(desc_shoptarif.equals(Tarif.BASIC_TARIF_TEXT)){	
      		tarif = new BasicTarif(rs.getString("description"),
					rs.getString("create_date"),
					rs.getString("expire_date"),
					rs.getDouble("baseprice"),
					rs.getDouble("tx_rate"),
					rs.getDouble("min_tx_price"));
      	}else if(desc_shoptarif.equals(Tarif.PRO_TARIF_TEXT)){	
      		tarif = new ProTarif(rs.getString("description"),
					rs.getString("create_date"),
					rs.getString("expire_date"),
					rs.getDouble("baseprice"),
					rs.getDouble("tx_rate"),
					rs.getDouble("min_tx_price"));
      	}else{ // FREE
      		tarif = new FreeTarif(rs.getString("description"),
					rs.getString("create_date"),
					rs.getString("expire_date"),
					rs.getDouble("baseprice"),
					rs.getDouble("tx_rate"),
					rs.getDouble("min_tx_price"));
      	}
      }
    } catch (SQLException se) {
      se.printStackTrace();
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
  	return tarif;
  }
  
 

  public String getPartnerName(int partner_id)
  {
    String result = null;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
//      Logger.log("LoginDAO:getPartnerName():partner_id="+partner_id);
      con = Const.getConnection();
      ps = con.prepareStatement(GET_PARTNER_NAME);
      ps.setInt(1, partner_id);
      rs = ps.executeQuery();
      while(rs.next()) {
      	String name = rs.getString("partnername");
      	result = name;
      }
    } catch (SQLException se) {
      se.printStackTrace();
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
  	return result;
  }
  
  public int login(String username, String password)
  {
        int result = Const.INVALID_ID;
        Connection con = null;
        PreparedStatement queryStmt = null;
        PreparedStatement updateStmt = null;
        ResultSet rs = null;
        try {
            con = Const.getConnection();
            updateStmt = con.prepareStatement(LOGIN_PARTNER);
            updateStmt.setString(1, username);
            updateStmt.setString(2, password);
            updateStmt.executeUpdate();
            result = isUserExisting(username);
        }catch (SQLException se) {
          se.printStackTrace();
        } finally {
          if(rs != null) {
            try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
          }
          if(queryStmt != null) {
            try { queryStmt.close(); } catch (Exception e) { e.printStackTrace(); }
          }
          if(updateStmt != null) {
            try { updateStmt.close(); } catch (Exception e) { e.printStackTrace(); }
          }
          if(con != null) {
            try { con.close(); } catch (Exception e) { e.printStackTrace(); }
          }
        }

        return result;
   }
  
  public boolean logout(String username)
  {
        boolean result = false;
        Connection con = null;
        PreparedStatement queryStmt = null;
        PreparedStatement updateStmt = null;
        ResultSet rs = null;
        try {
            con = Const.getConnection();
            updateStmt = con.prepareStatement(LOGOUT_PARTNER);
            updateStmt.setString(1, username);
            updateStmt.executeUpdate();
            result = true;
        }catch (SQLException se) {
          se.printStackTrace();
        } finally {
          if(rs != null) {
            try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
          }
          if(queryStmt != null) {
            try { queryStmt.close(); } catch (Exception e) { e.printStackTrace(); }
          }
          if(updateStmt != null) {
            try { updateStmt.close(); } catch (Exception e) { e.printStackTrace(); }
          }
          if(con != null) {
            try { con.close(); } catch (Exception e) { e.printStackTrace(); }
          }
        }

        return result;
   }

  public String[][] getPartnerIds() {
  	String[][] s_array = new String[100][2];
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
      con = Const.getConnection();
      if(con==null)
    	  return null;
      ps = con.prepareStatement(GET_ALL_PARTNER_IDS);
      rs = ps.executeQuery();    
      
      int index = 0;
      while(rs.next()) {
      	int partner_id = rs.getInt("partner_id");
      	String username = rs.getString("username");
      	s_array[index][0] = ""+partner_id;
      	s_array[index][1] = username;
      	index++;
      }
    } catch (SQLException se) {
      se.printStackTrace();
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
  	
    return s_array;
  } 
  
}
