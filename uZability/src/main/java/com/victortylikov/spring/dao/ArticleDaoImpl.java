package com.victortylikov.spring.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.victortylikov.spring.domain.Article;
import com.victortylikov.spring.domain.Comment;
import com.victortylikov.spring.domain.Theme;
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

		String hql = "select distinct a from Article a left join fetch a.themes t where t.idTheme =:idTheme ORDER BY a.idArticle DESC";
		//String hql =
		// "select distinct art FROM Article art WHERE art.idArticle=(select a.idArticle from Article a left join fetch a.themes t where t.idTheme =:idTheme)";
		// //String hql =
		// "select * from `article` right join `article_theme` on article.id_article=article_theme.id_article join theme on article_theme.id_theme=theme.id_theme;";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("idTheme", idTheme);
		List<Article> articleList = query.list();

		/*
		 * String hql =
		 * "select distinct a from Article a left join fetch a.themes t ORDER BY a.idArticle DESC"
		 * ; Query query = sessionFactory.getCurrentSession().createQuery(hql);
		 * List<Article> articleList = query.list(); ListIterator<Article>
		 * iterator = articleList.listIterator(); while (iterator.hasNext()) {
		 * boolean del = true; Article art = iterator.next(); for (Theme th :
		 * art.getThemes()) { if (th.getIdTheme() == idTheme) { del = false; } }
		 * if (del == true) { iterator.remove(); } }
		 */
		return articleList;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Comment> getComments(int idArticle) {

		String hql2 = "FROM Comment c left join fetch c.article a WHERE a.idArticle = :idArticle";
		Query query2 = sessionFactory.getCurrentSession().createQuery(hql2);
		query2.setParameter("idArticle", idArticle);
		List<Comment> comments = query2.list();
		return comments;
	}

}
