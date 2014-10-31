/*
 * LoginServiceTest.java
 * JUnit based test
 *
 * Created on 5. März 2006, 14:28
 */

package de.hopfit.resource;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import de.hopfit.model.Partner;

/**
 *
 * @author Hopf
 */
public class LoginServiceTest extends TestCase {
    
    public LoginServiceTest(String testName) {
        super(testName);
    }

    protected void setUp() throws Exception {
    }

    protected void tearDown() throws Exception {
    }

    public static Test suite() {
        TestSuite suite = new TestSuite(LoginServiceTest.class);
        
        return suite;
    }

    /**
     * Test of login method, of class de.hopfit.resource.LoginService.
     */
    public void testLoginOK() {
        System.out.println("loginOK");
        
        String username = "1";
        String password = "markus";
        LoginService instance = new LoginService();
        
        int expResult = 1;
        int result = instance.login(username, password);
        assertEquals(expResult, result);
    }

      /**
     * Test of login method, of class de.hopfit.resource.LoginService.
     */
    public void testLoginNotOK() {
        System.out.println("loginNotOK");
        
        String username = "1";
        String password = "wrongPW";
        LoginService instance = new LoginService();
        
        int expResult = -1;
        int result = instance.login(username, password);
        assertEquals(expResult, result);
    }

    /**
     * Test of getTarif method, of class de.hopfit.resource.LoginService.
     */
    public void testGetTarif() {
        System.out.println("getTarif");
    }

    /**
     * Test of logout method, of class de.hopfit.resource.LoginService.
     */
    public void testLogout() {
        System.out.println("logout");
        
        String name = "1";
        LoginService instance = new LoginService();
        
        boolean expResult = true;
        boolean result = instance.logout(name);
        assertEquals(expResult, result);
    }

    /**
     * Test of addPartner method, of class de.hopfit.resource.LoginService.
     */
    public void testAddPartner() {
        System.out.println("addPartner");
    }

    /**
     * Test of getPartnerName method, of class de.hopfit.resource.LoginService.
     */
    public void testGetPartnerName() {
        System.out.println("getPartnerName");
        
        int partner_id = 1;
        LoginService instance = new LoginService();
        
        String expResult = "Demo Pizza";
        String result = instance.getPartnerName(partner_id);
        assertEquals(expResult, result);
    }

    /**
     * Test of getPartner method, of class de.hopfit.resource.LoginService.
     */
    public void testGetPartner() {
        System.out.println("getPartner");
        
        int partner_id = 0;
        LoginService instance = new LoginService();
        
        Partner expResult = null;
        Partner result = instance.getPartner(partner_id);
        assertEquals(expResult, result);
    }

    /**
     * Test of addTarif method, of class de.hopfit.resource.LoginService.
     */
    public void testAddTarif() {
        System.out.println("addTarif");
    }
    
}
