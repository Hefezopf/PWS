<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Tarif" %>
<%@ page import="de.hopfit.util.Const" %>
<%@ page import="java.util.Calendar" %>

<%
 // String browser_lang = "de";
  String browser_lang = request.getHeader("Accept-Language").substring(0,2);
  request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale(browser_lang) );
%>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<link rel=stylesheet type="text/css" href="formate.css" /> 

<html:html locale="true">

<head>
  <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico" />
  <title><%=Const.TXT_TITLE%></title>

<script language="JavaScript">
function popupGross(bild, titel)
{
 MeinFenster =
 window.open(bild, titel, "width=900,height=600,scrollbars");
 MeinFenster.focus();
}

function TarifPopup(url)
{
<%   Tarif session_tarif = (Tarif) session.getAttribute("tarif"); 
     if(session_tarif != null){ 
        if(session_tarif.getExpired() == null){
%>
			alert("<%-- Der Tarif ist abglaufen.\nLoggen Sie sich ein und updaten Sie Ihren Tarif unter Menüpunkt Status->Tarif --%><bean:message key='adminlayout.text1'/>");
	         return;
<%		}
	 }
%>  
    		
	top.location.href=url;
}
</script>

</head>

<body>

<table border='0' width='600' cellspacing='0' cellpadding='5'>

<tr bgcolor="#016D8A">
 	<td width="290"><a href="index.jsp"><img src="images/logo.gif" border="0" alt=""></a></td>
	<td width="100%" background="images/wolken.jpg">&nbsp;</td>
</tr>

<tr>
  <td width='150' valign='top'>
   <jsp:include page="/WEB-INF/view/common/nav_admin.jsp"/>
  </td>
  <td align='left' valign='top'>
    <tiles:insert attribute='body' />
  </td>
</tr>

<tr>
  <td width='150'>
    <!-- nothing here -->
  </td>
  <td align='right'>
    <jsp:include page="/WEB-INF/view/common/footer_admin.jsp"/> 
  </td>
</tr>

</table>

</body>

</html:html>

