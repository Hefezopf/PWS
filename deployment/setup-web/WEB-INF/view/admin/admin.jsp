<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table WIDTH="550" valign="top" align="left">
	<tr>
	<td>
		<div class="vpf">
			<div class="vprubrikhead"><%--Administration--%><bean:message key="admintext.admin.rubrik"/> 
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
                <%--Administration - Konfiguration Ihres WebShops--%><bean:message key="admintext.admin.head"/>
 				</div>
   <br>				
                 <div class="vpf"> 
				<img src="images/Cart.gif" border="0" align="left" vspace="5" hspace="5">	
				   <br>
              <%--Konfigurieren Sie Ihren eigenen WebShop und nutzen Sie die zahlreichen 
              Gestaltungsmöglichkeiten zur Erfassung Ihrer Produkte. <br>
                <br>
				  Hier k&ouml;nnen Sie Artikel einstellen, sowie Stammdaten pflegen. 
                  Außerdem k&ouml;nnen Sie Ihren WebShop &uuml;ber den Men&uuml;punkt 
                  Pr&auml;ferenzen individuell konfigurieren.<br>
				  <br>Zunächst m&uuml;ssen Sie sich registrieren. Sie erhalten dann per Email einen Link mit Ihrer Id zugesandt.
				  Diesen integrieren Sie in Ihre Homepage.
			  
                  <br><br>Beispiellink:<br>
				   &lt;a href="<%=Const.URL_WEB_APP%>/list_items.do?partner_id=2&amp;language=en"&gt;Zu meinem WebShop...&lt;/a&gt;
				   <br>
                  <br>
				  
				 Sollten Sie schon registriert sein, geht es hier direkt zum--%><bean:message key="admintext.admin.text1"/> 
                 <a href="login.jsp"><%--Login--%><bean:message key="admintext.admin.link1"/></a>.
                 <br> <br>
                 <%--Das Anhängen der Endung <em>&amp;language=en</em> ist optional. 
				 <br>Sie haben momentan die Möglichkeit Ihren WebShop in Englisch oder Deutsch zu betreiben.
			  Entsprechend haben Sie die Wahl für folgenden Endungen:
			   <br><br>
                &amp;language=de<br>
               &amp;language=en--%><bean:message key="admintext.admin.text2"/>
			   <br><br>
			<br/>
		</div>
		</table>
	</td>
</tr>
</table>
