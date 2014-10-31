<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<tiles:insert page="/WEB-INF/view/layout/shopLayout.jsp">
  <tiles:put name="subTitle" value=""/>
  <tiles:put name="body" value="/WEB-INF/view/shop/order_ack.jsp"/>
  <tiles:put name="right" value="/WEB-INF/view/shop/order_info_ack.jsp"/>
</tiles:insert>
