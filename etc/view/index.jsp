<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- <em>publicWEBshop.com</em> --%><bean:message key="maintext.index.rubrik"/>
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
	<%--	<a name="de"></a> --%>
			<div class="vpheadsub"><%-- Willkommmen bei <em>publicWEBshop.com</em> - ein Service f&uuml;r die Vermarktung Ihrer 
                Produkte via Internet.--%><bean:message key="maintext.index.head"/></div>
              <div class="vpf"> 
				 <img src="images/Cart.gif" border="0" align="left" vspace="5" hspace="5">	
                 <br/>
				 
				   <div align="center" class="vpf"> 	

				     <%-- Einfach - Einzigartig - Erfolgreich - der <em>publicWEBshop.com</em>
				     <br><br>	 
					 Sie haben bereits eine Homepage! <br>
					 Sie brauchen noch ein Online Bestellsystem? <br>
                     Die Lösung ist: <b><em>publicWEBshop.com</em>!</b>
					 --%>

			        	<bean:message key="maintext.index.text1"/>
		 
					 <br> <br>
					</div>
               
                <table width="433" cellpadding="0" cellspacing="0" dwcopytype="CopyTableRow">
                  <tbody>
	<tr>
		<td width="462" align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Keine Einrichtgebühr --%><bean:message key="maintext.index.advantage1"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Kostenlos testen --%><bean:message key="maintext.index.advantage2"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Sofort benutzbar --%><bean:message key="maintext.index.advantage3"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	
	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Email Benachrichtigung --%><bean:message key="maintext.index.advantage3_1"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	<tr>
		<td width="462" align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Einfache Bedienung --%><bean:message key="maintext.index.advantage4"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Schneller Einstieg --%><bean:message key="maintext.index.advantage5"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>

	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Frei Konfigurierbar --%><bean:message key="maintext.index.advantage6"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellpadding="0" cellspacing="0">
                                  <tbody>
							<tr>
								<td class="css1">
								<%-- Einfaches Einbinden in Ihre Homepage --%><bean:message key="maintext.index.advantage7"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	
	<tr>
		<td align="left">
			<table cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td valign="middle">
					<img alt="" width="23" height="22" src="images/check.gif">
					</td>
					<td valign="middle">
						<table cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="css1">
								<%-- Mehrsprachig --%><bean:message key="maintext.index.advantage8"/>
								</td>
							</tr>
						</tbody>
						</table>
					</td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
		
</tbody>
</table>				
	 <br>	<%--		
                 Konfigurieren Sie Ihren eigenen Warenkorb und profitieren Sie 
                  von diesem zus&auml;tzlichen und einzigartigen Vertriebsweg 
                  der Online-Vermarktung.<br>
                Das Einstellen Ihrer Artikel und die Nutzung von <em><%=Const.TXT_TITLE%></em> ist easy und f&uuml;r Sie in der Testverison 
                v&ouml;llig kostenlos und unverbindlich!
				 --%><bean:message key="maintext.index.text2"/>
				 <br>
				 <br>   
                <a href="free.jsp">
				<img src="images/free.gif" border="0" align="left" vspace="5" hspace="5">	
				<%--
				&nbsp;Testen Sie den WebShop 1 Monat kostenlos!
				 --%><bean:message key="maintext.index.link1"/>
				 </a> 
				  
                <br>						
                <br>  <br> 
				<%--
                Wie Ihr WebShop aussehen kann, sehen Sie in einem der 
				--%><bean:message key="maintext.index.text3"/>
				<a href="demoshops.jsp">
				<%-- Demo WebShops
				  --%><bean:message key="maintext.index.link2"/></a>.
				<br>	
                <br>
               <%--
				Sie brauchen sich nur zu registrieren, Ihre 
                Stammdaten sowie Ihre Artikel eingeben und los geht's mit der 
                Online-Vermarktung Ihrer Produkte.<br>
				Ihre Daten k&ouml;nnen Sie 
                jederzeit bequem und einfach &auml;ndern. Der WebShop unterst&uuml;tzt 
                Mehrsprachigkeit, derzeit Englisch und Deutsch.<br>
				Nach erfolgter 
                Registierung bekommen Sie einen Link mit Ihrer ID zugesendet. 
                <br> <br>
                Sie m&uuml;ssen nur diesen Link auf Ihrer Homepage platzieren. 
                Das kann dann so aussehen:
				  --%><bean:message key="maintext.index.text4"/>
				<br>
                <a href="<%=Const.URL_WEB_APP%>/list_items.do?partner_id=2&amp;language=en" target="_blank">
				<%-- zu meinem WebShop... --%><bean:message key="maintext.index.link3"/>
				</a>
				 <br> <br>
                  <%-- Einfach  --%><bean:message key="maintext.index.text5"/>
				  <a href="register.jsp"><%-- Registieren
				   --%><bean:message key="maintext.index.link4"/></a>
				   <%-- und schon k&ouml;nnen 
                  Sie den <em><%=Const.TXT_TITLE%></em> ausprobieren. 
				   --%><bean:message key="maintext.index.text6"/>
				  <br><br>
		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>
