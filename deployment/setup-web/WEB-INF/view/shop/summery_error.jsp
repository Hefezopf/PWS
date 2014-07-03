<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<!-- <form action='list_items.do?partner_id=<%=session.getAttribute(Const.PARTNER_ID)%>&<%=Const.LANGUAGE%>=<%=session.getAttribute(Const.LANGUAGE)%>' method='POST'>
 -->
<table width="300" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
  <tbody>
    <tr> 
	 <td>  
		<table width="100%" border="0" cellspacing="1" cellpadding="1" height="50">
		  <tbody>
			<tr> 		  
				<td class="shopHeaderRow1" align="left" valign="top" width="28%">
				  <b><!-- Fehler --><bean:message key="shoptext.summery_errortitle"/></b>
				</td>
			</tr>
			
			<tr> 
			  <td align="left" valign="top" class="shopHeaderRow2" width="28%">					  
			</tr>
			
		  </tbody>
		</table>
		  <br/>
            <span align="left" valign="top" class="shopHeaderRow2" width="88%">
			  <!-- Bei der Bestellung ist ein Fehler passiert! --><bean:message key="shoptext.summery_errordesc"/>
			</span>
          <p>
		  <br/>
<%--             <input name="Submit" type='Submit' value='Zur Übersicht'/>
--%> 			
          </p>
	  </td>
    </tr>
  </tbody>
</table>

<!-- </form> -->