package de.hopfit.view;

// Struts imports
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;


public class LoginForm extends ActionForm {

  /**
	 * Comment for <code>serialVersionUID</code>
	 */
	private static final long serialVersionUID = 1L;
    private String user;
    private String password;
    
  public ActionErrors validate(ActionMapping mapping,
                               HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();

    // Form verification
    if ( (user == null) || (user.length() == 0) ) {
      errors.add("user",
		 new ActionMessage("error.userField.required"));
    }
    if ( (password == null) || (password.length() == 0) ) {
        errors.add("password",
		 new ActionMessage("error.passwordField.required"));
    }

    return errors;
  }

  public void setUser(String user) {
    this.user = user.trim();
  }
  public String getUser() {
    return user;
  }

  public void setPassword(String password) {
    this.password = password.trim();
  }
  public String getPassword() {
    return password;
  }

}
