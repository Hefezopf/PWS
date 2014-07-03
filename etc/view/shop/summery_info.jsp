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
					  <b><!-- Infos f&uuml;r die Zusammenfassung --><bean:message key="shoptext.summery_infotitle"/></b>
					  </td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="88%"> 
                        <!-- Bitte best&auml;tigen Sie hier Ihre Bestellung.<br/>
                        Das Absenden der Bestelllung ist bindend und es kommt 
                        stillschweigend ein Kaufvertrag zustande. --><bean:message key="shoptext.summery_infotext"/>
                      </td>
                    </tr>
                  </tbody>
                </table></td>
            </tr>
          </tbody>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr> 
              <td align="left" valign="top" width="100%">
 			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                  <tbody>
                    <tr> 
                      <td class="shopHeaderRow1" align="left" valign="top" width="28%">
					    <b><!-- Abschlusstext --><bean:message key="shoptext.summery_summerytext"/></b>
					  </td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%">
					    ${sessionScope.prefs.summerytext}
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
                      <td align="right" valign="top" class="shopHeaderRow2" width="22%"> 
                        <hr>
                        <bean:message key="shoptext.ownlink"/>&nbsp;<a href="index.jsp" target="_blank" class="SpNameLink"><em><%=Const.TXT_TITLE%></em></a>
					  </td>
                    </tr>
                  </tbody>
                </table>
			  </td>
            </tr>
          </tbody>
        </table>
	  </td>
    </tr>
  </tbody>
</table></td>
<td></td></tr>
</tbody> </table>