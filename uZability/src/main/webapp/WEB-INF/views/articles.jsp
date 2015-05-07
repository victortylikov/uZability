<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/960_24_col.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/text.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/articles.css" />"
	rel="stylesheet">
<title>Articles | uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>
<script src="<c:url value="/resources/js/changeNews.js" />"></script>
<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>

			<article class="grid_18 alpha">
				<c:forEach items="${listArticles}" var="article">
					<section class="section_article" id="post1">
						<header>
							<h2>
								<a class="a_section_link" href="${article.articleHref}">${article.articleName}</a>
							</h2>
							<div class="section_time">
								<time>${article.articleDate}</time>
								| <c:if test="${!empty article.themes}">
									<c:forEach items="${article.themes}" var="theme">
										${theme.theme}
									</c:forEach>
								</c:if>
							</div>
						</header>
						<p class="section_figure" id="post1_image">
							<a href="${article.articleHref}"> <img
								src="/spring/getArticleImage/${article.idArticle}"> 
							</a>
						</p>
						<p class="section_new">${article.articleSummary}
							<a class="new_read" href="${article.articleHref}">Читать
								дальше...</a>
						</p>
					</section>
				</c:forEach>
				<script src="<c:url value="/resources/js/cross.js" />"></script>
			</article>
