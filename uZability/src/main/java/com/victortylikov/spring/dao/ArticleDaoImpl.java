package com.victortylikov.spring.dao;

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
		List<Article> articleList = sessionFactory.getCurrentSession()
				.createQuery("select distinct u from Article u").list();

		return articleList;
	}

	public Article getArticleByID(int idArticle) {
		String hql = "FROM Article A WHERE A.idArticle = :idArticle";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("idArticle", idArticle);
		Article article = (Article) query.uniqueResult();
		/*
		 * List<Article> articles = sessionFactory.getCurrentSession()
		 * .createQuery("select distinct a from Article a").list(); Article
		 * article = null; for (Article a : articles) { if
		 * (a.getIdArticle().equals(idArticle)) { article = a; } }
		 */
		return article;
	}

	/*
	 * public User getUserByName(String login) { List<User> users =
	 * sessionFactory .getCurrentSession() .createQuery(
	 * "select distinct u from User u left join fetch u.roles r") .list(); User
	 * user = null; for (User u : users) { if (u.getLogin().equals(login)) {
	 * user = u; } } return user; }
	 */

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
