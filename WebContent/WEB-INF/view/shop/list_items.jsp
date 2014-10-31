<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%--@ taglib uri="http://java.sun.com/jsf/core" prefix="f"--%>
<%--@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"--%>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<script language="JavaScript">

function shop_closed()
{
  	alert("Shop zur Zeit geschlossen!");
} // ende function

</script>

<table width="500" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
    <tr> 
      <td> 
        <div align="left">             
	      <table width="100%" cellpading="1" cellspacing="1">
			<tr> 
			  <td class="shopHeaderRow1" align="left" valign="top" width="75%"><b><!-- Bestellunug --><bean:message key="shoptext.list_itemstitle"/></b></td>
 			</tr>
			<tr> 
			  <td align="left" valign="top" class="shopHeaderRow2" width="75%"> 
				   <!-- --><bean:message key="shoptext.list_itemsdesc"/> 
			  </td>
			</tr>
        </table>
        </div>
      </td>
    </tr>
</table>

<br/>

<table width="500" border="0" cellspacing="0" cellpadding="0" class="ShopBody">
    <tr> 
      <td> 
				 
<!--           <f:view>
                <t:panelTabbedPane bgcolor="#F5F5F5" >
                 <t:panelTab id="tab100" label="#{tabName.tabHeader1}" rendered="true"> 
 			      <f:verbatim>
	 -->		   
        <div align="left"> 
						
				
	      <table width="100%" cellpading="1" cellspacing="1">
 		   <tr> 
             <td width="30" class="SpTitel"><!-- Nr --><bean:message key="shoptext.list_itemstableheadingno"/></td>
             <td width="30" class="SpTitel"><!-- Bild --><bean:message key="shoptext.list_itemstableheadingimage"/></td>
             <td width="380" class="SpTitel"><!-- Artikel--><bean:message key="shoptext.list_itemstableheadingitem"/></td>      
             <td width="30" align="right" class="SpTitel"><!-- Preis --><bean:message key="shoptext.list_itemstableheadingprice"/>&nbsp;${sessionScope.prefs.currency}</td>          
             <td width="30" align="right" class="SpTitel"><!-- Korb --><bean:message key="shoptext.list_itemstableheadingcart"/></td>           
           </tr>
			 
<!-- for each -->			  
          <c:forEach var="item" items="${sessionScope.itemlist}"> 
		    <c:if test="${not empty item.visible}">						 
              <tr>  
                <td class="SpInfo">${item.item_no}</td>
								
				
                        <td class="SpName"> 						
							<c:if test="${empty item.image}"> 
							   <a href='javascript:popup("details.jsp?item_no=${item.item_no}&item_price=${item.price}&item_description=${item.description}&item_detaildescription=${item.detaildescription}&item_title=${item.title}&item_image=images//NoImage.gif", "Details")' > 
 <!--							   <img width="30" height="30" src="images//NoImage.gif" /> 			-->
               				</c:if> 
							
							<c:if test="${not empty item.image}"> 
							   <a href='javascript:popup("details.jsp?item_no=${item.item_no}&item_price=${item.price}&item_description=${item.description}&item_detaildescription=${item.detaildescription}&item_title=${item.title}&item_image=images//customer//<%=session.getAttribute(Const.PARTNER_ID)%>_${item.itemId}.gif", "Details")' > 
<!--							   <a href='javascript:popup("images//customer//<%=session.getAttribute(Const.PARTNER_ID)%>_${item.itemId}.gif", "Details")' > -->
							   <IMG width="30" height="30" SRC="images//customer//<%=session.getAttribute(Const.PARTNER_ID)%>_${item.itemId}.gif" /> 
							   </a>
							</c:if> 						
						</td>
                    
						<td class="SpName"> 
							<c:if test="${empty item.image}"> 
						    <a href='javascript:popup("details.jsp?item_no=${item.item_no}&item_price=${item.price}&item_description=${item.description}&item_detaildescription=${item.detaildescription}&item_title=${item.title}&item_image=images//NoImage.gif", "Details")' class="SpNameLink"> 
<!--						    <a href='javascript:TextPopup("${item.detaildescription}", "Details")' class="SpNameLink"> -->
						      ${item.title}
						    </a> 
               				</c:if> 
							
							<c:if test="${not empty item.image}"> 
						    <a href='javascript:popup("details.jsp?item_no=${item.item_no}&item_price=${item.price}&item_description=${item.description}&item_detaildescription=${item.detaildescription}&item_title=${item.title}&item_image=images//customer//<%=session.getAttribute(Const.PARTNER_ID)%>_${item.itemId}.gif", "Details")' class="SpNameLink"> 
<!--						    <a href='javascript:TextPopup("${item.detaildescription}", "Details")' class="SpNameLink"> -->
						      ${item.title}
						    </a> 
               				</c:if> 
							
						  <br/>
						  <span class="SpInfo">
						    ${item.description}
                          </span>
						</td>    
						                
						<td width="84" align="right" class="SpPreis">${item.price}</td>
						
                         <td align="right" class="SpName">
						 
	<!--  Expired Tarif: geschlossen -->							
							 <c:if test="${not empty sessionScope.tarif.expired}">						 
	<!-- 						    geschlossen -->							
								<c:if test="${empty sessionScope.prefs.shop_open}">
								    <IMG onClick="shop_closed()" SRC="images/Cart.gif" alt="Cart"/>					
								</c:if>
	<!-- 						    offen -->							
								<c:if test="${not empty sessionScope.prefs.shop_open}">
	<!-- 							  <a href="add_to_cart.jsf?item_id=${item.itemId}&partner_id=${param.partner_id}">
-->
								  <a href="add_to_cart.do?item_id=${item.itemId}&partner_id=${param.partner_id}">
									 <IMG SRC="images/Cart.gif" alt="Cart"/>
								  </a>
								</c:if>
							</c:if>
	             <!--  Expired Tarif: geschlossen -->														
							 <c:if test="${empty sessionScope.tarif.expired}">						 
							  <IMG onClick="shop_closed()" SRC="images/Cart.gif" alt="Cart"/>					
							</c:if>
														
						</td>
		  
              </tr>
			 </c:if>
           </c:forEach> 
		   

<!-- for each -->		
                            
        </table>
				
        </div>
	<!--	
		           </f:verbatim>  
                 </t:panelTab>
                </t:panelTabbedPane>
               </f:view>
			 -->	
      </td>
    </tr>
</table>
