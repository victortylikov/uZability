package com.victortylikov.spring.dao;

import java.util.List;

import com.victortylikov.spring.domain.Comment;

public interface CommentDao {
	public List <Comment> getComments(int idArticle) ;
}
