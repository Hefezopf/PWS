<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<html:errors /> 

<html:form method="POST" action="/pref_save.do" enctype="multipart/form-data" >
  <table WIDTH="550" valign="top" align="left">
    <tr> 
      <td> 
        <div class="vpf"> 
          
        <div class="vprubrikhead"><%-- Pr&auml;ferenzen --%><bean:message key="admintext.pref.rubrik"/>
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
			    <div class="vpheadsub"> 
	                <%-- Pr&auml;ferenzen - Einstellm&ouml;glichkeit für Ihren WebShop.
					 --%><bean:message key="admintext.pref.head"/>
 				</div>
 				<br>              
                <div class="vpf">
					<%-- Geben Sie hier die Pr&auml;ferenzen ein, die f&uuml;r Ihren pers&ouml;nlichen WebShop relevant sind. 
					Kreuzen Sie in der ersten Spalte an, ob das entsprechende Feld in Ihrem Shop auftauchen soll.
					 --%><bean:message key="admintext.pref.text1"/>
					 <br>
					<br>
 				</div>              
		  </table>
		  
          <table class="vpf" bgcolor="#F5F5F5" width="100%" border="0" cellspacing="0" cellpadding="5">         
            <tr>              				       
				<td>&nbsp;
				  
				</td>
				<td align="center" valign="top">
					<%-- Allgemeine Einstellungen
					 --%><bean:message key="admintext.pref.text2"/>
				 <td>
				 </td>
            </tr> 
			             			
            <tr>              				       				
				<td>&nbsp;
				   
				</td>
            <td valign="top">
			 <a href='javascript:popupGross("images/shop_prefs_currency.gif", "Details")' class="SpNameLink"> 
               <%-- W&auml;hrung --%><bean:message key="admintext.pref.text3"/>*
			   </a>
			 </td>
			<td>
					<select name="currency" size="1">
						<option selected>${sessionScope.prefs.currency}</option>
						<option>$</option>
						<option>€</option>
					</select>				 
			</td>
            </tr> 
			             			
            <tr>              				       
				<td>&nbsp;
				    
				</td>
				<td valign="top">
					<a href='javascript:popupGross("images/shop_prefs_bgcolor.gif", "Details")' class="SpNameLink"> 
				  <%-- Hintergrundfarbe --%><bean:message key="admintext.pref.text4"/>*
					</a>
				</td>
				 <td>
					<input width='10' type='text' name='bgcolor' value='${sessionScope.prefs.bgcolor}' />
				 </td>
            </tr> 
			             			
            <tr>              				       
				<td>&nbsp;	  
				</td>
				<td  align="center" valign="top">
					<%-- Angaben zur Firma --%><bean:message key="admintext.pref.text5"/>
				 </td>
				 <td>
				 </td>
            </tr> 
			             			
            <tr>              
				<td>&nbsp;
				  	  
				</td>
				<td valign="middle">
			      <a href='javascript:popupGross("images/shop_prefs_logo.gif", "Details")' class="SpNameLink">
				   <%-- Firmen Bild --%><bean:message key="admintext.pref.text6"/>
			      </a>
				</td>
				<td valign="middle">
					<html:file accept="image/gif" styleClass="myTextBox" name="PrefForm" property="myRequestFile"></html:file> 
                    <img src='images/customer/<%=session.getAttribute(Const.PARTNER_ID)%>.gif' alt='' /> 
				</td>
            </tr>  
			            
            <tr>              				
				<td>&nbsp;
				    
				</td>
				<td valign="top">
				 <a href='javascript:popupGross("images/shop_prefs_open.gif", "Details")' class="SpNameLink"> 
				  <%-- WebShop ge&ouml;ffnet --%><bean:message key="admintext.pref.text7"/>
				 </a>
				</td>
				<td valign="top">
					<c:if test="${sessionScope.prefs.shop_open == 'on'}"> 
					  <input type='checkbox' name='shop_open' checked />
					</c:if>
					<c:if test="${empty sessionScope.prefs.shop_open}"> 
					  <input type='checkbox' name='shop_open' />
					</c:if>
				</td>
            </tr>  
			            
            <tr>              
				<td>				
				    <c:if test='${not empty sessionScope.prefs.show_minorderamount}'> 
					  <input type='checkbox' name='show_minorderamount' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_minorderamount}'> 
					  <input type='checkbox' name='show_minorderamount' />
					</c:if>
				</td>
				<td valign="top">
			     <a href='javascript:popupGross("images/shop_prefs_minorderamount.gif", "Details")' class="SpNameLink">
				  <%-- Mindestbestellwert --%><bean:message key="admintext.pref.text8"/>*
			     </a>
				</td>
				<td valign="top">
					<input width='10' type='text' name='minorderamount' 
					            value='<fmt:formatNumber type="currency" currencySymbol="">
								   <c:out value="${sessionScope.prefs.minorderamount}"/>
							    </fmt:formatNumber >' />
				</td>
            </tr>  
			            
            <tr>              
				<td>
					<c:if test='${not empty sessionScope.prefs.show_deliverfee}'> 
					  <input type='checkbox' name='show_deliverfee' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_deliverfee}'> 
					  <input type='checkbox' name='show_deliverfee' />
					</c:if>
				</td>
				<td valign="top">
			     <a href='javascript:popupGross("images/shop_prefs_deliverfee.gif", "Details")' class="SpNameLink">
				  <%-- Versandkostenpauschale --%><bean:message key="admintext.pref.text9"/>*
			     </a>
				</td>
				<td valign="top">
					<input width='10' type='text' name='deliverfee' 
					            value='<fmt:formatNumber type="currency" currencySymbol="">
								   <c:out value="${sessionScope.prefs.deliverfee}"/>
							    </fmt:formatNumber >' />
				</td>
            </tr>  
			            
            <tr>              
				<td>&nbsp;
				    
				</td>
				<td valign="middle">
			      <a href='javascript:popupGross("images/shop_prefs_infotext.gif", "Details")' class="SpNameLink">
				    <%-- Infotext --%><bean:message key="admintext.pref.text10"/>
			      </a>
				</td>
				<td valign="top">
					<textarea name='infotext' rows='3' cols='32'>${sessionScope.prefs.infotext}</textarea>				  
				</td>
            </tr> 
			             
            <tr>              				       
				<td>&nbsp;
				  	  
				</td>
				<td  align="center" valign="top">
					<%-- Angaben zur Zahlart --%><bean:message key="admintext.pref.text11"/>
				 <td>
				 </td>
            </tr> 
			             			
            <tr>              				
				<td>
					<c:if test='${not empty sessionScope.prefs.show_transfer}'> 
					  <input type='checkbox' name='show_transfer' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_transfer}'> 
					  <input type='checkbox' name='show_transfer' />
					</c:if>
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_ordertext.gif", "Details")' class="SpNameLink">
					  <!-- &Uuml;berweisung --><bean:message key="shoptext.order_acktransfer"/>
					</a>
				</td>
				<td valign="top">&nbsp;
				  				
				</td>
            </tr>              	
	
			             			
            <tr>              				
				<td>
					<c:if test='${not empty sessionScope.prefs.show_cash}'> 
					  <input type='checkbox' name='show_cash' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_cash}'> 
					  <input type='checkbox' name='show_cash' />
					</c:if>
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_ordertext.gif", "Details")' class="SpNameLink">
					  <!-- Barzahlung --><bean:message key="shoptext.order_ackcash"/>
					</a>
				</td>
				<td valign="top">&nbsp;
				  				
				</td>
            </tr>              	
			             			
            <tr>              				       
				<td>&nbsp;
				   
				</td>
				<td  align="center" valign="top">
					<%-- Angaben zur Bestellung --%><bean:message key="admintext.pref.text12"/>
				 <td>
				 </td>
            </tr> 
			             			
            <tr>              				
				<td>
					<c:if test='${not empty sessionScope.prefs.show_delivery}'> 
					  <input type='checkbox' name='show_delivery' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_delivery}'> 
					  <input type='checkbox' name='show_delivery' />
					</c:if>
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_ordertext.gif", "Details")' class="SpNameLink">
					  <!-- Lieferung --><bean:message key="shoptext.order_ackdelivery"/>
					</a>
				</td>
				<td valign="top">&nbsp;
				  				
				</td>
            </tr>              
						
            <tr>              				
				<td>
					<c:if test='${not empty sessionScope.prefs.show_pickup}'> 
					  <input type='checkbox' name='show_pickup' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_pickup}'> 
					  <input type='checkbox' name='show_pickup' />
					</c:if>
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_ordertext.gif", "Details")' class="SpNameLink">
					  <!-- Selbstabholung --><bean:message key="shoptext.order_ackpickup"/>
					</a>
				</td>
				<td valign="top">&nbsp;
				  				
				</td>
            </tr>              
						
            <tr>              				
				<td>
					<c:if test='${not empty sessionScope.prefs.show_deliverkind_not_applicable}'> 
					  <input type='checkbox' name='show_deliverkind_not_applicable' checked />
					</c:if>
					<c:if test='${empty sessionScope.prefs.show_deliverkind_not_applicable}'> 
					  <input type='checkbox' name='show_deliverkind_not_applicable' />
					</c:if>
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_ordertext.gif", "Details")' class="SpNameLink">
					  <!-- none --><bean:message key="shoptext.order_acknone"/>
					</a>
				</td>
				<td valign="top">&nbsp;
				  				
				</td>
            </tr>              
						
            <tr>              				
				<td>&nbsp;
				  		  
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_ordertext.gif", "Details")' class="SpNameLink">
					  <%-- Bestelltext --%><bean:message key="admintext.pref.text13"/>
					</a>
				</td>
				<td valign="top">
					<textarea name='bestelltext' rows='3' cols='32'>${sessionScope.prefs.bestelltext}</textarea>				  				  
				</td>
            </tr>              
						
            <tr>              				       
				<td>&nbsp;
				  
				</td>
				<td  align="center" valign="top">
					<%-- Lieferbedingungen --%><bean:message key="admintext.pref.text14"/>
				 </td>
				 <td>
				 </td>
            </tr> 
			             			
            <tr>              				
				<td>&nbsp;
				  		  
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_summerytext.gif", "Details")' class="SpNameLink">
					  <%-- Abschlusstext --%><bean:message key="admintext.pref.text15"/>
					</a>
				</td>
				<td valign="top">
					<textarea name='summerytext' rows='3' cols='32'>${sessionScope.prefs.summerytext}</textarea>				  				  
				</td>
            </tr>              
						
            <tr>              				
				<td>&nbsp;
				   
				</td>
				<td valign="middle">
					<a href='javascript:popupGross("images//shop_prefs_agbtext.gif", "Details")' class="SpNameLink">
					  <%-- AGB --%><bean:message key="admintext.pref.text16"/>
					</a>
				</td>
				<td valign="top">
					<textarea name='agb' rows='3' cols='32'>${sessionScope.prefs.agb}</textarea>				  				  
				</td>
            </tr>              
						
