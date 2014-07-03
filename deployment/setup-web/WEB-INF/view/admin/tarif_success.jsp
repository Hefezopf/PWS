<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>


<!-- <form action='login.jsp' method='POST'>
 -->
<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- Tarif Update erfolgreich! --%><bean:message key="admintext.tarif_success.rubrik"/> 
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
			<%-- Tarif Update erfolgreich - Sie haben in einen anderen Tarif gewechselt. Vielen Dank!
			 --%><bean:message key="admintext.tarif_success.head"/>
			 <br/>
				<br/>
			</div>			
			<div class="vpf">
				<%-- Sie bekommen in Kürze eine Email mit Ihren Updateinformationen als Bestätigung.
				 --%><bean:message key="admintext.tarif_success.text1"/>
                <br/>
				<br/>
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

<!-- </form> -->