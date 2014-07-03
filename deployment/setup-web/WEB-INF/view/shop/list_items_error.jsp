<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>

<table width="300" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr> 
	 <td>  
		<table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
		  <tbody>
			<tr> 		  
				<td class="shopHeaderRow1" align="left" valign="top" width="28%">
				  <b>
				  <!-- Fehler --><bean:message key="shoptext.list_items_errortitle"/>
				  </b>
				</td>
			</tr>
			
			<tr> 
			  <td align="left" valign="top" class="shopHeaderRow2" width="28%">					  
			</tr>
			
		  </tbody>
		</table>
		  
		  <p>
		  <br/>
            <span align="left" valign="top" class="shopHeaderRow2" width="88%">
			  <!-- Fehler bei der Artikel Auflistung! -->
			  <bean:message key="shoptext.list_items_errordesc" />
			  <br/><br/>
			  <bean:message key="shoptext.list_items_errordesc2" />
			</span>
		  </p>
          <p>
		    <br/>
            <html:errors /> 		
          </p>
	  </td>
    </tr>
  </tbody>
</table>
