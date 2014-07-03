<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<table WIDTH="550" valign="top" align="left">
	<tr>
	<td>
		<div class="vpf">
			<div class="vprubrikhead"><%-- Demo WebShops --%><bean:message key="maintext.demoshops.rubrik"/>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#000066">
					<tr>
						<td><img border="0" src="images/lquer.gif" height="1"></td>    	
					</tr>
				</table>
			</div>
			
			<p></p>
			
			<table width="100%" border="0" cellspacing="0" cellpadding="5">  	<tr bgcolor="#F5F5F5">     		
          <td valign="top"> 
          <div class="vpheadsub">
		  <%-- Demo WebShops - Schauen Sie sich die Beispiele an --%><bean:message key="maintext.demoshops.head"/>
		  </div>			
              <div class="vpf" align="left"> 	      
				 <br/> 
				 <%-- Klicken Sie einfach auf die unteren Links und Sie gelangen auf die jeweilige Homepage des Betreibers.
				 Von dort auf ist der <em>publicWEBshop.com</em> über einen Link eingebunden.<br/>
				 Sehen Sie sich die verschiedenen Demo WebShops an und tätigen Sie eine Probebestellung.<br/>
				 Es kann nichts passieren, denn es sind nur fiktive Demo Bestellungen!
				  --%><bean:message key="maintext.demoshops.text1"/>			 
			  </div>
              <div class="vpf" align="center"> 	      
				  <br/> <br/>
 				  <a href="<%=Const.URL_WEB_APP%>/demo_dvd.jsp" target="_blank"> 
                  <img src="images/demo_dvd.gif" border="0" align="middle" vspace="0" hspace="0">	
				  <%-- A DVD WebShop in Engish  --%><bean:message key="maintext.demoshops.link1"/>
                  </a>
               <br/><br/>
              
				  <a href="<%=Const.URL_WEB_APP%>/demo_pizza.jsp" target="_blank"> 
				  <%-- Eine Pizzeria in Deutschland  --%><bean:message key="maintext.demoshops.link2"/>
                  <img src="images/demo_pizza.gif" border="0" align="middle" vspace="0" hspace="0">	
                  </a>
             <br/><br/>
              
				  <a href="<%=Const.URL_WEB_APP%>/demo_training.jsp" target="_blank"> 
                  <img src="images/demo_training.gif" border="0" align="middle" vspace="0" hspace="0">	
				  <%-- Eine deutsche Schulungsfirma (geschlossener WebShop)  --%><bean:message key="maintext.demoshops.link3"/>
                  </a>
				<br/><br/>
 		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>

