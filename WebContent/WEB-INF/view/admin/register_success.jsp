<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>


<form action='login.jsp' method='POST'>
<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- Registrierung erfolgt!--%><bean:message key="admintext.register_success.rubrik"/> 
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
			<div class="vpheadsub"><%-- Registrierung erfolgt - Sie haben sich 
                  als neuer Benutzer registriert. Vielen Dank!
				  <br/><br/>
				Benutzer:
				--%><bean:message key="admintext.register_success.head"/>
				&nbsp;${requestScope.user}
			</div>			
			<div class="vpf">
				<br/>
				<%-- Ihre Registrierung war erfolgreich.<br/>
				Wir begrüßen Sie als neuen Benutzer bei <em>publicWEBshop.com</em>.<br/>
				Herzlichen Dank für Ihre Anmeldung und viel Erfolg beim Online-Marketing.<br/><br/>
				Sie bekommen in Kürze eine Email mit Ihren Anmeldeinformationen als Bestätigung
                Loggen Sie sich anschliessend ein um Ihren WebShop einzurichten.
				--%><bean:message key="admintext.register_success.text1"/>
				<br/>
				<br/>
				<br/>
                <input type='Submit' value='<%-- Zum Login--%><bean:message key="admintext.register_success.btn1"/>' />							
			</div>    	
		  </td>  
		 </tr>
		</table>
		
		<p></p>
				
		<br/>
	</div>
</td>
</tr>
</table>
</form>