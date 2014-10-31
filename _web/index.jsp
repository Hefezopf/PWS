<%@ taglib uri="/WEB-INF/lib/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="/WEB-INF/lib/struts-bean.tld" prefix="bean" %>
    
<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />

<%-- <%     
        String userLang = (String)request.getParameter(Const.LANGUAGE); 
        if ( !(userLang == null) ) 
		{
		    userLang = userLang.toLowerCase();
     //		Logger.log("userLang====="+userLang+"====");
            session.setAttribute(Const.LANGUAGE, userLang); 
			if ( userLang.equals("de") ){ 
			//	Logger.log("set to : de");
				request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("de") );
			}else if ( userLang.equals("es") ) {
			//	Logger.log("set to : es");
				request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("es") );
		//	}else if ( userLang.equals("it") ){ 
		//		Logger.log("set to : it");
		//		request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("it") );
	        }else {//( userLang.equals("en") ) 
			//	Logger.log("set to : --");
	            request.getSession().setAttribute(org.apache.struts.Globals.LOCALE_KEY, new java.util.Locale("en") );
			}
		}
   %>
--%>
<tiles:insert page="/WEB-INF/view/layout/mainLayout.jsp">
  <tiles:put name="subTitle" value=""/>
  <tiles:put name="body" value="/WEB-INF/view/index.jsp"/>
</tiles:insert>
