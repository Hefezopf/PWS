<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"%>

   
<table WIDTH="550" valign="top" align="left">
	<tr>
	<td>
		<div class="vpf">
			<div class="vprubrikhead">
			     <%-- FAQ --%><bean:message key="maintext.faq.rubrik"/>
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
              <div class="vpheadsub">
			  <%-- FAQ - Häufig gestellte Fragen --%><bean:message key="maintext.faq.head"/>
			  </div>
              <div class="vpf"> 
					<img src="images/Cart.gif" border="0" align="left" vspace="5" hspace="5">
					 <br/>
					 <%-- Hier finden Sie Antworten auf Fragen, die im Umgang mit <em>publicWEBshop.com</em> auftreten. 
					 Informieren Sie sich hier über allgemeine und technische Fragen.
					  --%><bean:message key="maintext.faq.text1"/>
					  <br/>				              
                   <br/><br/>
			  </div>   
			     

           <f:view>
		   
	         <f:loadBundle basename="faq_messages" var="faq_messages" />

        <%--      <t:saveState id="ss1" value="#{tabbedPaneBean}" /> --%> 
             <t:panelTabbedPane bgcolor="#F5F5F5" >
              <t:panelTab id="tab1" label="#{faq_messages['label_tab_1']}" rendered="true"> 
            <%--     <t:panelTab id="tab1" label="#{tabName.tabHeader2}" rendered="true"> --%> 
 			   <f:verbatim>
			    <div class="vpf"> 
			    <br/>
                <b><%-- Was passiert mit dem Tarif am Ende der Laufzeit?
				 --%><bean:message key="maintext.faq.Q1"/></b><br/>
               <%-- Der WebShop wird als geschlossen markiert.
				  Sie können dann jederzeit den Tarif updaten, um den WebShop weiter zu betreiben.
				--%><bean:message key="maintext.faq.A1"/>
				<br/><br/>
                <b><%-- Welche Sprachen werden unterstützt?
				--%><bean:message key="maintext.faq.Q2"/></b><br/>
                <%-- Momentan werden Englisch und Deutsch unterstützt.
				--%><bean:message key="maintext.faq.A2"/>
				<br/><br/>
                <b><%-- Wie kann ich meinen WebShop konfigurieren?
				--%><bean:message key="maintext.faq.Q3"/></b><br/>
                 <%-- Die Pr&auml;ferenzen bieten vielseitige Möglichkeiten zur 
                    Konfiguration. Einloggen und auf Pr&auml;ferenzen klicken.
				--%><bean:message key="maintext.faq.A3"/>
				<br/><br/>
                <b><%-- Wie kann ein Abbildung eines Artikels gel&ouml;scht werden?
				--%><bean:message key="maintext.faq.Q4"/></b><br/>
                <%-- Artikel l&ouml;schen und neu eingeben.
				--%><bean:message key="maintext.faq.A4"/>
			    <br/>
				<br/>  
								
                <b><%-- Wer kann sich als Nutzer anmelden?
				--%><bean:message key="maintext.faq.Q5"/></b><br/>  
                    <%-- Jeder der selbst eine Gesch&auml;ft betreibt.
					--%><bean:message key="maintext.faq.A5"/>
				<br/><br/>
                <b><%-- Kann ich meinen Partnerbereich sofort nach der Anmeldung nutzen?
				--%><bean:message key="maintext.faq.Q6"/></b><br/>  
                  <%-- Ja. Sofort nach Ihrer Anmeldung erhalten Sie eine Begr&uuml;&szlig;ungs-Email 
                    mit einem Link. Nach der Aktivierung steht Ihnen der gesamte 
                    Webshop sofort zur Verf&uuml;gung.
					--%><bean:message key="maintext.faq.A6"/>
                <br/><br/>
                <b><%-- Wie wird meine Bestellung eigentlich &uuml;bermittelt?
				--%><bean:message key="maintext.faq.Q7"/></b><br/>
                 <%-- Ihre Bestellung wird per Email oder Fax gesendet. Zus&auml;tzlich erhalten 
                    Sie per Email immer eine Kopie der Bestellung.
					--%><bean:message key="maintext.faq.A7"/>
				<br/><br/>
                <b><%-- Wie lange dauert es, bis meine Bestellung &uuml;bermittelt 
                wird?
				--%><bean:message key="maintext.faq.Q8"/>
				</b><br/>  
                  <%-- Im Normalfall wird die Bestellung innerhalb einer Minute 
                    &uuml;bermittelt. Manchmal kann es jedoch auch vorkommen, 
                    wenn das Faxger&auml;t des Lieferdienstes z.B. gerade besetzt 
                    ist, dass sich die &Uuml;bermittlung Ihrer Bestellung um einige 
                    Minuten verz&ouml;gert.
					--%><bean:message key="maintext.faq.A8"/>
				<br/>	<br/>
                <b><%-- Was passiert, wenn das Faxger&auml;t des Lieferanten eine 
                St&ouml;rung hat?
				--%><bean:message key="maintext.faq.Q9"/></b> <br/> 
                  <%-- Die &Uuml;bermittlung der Bestellungen wird permanent &uuml;berwacht. 
                    Wenn eine Bestellung nicht richtig &uuml;bermittelt werden 
                    kann, dann wird der Fehler vom System erkannt. Der Lieferant 
                    wird dann entweder telefonisch oder per SMS sofort informiert. 
                    Zus&auml;tzlich erhalten Sie per Email eine entsprechende 
                    Benachrichtigung.
					--%><bean:message key="maintext.faq.A9"/>
					<br/>
	         </div>      
             </f:verbatim>  
            </t:panelTab>

            <t:panelTab id="tab2" label="#{faq_messages['label_tab_2']}" rendered="true">
               <f:verbatim>
				<div class="vpf"> 
				
                  <b><%-- Kann ich HTML Markup in den Texten benutzen?
				  --%><bean:message key="maintext.faq.Q10"/></b><br/>
				  <%-- Ja, in den frei formulierten Texten kann HTML code eingebeben 
                    werden, z.B. um Text Fett darzustellen &lt;b&gt;fetter Text&lt;/b&gt;.
					--%><bean:message key="maintext.faq.A10"/>
				  <br/><br/>	
                  <b><%-- Wie kann die Webservice Schnittstelle angesprochen werden?
				  --%><bean:message key="maintext.faq.Q11"/></b><br/>
				  <%-- Es muss die WSDL heruntergeladen werden (http://www.publicwebshop.com/pws/services/WSInfo?wsdl). 
				 <br/>In dieser Datei stehen die für WebServices freigegebenen Aufrufe.
				 --%><bean:message key="maintext.faq.A11"/>
				<br/><br/>
				
              </div> 
			  
             </f:verbatim>  			   
            </t:panelTab>
           </t:panelTabbedPane>
          </f:view>
	
 		</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>

   

