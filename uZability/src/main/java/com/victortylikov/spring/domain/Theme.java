package com.victortylikov.spring.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "theme")
public class Theme {

	@Id
	@Column(name = "id_theme")
	private Integer idTheme;

	@Column(name = "theme")
	private String theme;
	
	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "article_theme", 
	      joinColumns = @JoinColumn(name = "id_theme"), 
	      inverseJoinColumns = @JoinColumn(name = "id_article"))
	private Set<Article> articles = new HashSet<Article>();

	public Integer getIdTheme() {
		return idTheme;
	}

	public void setIdTheme(Integer idTheme) {
		this.idTheme = idTheme;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Set<Article> getArticles() {
		return articles;
	}

	public void setArticles(Set<Article> articles) {
		this.articles = articles;
	}
	

}
