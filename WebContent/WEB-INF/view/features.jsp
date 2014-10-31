<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Priv" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
<!-- Beginn VP --> 
	<div class="vpf">
		<div class="vprubrikhead"><%-- Leistungen --%><bean:message key="maintext.leistungen.rubrik"/> 
          <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#000066">
				<tr>
					<td><img border="0" src="images/lquer.gif" height="1"></td>    	
				</tr>
			</table>
		</div>
		
		<p></p>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="5"> 
			<tr bgcolor="#F5F5F5">     	
			<td valign="top">
			<a name="de"></a>
			<div class="vpheadsub">
			  <%-- Leistungen - Wählen Sie Ihren individuellen Tarif --%><bean:message key="maintext.leistungen.head"/>
			</div>
              <div class="vpf">
				<img src="images/Cart.gif" border="0" align="left" vspace="5" hspace="5">	
				   <br/>
				    <%-- Je nach Tarif erhalten Sie unterscheidliche Leistungen, 
					die Sie zur Vermarktung Ihrer Produkte wählen können. 
					--%><bean:message key="maintext.leistungen.text1"/>
				   <br/><br/> <br/> 
				    
<table width="100%" cellpadding="2" cellspacing="1" border="0">
                          <tbody>
                            <tr>                        
                              <td width="372" valign="top" bgcolor="#000066" class="navhead"><b><%-- Eigenschaften --%><bean:message key="maintext.leistungen.table_leistungen_head1"/></b></td>
                              <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Free</b></td>
                              <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Basic</b></td>
                              <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Pro</b></td>
                            </tr>
							
                            <tr> 
                              <td width="372" valign="top" class="navsub"><%-- Erlaubte Artikelanzahl --%><bean:message key="maintext.leistungen.table_leistungen_text0"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><%= Priv.PRIV_FREE_ALLOWED_AMOUNT_OF_ITEMS %></td>
                              <td width="100" valign="top" class="navsub" align="right"><%= Priv.PRIV_BASIC_ALLOWED_AMOUNT_OF_ITEMS %></td>
                              <td width="100" valign="top" class="navsub" align="right"><%= Priv.PRIV_PRO_ALLOWED_AMOUNT_OF_ITEMS %></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="top" class="navsub"><%-- Abrechnungszeitraum --%><bean:message key="maintext.leistungen.table_leistungen_text1"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><%-- monatlich --%><bean:message key="maintext.leistungen.table_leistungen_text1_2"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><%-- monatlich --%><bean:message key="maintext.leistungen.table_leistungen_text1_3"/></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="top" class="navsub"><%-- Laufzeit --%><bean:message key="maintext.leistungen.table_leistungen_text2"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><%-- 1 Monat --%><bean:message key="maintext.leistungen.table_leistungen_text2_1"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><%-- 12 Monate --%><bean:message key="maintext.leistungen.table_leistungen_text2_2"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><%-- 12 Monate --%><bean:message key="maintext.leistungen.table_leistungen_text2_3"/></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Benutzerdaten einstellen --%><bean:message key="maintext.leistungen.table_leistungen_text3"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="middle" class="navsub"><%-- Farbschema wählen --%><bean:message key="maintext.leistungen.table_leistungen_text4"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Kopfgrafik und Logo ändern --%><bean:message key="maintext.leistungen.table_leistungen_text5"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="middle" class="navsub"><%-- WebShop öffnen/schliessen --%><bean:message key="maintext.leistungen.table_leistungen_text6"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Mindestbestellwert angeben --%><bean:message key="maintext.leistungen.table_leistungen_text7"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              
                      <td width="372" valign="middle" class="navsub"><%-- Liefergeb&uuml;hren angeben --%><bean:message key="maintext.leistungen.table_leistungen_text8"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Lieferart konfigurieren --%><bean:message key="maintext.leistungen.table_leistungen_text9"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="middle" class="navsub"><%-- Bezahlart konfigurieren --%><bean:message key="maintext.leistungen.table_leistungen_text10"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- AGB selbst anlegen --%><bean:message key="maintext.leistungen.table_leistungen_text11"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="middle" class="navsub"><%-- Info-Texte anlegen --%><bean:message key="maintext.leistungen.table_leistungen_text12"/></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Fax Versandt --%><bean:message key="maintext.leistungen.table_leistungen_text13"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="middle" class="navsub"><%-- SMS Versandt --%><bean:message key="maintext.leistungen.table_leistungen_text14"/></td>
                              <td width="100" valign="top" class="navsub" align="right">---</td>
                              <td width="100" valign="top" class="navsub" align="right">---</td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Kreditkarten Zahlung --%><bean:message key="maintext.leistungen.table_leistungen_text15"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" valign="middle" class="navsub"><%-- Artikelsuche --%><bean:message key="maintext.leistungen.table_leistungen_text16"/></td>
                              <td width="100" valign="top" class="navsub" align="right">---</td>
                              <td width="100" valign="top" class="navsub" align="right">---</td>
                              <td width="100" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                            <tr> 
                              <td width="372" bgcolor="#ffffff" valign="middle" class="navsub"><%-- Verschiedene Rubriken --%><bean:message key="maintext.leistungen.table_leistungen_text17"/></td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
                              <td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right"><img alt="" width="23" height="22" src="images/check.gif"></td>
                            </tr>
                          </tbody>
                        </table>
						
				  <br/><br/>
				  
 		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>
