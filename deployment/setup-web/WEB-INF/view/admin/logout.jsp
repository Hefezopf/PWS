<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<html:errors />

<form action='logout.do' method='POST'>

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		  <div class="vprubrikhead"><%-- Logout --%><bean:message key="admintext.logout.rubrik"/>
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
                 <%-- Logout - Wollen Sie sich wirklich ausloggen? --%><bean:message key="admintext.logout.head"/>
 				</div>				
                  <br> 
                <div class="vpf">
				   <%-- Nach dem Ausloggen wir Ihre Session beendet.
				    --%><bean:message key="admintext.logout.text1"/>
                  <br>
  				</div>  
				<br>				      
				   <input name="Submit" type='Submit' value='<%-- Logout --%><bean:message key="admintext.logout.btn1"/>' />
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
