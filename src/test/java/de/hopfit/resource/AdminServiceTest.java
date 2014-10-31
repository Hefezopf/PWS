/*
 * AdminServiceTest.java
 * JUnit based test
 *
 * Created on 5. März 2006, 15:58
 */

package de.hopfit.resource;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import de.hopfit.model.Partner;
import de.hopfit.model.Prefs;

/**
 *
 * @author Hopf
 */
public class AdminServiceTest extends TestCase {
    
    public AdminServiceTest(String testName) {
        super(testName);
    }

    protected void setUp() throws Exception {
    }

    protected void tearDown() throws Exception {
    }

    public static Test suite() {
        TestSuite suite = new TestSuite(AdminServiceTest.class);
        
        return suite;
    }

    /**
     * Test of getPartnerData method, of class de.hopfit.resource.AdminService.
     */
    public void testGetPartnerData() {
        System.out.println("getPartnerData");
        
        int partner_id = 1;
        AdminService instance = new AdminService();
        
        Partner expResult = null;
        Partner result = instance.getPartnerData(partner_id);
        assertNotNull(result);
     }

    /**
     * Test of setPartnerData method, of class de.hopfit.resource.AdminService.
     */
    public void testSetPartnerData() {
        System.out.println("setPartnerData");
    }

    /**
     * Test of getPrefs method, of class de.hopfit.resource.AdminService.
     */
    public void testGetPrefs() {
        System.out.println("getPrefs");
        
        int partner_id = 1;
        AdminService instance = new AdminService();
        
        Prefs expResult = null;
        Prefs result = instance.getPrefs(partner_id, false);
        assertNotNull(result);
    }

    /**
     * Test of setPrefs method, of class de.hopfit.resource.AdminService.
     */
    public void testSetPrefs() {
        System.out.println("setPrefs");
     }
    
}
