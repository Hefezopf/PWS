<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<tiles:insert page="/WEB-INF/view/layout/shopLayout.jsp">
  <tiles:put name="subTitle" value=""/>
  <tiles:put name="body" value="/WEB-INF/view/shop/order_success.jsp"/>
  <tiles:put name="cart" value="/WEB-INF/view/shop/cart.jsp"/>
</tiles:insert>
