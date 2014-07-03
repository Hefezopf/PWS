<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<%@ page import="de.hopfit.model.Tarif" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%-- Report any errors (if any) --%>
<html:errors />

<form action='tarif.do' method='POST'>

<table WIDTH="550" valign="top" align="left">
	<tr>
	<td>
		<div class="vpf">
			<div class="vprubrikhead"><%-- Tarif --%><bean:message key="admintext.tarif.rubrik"/>
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
		  <%-- Tarif - Deitails zu Ihrem momentanen Tarif
		   --%><bean:message key="admintext.tarif.head"/>
		  </div>			
              <div class="vpf"> 
			  	<br>       
				  <%-- Wenn Sie den gleichen Tarif Updaten wollen, 
				  so verl&auml;ngert sich der Tarif um die jeweilige Laufzeit.<br>
				  Weitere Infos zu den Leistungen finden Sie&nbsp; 
				   --%>
				   <bean:message key="admintext.tarif.text0"/>&nbsp;<a href="features.jsp"><%-- hier --%><bean:message key="admintext.tarif.link1"/></a>.
	      
 <br/> 
 <br/>

<table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5">
              <tr> 
                <td width="30%" valign="top"><%-- Benutzername --%><bean:message key="admintext.tarif.text1"/></td>  
                <td width="70%" valign="top"><%=(String)session.getAttribute(Const.USER) %></td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top"><%-- Tarif --%><bean:message key="admintext.tarif.text2"/></td>  
                <td width="70%" valign="top">${tarif.description}</td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top"><%-- Abschlussdatum --%><bean:message key="admintext.tarif.text3"/></td>  
                <td width="70%" valign="top">${tarif.create_date}</td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top"><%-- Ablaufdatum --%><bean:message key="admintext.tarif.text4"/></td>  
                <td width="70%" valign="top">${tarif.expire_date}</td>		
			  <tr/> 
              <tr> 
                <td width="30%" valign="top"><%-- Grundpreis --%><bean:message key="admintext.tarif.text5"/></td>  
                <td width="70%" valign="top">${tarif.baseprice}&nbsp;€</td>		
			  <tr/>
              <tr> 
                <td width="30%" valign="top"><%-- Transaktionspreis --%><bean:message key="admintext.tarif.text6"/></td>  
                <td width="70%" valign="top">${tarif.min_tx_price}&nbsp;€</td>		
			  <tr/> 
			  
		  <tr>     		
              <td valign="middle">
				<%-- Tarif update --%><bean:message key="admintext.tarif.text7"/>		
			  </td>
              <td valign="top">

  <% String art = (String) request.getParameter("tarif"); %>
  <% Tarif session_tarif = (Tarif) session.getAttribute("tarif"); %>
  <% String s_tarif = session_tarif.getDescription(); %>
  

 <% if(s_tarif.equals(Tarif.FREE_TARIF_TEXT) || s_tarif.equals(Tarif.BASIC_TARIF_TEXT) ) {%>
 <input type="radio" name="tarif" id="2"
					 
					  <% if((art!=null) && (art.equals(Tarif.BASIC_TARIF_TEXT)))
						  { %>
                            checked
					  <% } %>
					  value="<%=Tarif.BASIC_TARIF_TEXT %>"/>Base
					 					
					
<br>
<% } %>

<% if(s_tarif.equals(Tarif.FREE_TARIF_TEXT) || s_tarif.equals(Tarif.BASIC_TARIF_TEXT) || s_tarif.equals(Tarif.PRO_TARIF_TEXT)) {%>
<input type="radio" name="tarif" id="3"
					
					  <% if((art!=null) && (art.equals(Tarif.PRO_TARIF_TEXT)))
						  { %>
                            checked
					  <% } %>
					  value="<%=Tarif.PRO_TARIF_TEXT %>"/>Pro
<br>					 					
<% } %>
			   
<%--
<% if(s_tarif.equals(Tarif.PRO_TARIF_TEXT)) {%>
--%>

<!-- Sie können nicht mehr updaten!
 -->
 
 <%--
 <% } %>
--%>			  </td>
		  </tr>
			  
		  <tr>     		
              <td valign="bottom">
				<input type='Submit' value='<%-- Update --%><bean:message key="admintext.tarif.btn1"/>' />
				<input type='hidden' name='kunde' value=${param.kunde} />		
			  </td>
              <td valign="top">		   
			  </td>
		  </tr>
			  
       </table>
	

       <br>
       <br>
        <br>
        <br/>
		</div>    
			</td>  	
			</tr>
		</table>
	</div>
</td>
</tr>
</table>

</form>
