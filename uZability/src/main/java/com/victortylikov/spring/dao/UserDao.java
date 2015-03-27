package com.victortylikov.spring.dao;

import java.util.List;

import com.victortylikov.spring.domain.Comment;
import com.victortylikov.spring.domain.User;
import com.victortylikov.spring.domain.UserDetail;

public interface UserDao {

	List<User> findAllUsers();

	void addUser(User user);
	
	User getUserByName(String login);

	User updateUserPassword(String username, String newPassword1);

	void addUserDetail(UserDetail userDetail);
	
	void saveAvatar(UserDetail userDetail,byte[] bytes);

	void addUserComment(Comment comment);
}
