package com.victortylikov.spring.domain;

import java.sql.Blob;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
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
	
	@Column(name = "article_date")
	private Date articleDate;

	@Column(name = "article_image")
	@Lob
	private Blob articleImage;

	@Column(name = "article_summary")
	private String articleSummary;

	@Column(name = "article_href")
	private String articleHref;
	
	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "article_theme", joinColumns = @JoinColumn(name = "id_article"), inverseJoinColumns = @JoinColumn(name = "id_theme"))
	private Set<Theme> themes = new HashSet<Theme>();
	
	@OneToMany(mappedBy="article")
    private Set<Comment> comments;

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

	public Set<Theme> getThemes() {
		return themes;
	}

	public void setThemes(Set<Theme> themes) {
		this.themes = themes;
	}

	public String getArticleDate() {
		DateFormat df = new SimpleDateFormat("dd MMMM yyyy");
		String text = df.format(articleDate);
		return text;
	}

	public void setArticleDate(Date articleDate) {
		this.articleDate = articleDate;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	

}
