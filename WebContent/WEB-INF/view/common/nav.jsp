<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%
String sess_partner_id = (String)session.getAttribute(Const.PARTNER_ID);
//context.log("nav.jsp sess_partner_id=" + sess_partner_id);
if(sess_partner_id == null){ 	
   // context.log("Partner aus rq. ");
	sess_partner_id = request.getParameter(Const.PARTNER_ID);
   // context.log("Stelle partner_id in session scope. "+sess_partner_id);
	session.setAttribute(Const.PARTNER_ID, sess_partner_id);
}
%>


<table border="0" WIDTH="100%" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
  <tr> 
	<td WIDTH="190" valign="top">
	  <table width="194" border="0" cellspacing="0" cellpadding="0">
		<tr> 
		  <td> </td>
		</tr> 
		<tr>
		  <td>
			 <table width="194" border="1" cellspacing="0" cellpadding="0">
<!-- Menu -->				
				<tr bgcolor="#000066">
					<td>
						<div class="navhead"><%-- Navigation --%><bean:message key="mainmenue.navigation" /></div>
					</td>
				</tr>
				<tr>
					<td>
<!-- Home -->									
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  							<tr> 
    							<td valign="top" width="13"> 
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
    							</td>
							    <td valign="middle"> 
      								<div class="navsub"><a href="index.jsp"><em><%=Const.TXT_TITLE%></em></a></div>
    							</td>
  							</tr>
						</table>
						
<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>

<!-- Warenkorb Konfiguration -->				
 						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="admin.jsp"><%-- WebShop Administration --%><bean:message key="mainmenue.admin" /></a></div>
							    </td>
							 </tr>
						</table>
						
<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>
	
                  <!-- Partner Login -->     
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
					  <td valign="top" width="13">
                        <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div>
					  </td>
                      <td valign="middle">
					    <div class="navsub"><a href="login.jsp"><%-- Login --%><bean:message key="mainmenue.login" /></a></div>
					  </td>
                    </tr>
                  </table>
				  
        			</td>
				</tr>
				
<!-- Service -->				
				<tr bgcolor="#000066">
					<td>
						<div class="navhead"><%-- Services --%><bean:message key="mainmenue.services" /></div>
					</td>
				</tr>
				<tr>
					<td>
<!-- Preise -->				
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="prices.jsp"><%-- Preise --%><bean:message key="mainmenue.prices" /></a></div>
							    </td>
							 </tr>
						</table>


<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>
						
<!-- Leistungen -->				
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="features.jsp"><%-- Leistungen --%><bean:message key="mainmenue.features" /></a></div>
							    </td>
							 </tr>
						</table>
						
						
<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>
						
<!-- Kostenlos Testen! -->				
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="free.jsp"><%-- Kostenlos Testen! --%><bean:message key="mainmenue.free" /></a></div>
							    </td>
							 </tr>
						</table>
						
						
						
					</td>
				</tr>
		

<!-- Sonstiges -->				
				<tr bgcolor="#000066">
					<td>
						<div class="navhead"><%-- Sonstiges --%><bean:message key="mainmenue.misc" /></div>
					</td>
				</tr>
				<tr>
					<td>
					
<!-- Demoshop -->										
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  							<tr> 
						    	<td valign="top" width="13"> 
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
						    	</td>
						    	<td valign="middle"> 
						      		<div class="navsub"><a href="demoshops.jsp"><%-- Demo WebShops --%><bean:message key="mainmenue.demo" /></a></div>
						    	</td>
							</tr>
						</table>
						
<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>

					
<!-- FAQ -->				
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="faq.jsf"><%-- FAQ --%><bean:message key="mainmenue.faq" /></a></div>
							    </td>
							 </tr>
						</table>
			
<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>

						
<!-- Impressum -->				
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="impressum.jsp"><%-- Impressum --%><bean:message key="mainmenue.imprint" /></a></div>
							    </td>
							 </tr>
						</table>
			
<!-- Für Schattierung und Rahmen -->						
<table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td><img src="images/lquer.gif" border="0" height="1"></td>
  </tr>
</tbody></table>

						
<!-- AGB -->				
						<table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
  			  				<tr>
							    <td valign="top" width="13">
      								<div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div> 
							    </td>
							    <td valign="middle">
							      <div class="navsub"><a href="agb.jsp"><%-- AGB --%><bean:message key="mainmenue.law" /></a></div>
							    </td>
							 </tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
		
	</table>
	</td>
</tr>

</table>

<% if(!Const.WEBRUN) { %>
	<font color="#FF0000">WEBRUN=false</font>
	<br>
<% } %>
	
<% if(Const.TESTDATA) { %>
	<font color="#00FFFF">TESTDATA=true</font>
<% } %>

<br>

<div align="center" class="vpf"> 
	<a href="free.jsp"><img src="images/free.gif" border="0" align="center"></a>
	<br>
	<a href="free.jsp"><%-- Jetzt&nbsp;kostenlos&nbsp;testen! --%><bean:message key="mainmenue.link1" /></a>
</div> 

