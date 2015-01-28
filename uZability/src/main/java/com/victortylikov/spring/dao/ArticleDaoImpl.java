package com.victortylikov.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.victortylikov.spring.domain.Article;
import com.victortylikov.spring.domain.User;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Article> getArticles() {
		List<Article> articleList = sessionFactory
				.getCurrentSession()
				.createQuery(
						"select distinct a from Article a ORDER BY a.idArticle DESC")
				.list();

		return articleList;
	}

	public Article getArticleByID(int idArticle) {
		String hql = "FROM Article A WHERE A.idArticle = :idArticle";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("idArticle", idArticle);
		Article article = (Article) query.uniqueResult();
		return article;
	}

	@Override
	public List<Article> getArticlesByTheme(int idTheme) {
		String hql = "select distinct a from Article a right join fetch a.themes t where t.idTheme =:idTheme ORDER BY a.idArticle DESC";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("idTheme", idTheme);
		List<Article> articleList = query.list();

		return articleList;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
