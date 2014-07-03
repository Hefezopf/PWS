<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%-- 
<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />
 --%>
<table WIDTH="550" valign="top" align="left">
	<tr>
	<td>
		<div class="vpf">
			
        <div class="vprubrikhead"><%-- AGB --%><bean:message key="maintext.agb.rubrik"/>
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
			  <%-- AGB - Allgemeine Gesch&auml;ftsbedingungen --%><bean:message key="maintext.agb.head"/>
			  </div>			
              <div class="vpf"> 
				  <img src="images/Cart.gif" border="0" align="left" vspace="5" hspace="5">	
                    <br/>
					<%-- 
                  &sect;1 Allgemeine Leistungen:<br/>
                  <em>publicWEBshop.com</em> stellt eine &uuml;ber das Internet erreichbare 
                    Dienstleistung dar, deren Gegenstand es ist, direkte Bestellungen 
                    bei unseren Partner-Lieferservicen zu vermitteln. Die Leistung 
                    wird erbracht von Markus Hopf System- und Unternehmensberatung 
                    (im folgenden &Uuml;bermittler). Eine Gew&auml;hr f&uuml;r 
                    die Richtigkeit der Daten wird dabei nicht &uuml;bernommen. 
                    Anspruch auf Vollst&auml;ndigkeit der Daten besteht nicht.
                <br/>
                    &sect;2 Leistungen des &Uuml;bermittlers:<br/>
                    a) der &Uuml;bermittler erm&ouml;glicht direkte Bestellvorg&auml;nge 
                    im Internet nach Vorgabe des Warenangebots des Partner-Lieferservices. 
                    Der Partner-Lieferservice erh&auml;lt die Bestellung durch 
                    Weiterleitung auf sein Faxger&auml;t oder Email Account. Technisch 
                    bedingte zeitliche Verz&ouml;gerungen im Bereich einiger Minuten 
                    sind dabei nicht auszuschlie&szlig;en.<br/>
                    b) F&uuml;r die in &sect; 2 bezeichneten Leistungen zahlt 
                    der Partner-Lieferservice die im Leistungsangebot ausgewiesenen 
                    oder die in der Vereinbarung festgelegten Preise.<br/>
                    c) Der &Uuml;bermittler sagt eine Erreichbarkeit des Webservers 
                    von 95 % im Jahresmittel zu. Hiervon ausgenommen sind Zeiten, 
                    in denen der Webserver Aufgrund von technischen oder sonstigen 
                    Problemen, die nicht im Einflussbereich des &Uuml;bermittlers 
                    liegen (h&ouml;here Gewalt, Verschulden Dritter etc.) &uuml;ber 
                    das Internet nicht zu erreichen ist.
                  <br/>
                    &sect;3 Leistungen des Partner-Lieferservices:<br/>
                    a) Es obliegt den Partner-Lieferservicen, die Identit&auml;t 
                    des Bestellers zu verifizieren, da der &Uuml;bermittler keine 
                    Gew&auml;hr f&uuml;r wahrheitsgem&auml;&szlig;e Angaben des 
                    Bestellers &uuml;bernimmt. Der &Uuml;bermittler &uuml;bernimmt 
                    keine Haftung f&uuml;r Sch&auml;den, die aus Fehlzustellungen 
                    der Partner-Lieferservice entstehen.<br/>
                    b) F&uuml;r die in &sect; 2 bezeichneten Leistungen zahlt 
                    der Partner-Lieferservice die im Leistungsangebot ausgewiesenen 
                    Preise.<br/>
                    c) Der &Uuml;bermittler stellt seine Leistungen zum 25. eines 
                    Monats in Rechnung. 
                    Alle vereinbarten Preise und Pauschalen sind sofort nach 
                    Rechnungsstellung f&auml;llig. F&uuml;r den Fall, dass der 
                    Partner-Lieferservice seine Zahlungsverpflichtung nicht rechtzeitig 
                    erf&uuml;llt, schuldet er vom F&auml;lligkeitszeitpunkt an 
                    zus&auml;tzlich Zinsen in H&ouml;he von 1,5 % monatlich.<br/>
                    f) Sollte sich der Partner-Lieferservice l&auml;nger als eine 
                    Woche mit seinen f&auml;lligen Zahlungen in Verzug befinden, 
                    darf der &Uuml;bermittler bis zum Ausgleich aller Forderungen 
                    das Angebot des Partner-Lieferservices f&uuml;r Abrufe Dritter 
                    sperren.<br/>
                    g) Bei allen vereinbarten Preisen handelt es sich um Festpreise. Eine R&uuml;ckerstattung 
                    an den Partner-Lieferservicen ist ausgeschlossen.
                <br/>
                    &sect;4 Preis&auml;nderung:<br/>
                    Der &Uuml;bermittler ist berechtigt, die Preise nach schriftlicher 
                    Vorank&uuml;ndigung mit einer Frist von einem Monat zu erh&ouml;hen. 
                    In diesem Fall hat der Partner-Lieferservice das Recht, den 
                    Vertrag ohne Einhaltung einer Frist zu dem Termin zu k&uuml;ndigen, 
                    an dem die Preis&auml;nderung wirksam wird, wenn die Preisanhebung 
                    &uuml;ber die allgemeine Preissteigerung wesentlich hinausgeht.
                <br/>
                    &sect;5 Dauer des Vertrages, K&uuml;ndigung:<br/>
                    a) Die Nutzung von <em>publicWEBshop.com</em> ist unbefristet m&ouml;glich, 
                    beginnend mit dem Datum des Beginns der Leistungserbringung 
                    durch <em>publicWEBshop.com</em>. Einer Angabe von Gr&uuml;nden Bedarf es f&uuml;r 
                    die K&uuml;ndigung nicht. Geleistete Zahlungen f&uuml;r Service-Dienstleistungen 
                    k&ouml;nnen nicht erstattet werden.<br/>
                    b) Das Recht zur fristlosen K&uuml;ndigung aus wichtigem Grund 
                    bleibt davon unber&uuml;hrt. Als wichtiger Grund f&uuml;r 
                    die K&uuml;ndigung des Vertrages durch den &Uuml;bermittler 
                    gilt insbesondere
                  &#8226; Ein Versto&szlig; des Partner-Lieferservicen gegen 
                    gesetzliche Verbote, insbesondere die Verletzung strafrechtlicher, 
                    urheberrechtlicher, wettbewerbsrechtlicher, namensrechtlicher 
                    oder datenschutzrechtlicher Bestimmungen
                  &#8226; Ein Zahlungsverzug, der l&auml;nger als zwei Wochen 
                    andauert.
                  &#8226; Die Fortsetzung sonstiger Vertrags-Verst&ouml;&szlig;e 
                    nach Abmahnung durch den &Uuml;bermittler
                  &#8226; Eine grundlegende &Auml;nderung der rechtlichen oder 
                    technischen Standards im Internet, wenn es f&uuml;r den &Uuml;bermittler 
                    dadurch unzumutbar wird, seine Leistungen ganz oder teilweise 
                    weiter zu erbringen.
                <br/>
                    &sect;6 Leistungsangebot und allgemeine Gesch&auml;ftsbedingungen:<br/>
                    Der &Uuml;bermittler erbringt seine Leistungen im &uuml;brigen 
                    nach Ma&szlig;gabe seines Leistungsangebots und seiner allgemeinen 
                    Gesch&auml;ftsbedingungen. Leistungsangebot und allgemeine 
                    Gesch&auml;ftsbedingungen sind Bestandteil dieses Vertrags 
                    und liegen dem Partner-Lieferservicen vor und sind auf der 
                    Website einsehbar.
                  <br/>
                    &sect;7 Leistungen des &Uuml;bermittlers:<br/>
                    a) Soweit nicht ausdr&uuml;cklich anders vereinbart, darf 
                    der &Uuml;bermittler die ihm obliegenden Leistungen auch von 
                    fachkundigen Mitarbeitern oder Dritten erbringen lassen.<br/>
                    b) Soweit einzelne Leistungen des &Uuml;bermittlers nach zeitlichem 
                    Aufwand abgerechnet werden, hat der Partner-Lieferservice 
                    Anspruch auf monatliche Abrechnungen. Darin soll die Art der abgerechneten Leistung 
                    und die aufgewendete Zeit bezeichnet werden.
                <br/>
                    &sect;8 Rechte Dritter:<br/>
                    a) Der Partner-Lieferservice versichert ausdr&uuml;cklich, 
                    dass die Bereitstellung und Ver&ouml;ffentlichung der Inhalte 
                    der von ihm eingestellten nach seinen Informationen und/oder 
                    f&uuml;r ihn vom &Uuml;bermittler erstellten Webseiten weder 
                    gegen deutsches noch gegen sein hiervon gegebenenfalls abweichendes 
                    Heimatrecht, insbesondere Urheber-, Datenschutz- und Wettbewerbsrecht, 
                    verst&ouml;&szlig;t. Der &Uuml;bermittler beh&auml;lt sich 
                    vor, Seiten, die inhaltlich bedenklich erscheinen, von einer 
                    Speicherung auf seinem Server auszunehmen. Den Anbieter wird 
                    er von einer etwa vorgenommenen L&ouml;schung der Seiten unverz&uuml;glich 
                    informieren. Das Gleiche gilt, wenn der &Uuml;bermittler von 
                    Dritter Seite aufgefordert wird, Inhalte auf seinen Webseiten 
                    zu &auml;ndern oder zu l&ouml;schen, weil sie angeblich fremde 
                    Rechte verletzen. Es entsteht f&uuml;r den &Uuml;bermittler 
                    keine Pr&uuml;fungspflicht.
                <br/>
                    &sect; 9 Datenschutz:<br/>
                    a) Falls nicht ausdr&uuml;cklich schriftlich anders vereinbart, 
                    gelten die durch <em>publicWEBshop.com</em> unterbreiteten Informationen als vertraulich.<br/>
                    b) Der Partner-Lieferservice ist damit einverstanden, dass 
                    pers&ouml;nliche Daten (Bestandsdaten) und andere Informationen, 
                    die sein Nutzungsverhalten betreffen (z.B. Zeitpunkt, Anzahl 
                    und Dauer der Verbindungen und Bestellvorg&auml;nge usw.), 
                    vom &Uuml;bermittler w&auml;hrend der Dauer des Vertragsverh&auml;ltnisses 
                    gespeichert werden, soweit dies zur Erf&uuml;llung des Vertragszweck, 
                    insbesondere f&uuml;r Abrechnungszwecke, erforderlich ist. 
                    Mit der Speicherung erkl&auml;rt er sein Einverst&auml;ndnis. 
                    Die erhobenen Bestandsdaten verarbeitet und nutzt der &Uuml;bermittler 
                    auch zur Beratung seiner Partner - Lieferservice, zur Werbung 
                    und zur Marktforschung f&uuml;r eigene Zwecke und zur Bedarfsgerechten 
                    Gestaltung seiner Telekommunikationsleistungen. Der Partner 
                    - Lieferservice kann einer solchen Nutzung seiner Daten widersprechen.<br/>
                    c) Der &Uuml;bermittler verpflichtet sich, dem Partner-Lieferservice 
                    auf verlangen jederzeit &uuml;ber den gespeicherten Datenbestand, 
                    soweit er ihn betrifft, vollst&auml;ndig und unentgeltlich 
                    Auskunft zu erteilen. Der &Uuml;bermittler wird weder diese 
                    Daten noch den Inhalt privater Nachrichten des Partner-Lieferservices 
                    ohne dessen Einverst&auml;ndnis an Dritte weiterleiten. Dies 
                    gilt nur insoweit nicht, als der &Uuml;bermittler gesetzlich 
                    verpflichtet ist, Dritten, insbesondere staatlichen Stellen, 
                    solche Daten zu offenbaren oder soweit international anerkannte 
                    technische Normen dies vorsehen und der Partner- Lieferservice 
                    nicht widerspricht.<br/>
                    d) Der &Uuml;bermittler weist den Partner-Lieferservice ausdr&uuml;cklich 
                    darauf hin, dass der Datenschutz f&uuml;r Daten&uuml;bertragungen 
                    in offenen Netzen, wie dem Internet, nach dem derzeitigen 
                    Stand der Technik nicht umfassend gew&auml;hrleistet werden 
                    kann. Der Partner-Lieferservice wei&szlig;, dass der &Uuml;bermittler 
                    das auf dem Webserver gespeicherte Seitenangebot und unter 
                    Umst&auml;nden auch weitere dort abgelegte Daten des Partner-Lieferservices 
                    aus technischer Sicht jederzeit einsehen kann. Auch andere 
                    Teilnehmer am Internet sind unter Umst&auml;nden technisch 
                    in der Lage, unbefugt in die Netzsicherheit einzugreifen und 
                    den Nachrichtenverkehr zu kontrollieren.
                <br/>
                    &sect;10 Haftungsbeschr&auml;nkung:<br/>
                    a) Der Partner-Lieferservice und der Besteller erkl&auml;rt 
                    sich ausdr&uuml;cklich damit einverstanden, dass die Nutzung 
                    des Dienstes auf seine eigene Gefahr erfolgt.<br/>
                    b) Der Partner-Lieferservice und der Besteller haftet f&uuml;r 
                    jegliche Inanspruchnahme des Dienstes, die durch die Benutzerkennung 
                    des Partner-Lieferservicen oder der von ihm bezeichneten Benutzer 
                    erfolgt.<br/>
                    c) Weder <em>publicWEBshop.com</em> noch dessen Informationslieferanten, Lizenzgeber, 
                    Angestellte oder Vertreter gew&auml;hrleisten, dass der Dienst 
                    ununterbrochen und fehlerfrei zur Verf&uuml;gung steht, ebenso 
                    wenig sichern die vorgenannten Personen zu oder &uuml;bernehmen 
                    die Gew&auml;hrleistung daf&uuml;r, dass durch die Benutzung 
                    der Dienste bestimmte Ergebnisse erzielt werden k&ouml;nnen.<br/>
                    d) Der Dienst wird so erbracht, wie er aktuell vorliegt, ohne 
                    dass irgendeine ausdr&uuml;ckliche oder stillschweigende Zusicherung 
                    insbesondere hinsichtlich des Bestehens von Urheber- oder 
                    sonstigen Rechten, der Handelstauglichkeit oder der Eignung 
                    f&uuml;r einen bestimmten Zweck gegeben wird.<br/>
                    e) Die vorstehenden Haftungsausschl&uuml;sse gelten nicht, 
                    soweit nach den auf diese Vereinbarung anwendbaren Gesetzen 
                    gehaftet wird.<br/>
                    f) Weder <em>publicWEBshop.com</em> noch andere Personen, die an der Entwicklung, 
                    Herstellung oder Bereitstellung des Dienstes beteiligt sind, 
                    Haften f&uuml;r Sch&auml;den aller Art, insbesondere nicht 
                    f&uuml;r Folgesch&auml;den wie entgangener Gewinn, die im 
                    Rahmen der Benutzung des Dienstes oder der Unm&ouml;glichkeit 
                    oder Erschwerung der Benutzung des Dienstes oder als Folge 
                    der Verletzung einer Gew&auml;hrleistungs-Verpflichtung entstanden 
                    sind.<br/>
                    g) Der Partner-Lieferservice erkennt ausdr&uuml;cklich an, 
                    dass die Bedingungen dieser Bestimmung auch f&uuml;r Drittlieferungen 
                    gelten. Der &Uuml;bermittler haftet f&uuml;r Sch&auml;den, 
                    die von ihm oder seinen Erf&uuml;llungsgehilfen grob fahrl&auml;ssig 
                    oder vors&auml;tzlich herbeigef&uuml;hrt wurden. Bei der Verletzung 
                    wesentlicher Vertragspflichten ist die Haftung in F&auml;llen 
                    einfacher Fahrl&auml;ssigkeit bei Verm&ouml;genssch&auml;den 
                    der Art nach auf vorhersehbare, unmittelbare Sch&auml;den 
                    und der H&ouml;he nach auf die H&ouml;he der je nach Tarif 
                    angefallenen Geb&uuml;hr f&uuml;r ein Jahr beschr&auml;nkt. 
                    Im &uuml;brigen ist die Haftung ausgeschlossen.
                <br/>
                    &sect;11 Freistellung<br/>
                    Der Partner-Lieferservice verpflichtet sich, den &Uuml;bermittler 
                    im Innenverh&auml;ltnis (zwischen &Uuml;bermittler und Partner-Lieferservice) 
                    von allen etwaigen Anspr&uuml;chen Dritter freizustellen, 
                    die auf rechtswidrigen Handlungen des Partner-Lieferservicen 
                    oder inhaltlichen Fehlern der von diesem zur Verf&uuml;gung 
                    gestellten Informationen oder der &uuml;ber das Internet bestellten 
                    Waren beruhen. Dies gilt insbesondere f&uuml;r Urheber-, Datenschutz- 
                    und Wettbewerbsrechtsverletzungen.
                <br/>
                    &sect;12 Anwendbares Recht, Gerichtsstand<br/>
                    Der Vertrag unterliegt deutschem Recht. Sofern der Partner-Lieferservice 
                    Vollkaufmann ist, sind die f&uuml;r den Sitz des &Uuml;bermittlers 
                    &ouml;rtlich zust&auml;ndigen Gerichte ausschlie&szlig;lich 
                    zust&auml;ndig. Der &Uuml;bermittler kann Klagen gegen den 
                    Partner-Lieferservicen auch an dessen Wohn- oder Gesch&auml;ftssitz 
                    erheben.
                <br/>
                    &sect;13 Sonstiges:<br/>
                    a) &Auml;nderungen oder Erg&auml;nzungen dieses Vertrages 
                    gelten nur dann, wenn sie schriftlich vereinbart wurden. das 
                    gilt auch f&uuml;r eine &Auml;nderung dieser Schriftformklausel.<br/>
                    b) Alle Erkl&auml;rungen des &Uuml;bermittlers k&ouml;nnen 
                    auf elektronischem Weg an den Partner-Lieferservicen gerichtet 
                    werden. Dies gilt auch f&uuml;r Abrechnungen im Rahmen des 
                    Vertragsverh&auml;ltnisses.<br/>
                    c) Der Partner-Lieferservice kann mit Forderungen gegen&uuml;ber 
                    dem &Uuml;bermittler nur aufrechnen, wenn sie anerkannt oder 
                    rechtskr&auml;ftig festgestellt sind. Sollte eine Bestimmung 
                    dieses Vertrages unwirksam sein oder werden oder sollte der 
                    Vertrag eine ausf&uuml;llungsbed&uuml;rftige L&uuml;cke enthalten, 
                    so ber&uuml;hrt dies die Wirksamkeit der &uuml;brigen Bestimmungen 
                    nicht. An die Stelle der unwirksamen Bestimmung oder der L&uuml;cke 
                    tritt eine dem wirtschaftlichen Zweck der Vereinbarung nahe 
                    kommende Regelung, die von den Parteien vereinbart worden 
                    w&auml;re, wenn sie die Unwirksamkeit der Bestimmung gekannt 
                    h&auml;tten. 
					  <br/> <br/>
                M&uuml;nchen, den 21.12.2005
                <br/>
                  Ihr <em>publicWEBshop.com</em> Team
				 --%><bean:message key="maintext.agb.text1"/>		
		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>
