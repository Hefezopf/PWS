<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="prefs" class="de.hopfit.model.Prefs" scope="session" />
<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<link rel=stylesheet type="text/css" href="formate.css" /> 

<%
 // String browser_lang = "de";
  String browser_lang = request.getHeader("Accept-Language").substring(0,2);
  request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale(browser_lang) );
%>


<html:html locale="true">

<head>
  <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico" />
  <title><%=Const.TXT_TITLE%></title> 
  
	<script language="JavaScript">
	
		var req;
		// AJAX function
		function validate() {
		   var idField = document.getElementById("userid");
		   var url = "validate?AJAXid=" + escape(idField.value);
		   if (window.XMLHttpRequest) {
			   req = new XMLHttpRequest();
		   } else if (window.ActiveXObject) {
			   req = new ActiveXObject("Microsoft.XMLHTTP");
		   }
		   req.open("GET", url, true);
		   req.onreadystatechange = callback;
		   req.send(null);
		}
		
		// AJAX function
		function callback() {
		    if (req.readyState == 4) { // complete
				if (req.status == 200) { // HTTP status
				   setMessage(req.responseText);
				}
			}
		}	

		// AJAX function
		function setMessage(message) {
			mdiv = document.getElementById("userIdMessage");
			if (message == "invalid") {
			   mdiv.innerHTML = "<div style=\"color:red\">Invalid User Id</ div>";
			} else {
			   mdiv.innerHTML = "<div style=\"color:green\">" + message + "</ div>";
			}
		}
	</script>
</head>

<body bgcolor='#FFFFFF'>

<table border='0' width='600' cellspacing='0' cellpadding='5'>
<tr bgcolor="#016D8A">
 	<td width="290"><a href="index.jsp"><img src="images/logo.gif" border="0" alt=""></a></td>
	<td width="100%" background="images/wolken.jpg"></td>
</tr>

<tr>
  <td width='150' valign='top'>
    <jsp:include page="/WEB-INF/view/common/nav.jsp"/>
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
    <jsp:include page="/WEB-INF/view/common/footer.jsp"/>
  </td>
</tr>

</table>

</body>

</html:html>

