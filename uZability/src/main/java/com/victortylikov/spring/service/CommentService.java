package com.victortylikov.spring.service;

import java.util.List;

import com.victortylikov.spring.domain.Comment;



public interface CommentService {
	public List <Comment> getComments(int idArticle) ;
}
