<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%@ page import="de.hopfit.controller.*" %>
<%@ page import="de.hopfit.model.Item" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr> 
      <td valign="top" height="201" style="padding: 1px;"> 
	    <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
          <tbody>
            <tr> </tr>
          </tbody>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody>
            <tr> 
              <td align="left" valign="top" width="100%"> 
			    <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                  <tbody>
                    <tr> 
                      <td class="shopHeaderRow1" align="left" valign="top" width="28%"><b><!-- --><bean:message key="shoptext.carttitle"/></b></td>
                       <td class="shopHeaderRow1" align="left" valign="top" width="25%">&nbsp;</td>
                     </tr>
                    <tr> 
                      <td width="25%" height="59" align="left" valign="top" nowrap="nowrap" class="shopHeaderRow2"> 
                        <img src='images/customer/<%=session.getAttribute(Const.PARTNER_ID)%>.gif' alt=''/> 
                        <br/></td>
                      <td align="left" valign="top" nowrap="nowrap" class="shopHeaderRow2" width="25%"> 
                        ${partner.partnername}<br/>
                        ${partner.str}<br/>
                        ${partner.plz} ${partner.ort}<br/>
                        Tel.: ${partner.telefon}<br/>
						 <a href="${partner.urlhomepage}" target="_blank" class="SpNameLink">
							 ${partner.urlhomepage}
						 </a>
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
                      <td class="shopHeaderRow1" align="left" valign="top" width="28%"><b><!-- --><bean:message key="shoptext.cartinfo"/></b></td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="28%"> 
                        <c:if test="${empty sessionScope.prefs.shop_open}"> <img src="images/shop_closed.gif" />&nbsp;<!-- --><bean:message key="shoptext.cartshopclosed"/></c:if> <c:if test="${not empty sessionScope.prefs.shop_open}"> 
                        <img src="images/shop_open.gif" />&nbsp;<!-- --><bean:message key="shoptext.cartshopopen"/> 
                        </c:if> 
                        <hr> 		
						${sessionScope.prefs.infotext}
						<hr> 

					<c:if test='${not empty sessionScope.prefs.show_minorderamount}'>  
						<!-- Mindestbestellwert --><bean:message key="shoptext.cartminorderamount"/>:&nbsp;
 						<fmt:formatNumber type="currency" currencySymbol="">
						   <c:out value="${sessionScope.prefs.minorderamount}"/>
 						</fmt:formatNumber >
						&nbsp;${sessionScope.prefs.currency}
					</c:if> 						
						 
					<c:if test='${not empty sessionScope.prefs.show_deliverfee}'> 
						<br/> 
						<!-- Liefergebühren --><bean:message key="shoptext.cartdeliverfee"/>:&nbsp;
 						<fmt:formatNumber type="currency" currencySymbol="">
						   <c:out value="${sessionScope.prefs.deliverfee}"/>
 						</fmt:formatNumber >
						&nbsp;${sessionScope.prefs.currency}
					</c:if> 
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
              <td align="left" valign="top" width="100%">
			   <table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
                  <tbody>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="22%"> 
                      </td>
                    </tr>
                    <tr> 
                      <td class="shopHeaderRow1" align="left" valign="top" width="28%" nowrap="nowrap"><b><bean:message key="shoptext.cartshoppingcart"/></b></td>
                    </tr>
                    <tr> 
                      <td align="left" valign="top" class="shopHeaderRow2" width="22%"> 
                         <form name='cart' action='cart.do' method='POST'>
	    				  <html:errors /> 		
                          <c:if test="${not empty sessionScope.orderlist}"> 
							  <table border='0' cellspacing='0' cellpadding='5'>
								<tr> 
								  <th align="left" valign="top" class="shopHeaderRow2" width="10%"><b><!-- --><bean:message key="shoptext.carttableheadingamount"/></b></th>
								  <th align="left" valign="top" class="shopHeaderRow2" width="35%"><b><!-- --><bean:message key="shoptext.carttableheadingitem"/></b></th>
								  <th align="right" valign="top" class="shopHeaderRow2" width="22%"><b><!-- --><bean:message key="shoptext.carttableheadingprice"/>&nbsp;${sessionScope.prefs.currency}</b></th>
								  <th align="right" valign="top" class="shopHeaderRow2" width="34%"><b><!-- --><bean:message key="shoptext.carttableheadingoverall"/>&nbsp;${sessionScope.prefs.currency}</b></th>
								</tr>
								
								<c:forEach var="orderitem" items="${sessionScope.orderlist}"> 
									<tr> 
									  <td align="left" valign="top" class="shopHeaderRow2" width="10%">${orderitem.menge}</td>
									  <td align="left" valign="top" class="shopHeaderRow2" width="35%">${orderitem.title}</td>
									  <td align="right" valign="top" class="shopHeaderRow2" width="22%">${orderitem.price}</td>      
									  <td align="right" valign="top" class="shopHeaderRow2" width="34%">${orderitem.formatedSumme}</td>
									</tr>
									<c:set var="gesamt" value="${orderitem.wert + gesamt}" scope="page" />
								</c:forEach> 
								
					<c:if test='${not empty sessionScope.prefs.show_deliverfee}'> 
							   <tr> 
								  <td align="left" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>
								  <td align="right" valign="top" class="shopHeaderRow2" width="35%">
  								  <!-- Liefergebühren --><bean:message key="shoptext.cartdeliverfee"/>
								  </td>
								  <td align="right" valign="top" class="shopHeaderRow2" width="22%">&nbsp;</td>      
								  <td align="right" valign="top" class="shopHeaderRow2" width="34%">
									<fmt:formatNumber type="currency" currencySymbol="">
									   <c:out value="${sessionScope.prefs.deliverfee}"/>
									</fmt:formatNumber >
								  </td>
							   </tr>
					</c:if> 
							   
								<tr> 
								  <td align="left" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>
								  <td align="left" valign="top" class="shopHeaderRow2" width="35%">&nbsp;</td>
								  <td align="right" valign="top" class="shopHeaderRow2" width="22%">&nbsp;</td>      
								  <td align="right" valign="top" class="shopHeaderRow2" width="34%">--------</td>
								</tr>
								
								<tr> 
								  <td align="left" valign="top" class="shopHeaderRow2" width="10%">&nbsp;</td>
								  <td align="right" valign="top" class="shopHeaderRow2" width="35%"><!-- --><bean:message key="shoptext.carttablesum"/></td>
								  <td align="right" valign="top" class="shopHeaderRow2" width="22%">&nbsp;</td>      
								  <td align="right" valign="top" class="shopHeaderRow2" width="34%">
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
							  <p>
								<input type='Submit' name="bestellung" value='<bean:message key="shoptext.cartbtnorder"/>' />
								<input type='Submit' name="leeren" value='<bean:message key="shoptext.cartbtnempty"/>' />
								<input type='hidden' name="gesamtwert" value='<c:out value="${gesamt}" />' />
                      			<input name="partner_id" type='hidden' value='${param.partner_id}' />			
							  </p>
                          </c:if> 
						  
						  <c:if test="${empty sessionScope.orderlist}"> 
                            <!-- warenkorb leer --><bean:message key="shoptext.cartemptycart"/>
						  </c:if> 

						  <hr>						    
                          <div align="right"><!-- das ist ein Service von --><bean:message key="shoptext.ownlink"/>&nbsp;<a href="index.jsp" target="_blank" class="SpNameLink"><em><%=Const.TXT_TITLE%></em></a></div>

                        </form>
				    </tr>
                  </tbody>
                </table></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
</td>
<td></td></tr>
</tbody> 
</table>