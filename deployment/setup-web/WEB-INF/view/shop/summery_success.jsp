<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

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
				  <b><!-- Erfolg --><bean:message key="shoptext.summery_successtitle"/></b>
				</td>
			</tr>
			
			<tr> 
			  <td align="left" valign="top" class="shopHeaderRow2" width="28%">					  
			</tr>
			
		  </tbody>
		</table>	
            <span align="left" valign="top" class="shopHeaderRow2" width="88%">
			<!-- Sie haben erfolgreich bestellt!
			<br>
			Sie werden in K&uuml;rze eine Email als Auftragsbest&auml;tigung erhalten.
			 --><bean:message key="shoptext.summery_successdesc"/>
			</span>	
          <p>
<%--             <input type='Submit' value='<bean:message key="shoptext.summery_successbtnoverview"/>' />
--%>
		    <br/>
          </p>
	  </td>
    </tr>
  </tbody>
</table>
<!-- </form>
 -->