package com.victortylikov.spring.service;

import java.util.List;

import com.victortylikov.spring.domain.User;
import com.victortylikov.spring.domain.UserDetail;

public interface UserService {
	
	List<User> findAllUsers();

	void addUser(User user);
	
	User getUserByName(String login);

	User updateUserPassword(String username,String newPassword1);

	void addUserDetail(UserDetail userDetail);
}
