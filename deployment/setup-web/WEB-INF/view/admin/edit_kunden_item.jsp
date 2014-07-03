<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<html:errors />

<html:form method="post" action="/save_kunden_item.do" enctype="multipart/form-data" >

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">		
      <div class="vprubrikhead"><%-- Artikel &auml;ndern --%><bean:message key="admintext.edit_kunden_item.rubrik"/>
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
	                <%-- Artikel &auml;ndern --%><bean:message key="admintext.edit_kunden_item.head"/>
 				</div>
 				<br>              
                <div class="vpf">
				 <%-- Ändern Sie hier den Artikel --%><bean:message key="admintext.edit_kunden_item.text0"/>
					<br>
					<br>
 				</div>              
		  </table>

		
		<table class="vpf" width="100%" border="0" cellspacing="0" cellpadding="5"> 
			<tr bgcolor="#F5F5F5">
				<td></td>
			</tr>			
			<tr bgcolor="#F5F5F5">
				<td><input type='hidden' name='item_id' value='<%=request.getAttribute(Const.ITEM_ID)%>' /></td>
			</tr>

			<tr bgcolor="#F5F5F5">
				<td><%-- An --%><bean:message key="admintext.edit_kunden_item.text1"/></td>
			</tr>			
			<tr bgcolor="#F5F5F5">
			  	<% String visible = (String)request.getAttribute(Const.VISIBLE);
  				if ( visible == null || visible.length() == 0 ) { %>			 
 			     <td><input type='checkbox' name='visible' />
				 </td>
				<% } else { %>		
 			     <td><input type='checkbox' name='visible' checked />
				 </td>
				<% } %>		
			</tr>

			<tr bgcolor="#F5F5F5">
				<td><%-- Nr. --%><bean:message key="admintext.edit_kunden_item.text2"/>*</td>
			</tr>			
			<tr bgcolor="#F5F5F5">
				<td><input type='text' name='item_no' value='<%=request.getAttribute(Const.ITEM_NO)%>' /></td>
			</tr>

			<tr bgcolor="#F5F5F5">
				<td><%-- Artikel --%><bean:message key="admintext.edit_kunden_item.text3"/>*</td>
			</tr>			
			<tr bgcolor="#F5F5F5">
				<td><input type='text' name='title' value='<%=request.getAttribute(Const.TITLE)%>' /></td>
			</tr>

			<tr bgcolor="#F5F5F5">
				<td><%-- Preis --%><bean:message key="admintext.edit_kunden_item.text4"/>&nbsp;${sessionScope.prefs.currency}*</td>
			</tr>			
			<tr bgcolor="#F5F5F5">
				  <td><input type='text' name='price' value='<%=request.getAttribute(Const.PRICE)%>' /></td>
			</tr>

			<tr bgcolor="#F5F5F5">
				<td><%-- Beschreibung --%><bean:message key="admintext.edit_kunden_item.text5"/>*</td>
			</tr>			
			<tr bgcolor="#F5F5F5">
				  <td><textarea name='description' rows='3' cols='50'><%=request.getAttribute(Const.DESCRIPTION)%></textarea></td>
			</tr>

			<tr bgcolor="#F5F5F5">
				<td><%-- Detail Beschreibung --%><bean:message key="admintext.edit_kunden_item.text6"/></td>
			</tr>			
			<tr bgcolor="#F5F5F5">
				  <td><textarea name='detaildescription' rows='10' cols='50'><%=request.getAttribute(Const.DETAILDESCRIPTION)%></textarea></td>
			</tr>

    		<tr bgcolor="#F5F5F5">
				
          <td><%-- Abbildung --%><bean:message key="admintext.edit_kunden_item.text7"/>&nbsp;(< <%=Const.FILE_SIZE%> Byte)</td>
			</tr>			
			<tr bgcolor="#F5F5F5">
			  <td><html:file accept="image/gif" styleClass="myTextBox" name="SaveKundenItemForm" property="myItemFile"></html:file></td>
			</tr>
			
    		<tr bgcolor="#F5F5F5">
				
          <td><%-- Aktuelle Abbildung --%><bean:message key="admintext.edit_kunden_item.text8"/></td>
			</tr>			
			<tr bgcolor="#F5F5F5">
			  <td>
				  <% if (request.getAttribute(Const.IMAGE)==null) {%>
				  	<img width="30" height="30" src="images/NoImage.gif" /> 
				  <% } else { %>
				    <IMG width="30" height="30" SRC="images/customer/<%=session.getAttribute(Const.PARTNER_ID)%>_<%=request.getAttribute(Const.ITEM_ID)%>.gif" /> 
				  <% } %>

			  </td>
			</tr>			
		</table>		
         
	    <div class="vpf">		
          <input type='Submit' value='<%-- Daten speichern --%><bean:message key="admintext.edit_kunden_item.btn1"/>' />
          *&nbsp;<%-- ben&ouml;tigt --%><bean:message key="admintext.edit_kunden_item.text9"/>
		</div>
	</div>
	</td>     	
</tr>
</table>
</html:form>

