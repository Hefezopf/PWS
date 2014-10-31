<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<html:errors />

<html:form method="post" action="/new_kunden_item.do" enctype="multipart/form-data" >

<table WIDTH="550" valign="top" align="left">
<tr>
<td>
	<div class="vpf">
		
      <div class="vprubrikhead"><%-- Neuer Artikel --%><bean:message key="admintext.new_kunden_item.rubrik"/>
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
	                <%-- Neuer Artikel --%><bean:message key="admintext.new_kunden_item.head"/>
 				</div>
 				<br>              
                <div class="vpf">
				 <%-- Fügen Sie hier einen neuen Artikel hinzu. --%><bean:message key="admintext.new_kunden_item.text0"/> 
					<br>
					<br>
 				</div>              
		  </table>

		
		<table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5"> 
			<tr>		
              <td><%-- An --%><bean:message key="admintext.new_kunden_item.text1"/></td>
			</tr>			
			<tr>
			  	<% String visible = (String)request.getAttribute(Const.VISIBLE);
  				if ( visible == null || visible.length() == 0 ) { %>			 
 			     <td><input type='checkbox' name='visible' />
				 </td>
				<% } else { %>		
 			     <td><input type='checkbox' name='visible' checked />
				 </td>
				<% } %>		
   			</tr>

			<tr>		
              <td><%-- Nr. --%><bean:message key="admintext.new_kunden_item.text2"/>*</td>
			</tr>			
			<tr>
			  	<% String item_no = (String)request.getAttribute(Const.ITEM_NO);
  				if ( item_no == null || item_no.length() == 0 ) { %>			 
 			     <td><input type='text' name='item_no' value='' /></td>
				<% } else { %>		
 			     <td><input type='text' name='item_no' value='<%=item_no %>' /></td>
				<% } %>		
   			</tr>

			<tr>
				<td><%-- Artikel --%><bean:message key="admintext.new_kunden_item.text3"/>*</td>
			</tr>			
			<tr>
			  	<% String title = (String)request.getAttribute(Const.TITLE);
  				if ( title == null || title.length() == 0 ) { %>			 
 			     <td><input type='text' name='title' value='' /></td>
				<% } else { %>		
 			     <td><input type='text' name='title' value='<%=title%>' /></td>
				<% } %>		
			</tr>

			<tr>
				<td><%-- Preis --%><bean:message key="admintext.new_kunden_item.text4"/>&nbsp;${sessionScope.prefs.currency}*</td>
			</tr>
						
			<tr>
			  	<% String price = (String)request.getAttribute(Const.PRICE);
  				if ( price == null || price.length() == 0 ) { %>			 
 			     <td><input type='text' name='price' value='' /></td>
				<% } else { %>		
 			     <td><input type='text' name='price' value='<%=price%>' /></td>
				<% } %>		
			</tr>

			<tr>
				<td><%-- Beschreibung --%><bean:message key="admintext.new_kunden_item.text5"/>*</td>
			</tr>			
			<tr>
			  	<% String description = (String)request.getAttribute(Const.DESCRIPTION);
  				if ( description == null || description.length() == 0 ) { %>			 			     
                 <td><textarea name='description' rows='3' cols='50'></textarea></td>
				<% } else { %>		
 			     <td><textarea name='description' rows='3' cols='50'><%=description%></textarea></td>
				<% } %>		
			</tr>

			<tr>
				<td><%-- Detail Beschreibung --%><bean:message key="admintext.new_kunden_item.text6"/></td>
			</tr>			
			<tr>
			  	<% String detaildescription = (String)request.getAttribute(Const.DETAILDESCRIPTION);
  				if ( detaildescription == null || detaildescription.length() == 0 ) { %>			 			     
                 <td><textarea name='detaildescription' rows='10' cols='50'></textarea></td>
				<% } else { %>		
 			     <td><textarea name='detaildescription' rows='10' cols='50'><%=detaildescription%></textarea></td>
				<% } %>		
			</tr>

    		<tr>			
              
          <td><%-- Abbildung --%><bean:message key="admintext.new_kunden_item.text7"/>&nbsp;(< <%=Const.FILE_SIZE%> Byte)</td>
			</tr>
						
			<tr>
			  <td>
			    <html:file accept="image/gif" styleClass="myTextBox" name="NewKundenItemForm" property="myItemFile"></html:file>
			  </td>
			</tr>			
		</table>
		
       <br/> 
		<div class="vpf"> 
        <input type='Submit' value='<%-- Daten speichern --%><bean:message key="admintext.new_kunden_item.btn1"/>' />
		*&nbsp;<%-- ben&ouml;tigt --%><bean:message key="admintext.new_kunden_item.text8"/>
		</div>        
  </tr>
</table>

</html:form>

