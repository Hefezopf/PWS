<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%@ page import="de.hopfit.model.Item" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="org.apache.struts.util.MessageResources" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%
	    MessageResources resources = (MessageResources)
	    request.getSession().getServletContext().getAttribute("org.apache.struts.action.MESSAGE");
	    String userLang = (String)request.getSession().getAttribute(Const.LANGUAGE);
		//if(userLang != null)
	    	Locale locale = new Locale(userLang);
		//else
	  //  	Locale locale = new Locale("en");
%>

<script language="JavaScript">
</script>

<table width="300" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr>
	 <td>
       <form name='order_ack' action='order_ack.do' method='POST'>
	     <html:errors />
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="20">
                  <tbody>
                    <tr>
                      <td class="shopHeaderRow1" align="left" valign="top" width="28%">
                       <b><!-- Abwicklungsdaten Ihrer Bestellung --><bean:message key="shoptext.order_acktitle"/></b>
					  </td>
                    </tr>
                     <tr>
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"></td>
                    </tr>
                  </tbody>
                </table>

          <table width="287" border='0' cellpadding='1' cellspacing='0'>
            <tr>
                  <td align="left" valign="top" class="shopHeaderRow2" width="40%">
				    <b><!-- Bestellerdaten --><bean:message key="shoptext.order_ackcustomerdata"/></b>
				  </td>
                </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Name --><bean:message key="shoptext.order_ackname"/>*
			  </td>
              <td width="60%"><input class="shopHeaderRow2" type='text' name='name' value='${param.name}' /></td>
            </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Strasse --><bean:message key="shoptext.order_ackstr"/>*
			  </td>
              <td><input class="shopHeaderRow2" type='text' name='str' value='${param.str}' />
              </td>
            </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Plz --><bean:message key="shoptext.order_ackzip"/>*
			  </td>
              <td><input class="shopHeaderRow2" type='text' name='plz' value='${param.plz}' /> </td>
            </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Ort --><bean:message key="shoptext.order_ackcity"/>*
			  </td>
              <td><input class="shopHeaderRow2" type='text' name='ort' value='${param.ort}' /> </td>
            </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Email --><bean:message key="shoptext.order_ackemail"/>*
			  </td>
              <td><input class="shopHeaderRow2" type='text' name='email' value='${param.email}' /></td>
            </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Telefon --><bean:message key="shoptext.order_acktel"/>*
			  </td>
              <td><input class="shopHeaderRow2" type='text' name='tel' value='${param.tel}' /></td>
            </tr>
            <tr>
              <td align="left" valign="top" class="shopHeaderRow2" width="40%">
			    <!-- Bemerkung&nbsp;&nbsp;&nbsp;&nbsp; --><bean:message key="shoptext.order_ackremark"/>
			  </td>
              <td><textarea class="shopHeaderRow2" cols="17" rows="2" name='bemerkung'>${param.bemerkung}</textarea></td>
            </tr>
          </table>

			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="30">
<!--                  <br>
 -->
				 <tr>
                   <td align="left" valign="top" class="shopHeaderRow2" width="28%"><b>
				     <!-- Zahlungsart --><bean:message key="shoptext.order_ackpaykind"/>*
					 </b>
				   </td>
                 </tr>

			     <% String art = (String) request.getParameter("zahlungsart"); %>
			<c:if test='${not empty sessionScope.prefs.show_transfer}'>
				<tr>
				  <td class="shopHeaderRow2" colspan="2"><input type="radio" name="zahlungsart" id="1"
					  <% if((art!=null) && (art.equals( resources.getMessage(locale, "shoptext.order_acktransfer") )))
						  { %>
                            checked
					  <% } %>
					  value="<bean:message key="shoptext.order_acktransfer"/>"><!-- &Uuml;berweisung --><bean:message key="shoptext.order_acktransfer"/>
				  </td>
				</tr>
			</c:if>

			<c:if test='${not empty sessionScope.prefs.show_cash}'>
				<tr>
				  <td class="shopHeaderRow2" colspan="2"><input type="radio" name="zahlungsart" id="2"
					  <% if((art!=null) && (art.equals( resources.getMessage(locale, "shoptext.order_ackcash") )))
						  { %>
                            checked
					  <% } %>
					  value="<bean:message key="shoptext.order_ackcash"/>"><!-- Barzahlung --><bean:message key="shoptext.order_ackcash"/>
				  </td>
				</tr>
			</c:if>

<tr>
<td colspan="2"><font size="-1"><hr></font></td>
</tr>
  </table>

              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
					<tr>
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"><b><!-- Lieferart --><bean:message key="shoptext.order_ackdeliverkind"/>*</b>
					  </td>
					</tr>

					<% String deliverart = (String) request.getParameter("deliverkind"); %>
				<c:if test='${not empty sessionScope.prefs.show_delivery}'>
					<tr>
					  <td class="shopHeaderRow2" width="45%"><input type="radio" name="deliverkind" id="1"
					  <% if((deliverart!=null) && (deliverart.equals( resources.getMessage(locale, "shoptext.order_ackdelivery") )))
						  { %>
                            checked
					  <% } %>
					  value="<bean:message key="shoptext.order_ackdelivery"/>"><!-- Lieferung --><bean:message key="shoptext.order_ackdelivery"/>
					  </td>
					</tr>
				</c:if>

				<c:if test='${not empty sessionScope.prefs.show_pickup}'>
					<tr>
					  <td class="shopHeaderRow2" width="45%"><input type="radio" name="deliverkind" id="2"
					  <% if((deliverart!=null) && (deliverart.equals( resources.getMessage(locale, "shoptext.order_ackpickup") )))
						  { %>
                            checked
					  <% } %>
					  value="<bean:message key="shoptext.order_ackpickup"/>"><!-- Selbstabholung --><bean:message key="shoptext.order_ackpickup"/>
					  </td>
					</tr>
				</c:if>

				<c:if test='${not empty sessionScope.prefs.show_deliverkind_not_applicable}'>
					<tr>
					  <td class="shopHeaderRow2" width="45%"><input type="radio" name="deliverkind" id="3"
					  <% if((deliverart!=null) && (deliverart.equals( resources.getMessage(locale, "shoptext.order_acknone") )))
						  { %>
                            checked
					  <% } %>
					  value="<bean:message key="shoptext.order_acknone"/>"><!-- none --><bean:message key="shoptext.order_acknone"/>
					  </td>
					</tr>
				</c:if>

					<tr align="left">
					  <td height="2" colspan="2" class="BeLieferzeitSchrift">
					  </td>
					</tr>
                </tbody>
			 </table>
		<br>

            <% DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT); %>
 			<input name="Submit" type='Submit' value='<bean:message key="shoptext.order_ackbtnsum"/>' />
            <span class="SpInfo">*<!-- ben&ouml;tigt -->&nbsp;<bean:message key="shoptext.order_ackrequred"/>
			</span> <br/>

<!--  			<input name="gesamt" type='hidden' value='${gesamt + sessionScope.prefs.deliverfee}' />
 -->
  			<input name="partner_id" type='hidden' value='${param.partner_id}' />

          </form>
	  </td>
    </tr>
  </tbody>
</table>