package com.victortylikov.spring.dao;

import java.util.List;

import com.victortylikov.spring.domain.Article;
import com.victortylikov.spring.domain.Comment;

public interface ArticleDao {

	public List<Article> getArticles();

	public Article getArticleByID(int idArticle);

	public List<Article> getArticlesByTheme(int idTheme);
	
	public List <Comment> getComments(int idArticle);

}
