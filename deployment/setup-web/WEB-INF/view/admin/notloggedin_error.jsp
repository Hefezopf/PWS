<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<form action='login.jsp' method='POST'>

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- Nicht eingeloggt! --%><bean:message key="admintext.notloggedin_error.rubrik"/> 
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
			   <%-- Nicht eingeloggt - Sie sind noch nicht eingelogged.
			    --%><bean:message key="admintext.notloggedin_error.head"/>
			</div>			
			<div class="vpf">
				<br/>
				<%-- Sie müssen sich zuerst einloggen.
				 --%>
				 <bean:message key="admintext.notloggedin_error.text1"/>
				 <br/><br/>
				 <%-- Evtl. haben Sie Cookies abgeschaltet. 
				 Bitte aktivieren Sie die Cookieunterst&uuml;tzung Ihres Browsers.
				 --%>
				 <bean:message key="admintext.notloggedin_error.text2"/>
				<br/><br/>
				<input type='Submit' value='<%-- Zum Login --%><bean:message key="admintext.notloggedin_error.btn1"/>' />	
			</div>    
		   </td>  	
		  </tr>
	    </table>	
	</div>
</td>
</tr>
</table>
</form>
