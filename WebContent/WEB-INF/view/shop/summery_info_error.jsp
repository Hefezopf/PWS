<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.controller.*;" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr> 
      <td valign="top" height="201" style="padding: 1px;"> <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
          <tbody>
            <tr> </tr>
          </tbody>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr> 
              <td align="left" valign="top" width="100%"> <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                  <tbody>
                    <tr> 
                      <td class="shopHeaderRow1" align="left" valign="top" width="25%">
					    <b><!-- Fehler Infos f&uuml;r die Bestellung -->
						<bean:message key="shoptext.summery_info_errortitle"/></b>
					  </td>
                    </tr>
                    <tr> 
                      <td width="25%" height="59" align="left" valign="top" nowrap="nowrap" class="shopHeaderRow2">
					  <span align="left" valign="top" class="shopHeaderRow2" width="88%"> 
                          <!-- Es kann sein, dass Ihre Order aus folgenden<br>
                        Gr&uuml;nden nicht ausgef&uuml;hrt wurde:<br>
                          - Keine korrekte Email-Adresse<br>
                        - Keine Internetverbindung<br>
                          - Kein Email-Zugriff<br>
                          - Keinen Email-Account auf den System eingerichtet.<br>
                          Bitte versuchen Sie es erneut.<br>
                        Sollte Sie eine Best&auml;tigungsmail erhalten haben,<br>
                        so ist die Order erfolgreich gewesen.<br> -->
						<bean:message key="shoptext.summery_info_errordesc"/>                        
			          </span>						
                      </td>
                    </tr>
                  </tbody>
                </table>
			  </td>
            </tr>
          </tbody>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr> 
              <td align="left" valign="top" width="100%"> <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                  <tbody>
                    <tr> 
                      <td class="shopHeaderRow1" align="left" valign="top" width="28%">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%">&nbsp;</td>
                    </tr>
                  </tbody>
                </table></td>
            </tr>
          </tbody>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr> 
              <td align="left" valign="top" width="100%"> <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                  <tbody>
                    <tr> </tr>
                    <tr> </tr>
                    <tr> </tr>
                    <tr> 
                      <td align="right" valign="top" class="shopHeaderRow2" width="22%"> 
                        <hr>                    	 						    
                        <bean:message key="shoptext.ownlink"/>&nbsp;<a href="index.jsp" target="_blank" class="SpNameLink"><em><%=Const.TXT_TITLE%></em></a>
						</td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="22%"> 
                     </tr>
                  </tbody>
                </table></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table></td>
<td></td></tr>
</tbody> </table>