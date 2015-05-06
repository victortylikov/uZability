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
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<title>uZability</title>
<script src="<c:url value="/resources/js/quote.js" />"></script>

<link rel="shortcut icon"
	href="<c:url value="/resources/images/favicon.ico" />"
	type="image/x-icon">
</head>
<body>
	<div class="container_24">
	
		<header>
			<h1 name="top">
				<a href="/spring/"><img
					src="<c:url value="/resources/images/logo2.png" />" width="239"
					height="100" alt="Логотип"></a>
			</h1>
			<div id="quote">
				<blockquote id="quote_sentence">Трудность создания
					опыта взаимодействия состоит в необходимости понять потребности
					пользователей лучше, чем они понимают их сами</blockquote>
				<p id="quote_author">Джесс Гарретт</p>

			</div>
			<security:authorize access="isAnonymous()">
				<form name="f" action="<c:url value='/j_spring_security_check'/>"
					method="POST" id="login" class="login">
					<p class="reg">
						<a class="enter" href="/spring/login">Войти</a> или <a
							class="enter" href="/spring/registration">Зарегистрироваться</a>
					</p>
					<p class="field">
						<input type="text" name="j_username" id="username"
							class="text_login" placeholder="логин" required="required"
							autocomplete="off" maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<p class="field">
						<input type="password" name="j_password" id="password"
							class="text_login" placeholder="пароль" required="required"
							maxlength="30" pattern="[A-Za-z0-9_.-]{3,30}" />
					</p>
					<input id="id_remember_me" name="_spring_security_remember_me"
						type="checkbox" checked="checked">
					<p class="submit">
						<input type="submit" value="Ok" />
					</p>
				</form>
			</security:authorize>
			<security:authorize access="isAuthenticated()">
				<div class="login">
					<div class="photo_user">
						<a
							href="/spring/profile/<security:authentication property="principal.username" />"><img
							src="/spring/profile/image/getAvatar" alt="" height=70 width=70 /></a>
					</div>
					<a href="<c:url value="/j_spring_security_logout"/>" id="logout">Выйти</a>
					<div id="username_login">
						<a
							href="/spring/profile/<security:authentication property="principal.username" />"><security:authentication
								property="principal.username" /></a>
					</div>
				</div>
			</security:authorize>
			<nav>
				<ul class="main_ul">
					<li><a id="a_glav" href="/spring/">Главная</a></li>
					<li><a id="a_stat" href="/spring/articles">Статьи</a></li>
					<li><a id="a_knigi" href="/spring/books">Книги</a></li>
					<li><a id="a_gloss" href="/spring/glossary">Глоссарий</a></li>
				</ul>
				<form action="search_action" id="search" class="search"
					enctype="text/plain">
					<div class="search_div">
						<input type="text" name="search_input" id="search_input"
							class="search_input" placeholder="поиск" autofocus /> <input
							id="search_submit" type="submit" value="" />
					</div>
				</form>
			</nav>
		</header>
		<div class="main_part clearfix">
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
			<aside>
				<h3>Категории</h3>
				<ul class="categories_ul">
					<li><a href="/spring/articles/order/1">Usability</a></li>
					<li><a href="/spring/articles/order/2">Веб-дизайн</a></li>
					<li><a href="/spring/articles/order/3">Интерфейсы</a></li>
					<li><a href="/spring/articles/order/4">События</a></li>
					<li><a href="/spring/articles/order/5">Accessibility</a></li>
					<li id="categories_li_last"><a href="/spring/articles/order/6">Тестирование</a></li>
				</ul>
				<div id="advertising">
					<a href="#"><img
						src="<c:url value="/resources/images/advert.png" />" width="230"
						height="366" alt="Реклама"></a>
				</div>
			</aside>
		</div>
		<footer class="footer_main"> Copyright ©2013 uZability. </footer>
		<div class="bottom_nav_div">
			<a href="#" class="bottom_nav_a">О сайте</a>
		</div>
		<a href="#top" title="Вверх" id="up_button"><img
			id="image_up_button"
			src="<c:url value="/resources/images/arrow.png" />" width="70"
			height="70"></a> <a href="#" id="feedback">Обратная связь</a>
	</div>

</body>
</html>