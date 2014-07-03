<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<!-- <form action='list_items.do' method='POST'>
 -->
<table width="300" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr> 
	 <td>  
		<table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
		  <tbody>
			<tr> 		  
				<td class="shopHeaderRow1" align="left" valign="top" width="28%">
				  <b>
				  <!-- Fehler --><bean:message key="shoptext.order_ack_errortitle"/>
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
			<!-- Bei der Datenbeschaffung ist ein Fehler passiert! --><bean:message key="shoptext.order_ack_errordesc"/>
			</span>
		  </p>
          <p>
		  <br/>
		  
<!--             <input name="Submit" type='Submit' value='Zur Übersicht'/>
 -->			
          </p>
	  </td>
    </tr>
  </tbody>
</table>
<!-- </form> 
-->