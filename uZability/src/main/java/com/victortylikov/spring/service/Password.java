package com.victortylikov.spring.service;

import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

public class Password {
	@Size(min=3,max=30,message="ֿאנמכü המכזום בûעü מע 3 המ 30 סטלגמכמג")
	private String currentPassword;
	@Size(min=3,max=30,message="ֿאנמכü המכזום בûעü מע 3 המ 30 סטלגמכמג")
	private String newPassword1;
	@Size(min=3,max=30,message="ֿאנמכü המכזום בûעü מע 3 המ 30 סטלגמכמג")
	private String newPassword2;

	public String getCurrentPassword() {
		return currentPassword;
	}

	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}

	public String getNewPassword1() {
		return newPassword1;
	}

	public void setNewPassword1(String newPassword1) {
		this.newPassword1 = newPassword1;
	}

	public String getNewPassword2() {
		return newPassword2;
	}

	public void setNewPassword2(String newPassword2) {
		this.newPassword2 = newPassword2;
	}

}
