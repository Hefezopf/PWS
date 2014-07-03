<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%-- Report any errors (if any) --%>
<html:errors /> 

<html:form method="post" action="/partnerdata_save.do">
  <table WIDTH="550" valign="top" align="left">
    <tr> 
      <td> 
        <div class="vpf"> 
          <div class="vprubrikhead"><%-- Stammdaten --%><bean:message key="admintext.partnerdata.rubrik"/> 
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
				  <%-- Stammdaten - Erfassen Sie hier Ihre Daten. --%><bean:message key="admintext.partnerdata.head"/> 
				  </div>			
				  <div class="vpf"> 
					<br>
					  <%-- Hier erfassen und &auml;ndern Sie Ihre Stammdaten, welche für die Bestellung wichtig.
					   --%><bean:message key="admintext.partnerdata.text0"/> <br><br>
				  </div>
			  </td> 
			</tr>     		
  			</table>

            <table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr > 
                <td width="32%" valign="top"><%-- Email --%><bean:message key="admintext.partnerdata.text1"/>*</td>        
                <td width="68%" valign="top"><input type='text' name='email' value='${sessionScope.partner_data.email}' /></td>
			  <tr/>			  
              <tr > 
                <td valign="top"><%-- Sprache --%><bean:message key="admintext.partnerdata.text1_1"/></td>         
                <td valign="top"><select name="partner_language" size="1">
						<option selected>${sessionScope.partner_data.partner_language}</option>
						<option>en</option>
						<option>de</option>
					</select>
				</td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Telefon --%><bean:message key="admintext.partnerdata.text2"/></td>         
                <td valign="top"><input type='text' name='telefon' value='${sessionScope.partner_data.telefon}'/></td>
			  <tr/>
              <tr >       
                <td valign="top"><%-- Firmenname --%><bean:message key="admintext.partnerdata.text3"/></td>         
                <td valign="top"><input type='text' name='partnername' value='${sessionScope.partner_data.partnername}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Strasse --%><bean:message key="admintext.partnerdata.text4"/></td>        
                <td valign="top"><input type='text' name='str' value='${sessionScope.partner_data.str}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- URL Homepage (http://www.domain.com) --%><bean:message key="admintext.partnerdata.text5"/></td>        
                <td valign="top"><input type='text' name='urlhomepage' value='${sessionScope.partner_data.urlhomepage}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Postleitzahl --%><bean:message key="admintext.partnerdata.text6"/></td>        
                <td valign="top"><input type='text' name='plz' value='${sessionScope.partner_data.plz}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Ort --%><bean:message key="admintext.partnerdata.text7"/></td>        
                <td valign="top"><input type='text' name='ort' value='${sessionScope.partner_data.ort}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Kontoinhaber --%><bean:message key="admintext.partnerdata.text8"/></td>        
                <td valign="top"><input type='text' name='kontoinhaber' value='${sessionScope.partner_data.bankaccount.kontoinhaber}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Bank --%><bean:message key="admintext.partnerdata.text9"/></td>        
                <td valign="top"><input type='text' name='bank' value='${sessionScope.partner_data.bankaccount.bankname}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- BLZ --%><bean:message key="admintext.partnerdata.text10"/></td>        
                <td valign="top"><input type='text' name='blz' value='${sessionScope.partner_data.bankaccount.blz}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- Kontonummer --%><bean:message key="admintext.partnerdata.text11"/></td>        
                <td valign="top"><input type='text' name='kontonummer' value='${sessionScope.partner_data.bankaccount.kontonummer}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- IBAN --%><bean:message key="admintext.partnerdata.text12"/></td>        
                <td valign="top"><input type='text' name='iban' value='${sessionScope.partner_data.bankaccount.iban}'/></td>
			  <tr/>
              <tr > 
                <td valign="top"><%-- BIC --%><bean:message key="admintext.partnerdata.text13"/></td>        
                <td valign="top"><input type='text' name='bic' value='${sessionScope.partner_data.bankaccount.bic}'/></td>
			  <tr/>
              <tr > 
                <td width="32%" valign="top">
				  <br/>			
                  <p>
                    <input type='Submit' value='<%-- Daten speichern --%><bean:message key="admintext.partnerdata.btn1"/>' />
                  </p>  
				</td>       
                <td width="68%" valign="bottom">
				  *&nbsp;<%-- ben&ouml;tigt --%><bean:message key="admintext.partnerdata.text14"/>
				</td>
			  <tr/>
            </table>
       	  
          <p></p>
          <br/>
        </div>
      </td>
    </tr>
  </table>
</html:form>
