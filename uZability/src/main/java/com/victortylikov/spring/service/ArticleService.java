package com.victortylikov.spring.service;

import java.util.List;

import com.victortylikov.spring.domain.Article;

public interface ArticleService {

	public List <Article> getArticles() ;
	
	public Article getArticleByID(int idArticle);

}
