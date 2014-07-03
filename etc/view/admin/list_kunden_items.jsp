<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<script language="JavaScript">

function CheckAuswahl(forward_action)
{
 var hit = 0;

 for(i=0; i<document.viewitems.itemgroup.length; i++)
 {
  if(document.viewitems.itemgroup[i].checked == true)
  {
	if(forward_action == "delete_kunden_item.do")
	   document.viewitems.action = forward_action+"?item_id="+document.viewitems.itemgroup[i].value;
	if(forward_action == "get_kunden_item.do")
	{
	   var str = forward_action+"?item_id="+document.viewitems.itemgroup[i].value;
	   document.viewitems.action = str;
	}   
	document.viewitems.submit();
	hit++;
    break;
  }
 }
 if(hit==0)
  	alert("<%-- Nichts selektiert --%><bean:message key="admintext.list_kunden_items.msg"/>");
} // ende function

</script>


<html:errors />

<form name='viewitems' action='new_kunden_item.jsp' method='POST'>
<table WIDTH="550" valign="top" align="left">
<tr>
<td>
<!-- Beginn VP --> 
	<div class="vpf">
		<div class="vprubrikhead"><%-- Artikel --%><bean:message key="admintext.list_kunden_items.rubrik"/> 
          <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#000066">
				<tr>
						<td><img border="0" src="images/lquer.gif" height="1"></td>    	
				</tr>
			</table>
		</div>
		
		<p></p>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="5"> 
			<tr class="vpheadsub" bgcolor="#F5F5F5">
				<td>&nbsp;</td>			
                <td><%-- An --%><bean:message key="admintext.list_kunden_items.col1"/></td>
                <td><%-- Nr. --%><bean:message key="admintext.list_kunden_items.col2"/></td>
				<td><%-- Artikel --%><bean:message key="admintext.list_kunden_items.col3"/></td>
				<td><%-- Preis --%><bean:message key="admintext.list_kunden_items.col4"/>&nbsp;${sessionScope.prefs.currency}</td>
				<td><%-- Beschreibung --%><bean:message key="admintext.list_kunden_items.col5"/></td>
				<td><%-- Detail Beschreibung --%><bean:message key="admintext.list_kunden_items.col6"/></td>		
                <td><%-- Bild --%><bean:message key="admintext.list_kunden_items.col7"/></td>
			</tr>
			
			<% int i=0; %>
			<c:forEach var="item" items="${sessionScope.itemlist}">
			<tr class="vpf" bgcolor="#F5F5F5">
				  <input type="hidden" name="item_id${item.itemId}" value="${item.itemId}"/> 
				  <input type="hidden" name="item_no${item.itemId}" value="${item.item_no}"/> 
				  <input type="hidden" name="visible${item.visible}" value="${item.visible}"/> 
				  <input type="hidden" name="title${item.itemId}" value="${item.title}"/> 
				  <input type="hidden" name="price${item.itemId}" value="${item.price}"/> 
				  <input type="hidden" name="description${item.itemId}" value="${item.description}"/> 
				  <input type="hidden" name="detaildescription${item.itemId}" value="${item.detaildescription}"/> 
				  <input type="hidden" name="image${item.itemId}" value="${item.image}"/> 
				  
				  <input type='hidden' name="itemgroup" value='${item.itemId}' />
				
				  <td><input type='radio' name="itemgroup" value='${item.itemId}' /></td>
				  <td>
					<c:if test="${not empty item.visible}">					   
					   <img width="23" height="22" src="images/check.gif" /> 
					</c:if> 
				  </td>
				  <td>${item.item_no}</td>
				  <td>${item.title}</td>
				  <td align="right">${item.price}</td>
				  <td>${item.description}</td>
				  <td>${item.detaildescription}</td>
				  <td>
					<c:if test="${empty item.image}">					   
					   <img width="30" height="30" src="images/NoImage.gif" /> 
					</c:if> 
					<c:if test="${not empty item.image}"> 
					   <IMG width="30" height="30" SRC="images/customer/<%=session.getAttribute(Const.PARTNER_ID)%>_${item.itemId}.gif" /> 
					</c:if> 
				  </td>	
			</tr>
			</c:forEach>		
		</table>
		
		<br/>
          <input type='Submit' value='<%-- Neuen Artikel hinzuf&uuml;gen --%><bean:message key="admintext.list_kunden_items.btn1"/>' />     
        <br/><br/>
          <input type='button' value='<%-- Selektierten Artikel &auml;ndern --%><bean:message key="admintext.list_kunden_items.btn2"/>' onClick='CheckAuswahl("get_kunden_item.do")'/>  
        <br/><br/>
          <input type='button' value='<%-- Selektierten Artikel l&ouml;schen --%><bean:message key="admintext.list_kunden_items.btn3"/>' onClick='CheckAuswahl("delete_kunden_item.do")' />     
		<br/> 	     

	</div> 
 </td>
</tr>
</table>
</form>

