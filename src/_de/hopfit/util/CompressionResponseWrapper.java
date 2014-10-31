package de.hopfit.util;

// Servlet imports
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;


/**
 * This response wrapper allows a filter to compression the response
 * generated after processing the request.
 * TODO: properly handle the charset of the response stream
 */
class CompressionResponseWrapper extends HttpServletResponseWrapper {

  /** This constant holds the default charset of the response. */
  private static final String DEFAULT_CHARSET = "ISO-8859-1";

  /** This variable holds the charset of the response. */
  private String charset = DEFAULT_CHARSET;

  /** This variable holds the output stream compression buffer. */
  private GZIPServletOutputStream gzsos = null;

  /** This variable holds the PW object sent to the servlet. */
  private PrintWriter pw = null;

  CompressionResponseWrapper(HttpServletResponse resp) {
    super(resp);
  }

  //
  // Override HttpServletResponse methods to use our stream objects
  //

  public PrintWriter getWriter() throws IOException {
    if ( gzsos != null ) {
      throw new IllegalStateException();
    }
    if ( pw == null ) {
      try {
        gzsos = new GZIPServletOutputStream(getResponse().getOutputStream());
	pw = new PrintWriter(new OutputStreamWriter(gzsos, charset));
      } catch (UnsupportedEncodingException uee) {
	pw = new PrintWriter(gzsos);
      }
    }
    return pw;
  }

  public ServletOutputStream getOutputStream() throws IOException {
    if ( pw != null ) {
      throw new IllegalStateException();
    }
    if ( gzsos == null ) {
      gzsos = new GZIPServletOutputStream(getResponse().getOutputStream());
    }
    return gzsos;
  }

  public void setContentLength(int len) {
    // ignore this, because the real output will be compressed
  }

  public void setCharacterEncoding(String charset) {
    this.charset = charset;
    super.setCharacterEncoding(charset);
  }

  //
  // Decorator methods (used by the Filter)
  //

  public GZIPOutputStream getGZIPOutputStream() {
    return this.gzsos.internalGZOS;
  }
}

class GZIPServletOutputStream extends ServletOutputStream {

  GZIPOutputStream internalGZOS;
 
  GZIPServletOutputStream(ServletOutputStream sos) throws IOException {
    this.internalGZOS = new GZIPOutputStream(sos);
  }

  public void write(int param) throws java.io.IOException {
    internalGZOS.write(param);
  }
}
