<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="prefs" class="de.hopfit.model.Prefs" scope="session" />
<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<link rel=stylesheet type="text/css" href="shop.css" /> 

<!-- http://localhost:8080/pws/list_items.do?partner_id=2&language=en
 -->
<%     
        String userLang = (String)request.getParameter(Const.LANGUAGE); 
        if ( userLang != null ) 
		{
		    userLang = userLang.toLowerCase();
            session.setAttribute(Const.LANGUAGE, userLang); 
			if ( userLang.equals("de") ){ 
				request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("de") );
	        }else {//( userLang.equals("en") ) 
	            request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("en") );
			}
		}
		else 
		{    // Default ist en, wenn erster URL Aufruf ohne ..&language=xx
		    if(session.getAttribute(Const.LANGUAGE) == null){
				session.setAttribute(Const.LANGUAGE, "en"); 
				request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("en") );
			}
		}

%>

<html:html locale="true">

<head>
    <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico" />
  	<title><%=Const.TXT_TITLE%></title>
  
	<script language="JavaScript">
	
		function popup(bild, titel)
		{
			 MeinFenster = window.open(bild, titel, "width=550,height=300,scrollbars");
			 MeinFenster.focus();
		}
		
		function TextPopup(text, titel)
		{
			alert(text, titel);
		} 
		
	</script>

</head>

<% if(!Const.WEBRUN) { %>
	<font color="#FF0000">WEBRUN=false</font>
	<br>
<% } %>
	
<% if(Const.TESTDATA) { %>
	<font color="#00FFFF">TESTDATA=true</font>
<% } %>

<body bgcolor='#${prefs.bgcolor}'>
	<table border='0' width='600' cellspacing='0' cellpadding='5'>
		<tr>
		  <td width='50%' valign='top'>
 			<tiles:insert attribute='body' />
		  </td>
		  <td  width='50%' align='left' valign='top'>
 			<tiles:insert attribute='right' />
		  </td>
		</tr>
	</table>
</body>
 
</html:html>

