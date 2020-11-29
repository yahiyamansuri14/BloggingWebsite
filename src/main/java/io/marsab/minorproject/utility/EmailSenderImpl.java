package io.marsab.minorproject.utility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailSenderImpl{
	 private final static String WARNING="A/C REMOVAL WARNING";
	 @Autowired
	 private JavaMailSender javaMailSender;
	 
	 public void  sendRemovalWarning(String to,String username) {
		 SimpleMailMessage simpleMailMessage=new SimpleMailMessage();
		 simpleMailMessage.setFrom("Blogger.com");
		 simpleMailMessage.setTo(to);
		 simpleMailMessage.setSubject(WARNING);
		 String text="Dear "+username+" We have noticed some un-usal activities from your a/c which violates out policies,You have three days to response to this message otherwise your a/c will be removed.reply at micecate129@gmail.com";
		 simpleMailMessage.setText(text);
		 javaMailSender.send(simpleMailMessage); 
	 }
	 
	 public void sendSubscribeMail(String to) {
		 SimpleMailMessage simpleMailMessage=new SimpleMailMessage();
		 simpleMailMessage.setFrom("Blogger.com");
		 simpleMailMessage.setTo(to);
		 simpleMailMessage.setSubject(WARNING);
		 String text="Dear "+to+"thanks for subscribing to our newsletter";
		 simpleMailMessage.setText(text);
		 javaMailSender.send(simpleMailMessage);
	 }
}
