package com.victortylikov.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.victortylikov.spring.domain.Comment;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Comment> getComments(int idArticle) {
			
		String hql = "select distinct a from Comment a WHERE A.idArticle = :idArticle";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("idArticle", idArticle);
		List<Comment> comments = query.list();
		
		return comments;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
