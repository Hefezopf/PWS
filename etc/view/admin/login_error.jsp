<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<%-- Report any errors (if any) --%>
<html:errors />

<form action='login.jsp' method='POST'>

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- Login Fehler! --%><bean:message key="admintext.login_error.rubrik"/> 
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
			  <%-- Login Fehler - Sie sind nicht im System angemeldet worden. --%><bean:message key="admintext.login_error.head"/>
			</div>
			 <br/>			
			<div class="vpf">
			<%-- 
					Benutzerdaten sind falsch<br/>
					Benutzer:
					 --%><bean:message key="admintext.login_error.text1"/>
					 &nbsp;${param.user}
					  <br/><br/>
					 <input type='Submit' value='<%-- Zum Login --%><bean:message key="admintext.login_error.btn1"/>' />			
			</div>    
		  </td>  
		 </tr>
		</table>
		
		<br/>
	</div>
<!-- Ende VP -->
</td>
</tr>
</table>
</form>
