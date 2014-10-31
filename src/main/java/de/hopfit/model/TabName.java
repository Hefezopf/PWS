/*
 * Created on 18.12.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.model;

import de.hopfit.resource.AdminService;

/**
 * @author Hopf
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class TabName {
	
	private String tabHeader1 = "111";
	private String tabHeader2 = "222";
	private String []tabHeader;
	
	/**
	 * @return Returns the tabHeader.
	 */
	public String[] getTabHeader() {
		return tabHeader;
	}
	/**
	 * @param tabHeader The tabHeader to set.
	 */
	public void setTabHeader(String[] tabHeader) {
		this.tabHeader = tabHeader;
	}
	/**
	 * @return Returns the tabHeader1.
	 */
	public String getTabHeader1() {
		return tabHeader1;
	}
	/**
	 * @param tabHeader1 The tabHeader1 to set.
	 */
	public void setTabHeader1(String tabHeader1) {
		this.tabHeader1 = tabHeader1;
	}
	/**
	 * @return Returns the tabHeader2.
	 */
	public String getTabHeader2() {
		AdminService os = new AdminService();
		Prefs p = os.getPrefs(1, false);
		return p.getShop_open();
	}
	/**
	 * @param tabHeader2 The tabHeader2 to set.
	 */
	public void setTabHeader2(String tabHeader2) {
		this.tabHeader2 = tabHeader2;
	}
}
