package de.hopfit.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import de.hopfit.resource.LoginService;
import sun.misc.BASE64Decoder;

public class LoginFilter implements Filter {

	private FilterConfig config = null;

	public void init(FilterConfig config) {
		this.config = config;
	}

	public void doFilter(ServletRequest _request, ServletResponse _response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) _request;
		HttpServletResponse response = (HttpServletResponse) _response;
		ServletContext context = config.getServletContext();

		HttpSession session = request.getSession();
		LoginService loginservice = (LoginService) session
				.getAttribute("loginservice");

		// Check if the user has already authenticated?
		if (loginservice != null) {

			// If the library already exists, then proceed with request
			chain.doFilter(request, response);

		} else {

			// Check if browser is sending the user's credentials
			String credentials = request.getHeader("Authorization");
			if (credentials != null) {

				// Retrieve the credentials from the header string
				credentials = credentials.substring(6);
				Logger.log("Credentials = " + credentials);

				// Decode the username:password string

				BASE64Decoder decoder = new BASE64Decoder();
				byte[] data = decoder.decodeBuffer(credentials);
				String pair = new String(data);

				// Retrieve the username portion of the credentials
				String username = pair.substring(0, pair.indexOf(':'));
				Logger.log("Username = " + username);

				// Use the username to create a user-specific
				Logger.log("new LoginService");
				loginservice = new LoginService(/* username, "" */);
				session.setAttribute("loginservice", loginservice);

				// And then proceed with the request
				chain.doFilter(request, response);

			} else {

				// Send the login challenge
				Logger.log("Sending the challenge.");
				response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				response.setHeader("WWW-Authenticate", "Basic realm=dvdLogin");
			}
		}
	}

	public void destroy() {
		// do nothing
	}

}
