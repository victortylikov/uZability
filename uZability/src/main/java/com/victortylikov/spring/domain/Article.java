package com.victortylikov.spring.domain;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "article")
public class Article {

	@Id
	@Column(name = "id_article")
	@GeneratedValue
	private Integer idArticle;

	@Column(name = "article_name")
	private String articleName;

	@Column(name = "article_image")
	@Lob
	private Blob articleImage;

	@Column(name = "article_summary")
	private String articleSummary;

	@Column(name = "article_href")
	private String articleHref;

	public Integer getIdArticle() {
		return idArticle;
	}

	public void setIdArticle(Integer idArticle) {
		this.idArticle = idArticle;
	}

	public String getArticleName() {
		return articleName;
	}

	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}

	public Blob getArticleImage() {
		return articleImage;
	}

	public void setArticleImage(Blob articleImage) {
		this.articleImage = articleImage;
	}

	public String getArticleSummary() {
		return articleSummary;
	}

	public void setArticleSummary(String articleSummary) {
		this.articleSummary = articleSummary;
	}

	public String getArticleHref() {
		return articleHref;
	}

	public void setArticleHref(String articleHref) {
		this.articleHref = articleHref;
	}

}
