package de.hopfit.util;

import java.io.IOException;
import java.util.zip.GZIPOutputStream;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompressionFilter implements Filter {

  private ServletContext context;
  private FilterConfig config;

  public void init(FilterConfig config) 
	 throws ServletException {
    this.config = config;
    context = config.getServletContext();
    Logger.log(config.getFilterName() + " initialized.");
  }

  public void doFilter(ServletRequest req,
		       ServletResponse resp,
		       FilterChain filterChain)
	 throws IOException, ServletException {
    HttpServletRequest request = (HttpServletRequest) req;
    HttpServletResponse response = (HttpServletResponse) resp;

    // Test if the client accepts compression encodings?
    String valid_encodings = request.getHeader("Accept-Encoding");
    if ( valid_encodings.indexOf("gzip") > -1 ) {

      // Wrap the response object with a capture wrapper
      CompressionResponseWrapper wrappedResp
	= new CompressionResponseWrapper(response);

      // Specify the conent-encoding
      wrappedResp.setHeader("Content-Encoding", "gzip");

      // Pass it up the chain
      filterChain.doFilter(request, wrappedResp);

      // Flush and finalize the compressed output stream
      GZIPOutputStream gzos = wrappedResp.getGZIPOutputStream();
      gzos.finish();
      Logger.log(config.getFilterName() + ": finished the request.");

    } else {
      Logger.log(config.getFilterName() + ": no encoding performed.");
    }
  }

  public void destroy() {
  }
}
