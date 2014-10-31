<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Priv" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<form action='register.jsp' method='POST'>

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		<div class="vprubrikhead"><%-- Kostenlos Testen! --%><bean:message key="maintext.free.rubrik"/> 
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
			  <%-- Kostenlos Testen - Einen Monat ganz unverbindlich testen --%><bean:message key="maintext.free.head"/>
			</div>
              <div class="vpf">
				<img src="images/Cart.gif" border="0" align="left" vspace="5" hspace="5">	
				   <br/>
					<div align="center" class="vpf">
				     <%-- Ideal zum Kennenlernen! --%><bean:message key="maintext.free.text1"/>
					 <br> <br> 
					</div>
				
				   <a href="register.jsp"><%-- Registrieren --%><bean:message key="maintext.free.link1"/></a> <%-- Sie sich einfach und wählen Sie den "Free" Tarif.
				   <br/>
				   Nach Ablauf von einem Monat wird Ihr WebShop automatisch geschlossen und Sie können dann auch keine Artikel mehr verwalten. 
				   <br/>
				   Es wird nicht automatisch auf einen höheren Tarif gewechselt.
				   Sie entscheiden, ob Sie den Traif updaten möchten. Es entstehen also keine versteckten Kosten!				   <br/>
				   Sie können beim "Free" Tarif in dieser Zeit --%><bean:message key="maintext.free.text2"/>
				    <%= new String(""+Priv.PRIV_FREE_ALLOWED_AMOUNT_OF_ITEMS)%> <%-- Artikel Online verwalten 
					und somit den <em>publicWEBshop.com</em> unverbindlich testen.
					 --%><bean:message key="maintext.free.text3"/>
				    <br/>  <br/>
					
<div align="center" class="vpf"> 
<img src="images/free.gif" border="0" align="center" vspace="5" hspace="5">&nbsp;<%-- Kostenlos testen! --%><bean:message key="maintext.free.text4"/>
</div> 						
				 
				<br>				      
				   <input name="Submit" type='Submit' value='<%-- Kostenlos Testen! --%><bean:message key="maintext.free.btn1"/>' />
				  <br>
 		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>

</form>