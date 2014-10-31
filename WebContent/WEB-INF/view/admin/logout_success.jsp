<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
<!-- Beginn VP --> 
	<div class="vpf">
		<div class="vprubrikhead"><%-- Logout erfolgreich! --%><bean:message key="admintext.logout_success.rubrik"/> 
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
		<%-- Logout erfolgreich - Sie sind eingeloggt --%><bean:message key="admintext.logout_success.head"/>
		</div>
		  <br>			
		<div class="vpf">
		<%-- Klicken Sie im Menu links f&uuml;r weitere Aktionen.
		--%><bean:message key="admintext.logout_success.text1"/> 
              </div>    
			</td>  
			</tr>
		</table>
					
		<p></p>
		<br/>
		<br/>
		<br/>
	</div>
    </td>
</tr>
</table>

