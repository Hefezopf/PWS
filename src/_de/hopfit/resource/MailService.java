package de.hopfit.resource;

import java.util.Date;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import de.hopfit.timer.MailThread;
import de.hopfit.util.Const;
import de.hopfit.util.Logger;


public class MailService {

  public MailService() {
  }
  
  public static void sendEmailThread(String to, String bcc, String from, String subject, String body){
	Logger.log("MailService: sendEmailThread() to:" + to + " bcc:" + bcc + " from:" + from);		 
  	MailThread mt = new MailThread(to, bcc, from, subject, body);
  	mt.start();
  }
  
  public static boolean sendEmail(String to, String bcc, String from, String subject, String body){
	Logger.log("MailService: sendEmail() to:" + to + " bcc:" + bcc + " from:" + from);		 
  	try{
	  	Properties props = System.getProperties();
	
	  	props.put("mail.smtp.host", Const.MAIL_SMTP_HOST);
	  	props.put("mail.smtp.port", Const.MAIL_SMTP_PORT);
	  	props.put("mail.transport.protocol", Const.MAIL_TRANSPORT_PROTOCOL);
	
	  	// Mit Auth!!!
	    props.put("mail.host", Const.MAIL_SMTP_HOST);
	    props.put("mail.user", Const.MAIL_USER);
	    props.put("mail.smtp.auth", "true");
	
	    // Can define and initialize other session
	    // properties here, if desired
	  	// Mit Auth!!!
	    Session session = Session.getDefaultInstance(props, null);  
	    
	  	// Ohne Auth!!!
	  //	Session session = Session.getInstance(props, null);
	    
	  	MimeMessage msg = new MimeMessage(session);
	
	  	msg.setFrom(new InternetAddress(from));
	  	msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(to, false));
	    msg.setRecipients(MimeMessage.RecipientType.BCC, InternetAddress.parse(bcc, false));	
	  	msg.setSubject(subject);
	  	msg.setText(body);	
	  	msg.setSentDate(new Date());
	
	  	// Ohne Auth!!!
//	  	Transport.send(msg);
	  	
	  	// Mit Auth!!!
		Transport transport = session.getTransport(Const.MAIL_TRANSPORT_PROTOCOL);
		transport.connect(Const.MAIL_SMTP_HOST, Const.MAIL_USER, Const.MAIL_PW);
		msg.saveChanges();
		if(Const.WEBRUN)
			transport.sendMessage(msg, msg.getAllRecipients());
		else
			Logger.log("MailService: sendEmail() -> Const.WEBRUN=FALSE");
		transport.close();
	  	
  	}catch(Exception e){
  		return false;
  	}
  	return true;
  }
}
