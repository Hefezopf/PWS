<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Tarif" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%
String user_name = (String)session.getAttribute(Const.USER);
Tarif tarif = (Tarif)session.getAttribute(Const.TARIF);
%>

<table border="0" WIDTH="100%" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
  <tr> 
    <td WIDTH="190" valign="top"> <table width="194" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> </td>
        </tr>
        <tr> 
          <td> <table width="194" border="1" cellspacing="0" cellpadding="0">
              <!-- Navigation -->
              <tr bgcolor="#000066"> 
                <td> <div class="navhead"><%-- Navigation --%><bean:message key="adminmenue.navigation" /></div></td>
              </tr>
              <tr> 
                <td> 
                  <!-- zur Startseite -->
                  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle"> <div class="navsub"><a href="index.jsp">
                          <em><%=Const.TXT_TITLE%></em></a></div></td>
                    </tr>
                  </table>
				  
                   
<!-- Für Schattierung und Rahmen -->
                  <table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr> 
                        <td><img src="images/lquer.gif" border="0" height="1"></td>
                      </tr>
                    </tbody>
                  </table>
	 			  
                  <!-- Home Partner Bereich -->
                  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle">
					    <div class="navsub">
						<a href="admin.jsp"><%-- WebShop Administration --%><bean:message key="adminmenue.admin" /></a>
						</div>
						</td>
                    </tr>
                  </table>
				</td>
              </tr>
 			  
              <!-- Aktionen -->
              <tr bgcolor="#000066"> 
                <td> <div class="navhead"><%-- WebShop Verwaltung --%><bean:message key="adminmenue.edit" /></div></td>
              </tr>
              <tr> 
                <td> 

                  <!-- Partner Login -->
                  <% if(user_name == null){ %>
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle"> <div class="navsub"><a href="login.jsp"><%-- Login --%><bean:message key="adminmenue.login" /></a></div></td>
                    </tr>
                  </table>
				  
                  <!-- Für Schattierung und Rahmen -->
                   <table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr> 
                        <td><img src="images/lquer.gif" border="0" height="1"></td>
                      </tr>
                    </tbody>
                  </table>
                   
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle"> <div class="navsub"><a href="register.jsp"><%-- Registrierung --%><bean:message key="adminmenue.register" /></a></div></td>
                    </tr>
                  </table>
                  <% } %> 
				  
                  <!-- Manage Items -->
                  <% if(user_name != null){  %>
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle"> <div class="navsub">
 					  <a href='javascript:TarifPopup("list_kunden_items.do")'>
					   <%-- Artikel --%><bean:message key="adminmenue.items" />
					   </a></div></td>
                    </tr>
                  </table>
				  
                  <!-- Für Schattierung und Rahmen -->
                  <table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr> 
                        <td><img src="images/lquer.gif" border="0" height="1"></td>
                      </tr>
                    </tbody>
                  </table>
                  <% } %> 
				  
                  <!-- Partner Stammdaten -->
                  <% if(user_name != null){  %>
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle"> <div class="navsub"><a href='javascript:TarifPopup("partnerdata_load.do")'> 
                          <%-- Stammdaten --%><bean:message key="adminmenue.stamm" /></a></div></td>
                    </tr>
                  </table>
				  
                  <!-- Für Schattierung und Rahmen -->
                  <table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr> 
                        <td><img src="images/lquer.gif" border="0" height="1"></td>
                      </tr>
                    </tbody>
                  </table>
                  <% } %> 
				  
                  <!-- Partner Preferenzen -->
                  <% if(user_name != null){  %>
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle"> <div class="navsub"><a href='javascript:TarifPopup("pref_load.do")'> 
                          <%-- Pr&auml;ferenzen --%><bean:message key="adminmenue.prefs" /></a></div></td>
                    </tr>
                  </table>
				  
                  <!-- Für Schattierung und Rahmen -->
                  <table background="images/linie2.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr> 
                        <td><img src="images/lquer.gif" border="0" height="1"></td>
                      </tr>
                    </tbody>
                  </table>
                  <% } %> 
				  
                  <!-- Partner Logout -->
                  <% if(user_name != null){  %>
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">
                    <tr> 
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle">
						  <div class="navsub">
							  <a href="logout.jsp">
								  <%-- Logout --%><bean:message key="adminmenue.logout" />
							  </a>
						  </div>
					  </td>
                    </tr>
                  </table>
                  <% } %>

              <!-- Status -->
              <tr bgcolor="#000066"> 
                <td> <div class="navhead"><%-- Status --%><bean:message key="adminmenue.status" /></div></td>
              </tr>
              <tr> 
                <td> 

                  <!-- Tarif -->
				  <table border="0" cellspacing="0" cellpadding="0" width="100%" onmouseover="this.style.backgroundColor='#CCCCCC'" onmouseout="this.style.backgroundColor='white'">

<% if( (tarif != null) && (user_name != null) ){ %>
					<tr>
                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
                      <td valign="middle">
						  <div class="navsub">
						    <a href="tarif.jsp"><%=tarif.getDescription()%>&nbsp;<%-- Tarif --%><bean:message key="adminmenue.tarif" /></a>
						  </div>
					  </td>
					</tr>
<% } %>

                    <tr> 
<%--                      <td valign="top" width="13"> <div class="navsub"><img alt="" src="images/le_gruen.gif" border="0"></div></td>
--%>
                      <td valign="top" width="13"> <div class="navsub">&nbsp;</div>
					  </td>
<% if(user_name == null){ %>
                      <td valign="middle"> <div class="navsub"><a><%-- nicht eingeloggt --%><bean:message key="adminmenue.notloggedin" /></a></div>
					  </td>
<% }else{ %>
                      <td valign="middle"> <div class="navsub"><a><%-- Benutzer eingeloggt: --%><bean:message key="adminmenue.loggedin" /> <%=user_name %></a></div>
					  </td>
<% } %>
                    </tr>
					
                  </table>
				  
				  </td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>

<% if(!Const.WEBRUN) { %>
	<font color="#FF0000">WEBRUN=false</font>
	<br>
<% } %>
	
<% if(Const.TESTDATA) { %>
	<font color="#00FFFF">TESTDATA=true</font>
<% } %>