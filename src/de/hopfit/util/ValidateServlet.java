/*
 * Created on 09.03.2006
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package de.hopfit.util;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.hopfit.resource.LoginService;

/**
 * Für die Ajax Kommunikation
 * 
 * @author hopfma
 *
 */
public class ValidateServlet extends HttpServlet {

	/**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private ServletContext context;

	/**
	 * 
	 */
	private HashMap users = new HashMap();

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Servlet#init(javax.servlet.ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		this.context = config.getServletContext();
		// fillCache();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest,
	 *      javax.servlet.http.HttpServletResponse)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String targetId = request.getParameter("AJAXid");
		Logger.log("ValidateServlet doGet=" + targetId.trim());
		fillCache();

		if ((targetId != null) && !users.containsKey(targetId.trim())) {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("invalid");
		} else {
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			// http://publicwebshop.com/pws/list_items.do?partner_id=1&language=de
			response.getWriter().write(
					"Shop URL=http://publicwebshop.com/pws/list_items.do?partner_id="
							+ users.get(targetId) + "&language=en");
		}
	}

	/**
	 * 
	 */
	public void fillCache() {
		LoginService ls = new LoginService();
		String[][] s_array = ls.getPartnerIds();

		for (int i = 0; i < s_array.length; i++) {
			users.put(s_array[i][1], s_array[i][0]);
		}
		// users.put("test","99999");
	}
}