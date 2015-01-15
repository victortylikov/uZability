package com.victortylikov.spring.dao;

import java.util.List;

import com.victortylikov.spring.domain.Article;

public interface ArticleDao {

	public List<Article> getArticles();

	public Article getArticleByID(int idArticle);

}