<c:if test="${sessionScope.tarif.priv.faxVersandt == true}"> 
            <tr>              
				<td>&nbsp;
				    
				</td>
				<td valign="top">
			     <a href='javascript:popupGross("images//shop_prefs_open.gif", "Details")' class="SpNameLink">
				  <%-- FAX Versandt (TEST nur für PRO) --%><bean:message key="admintext.pref.text17"/>
			     </a>
				</td>
				<td valign="top">
					<input width='10' type='text' name='minorderamount' 
					            value='<fmt:formatNumber type="currency" currencySymbol="">
								   <c:out value="${sessionScope.prefs.minorderamount}"/>
							    </fmt:formatNumber >' />
				</td>
            </tr>  
</c:if> 
			            
            <tr>              
				<td valign="top">&nbsp;
				  
				</td>
				<td valign="top">
				</td>
            </tr>              
			
            <tr>              
				<td>&nbsp;
				  
				</td>
				<td valign="top">
					<input name="Submit" type='Submit' value='<%-- Daten speichern --%><bean:message key="admintext.pref.btn1"/>' />
				</td>				
				<td valign="top">*&nbsp;<%-- ben&ouml;tigt --%><bean:message key="admintext.pref.text18"/>
				</td>
            </tr>              
			
          </table>
        </div>
      </td>
    </tr>
  </table>
</html:form>
