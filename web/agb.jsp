<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
    
<tiles:insert page="/WEB-INF/view/layout/mainLayout.jsp">
  <tiles:put name="subTitle" value="${param.kunde}"/>
  <tiles:put name="body" value="/WEB-INF/view/agb.jsp"/>
</tiles:insert>
