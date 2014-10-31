<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>

<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<center>
<font size='6' color='white'><em><%=Const.TXT_TITLE%></em></font>
 <br/> <br/>
 
<font size='4' color='white'><tiles:getAsString name="subTitle" /></font>

</center>
