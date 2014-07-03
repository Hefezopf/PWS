<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%-- Report any errors (if any) --%>
<html:errors />

<form action='login.do' method='POST'>

<table WIDTH="550" valign="top" align="left">
 <tr>
  <td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- Login --%><bean:message key="admintext.login.rubrik"/>
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
                <%-- Login - Benutzer Anmeldung --%><bean:message key="admintext.login.head"/>
 				</div>				
                  <br> 
                <div class="vpf">
				<%-- Geben Sie hier Ihren Benutzernamen und das Passwort an.
				 --%><bean:message key="admintext.login.text1"/> 
                  <br>
 				</div>   				      
		   </table>
	
		<table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5">
		  <tr>     		
              <td width="21%" valign="top">&nbsp;
			  </td>
              <td width="79%" valign="top">&nbsp;
				
			  </td>
		  </tr>
		  
		  <tr>     		
              <td valign="top">
			    <%-- Benutzer
				 --%><bean:message key="admintext.login.user"/>
			  </td>
              <td valign="top">
                <input type='text' name='user' value='${param.user}' />
			  </td>
		  </tr>
		  
		  <tr>     		
              <td valign="top">
			    <%-- Passwort
				 --%><bean:message key="admintext.login.pw"/>
			  </td>
              <td valign="top">
                <input type='password' name='password' value='' />
			  </td>
		  </tr>
		  
		  <tr>     		
              <td valign="top">&nbsp;
				
			  </td>
              <td valign="top">&nbsp;
				
			  </td>
		  </tr>
		  
		  <tr>     		
              <td valign="top">
				<input type='Submit' value='<%-- Login --%><bean:message key="admintext.login.btn1"/>' />
				<input type='hidden' name='kunde' value=${param.kunde} />		
			  </td>
              <td valign="top">
			    <a href='register.jsp'>
			      <%-- Neu als Benutzer registrieren?
				   --%><bean:message key="admintext.login.link1"/>
				</a>
			  </td>
		  </tr>
		</table>					
		<br/>
		<br/>
	</div>
   </td>
 </tr>
</table>

</form>
