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
<link href="<c:url value="/resources/css/glav.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/quote.js" />"></script>

<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>

			<article class="grid_18 alpha">
				<div id="main_slide">
					<div class="div_slide_background">
						<div class="section_slide_background">
							<header class="header_background_news">
								<h2 class="h2_background_news">
									<a class="a_background_news" id="a_slide_1"
										href="/spring/articles/01_uxpeople">Конференция UXPeople
										2013</a> <a class="a_background_news" id="a_slide_2"
										href="/spring/articles/02_chinadesign">Главные особенности
										китайского веб-дизайна и их истоки</a> <a
										class="a_background_news" id="a_slide_3"
										href="/spring/articles/03_flatdesign">Flat Design, или
										почему все «кинулись» делать плоские интерфейсы</a> <a
										class="a_background_news" id="a_slide_4"
										href="/spring/articles/04_beautyindesign">Дизайн красив
										настолько, насколько он практичен</a>
								</h2>
							</header>
							<p class="p_slide_background" id="p_slide_1">30 ноября в
								Минске пройдет конференция UXPeople, посвященная вопросам
								проектирования интерфейсов, user experience, дизайну и
								юзабилити...</p>
							<p class="p_slide_background" id="p_slide_2">По роду моей
								деятельности ко мне часто обращаются иностранные компании за
								консультациями, аналитикой и другой помощью в сфере китайского
								интернета. Нередко дело доходит до локализации сайта или
								приложения, тогда же...</p>
							<p class="p_slide_background" id="p_slide_3">Плоский дизайн
								интерфейсов пришел или, точнее, объявил о себе во всей красе
								благодаря платформе Windows Phone (и Windows 8) с ее
								революционными стилистически простыми и намеренно упрощенными
								интерфейсами...</p>
							<p class="p_slide_background" id="p_slide_4">Цель этой статьи
								попытаться провести четкую границу между тем, что большинство
								пользователей считает красивым в веб-дизайне, и что
								действительно является таковым, а также...</p>
						</div>
					</div>
					<div class="div_slide_image">
						<a href="/spring/articles/01_uxpeople"> <img
							src="<c:url value="/resources/images/ux-people3.JPG" />"
							id="img_slide_1" alt="" title="" />
						</a> <a href="/spring/articles/02_chinadesign"> <img
							src="<c:url value="/resources/images/china1.jpg" />"
							id="img_slide_2" alt="" title="" />
						</a> <a href="/spring/articles/03_flatdesign"> <img
							src="<c:url value="/resources/images/Flat.png" />"
							id="img_slide_3" alt="" title="" />
						</a> <a href="/spring/articles/04_beautyindesign"> <img
							src="<c:url value="/resources/images/22.jpg" />" id="img_slide_4"
							alt="" title="" />
						</a>

					</div>

					<ul class="ul_slide">
						<li id="li_new_first"><a id="a_slide_number_1"
							class="a_slide_button" href="#" onclick="changeNew(this.id)"
							onmouseover="onButton(this)" onmouseout="offButton(this)"> <span
								class="span_link" id="span_slide_number_1">&nbsp;1&nbsp;</span>
						</a></li>
						<li><a id="a_slide_number_2" class="a_slide_button" href="#"
							onclick="changeNew(this.id)" onmouseover="onButton(this)"
							onmouseout="offButton(this)"> <span class="span_link"
								id="span_slide_number_2">&nbsp;2&nbsp;</span>
						</a></li>
						<li><a id="a_slide_number_3" class="a_slide_button" href="#"
							onclick="changeNew(this.id)" onmouseover="onButton(this)"
							onmouseout="offButton(this)"> <span class="span_link"
								id="span_slide_number_3">&nbsp;3&nbsp;</span>
						</a></li>
						<li><a id="a_slide_number_4" class="a_slide_button" href="#"
							onclick="changeNew(this.id)" onmouseover="onButton(this)"
							onmouseout="offButton(this)"> <span class="span_link"
								id="span_slide_number_4">&nbsp;4&nbsp;</span>
						</a></li>
					</ul>
				</div>
				<script src="<c:url value="/resources/js/temp.js" />"></script>
				<c:forEach items="${listArticles}" var="article">
					<section class="section_article" id="post1">
						<header>
							<h2>
								<a class="a_section_link" href="${article.articleHref}">${article.articleName}</a>
							</h2>
							<div class="section_time">
								<time>${article.articleDate}</time>
								|
								<c:if test="${!empty article.themes}">
									<c:forEach items="${article.themes}" var="theme">
										${theme.theme}
									</c:forEach>
								</c:if>
								<%--  <c:forEach items="${article.themes}" var="themes">${themes.theme}
								</c:forEach> --%>
								<!-- <a class="new_read" href="#"></a>, <a
									class="new_read" href="#"></a>, <a class="new_read"
									href="#"></a> -->
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
			