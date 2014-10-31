/*
 * Created on 29.01.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.resource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import de.hopfit.util.Const;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public abstract class DAO {

	  private static final String UPDATE_ID
	  = "UPDATE ObjectIDs SET id=? WHERE table_name=?";
	  private static final String GET_NEXT_ID
	  = "SELECT id FROM ObjectIDs WHERE table_name=?";	 
	  private static final String CREATE_ID
	  = "INSERT INTO ObjectIDs (table_name, id) VALUES (?, ?)";

	  public int getNextID(String tableName) {
	    int id = 1;
	    Connection con = null;
	    PreparedStatement queryStmt = null;
	    PreparedStatement updateStmt = null;
	    ResultSet rs = null;
	    try {
	      con = Const.getConnection();
	      queryStmt = con.prepareStatement(GET_NEXT_ID);
	      queryStmt.setString(1, tableName);
	      rs = queryStmt.executeQuery();
	      if(rs.next()) {
	        id = rs.getInt("id");
	        updateStmt = con.prepareStatement(UPDATE_ID);
	        updateStmt.setInt(1, id+1);
	        updateStmt.setString(2, tableName);
	        updateStmt.executeUpdate();
	      } else {
	        updateStmt = con.prepareStatement(CREATE_ID);
	        updateStmt.setString(1, tableName);
	        updateStmt.setInt(2, id+1);
	        updateStmt.executeUpdate();
	      }
	    } catch (SQLException se) {
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

	    return id;
	  }	
}
