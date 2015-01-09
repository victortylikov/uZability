package com.victortylikov.spring.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.victortylikov.spring.domain.Article;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List <Article> getArticles() {
	List <Article> articleList=sessionFactory.getCurrentSession().createQuery("select distinct u from Article u").list();
	
		return articleList;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
