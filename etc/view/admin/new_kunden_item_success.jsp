<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
<!-- Beginn VP --> 
	<div class="vpf">
		<div class="vprubrikhead"><%-- Speichern erfolgreich! --%><bean:message key="admintext.new_kunden_item_success.rubrik"/> 
          <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#000066">
				<tr>
					<td><img border="0" src="images/lquer.gif" height="1"></td>    	
				</tr>
			</table>
		</div>
		
		<p></p>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="5">  	<tr bgcolor="#F5F5F5">     		<td valign="top">			       	
		<div class="vpheadsub"><%-- Speichern erfolgreich - Ihre Daten wurden gespeichert!
		 --%><bean:message key="admintext.new_kunden_item_success.head"/></div>			
		<br/>
		<div class="vpf">
			   <%--  Klicken Sie im Menu links für weitere Aktionen.
				 --%><bean:message key="admintext.new_kunden_item_success.text1"/>			
		</div>    	</td>  	</tr>
		</table>
		
		<p></p>
		<br/>		
		<br/>
		<br/>
	</div>
<!-- Ende VP -->
</td>
</tr>
</table>

