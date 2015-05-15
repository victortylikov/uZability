package com.victortylikov.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service("mailService")
public class MailService {
	@Autowired
	private MailSender mailSender;

	public void sendMail(String from, String to, String subject, String msg) {		      
		            SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		            simpleMailMessage.setFrom(from);
		            simpleMailMessage.setTo(to);
		            simpleMailMessage.setSubject(subject);
		            simpleMailMessage.setText(msg);
		            mailSender.send(simpleMailMessage);
		        }

	
}
