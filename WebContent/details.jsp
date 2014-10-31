<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<link rel=stylesheet type="text/css" href="shop.css" /> 

<html:html locale="true">

<head>
    <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico" />
  	<title><%=Const.TXT_TITLE%></title>
  
	<script language="JavaScript">
	
		function popup(bild, titel)
		{
			 MeinFenster = window.open(bild, titel, "width=500,height=200,scrollbars");
			 MeinFenster.focus();
		}
		
		function TextPopup(text, titel)
		{
			alert(text, titel);
		} 
		
	</script>

</head>

<body bgcolor='#${prefs.bgcolor}'>
<table width="500" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
    <tr> 
      <td> 
        <div align="left">             
	      <table width="100%" cellpading="1" cellspacing="1">
			<tr> 
			  <td class="shopHeaderRow1" align="left" valign="top" width="75%"><b>
			    <!-- Detailinformation --><bean:message key="shoptext.detailtitle"/></b>
			  </td>
 			</tr>
 			<tr> 
			  <td align="left" valign="top" class="shopHeaderRow2" width="75%"> 
				<!-- Alle Informationen des Produkts auf einen Blick. --> <bean:message key="shoptext.detaildesc"/>           
			  </td>
			</tr>      
          </table>
        </div>
      </td>
    </tr>
</table>

<br/>

<table width="500" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
    <tr> 
      <td> 
	     <div align="left">  
	      <table width="100%" cellpading="1" cellspacing="1">	 
              <tr>  			                  
          		<td width="68%" class="SpInfo">
					<strong><%=request.getParameter("item_title")%></strong>&nbsp;(<%=request.getParameter("item_no")%>)
					<br>
					<br>
					<br> 
					<%=request.getParameter("item_description")%>
					<br><br>
					<%=request.getParameter("item_detaildescription")%> <br>
					<br>			
				</td>

			    <td width="32%" class="SpInfo">
			      <img src="<%=request.getParameter("item_image")%>" />
			    </td>
			    <br>
                <br>
              </tr>		                    
        </table>
	      
        <table width="100%" cellpading="1" cellspacing="1">
          <tr> 
            <td width="70%" align="right" class="SpInfo"><!-- Unsere Preisempfehlung -->&nbsp;<bean:message key="shoptext.detailpreis"/> </td>
            <td width="30%" align="right" class="SpPreis"><%=request.getParameter("item_price")%>&nbsp;${sessionScope.prefs.currency}</td>
          </tr>
        </table>
      </div>
      </td>
    </tr>
</table>
</body>
</html:html>