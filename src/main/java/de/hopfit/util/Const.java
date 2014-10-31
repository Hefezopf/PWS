/*
 * Created on 18.03.2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.util;

import java.sql.Connection;
import java.sql.DriverManager;

import de.hopfit.timer.ContextThread;

/**
 * @author Hopf
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class Const {

	//
	// Konstanten für die Entwicklung
	// für lokales Deployment:
	// TESTDATA = true und
	// WEBRUN = false
	//

	// Hart kodierte Daten werden hinterlegt (Timer Intervalle)
	 public static final boolean TESTDATA = true;
//	public static final boolean TESTDATA = false;

	// Einstellung ob Local-Tomcat oder auf Web-Tomcat (Pfade)
//	public static final boolean WEBRUN = true;
	 public static final boolean WEBRUN = false;

	// Welche Persisierung wird verwendet HIBERNATE oder JDBC
	public static final boolean HIBERNATE = true;
	// public static final boolean HIBERNATE = false;

	
	//
	// Timer Variablen
	//
	public static long TIMER_INTERVAL = 1000 * 60 / 2; // 1/2 min

	public static final int START_PARTNER_ID = 100;

	public static final int END_PARTNER_ID = 220; // später hochzählen!!!

	//
	// Globale Variabeln für Listner
	//
	public static ContextThread invoiceTimer;

	public static ContextThread tarifTimer;

	public static ContextThread statistikTimer;

	public static ContextThread deployWSTimer;

	//
	// Path Variablen
	//
	public static String PATH_WEBSERVICE_DD;

	public static String URL_WEB_APP;

	public static String PATH_IMAGE_CUSTOMER;

	//
	// Rechnungs, Bank und Überweisungsdaten
	//
	public static final String INVOICE_INHABER = "Markus Hopf";

	public static final String INVOICE_BANK = "Citibank";

	public static final String INVOICE_BLZ = "300 20 900";

	public static final String INVOICE_KTO_NR = "1302681511";

	public static final String INVOICE_IBAN = "DE78300209001302681511";

	public static final String INVOICE_BIC = "CIPRDEDD";

	//
	// DB Settings
	//
	public static final String DB_URL = "jdbc:mysql://localhost/usr_web3999_1";

	public static final String DB_DRIVER = "org.gjt.mm.mysql.Driver";

	public static final String DB_WEB_USER = "web3999";

	public static final String DB_WEB_PW = "d27ZW1tT";

	public static final String DB_LOCAL_USER = "root";

	public static final String DB_LOCAL_PW = "root";
	
	//
	// DB Felderlängen
	// ACHTUNG: Das sind die Längen aus der DB, dem *.sql Script
	//
	
	// Artikel
	public static final int TILTLE_TEXT_LENGTH = 40;
	
	public static final int ITEM_NO_TEXT_LENGTH = 3;
	
	public static final int DESCRIPTION_TEXT_LENGTH = 100;
	
	public static final int DETAIL_DESCRIPTION_TEXT_LENGTH = 255;
		
	// Prefs
	public static final int INFO_TEXT_LENGTH = 150;
	
	public static final int BESTELL_TEXT_LENGTH = 150;
	
	public static final int SUMMERY_TEXT_LENGTH = 150;
	
	public static final int AGB_TEXT_LENGTH = 255;
	
	//
	// Masken Plausi
	//
	public static final int FILE_SIZE = 15000;

	//
	// Text in JSP Seiten und EMail
	//
	public static final String TXT_TITLE = "publicWEBshop.com";

	//
	// Allgemeine Konstanten
	//
	public static final String COPYRIGHT = "© Copyright 2005";

	public static final String PATH_TOMCAT_WEB_HOME = "/var/www";

	public static final String PATH_WEB_APP_WEB_HOME = "web3999/html/pws";

	public static final String PATH_TOMCAT_LOCAL_HOME = "C:\\jakarta-tomcat-5.5.7";

	public static final String PATH_WEB_APP_LOCAL_HOME = "webapps\\pws";

	public static final String IMAGE_EXTENTION = "gif";

	public static final String PREF_DELIVERFEE = "0.0";

	public static final String PREF_MINORDERAMOUNT = "0.0";

	public static final String PREF_CURRENCY = "";

	public static final String PREF_BGCOLOR = "FFFFFF";

	public static final String PREF_INFOTEXT = "";

	public static final String PREF_BESTELLTEXT = "";

	public static final String PREF_SUMMERYTEXT = "";

	public static final String PREF_AGB = "";

	public static final String PREF_SHOP_ON = "on";

	public static final String PREF_SHOP_OFF = null;

	public static final String PRICE_FORMAT = "###0.00";

	public static final int INVALID_ID = -1;
	
	public static final char JAVA_SCRIPT_ANFUEHRUNGSZEICHEN = '\'';
	
	public static final char ERSATZ_ANFUEHRUNGSZEICHEN = '`';

	//
	// EMail
	//
	
	// public static final String MAIL_SMTP_HOST = "mail.arcor.de";
	// public static final String MAIL_SMTP_HOST = "smtp.alturo.net";
	public static final String MAIL_SMTP_HOST = "smtp.publicwebshop.com";

	public static final String MAIL_SMTP_PORT = "25";

	// public static final String MAIL_USER = "m36953644-1";
	public static final String MAIL_USER = "web3999p1";

	public static final String MAIL_PW = "markus";

	public static final String MAIL_TRANSPORT_PROTOCOL = "smtp";

	// public static final String SENDER_EMAIL = "info@hopf-it.de";
	public static final String SENDER_EMAIL = "info@publicwebshop.com";

	
	// Session und Request Scope Konstanten
	//
	public static final String INVOICE = "invoice";

	public static final String LANGUAGE = "language";

	public static final String TARIF = "tarif";

	public static final String PREFS = "prefs";

	public static final String PARTNER = "partner";

	public static final String CUSTOMER = "customer";

	public static final String DELIVERKIND = "deliverkind";

	public static final String PAYMENT = "payment";

	public static final String PARTNER_DATA = "partner_data";

	public static final String PARTNERNAME = "partnername";

	public static final String PARTNER_ID = "partner_id";

	public static final String ITEM_NO = "item_no";

	public static final String VISIBLE = "visible";

	public static final String DESCRIPTION = "description";

	public static final String DETAILDESCRIPTION = "detaildescription";

	public static final String IMAGE = "image";

	public static final String ITEM_ID = "item_id";

	public static final String TITLE = "title";

	public static final String PRICE = "price";

	public static final String USER = "user";

	public static final String PASSWORD = "password";

	public static final String ORDERLIST = "orderlist";

	public static final String ITEMLIST = "itemlist";

	/**
	 * 
	 */
	public Const() {
		if (TESTDATA) {
			TIMER_INTERVAL = 1000 * 60 * 2; // 1/2 min
		} else {
			TIMER_INTERVAL = 1000 * 60 * 60 * 24; // täglich
		}

		if (WEBRUN) {
			PATH_WEBSERVICE_DD = PATH_TOMCAT_WEB_HOME + "/"
					+ PATH_WEB_APP_WEB_HOME + "/WEB-INF/"
					+ "DeploymentDescriptor.wsdd";
			URL_WEB_APP = "http://www.publicwebshop.com/pws";
			// URL_WEB_APP = "http://web3999.server39.mivitec.net/pws";
			PATH_IMAGE_CUSTOMER = PATH_TOMCAT_WEB_HOME + "/"
					+ PATH_WEB_APP_WEB_HOME + "/images/customer/";
			// Beispiel: /var/www/web3999/html/pws/images/customer/
		} else {
			PATH_WEBSERVICE_DD = PATH_TOMCAT_LOCAL_HOME + "\\"
					+ PATH_WEB_APP_LOCAL_HOME + "\\WEB-INF\\"
					+ "DeploymentDescriptor.wsdd";
			URL_WEB_APP = "http://localhost:8080/pws";
			PATH_IMAGE_CUSTOMER = PATH_TOMCAT_LOCAL_HOME + "\\"
					+ PATH_WEB_APP_LOCAL_HOME + "\\images\\customer\\";
			// Beispiel: C:\jakarta-tomcat-5.5.7\webapps\pws\images\customer\
		}
		Logger.log("*********************************************");
		Logger.log("WEBRUN=" + WEBRUN);
		Logger.log("TESTDATA=" + TESTDATA);
		Logger.log("TIMER_INTERVAL=" + TIMER_INTERVAL);
		Logger.log("PATH_IMAGE_CUSTOMER=" + PATH_IMAGE_CUSTOMER);
		Logger.log("*********************************************");
	}

	/**
	 * @return
	 */
//	public static Connection getConnection() {
//		Connection theConnection = null;
//		try {
//			Class.forName(DB_DRIVER);
//			// Verbindung zur Datenquelle (ODBC DSN-Name, z.B. "mysql")
//			if (WEBRUN)
//				theConnection = DriverManager.getConnection(DB_URL,
//						DB_WEB_USER, DB_WEB_PW);
//			else
//				theConnection = DriverManager.getConnection(DB_URL,
//						DB_LOCAL_USER, DB_LOCAL_PW);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return theConnection;
//	}
	
	/**
	 * @return
	 */
	public static Connection getConnection() {
		Connection theConnection = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// Verbindung zur Datenquelle (ODBC DSN-Name, z.B. "mysql")
//			if (WEBRUN)
				theConnection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
						"test_owner", "test");
//			else
//				theConnection = DriverManager.getConnection(DB_URL,
//						DB_LOCAL_USER, DB_LOCAL_PW);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return theConnection;
	}

}
