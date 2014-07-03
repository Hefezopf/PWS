package de.hopfit.resource;

import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;



public class AdminService {

  AdminDAO dao;

  public AdminService() {
    this.dao = new AdminDAO();
  }
  
  public boolean isPrefsTableWrittenYesterday(int partner_id)
  {
  	return dao.isPrefsTableWrittenYesterday(partner_id);
  }
  
  public boolean isItemsTableWrittenYesterday(int partner_id)
  {
  	return dao.isItemsTableWrittenYesterday(partner_id);
  }
  
  public boolean isPartnersTableWrittenYesterday(int partner_id)
  {
  	return dao.isPartnersTableWrittenYesterday(partner_id);
  }
  
  public boolean setOpenShop(int partner_id, boolean bOpen)
  {
  	return dao.setOpenShop(partner_id, bOpen);
  }
  
  public Partner getPartnerData(int partner_id)
  {
  	return dao.getPartnerData(partner_id);
  }
  
  public boolean setPartnerData(int partner_id, Partner p)
  {
  	return dao.setPartnerData(partner_id, p);
  }
  
  public Prefs getPrefs(int partner_id, boolean bWithPicture)
  {
  	return dao.getPrefs(partner_id, bWithPicture);
  }
  
  public boolean setPrefs(int partner_id, Prefs prefs)
  {
  	return dao.setPrefs(partner_id, prefs);
  }
}
