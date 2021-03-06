package com.victortylikov.spring.dao;

import java.sql.Blob;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.victortylikov.spring.domain.Article;
import com.victortylikov.spring.domain.Comment;
import com.victortylikov.spring.domain.Role;
import com.victortylikov.spring.domain.User;
import com.victortylikov.spring.domain.UserDetail;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<User> findAllUsers() {
		return sessionFactory
				.getCurrentSession()
				.createQuery(
						"select distinct u from User u right join fetch u.roles r")
				.list();
	}

	@Override
	public void addUser(User user) {
		Role role = (Role) sessionFactory.getCurrentSession()
				.createQuery("from Role r where r.idRole=1").uniqueResult();
		System.out.println(role.getRole());
		Set<Role> roles = new HashSet<Role>();
		roles.add(role);
		user.setRoles(roles);
		sessionFactory.getCurrentSession().save(user);
		UserDetail userDetail=new UserDetail();
		userDetail.setIdUser(user.getIdUser());
		addUserDetail(userDetail);
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public User getUserByName(String login) {
		List<User> users = sessionFactory
				.getCurrentSession()
				.createQuery(
						"select distinct u from User u right join fetch u.roles r")
				.list();
		User user = null;
		for (User u : users) {
			if (u.getLogin().equals(login)) {
				user = u;
			}
		}
		return user;
	}

	@Override
	public User updateUserPassword(String username, String newPassword1) {
		User user = getUserByName(username);
		user.setPassword(newPassword1);
		sessionFactory.getCurrentSession().update(user);
		return user;
	}

	@Override
	public void addUserDetail(UserDetail userDetail) {
		sessionFactory.getCurrentSession().saveOrUpdate(userDetail);
	}

	@Override
	public void saveAvatar(UserDetail userDetail,byte[] bytes) {
		Blob blob=Hibernate.getLobCreator(sessionFactory.getCurrentSession()).createBlob(bytes);
		userDetail.setPhoto(blob);
		addUserDetail(userDetail);	
		
	}

	@Override
	public void addUserComment(Comment comment) {
		sessionFactory.getCurrentSession().save(comment);
		
	}

	@Override
	public User getUserById(int idUser) {
		String hql = "FROM User U WHERE U.idUser = :idUser";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("idUser", idUser);
		User user = (User) query.uniqueResult();
		return user;
	}
	
	

}
