<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Tarif" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%-- Report any errors (if any) --%>
<html:errors /> 
<form action='register.do' method='POST'>
  <table WIDTH="550" valign="top" align="left">
    <tr> 
      <td> 
        <div class="vpf"> 
          <div class="vprubrikhead"><%-- Registrierung --%><bean:message key="admintext.register.rubrik"/> 
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
	                <%-- Registrierung - Neuen Benutzer registrieren --%><bean:message key="admintext.register.head"/>
 				</div>
 				<br>              
                <div class="vpf">
					<%-- Zur Nutzung des <em>publicWEBshop.com</em> geben Sie hier Ihre Daten zur Registrierung ein.
					Sie erhalten dann per Email einen Link mit Ihrer Id zugesandt.
				  Diesen integrieren Sie in Ihre Homepage.
			  
                  <br><br>Beispiellink:<br>
				    publicWEBshop.com/list_items.do?partner_id=2&amp;language=en 
					 
					<br><br>
					Wählen Sie einen der verfügbaren Tarife aus. 
					Sie können das Online-Bestellsystem einen Monat kostenlos testen und dann jederzeit updaten!
					 --%><bean:message key="admintext.register.text1"/>
					<br><br>			
<div align="center" class="vpf"> 
<img src="images/free.gif" border="0" align="center" vspace="5" hspace="5">&nbsp;<%-- Kostenlos testen!--%><bean:message key="admintext.register.text2"/>
</div> 
<br>
 	<br>			
 				</div>              
		  </table>

          <div align="left">
            <table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr> 
                <td width="30%" valign="top"><%-- Tarif --%><bean:message key="admintext.register.tarif"/>*</td>  
                <td width="70%" valign="top">
<input type="radio" name="tarif"
					  <% String art = (String) request.getParameter("tarif"); %>
					  <% if((art!=null) && (art.equals(Tarif.FREE_TARIF_TEXT)))
						  { %>
                            checked
					  <% } %>
					  value="<%=Tarif.FREE_TARIF_TEXT %>"/>Free&nbsp;<%-- (1 Monat kostenlos testen) --%><bean:message key="admintext.register.text2"/>
 
<br>					
<input type="radio" name="tarif"
					  <% art = (String) request.getParameter("tarif"); %>
					  <% if((art!=null) && (art.equals(Tarif.BASIC_TARIF_TEXT)))
						  { %>
                            checked
					  <% } %>
					  value="<%=Tarif.BASIC_TARIF_TEXT %>"/>Basis
					 					
					
<br>
<input type="radio" name="tarif"
					  <% art = (String) request.getParameter("tarif"); %>
					  <% if((art!=null) && (art.equals(Tarif.PRO_TARIF_TEXT)))
						  { %>
                            checked
					  <% } %>
					  value="<%=Tarif.PRO_TARIF_TEXT %>"/>Pro

				</td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top"><%-- Benutzername --%><bean:message key="admintext.register.user"/>*</td>  
                <td width="70%" valign="top"><input type='text' name='user' value='${param.user}'/></td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top"><%-- Email --%><bean:message key="admintext.register.email"/>*</td>        
                <td width="70%" valign="top"><input type='text' name='email' value='${param.email}'/></td>
			  <tr/>
			  
<!--               
              <tr> 
                <td width="30%" valign="top">Telefon</td>         
                <td width="70%" valign="top"><input type='text' name='telefon' value='${param.telefon}'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top">Firma/Partnername</td>         
                <td width="70%" valign="top"><input type='text' name='partnername' value='${param.partnername}'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top">Strasse</td>        
                <td width="70%" valign="top"><input type='text' name='str' value='${param.str}'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top">Postleitzahl</td>        
                <td width="70%" valign="top"><input type='text' name='plz' value='${param.plz}'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top">Ort</td>        
                <td width="70%" valign="top"><input type='text' name='ort' value='${param.ort}'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top">URL Homepage (http://www.domain.com)</td>        
                <td width="70%" valign="top"><input type='text' name='urlhomepage' value='${param.urlhomepage}'/></td>
			  <tr/>
 -->              
              <tr> 
                <td width="30%" valign="top"><%-- Passwort --%><bean:message key="admintext.register.pw"/>*</td>        
                <td width="70%" valign="top"><input type='password' name='password'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top"><%-- Wiederholung Passwort --%><bean:message key="admintext.register.pw2"/>*</td>      
                <td width="70%" valign="top"><input type='password' name='password2'/></td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top"><%-- AGB --%><bean:message key="admintext.register.agb"/>*</td>     
                <td width="70%" valign="top">
				   <input type='checkbox' name='agbs' value='false'/>
				   <a href="agb.jsp" class="SpNameLink">
				    <%-- AGB einsehen --%><bean:message key="admintext.register.link1"/>
				   </a>
				</td>
			  <tr/>
              <tr> 
                <td width="30%" valign="top">
				<br/>                      
                    <input type='Submit' value='<%-- Neuen Benutzer jetzt registrieren --%><bean:message key="admintext.register.btn1"/>' />
				</td>       
                <td width="70%" valign="top">
                 <br/>*&nbsp;<%-- ben&ouml;tigt --%><bean:message key="admintext.register.text3"/>
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
