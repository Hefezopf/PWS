<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%@ page import="de.hopfit.controller.*" %>
<%@ page import="de.hopfit.model.Item" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table width="300" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr> 
	 <td>  
       <form name='summery' action='summery.do' method='POST'>
	     <html:errors /> 		
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="20">
                  <tbody>
                    <tr>                      
						<td class="shopHeaderRow1" align="left" valign="top" width="28%">
						<b><!-- Lieferantendaten --><bean:message key="shoptext.summerysellerdata"/></b>
						</td>
                    </tr>
                     <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"></td>					  
                    </tr>
                  </tbody>
                </table>	 
				 	  						  
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                    <tr> 
                      <td width="25%" height="59" align="left" valign="top" nowrap="nowrap" class="shopHeaderRow2"> 
                        <img src='images/customer/<%=session.getAttribute(Const.PARTNER_ID)%>.gif' alt=''/> 
                        <br/></td>
                      <td align="left" valign="top" nowrap="nowrap" class="shopHeaderRow2" width="25%"> 
                        ${partner.partnername}<br/>
                        ${partner.str}<br/>
                        ${partner.plz}&nbsp;${partner.ort}<br/>
                        Tel.: ${partner.telefon}<br/>
						 <a href="${partner.urlhomepage}" target="_blank" class="SpNameLink">
							 ${partner.urlhomepage}
						 </a>
                        </td>
                    </tr>
                </table>
          
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="20">
                  <tbody>
                    <tr>                      					
                     <td class="shopHeaderRow1" align="left" valign="top" width="28%"> 
                      <b><!-- Bestellerdaten --><bean:message key="shoptext.summerycustomerdata"/></b>
					 </td>
                    </tr>
                     <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"></td>					  
                    </tr>
                  </tbody>
                </table>  
										  
				<table class="shopHeaderRow2">
				  <tr >
					<td><!-- Name --><bean:message key="shoptext.summeryname"/></td>
					<td>${customer.name}</td>
				  </tr>
				  <tr>
					<td><!-- Strasse --><bean:message key="shoptext.summerystr"/></td>
					<td>${customer.str}</td>
				  </tr>
				  <tr>				
                    <td><!-- PLZ/Ort --><bean:message key="shoptext.summeryzipcity"/></td>
					<td>${customer.plz}&nbsp;${customer.ort}</td>
				  </tr>
				  <tr>
					<td><!-- EMail --><bean:message key="shoptext.summeryemail"/></td>
					<td>${customer.email}</td>
				  </tr>
				  <tr>
					<td><!-- Telefon --><bean:message key="shoptext.summerytel"/></td>
					<td>${customer.tel}</td>
				  </tr>
				  <tr>
					<td><!-- Bemerkung --><bean:message key="shoptext.summeryremark"/></td>
					<td>${customer.bemerkung}</td>
				  </tr>
				</table>
           
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="20">
                  <tbody>
                    <tr>                      					
                     <td class="shopHeaderRow1" align="left" valign="top" width="28%"> 
                      <b><!-- Lieferart --><bean:message key="shoptext.summerydeliverkind"/></b> </td>
                    </tr>
                     <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"></td>					  
                    </tr>
                  </tbody>
                </table>  						  

				<table class="shopHeaderRow2">
				  <tr>
					<td>${deliverkind}</td>
					<td>&nbsp;</td>
				  </tr>
                </table>  						  
          
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="20">
                  <tbody>
                    <tr>                      					
                     <td class="shopHeaderRow1" align="left" valign="top" width="28%"> 
                      <b><!-- Bezahlart --><bean:message key="shoptext.summerypaymentkind"/></b> </td>
                    </tr>
                     <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"></td>					  
                    </tr>
                  </tbody>
                </table>  
				
				<table class="shopHeaderRow2">
				  <tr>
					<td>${payment.zahlungsart}</td>
					<td>&nbsp;</td>
				  </tr>
				  
			<c:if test='${not empty sessionScope.prefs.show_transfer}'> 
				  <tr>
					<td><!-- Kontoinhaber --><bean:message key="shoptext.summeryaccountholder"/></td>
					<td>${partner.bankaccount.kontoinhaber}</td>
				  </tr>
				  <tr>
					<td><!-- Bank --><bean:message key="shoptext.summerybank"/></td>
					<td>${partner.bankaccount.bankname}</td>
				  </tr>
				  <tr>
					<td><!-- BLZ --><bean:message key="shoptext.summeryblz"/></td>
					<td>${partner.bankaccount.blz}</td>
				  </tr>
				  <tr>
					<td><!-- Kontonummer --><bean:message key="shoptext.summeryktono"/></td>
					<td>${partner.bankaccount.kontonummer}</td>
				  </tr>
				  <tr>
					<td><!-- IBAN --><bean:message key="shoptext.summeryiban"/></td>
					<td>${partner.bankaccount.iban}</td>
				  </tr>
				  <tr>
					<td><!-- BIC --><bean:message key="shoptext.summerybic"/></td>
					<td>${partner.bankaccount.bic}</td>
				  </tr>
			</c:if> 
				  
				</table>
										  
          <table width="100%" border="0" cellspacing="1" cellpadding="1" height="20">
                  <tbody>
                    <tr>                               
                     <td class="shopHeaderRow1" align="left" valign="top" width="28%"> 
                       <b><!-- Artikel --><bean:message key="shoptext.summeryitemtitle"/></b>
					 </td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%">					  
                    </tr>
                  </tbody>
          </table>

          <table width="100%" border='0' cellpadding='5' cellspacing='0'>
            <tr> 
              <td align="left" valign="top" class="shopHeaderRow2" width="10%"><b><!-- Menge --><bean:message key="shoptext.summeryitemamount"/></b></td>
              <td align="left" valign="top" class="shopHeaderRow2" width="59%"><b><!-- Artikel --><bean:message key="shoptext.summeryitem"/></b></td>
              <td align="right" valign="top" class="shopHeaderRow2" width="10%"><b><!-- Preis --><bean:message key="shoptext.summeryprice"/>&nbsp;${sessionScope.prefs.currency}</b></td>
              <td align="right" valign="top" class="shopHeaderRow2" width="32%"><b><!-- Gesamt --><bean:message key="shoptext.summeryoverall"/>&nbsp;${sessionScope.prefs.currency}</b></td> 
            </tr>
			
				<c:forEach var="orderitem" items="${sessionScope.orderlist}"> 
					<tr> 
					  <td align="left" valign="top" class="shopHeaderRow2" width="10%">${orderitem.menge}</td>
					  <td align="left" valign="top" class="shopHeaderRow2" width="59%">${orderitem.title}</td>
					  <td align="right" valign="top" class="shopHeaderRow2" width="10%">${orderitem.price}</td>      
					  <td align="right" valign="top" class="shopHeaderRow2" width="32%">${orderitem.formatedSumme}</td>
					</tr>
					<c:set var="gesamt" value="${orderitem.wert + gesamt}" scope="page" />
				</c:forEach> 
			
			<c:if test='${not empty sessionScope.prefs.show_deliverfee}'> 
				<tr> 
				  <td align="left" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>
				  <td align="right" valign="top" class="shopHeaderRow2" width="59%"><!-- Versandkostenpauschale --><bean:message key="shoptext.summerydeliverfee"/></td>
				  <td align="right" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>      
				  <td align="right" valign="top" class="shopHeaderRow2" width="32%">
					<fmt:formatNumber type="currency" currencySymbol="">
					   <c:out value="${sessionScope.prefs.deliverfee}"/>
					</fmt:formatNumber >
				  </td>
			   </tr>
			</c:if> 
			
				<tr> 
				  <td align="left" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>
				  <td align="left" valign="top" class="shopHeaderRow2" width="59%">&nbsp;</td>
				  <td align="right" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>      
				  <td align="right" valign="top" class="shopHeaderRow2" width="32%">--------</td>
				</tr>
				<tr> 
				  <td align="left" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>
				  <td align="right" valign="top" class="shopHeaderRow2" width="59%"><!-- Summe --><bean:message key="shoptext.summeryamount"/></td>
				  <td align="right" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>      
				  <td align="right" valign="top" class="shopHeaderRow2" width="32%">
					<fmt:formatNumber type="currency" currencySymbol="">
					<c:if test='${not empty sessionScope.prefs.show_deliverfee}'> 
									   <c:out value="${gesamt + sessionScope.prefs.deliverfee}"/>
					</c:if> 
					<c:if test='${empty sessionScope.prefs.show_deliverfee}'> 
									   <c:out value="${gesamt}"/>
					</c:if> 
					</fmt:formatNumber >
				  </td>
			   </tr>						   
            </table>

			<p class="shopHeaderRow2">
		   <input type='checkbox' name='shopagbs' value='false'/>
            &nbsp;<!-- Durch das Abschicken der Bestellung erkl&auml;re ich mich mit 
            den --><bean:message key="shoptext.summeryagb1"/> 
			<a href='javascript:popup("shop_agbs.jsp?agbs=${sessionScope.prefs.agb}", "AGBs")' class="SpNameLink"> 		
		<!--	<a href='javascript:TextPopup("${sessionScope.prefs.agb}", "titel")' class="SpNameLink"> -->
            <!-- AGB --><bean:message key="shoptext.summeryagb2"/>
			</a>
			<!-- einverstanden --><bean:message key="shoptext.summeryagb3"/>
			</p>

          <p>
            <% DecimalFormat df = new DecimalFormat(Const.PRICE_FORMAT); %>
 			<input name="Submit" type='Submit' value='<bean:message key="shoptext.summerybtnordernow"/>' />
 			<input name="gesamt" type='hidden' value='${gesamt + sessionScope.prefs.deliverfee}' />
          </p>
          </form>
	  </td>
    </tr>
  </tbody>
</table>