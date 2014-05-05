package com.victortylikov.spring.service;

import org.springframework.stereotype.Component;

public class Password {
	
	private String currentPassword;

	public String getCurrentPassword() {
		return currentPassword;
	}

	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}

}
