<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Tarif" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%-- Report any errors (if any) --%>
<html:errors /> 
<form action='invoice.do' method='POST'>
  <table WIDTH="550" valign="top" align="left">
    <tr> 
      <td> 
        <div class="vpf"> 
          <div class="vprubrikhead">Rechnungserstellung 
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
	                Rechnungserstellung
 				</div>
 				<br>              
                <div class="vpf">
					Rechnungserstellung. 
					<br>
							
<br>
  	<br><br>			
 				</div>              
		  </table>


          <div align="left">
            <table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr> 
                <td width="30%" valign="top">Partner ID</td>  
                <td width="70%" valign="top"><input type='text' name='partner_id' value='${param.partnerid}'/></td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top">
				<br/>                          
                    <input type='Submit' value='generate Invoice' />
				</td>       
                <td width="70%" valign="top">
			  <c:if test="${empty requestScope.invoice}"> 
				Keine offenen Orders
			  </c:if> 
			  <c:if test="${not empty requestScope.invoice}"> 
                 Alle Orders des Partners wurden geschlossen.
				 <br/>
				 Rechnung erstellt und verschickt!
                 <br/> <br/>
                 Bestellwert: ${requestScope.invoice.order_total}&nbsp;€
                 <br/>
                 Anzahl Transaktionen: ${requestScope.invoice.order_amount}
                 <br/>
                 Rechnungsbetrag: ${requestScope.invoice.invoice_total}&nbsp;€
                 <br/>
                 Rechnungsnummer: ${requestScope.invoice.invoice_id}
			  </c:if> 
				</td>
			  <tr/>
            </table>
          </div>
          <br/>
          <br/>
        </div>
      </td>
    </tr>
  </table>
</form>
