<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%@ page import="de.hopfit.model.Tarif" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table WIDTH="550" valign="top" align="left">
	<tr>
	<td>
		<div class="vpf">
			<div class="vprubrikhead"><%-- Preise --%><bean:message key="maintext.preise.rubrik"/>
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
          <div class="vpheadsub">
		  <%-- Preise - Verschaffen Sie sich einen Überblick --%><bean:message key="maintext.preise.head"/>
		  </div>			
              <div class="vpf"> 
			  	<br>
				<%-- Für die unterschiedlichen Leistungen, die Ihnen Ihr <em>publicWEBshop.com</em> bietet,
				finden Sie hier die Preise für die verschieden Tarife aufgelistet.	<br>	<br>
				<b>Das Einrichten des <em>publicWEBshop.com</em> ist kostenlos.  
				<br>
                Sie bezahlen nur, wenn auch tatsächlich eine Bestellung Ihres Kunden eingegangen ist!
				</b>
				 --%><bean:message key="maintext.preise.text1"/>
				<br>
				 <br/> 
				 <br/>
 
<table width="100%" cellpadding="2" cellspacing="1" border="0">
<tbody>
	<tr>
	  <td width="372" valign="top" bgcolor="#000066" class="navhead"><b><%-- Kosten f&uuml;r WebShop Paket --%><bean:message key="maintext.preise.table_price_head1"/></b></td>
	  <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Free</b></td>
	  <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Basic</b></td>
	  <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Pro</b></td>
	</tr>
	<tr>
	<td width="372" valign="top" class="navsub"><%-- Einmalige Einrichtungsgebühr --%><bean:message key="maintext.preise.table_price_text1"/></td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
	<tr>
	<td width="372" bgcolor="#ffffff" valign="top" class="navsub"><%-- Monatliche Miete --%><bean:message key="maintext.preise.table_price_text2"/></td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='<%= new String(""+Tarif.FREE_TARIF_BASE_PRICE)%>'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='<%= new String(""+Tarif.BASIC_TARIF_BASE_PRICE)%>'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='<%= new String(""+Tarif.PRO_TARIF_BASE_PRICE)%>'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
	<tr>
	<td width="372" valign="top" class="navsub"><%-- Kosten je Order --%><bean:message key="maintext.preise.table_price_text3"/></td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='<%= new String(""+Tarif.FREE_TARIF_MIN_TX_PRICE)%>'/>
		</fmt:formatNumber>&nbsp;€</td>
    <td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='<%= new String(""+Tarif.BASIC_TARIF_MIN_TX_PRICE)%>'/>
		</fmt:formatNumber>&nbsp;€</td>
    <td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='<%= new String(""+Tarif.PRO_TARIF_MIN_TX_PRICE)%>'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>	
	<tr>
    <td width="372" bgcolor="#ffffff" valign="top" class="navsub"><%-- Zusatzkosten je SMS --%><bean:message key="maintext.preise.table_price_text4"/></td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">---</td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.30'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
    <tr>
	<td width="372" valign="top" class="navsub"><%-- Zusatzkosten je Fax --%><bean:message key="maintext.preise.table_price_text5"/></td>
	<td width="100" valign="top" class="navsub" align="right">---</td>
    <td width="100" valign="top" class="navsub" align="right">---</td>
    <td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.30'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
	
</tbody>
</table>
<br><br>
<table width="100%" cellpadding="2" cellspacing="1" border="0">
<tbody>
	<tr>
	  <td width="372" valign="top" bgcolor="#000066" class="navhead"><b><%-- Preis Beispiele --%><bean:message key="maintext.preise.table_sample_head1"/></b></td>
	  <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Free</b></td>
	  <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Basic</b></td>
	  <td width="100" valign="top" bgcolor="#000066" class="navhead" align="right"><b>Pro</b></td>
	</tr>
	<tr>
	<td width="372" valign="top" class="navsub"><%-- 1 Bestellung --%><bean:message key="maintext.preise.table_sample_text1"/></td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.1'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.2'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
	<tr>
	<td width="372" bgcolor="#ffffff" valign="top" class="navsub"><%-- 10 Bestellungen --%><bean:message key="maintext.preise.table_sample_text2"/></td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='1.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" bgcolor="#ffffff" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='2.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
	<tr>
	<td width="372" valign="top" class="navsub"><%-- 100 Bestellungen --%><bean:message key="maintext.preise.table_sample_text3"/></td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='0.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='10.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	<td width="100" valign="top" class="navsub" align="right">
		<fmt:formatNumber type="currency" currencySymbol="">
		   <c:out value='20.0'/>
		</fmt:formatNumber>&nbsp;€</td>
	</tr>
</tbody>
</table>
<br>

		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>

