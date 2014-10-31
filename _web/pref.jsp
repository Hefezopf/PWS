<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<tiles:insert page="/WEB-INF/view/layout/adminLayout.jsp">
  <tiles:put name="subTitle" value=""/>
  <tiles:put name="body" value="/WEB-INF/view/admin/pref.jsp"/>
</tiles:insert>
