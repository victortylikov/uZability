package com.victortylikov.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import org.springframework.transaction.annotation.Transactional;

import com.victortylikov.spring.dao.CommentDao;
import com.victortylikov.spring.domain.Comment;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDao commentDao;
	
	@Override
	@Transactional
	public List<Comment> getComments(int idArticle) {
		// TODO Auto-generated method stub
		return commentDao.getComments(idArticle);
	}

	public CommentDao getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	
	

}
