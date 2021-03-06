package com.victortylikov.spring.domain;


import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;






import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "comment")
public class Comment {
	
	@Id
	@Column(name = "id_comment")
	@GeneratedValue
	private Integer idComment;
	
	@Column(name = "comment_text")
	private String commentText;
	
	@Column(name = "date_comment")
	private Timestamp dateComment;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id_user")
	private User user;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id_article")
	private Article article;

	public Integer getIdComment() {
		return idComment;
	}

	public void setIdComment(Integer idComment) {
		this.idComment = idComment;
	}

	public String getCommentText() {
		return commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public String getDateComment() {
		DateFormat df = new SimpleDateFormat("dd MMMM yyyy HH:mm",Locale.getDefault());
		String text = df.format(dateComment);
		return text;
	}

	public void setDateComment(Timestamp dateComment) {
		this.dateComment = dateComment;
	}
	
}
