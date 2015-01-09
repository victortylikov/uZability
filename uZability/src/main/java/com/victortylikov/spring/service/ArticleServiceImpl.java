package com.victortylikov.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.victortylikov.spring.dao.ArticleDao;
import com.victortylikov.spring.dao.UserDao;
import com.victortylikov.spring.domain.Article;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articleDao;

	@Override
	@Transactional
	public List <Article> getArticles() {
		// TODO Auto-generated method stub
		return articleDao.getArticles();
	}

	public ArticleDao getArticleDao() {
		return articleDao;
	}

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

}
