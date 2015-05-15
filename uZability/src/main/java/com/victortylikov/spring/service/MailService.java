package com.victortylikov.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service("mailService")
public class MailService {
	
	@Autowired
	private MailSender mailSender;
	
	private String TO="ork33@mail.ru";
	
	private String message;

	public void sendMail(String name, String email,String msg) {	
					message="Name: "+name+" Message: "+msg;
		            SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		            simpleMailMessage.setTo(TO);
		            simpleMailMessage.setSubject(email);
		            simpleMailMessage.setText(message);
		            mailSender.send(simpleMailMessage);
		        }

	
}
